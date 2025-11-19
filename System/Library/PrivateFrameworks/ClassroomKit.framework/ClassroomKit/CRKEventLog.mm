@interface CRKEventLog
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTimeline:(id)a3;
- (CRKEventLog)init;
- (CRKEventLog)initWithCoder:(id)a3;
- (CRKEventLog)initWithStartDate:(id)a3 endDate:(id)a4;
- (CRKEventLog)initWithStartDate:(id)a3 endDate:(id)a4 eventDatas:(id)a5;
- (CRKEventLog)initWithStartDate:(id)a3 endDate:(id)a4 events:(id)a5;
- (NSSet)events;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKEventLog

- (CRKEventLog)init
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(CRKEventLog *)self initWithStartDate:v3 endDate:v3 events:v4];

  return v5;
}

- (CRKEventLog)initWithStartDate:(id)a3 endDate:(id)a4 events:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [CRKEventLog initWithStartDate:endDate:events:];
  }

  v11 = [(CRKEventLog *)self initWithStartDate:v8 endDate:v9];
  if (v11)
  {
    v12 = [v10 copy];
    passedInEvents = v11->_passedInEvents;
    v11->_passedInEvents = v12;
  }

  return v11;
}

- (CRKEventLog)initWithStartDate:(id)a3 endDate:(id)a4 eventDatas:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [CRKEventLog initWithStartDate:endDate:eventDatas:];
  }

  v11 = [(CRKEventLog *)self initWithStartDate:v8 endDate:v9];
  if (v11)
  {
    v12 = [v10 copy];
    passedInEventDatas = v11->_passedInEventDatas;
    v11->_passedInEventDatas = v12;
  }

  return v11;
}

- (CRKEventLog)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
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
    objc_storeStrong(&v10->_startDate, a3);
    objc_storeStrong(&v11->_endDate, a4);
  }

  return v11;
}

- (NSSet)events
{
  v3 = [(CRKEventLog *)self passedInEvents];

  if (v3)
  {
    v4 = [(CRKEventLog *)self passedInEvents];
  }

  else
  {
    mLazilyLoadedEvents = self->mLazilyLoadedEvents;
    if (!mLazilyLoadedEvents)
    {
      v6 = [(CRKEventLog *)self passedInEventDatas];
      v7 = [v6 crk_mapUsingBlock:&__block_literal_global_63];
      v8 = self->mLazilyLoadedEvents;
      self->mLazilyLoadedEvents = v7;

      mLazilyLoadedEvents = self->mLazilyLoadedEvents;
    }

    v4 = mLazilyLoadedEvents;
  }

  return v4;
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
  v3 = [(CRKEventLog *)self startDate];
  v4 = [v3 hash];
  v5 = [(CRKEventLog *)self endDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRKEventLog *)self passedInEvents];
  v8 = [v7 hash];
  v9 = [(CRKEventLog *)self passedInEventDatas];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKEventLog *)self isEqualToTimeline:v4];

  return v5;
}

- (BOOL)isEqualToTimeline:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRKEventLog *)self startDate];
    v6 = [v4 startDate];
    v7 = v5;
    v8 = v6;
    if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
    {
      v22 = 0;
    }

    else
    {
      v10 = [(CRKEventLog *)self endDate];
      v11 = [v4 endDate];
      v12 = v10;
      v13 = v11;
      if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
      {
        v22 = 0;
      }

      else
      {
        v15 = [(CRKEventLog *)self passedInEvents];
        v16 = [v4 passedInEvents];
        v17 = v15;
        v18 = v16;
        if (v17 | v18 && (v19 = [v17 isEqual:v18], v18, v17, !v19))
        {
          v22 = 0;
        }

        else
        {
          v20 = [(CRKEventLog *)self passedInEventDatas];
          v21 = [v4 passedInEventDatas];
          if (v20 | v21)
          {
            v22 = [v20 isEqual:v21];
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
  v5 = [(CRKEventLog *)self startDate];
  v6 = [(CRKEventLog *)self endDate];
  v7 = [(CRKEventLog *)self passedInEvents];
  v8 = MEMORY[0x277CCABB0];
  v9 = [(CRKEventLog *)self passedInEventDatas];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v11 = [v3 stringWithFormat:@"<%@: %p { startDate = %@, endDate = %@, passedInEvents = %@, passedInEventDatasCount = %@ }>", v4, self, v5, v6, v7, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKEventLog *)self startDate];
  [v4 encodeObject:v5 forKey:@"startDate"];

  v6 = [(CRKEventLog *)self endDate];
  [v4 encodeObject:v6 forKey:@"endDate"];

  v7 = [(CRKEventLog *)self passedInEvents];
  [v4 encodeObject:v7 forKey:@"passedInEvents"];

  v8 = [(CRKEventLog *)self passedInEventDatas];
  [v4 encodeObject:v8 forKey:@"passedInEventDatas"];
}

- (CRKEventLog)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CRKEventLog;
  v5 = [(CRKEventLog *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"passedInEvents"];
    passedInEvents = v5->_passedInEvents;
    v5->_passedInEvents = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"passedInEventDatas"];
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