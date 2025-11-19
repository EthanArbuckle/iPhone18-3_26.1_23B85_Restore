@interface _DASLogEntry
+ (id)logEntryForDate:(id)a3 category:(id)a4 message:(id)a5;
- (id)description;
@end

@implementation _DASLogEntry

+ (id)logEntryForDate:(id)a3 category:(id)a4 message:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setDate:v9];

  [v10 setCategory:v8];
  [v10 setMessage:v7];

  return v10;
}

- (id)description
{
  v3 = defaultFormatter();
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 stringFromDate:self->_date];
  v6 = [v4 stringWithFormat:@"%@ %@: %@", v5, self->_category, self->_message];

  return v6;
}

@end