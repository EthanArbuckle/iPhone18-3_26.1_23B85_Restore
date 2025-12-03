@interface CRKEventLog
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTimeline:(id)timeline;
- (CRKEventLog)init;
- (CRKEventLog)initWithCoder:(id)coder;
- (CRKEventLog)initWithStartDate:(id)date endDate:(id)endDate;
- (CRKEventLog)initWithStartDate:(id)date endDate:(id)endDate eventDatas:(id)datas;
- (CRKEventLog)initWithStartDate:(id)date endDate:(id)endDate events:(id)events;
- (NSSet)events;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKEventLog

- (CRKEventLog)init
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(CRKEventLog *)self initWithStartDate:date endDate:date events:v4];

  return v5;
}

- (CRKEventLog)initWithStartDate:(id)date endDate:(id)endDate events:(id)events
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  if (!eventsCopy)
  {
    [CRKEventLog initWithStartDate:endDate:events:];
  }

  v11 = [(CRKEventLog *)self initWithStartDate:dateCopy endDate:endDateCopy];
  if (v11)
  {
    v12 = [eventsCopy copy];
    passedInEvents = v11->_passedInEvents;
    v11->_passedInEvents = v12;
  }

  return v11;
}

- (CRKEventLog)initWithStartDate:(id)date endDate:(id)endDate eventDatas:(id)datas
{
  dateCopy = date;
  endDateCopy = endDate;
  datasCopy = datas;
  if (!datasCopy)
  {
    [CRKEventLog initWithStartDate:endDate:eventDatas:];
  }

  v11 = [(CRKEventLog *)self initWithStartDate:dateCopy endDate:endDateCopy];
  if (v11)
  {
    v12 = [datasCopy copy];
    passedInEventDatas = v11->_passedInEventDatas;
    v11->_passedInEventDatas = v12;
  }

  return v11;
}

- (CRKEventLog)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v9 = endDateCopy;
  if (dateCopy)
  {
    if (endDateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKEventLog initWithStartDate:endDate:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [CRKEventLog initWithStartDate:endDate:];
LABEL_3:
  v13.receiver = self;
  v13.super_class = CRKEventLog;
  v10 = [(CRKEventLog *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startDate, date);
    objc_storeStrong(&v11->_endDate, endDate);
  }

  return v11;
}

- (NSSet)events
{
  passedInEvents = [(CRKEventLog *)self passedInEvents];

  if (passedInEvents)
  {
    passedInEvents2 = [(CRKEventLog *)self passedInEvents];
  }

  else
  {
    mLazilyLoadedEvents = self->mLazilyLoadedEvents;
    if (!mLazilyLoadedEvents)
    {
      passedInEventDatas = [(CRKEventLog *)self passedInEventDatas];
      v7 = [passedInEventDatas crk_mapUsingBlock:&__block_literal_global_63];
      v8 = self->mLazilyLoadedEvents;
      self->mLazilyLoadedEvents = v7;

      mLazilyLoadedEvents = self->mLazilyLoadedEvents;
    }

    passedInEvents2 = mLazilyLoadedEvents;
  }

  return passedInEvents2;
}

id __21__CRKEventLog_events__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAAC8];
  v3 = a2;
  v8 = 0;
  v4 = [v2 cat_unarchiveObjectOfClass:objc_opt_class() withData:v3 error:&v8];

  v5 = v8;
  if (!v4)
  {
    if (_CRKLogGeneral_onceToken_21 != -1)
    {
      __21__CRKEventLog_events__block_invoke_cold_1();
    }

    v6 = _CRKLogGeneral_logObj_21;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_21, OS_LOG_TYPE_ERROR))
    {
      __21__CRKEventLog_events__block_invoke_cold_2(v6, v5);
    }
  }

  return v4;
}

- (unint64_t)hash
{
  startDate = [(CRKEventLog *)self startDate];
  v4 = [startDate hash];
  endDate = [(CRKEventLog *)self endDate];
  v6 = [endDate hash] ^ v4;
  passedInEvents = [(CRKEventLog *)self passedInEvents];
  v8 = [passedInEvents hash];
  passedInEventDatas = [(CRKEventLog *)self passedInEventDatas];
  v10 = v8 ^ [passedInEventDatas hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKEventLog *)self isEqualToTimeline:equalCopy];

  return v5;
}

- (BOOL)isEqualToTimeline:(id)timeline
{
  timelineCopy = timeline;
  if (timelineCopy)
  {
    startDate = [(CRKEventLog *)self startDate];
    startDate2 = [timelineCopy startDate];
    v7 = startDate;
    v8 = startDate2;
    if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
    {
      v22 = 0;
    }

    else
    {
      endDate = [(CRKEventLog *)self endDate];
      endDate2 = [timelineCopy endDate];
      v12 = endDate;
      v13 = endDate2;
      if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
      {
        v22 = 0;
      }

      else
      {
        passedInEvents = [(CRKEventLog *)self passedInEvents];
        passedInEvents2 = [timelineCopy passedInEvents];
        v17 = passedInEvents;
        v18 = passedInEvents2;
        if (v17 | v18 && (v19 = [v17 isEqual:v18], v18, v17, !v19))
        {
          v22 = 0;
        }

        else
        {
          passedInEventDatas = [(CRKEventLog *)self passedInEventDatas];
          passedInEventDatas2 = [timelineCopy passedInEventDatas];
          if (passedInEventDatas | passedInEventDatas2)
          {
            v22 = [passedInEventDatas isEqual:passedInEventDatas2];
          }

          else
          {
            v22 = 1;
          }
        }
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  startDate = [(CRKEventLog *)self startDate];
  endDate = [(CRKEventLog *)self endDate];
  passedInEvents = [(CRKEventLog *)self passedInEvents];
  v8 = MEMORY[0x277CCABB0];
  passedInEventDatas = [(CRKEventLog *)self passedInEventDatas];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(passedInEventDatas, "count")}];
  v11 = [v3 stringWithFormat:@"<%@: %p { startDate = %@, endDate = %@, passedInEvents = %@, passedInEventDatasCount = %@ }>", v4, self, startDate, endDate, passedInEvents, v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(CRKEventLog *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];

  endDate = [(CRKEventLog *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  passedInEvents = [(CRKEventLog *)self passedInEvents];
  [coderCopy encodeObject:passedInEvents forKey:@"passedInEvents"];

  passedInEventDatas = [(CRKEventLog *)self passedInEventDatas];
  [coderCopy encodeObject:passedInEventDatas forKey:@"passedInEventDatas"];
}

- (CRKEventLog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CRKEventLog;
  v5 = [(CRKEventLog *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"passedInEvents"];
    passedInEvents = v5->_passedInEvents;
    v5->_passedInEvents = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"passedInEventDatas"];
    passedInEventDatas = v5->_passedInEventDatas;
    v5->_passedInEventDatas = v20;
  }

  return v5;
}

- (void)initWithStartDate:endDate:events:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"events" object:? file:? lineNumber:? description:?];
}

- (void)initWithStartDate:endDate:eventDatas:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"eventDatas" object:? file:? lineNumber:? description:?];
}

- (void)initWithStartDate:endDate:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"startDate" object:? file:? lineNumber:? description:?];
}

- (void)initWithStartDate:endDate:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"endDate" object:? file:? lineNumber:? description:?];
}

void __21__CRKEventLog_events__block_invoke_cold_2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 verboseDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_243550000, v3, OS_LOG_TYPE_ERROR, "Failed to unarchive event: %{public}@", &v5, 0xCu);
}

@end