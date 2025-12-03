@interface _DASLogEntry
+ (id)logEntryForDate:(id)date category:(id)category message:(id)message;
- (id)description;
@end

@implementation _DASLogEntry

+ (id)logEntryForDate:(id)date category:(id)category message:(id)message
{
  messageCopy = message;
  categoryCopy = category;
  dateCopy = date;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setDate:dateCopy];

  [v10 setCategory:categoryCopy];
  [v10 setMessage:messageCopy];

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