@interface DAECalendarAvailabilitySpan
- (DAECalendarAvailabilitySpan)init;
- (DAECalendarAvailabilitySpan)initWithCoder:(id)a3;
- (DAECalendarAvailabilitySpan)initWithStartDate:(id)a3 endDate:(id)a4 type:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAECalendarAvailabilitySpan

- (DAECalendarAvailabilitySpan)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Please use the appropriate designated initializer for this class." userInfo:0];
  objc_exception_throw(v2);
}

- (DAECalendarAvailabilitySpan)initWithStartDate:(id)a3 endDate:(id)a4 type:(int64_t)a5
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [DAECalendarAvailabilitySpan initWithStartDate:a2 endDate:self type:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [DAECalendarAvailabilitySpan initWithStartDate:a2 endDate:self type:?];
LABEL_3:
  if ([v10 compare:v12] == 1)
  {
    [DAECalendarAvailabilitySpan initWithStartDate:a2 endDate:self type:?];
  }

  v16.receiver = self;
  v16.super_class = DAECalendarAvailabilitySpan;
  v13 = [(DAECalendarAvailabilitySpan *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_startDate, a3);
    objc_storeStrong(&v14->_endDate, a4);
    v14->_type = a5;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  startDate = self->_startDate;
  endDate = self->_endDate;
  v6 = DAECalendarAvailabilityTypeAsString(self->_type);
  v7 = [v3 initWithFormat:@"startDate: [%@] endDate: [%@], type: [%@]", startDate, endDate, v6];

  return v7;
}

- (DAECalendarAvailabilitySpan)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"startDate"];
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"endDate"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];

  v9 = -[DAECalendarAvailabilitySpan initWithStartDate:endDate:type:](self, "initWithStartDate:endDate:type:", v6, v7, [v8 integerValue]);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:self->_type];
  [v5 encodeObject:v6 forKey:@"type"];
}

- (void)initWithStartDate:(uint64_t)a1 endDate:(uint64_t)a2 type:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAECalendarAvailabilitySpan.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"startDate != nil"}];
}

- (void)initWithStartDate:(uint64_t)a1 endDate:(uint64_t)a2 type:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAECalendarAvailabilitySpan.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"endDate != nil"}];
}

- (void)initWithStartDate:(uint64_t)a1 endDate:(uint64_t)a2 type:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAECalendarAvailabilitySpan.m" lineNumber:21 description:@"'startDate' must not be after 'endDate'"];
}

@end