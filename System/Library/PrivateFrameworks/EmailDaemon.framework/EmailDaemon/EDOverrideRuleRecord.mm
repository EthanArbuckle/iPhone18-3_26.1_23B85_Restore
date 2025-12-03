@interface EDOverrideRuleRecord
+ (id)recordWithCategory:(id)category date:(id)date message:(id)message;
- (EDOverrideRuleRecord)initWithCategory:(id)category date:(id)date message:(id)message;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation EDOverrideRuleRecord

- (EDOverrideRuleRecord)initWithCategory:(id)category date:(id)date message:(id)message
{
  categoryCopy = category;
  dateCopy = date;
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDOverrideRuleRecord.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"message != nil"}];
  }

  v17.receiver = self;
  v17.super_class = EDOverrideRuleRecord;
  v13 = [(EDOverrideRuleRecord *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_category, category);
    objc_storeStrong(&v14->_date, date);
    objc_storeStrong(&v14->_message, message);
  }

  return v14;
}

+ (id)recordWithCategory:(id)category date:(id)date message:(id)message
{
  categoryCopy = category;
  dateCopy = date;
  messageCopy = message;
  v11 = [[self alloc] initWithCategory:categoryCopy date:dateCopy message:messageCopy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  category = [(EDOverrideRuleRecord *)self category];
  date = [(EDOverrideRuleRecord *)self date];
  message = [(EDOverrideRuleRecord *)self message];
  v8 = [v4 initWithCategory:category date:date message:message];

  return v8;
}

@end