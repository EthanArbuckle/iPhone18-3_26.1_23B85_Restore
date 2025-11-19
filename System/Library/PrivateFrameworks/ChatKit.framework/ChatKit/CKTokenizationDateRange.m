@interface CKTokenizationDateRange
- (CKTokenizationDateRange)initWithStartDate:(id)a3 endDate:(id)a4;
- (id)serializeToStringArray;
@end

@implementation CKTokenizationDateRange

- (CKTokenizationDateRange)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKTokenizationDateRange;
  v9 = [(CKTokenizationDateRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_endDate, a4);
  }

  return v10;
}

- (id)serializeToStringArray
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = +[CKTokenizationDateParser serializationDateFormatter];
  v4 = [v3 stringFromDate:self->_startDate];
  v9[0] = v4;
  v5 = +[CKTokenizationDateParser serializationDateFormatter];
  v6 = [v5 stringFromDate:self->_endDate];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  return v7;
}

@end