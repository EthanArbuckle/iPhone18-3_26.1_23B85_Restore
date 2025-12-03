@interface MTAlarmIntentHandler
+ (id)createUserInfoWithIntentName:(id)name alarmIDString:(id)string time:(id)time label:(id)label;
- (MTAlarmIntentHandler)initWithAlarmManager:(id)manager;
@end

@implementation MTAlarmIntentHandler

- (MTAlarmIntentHandler)initWithAlarmManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = MTAlarmIntentHandler;
  v6 = [(MTAlarmIntentHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alarmManager, manager);
  }

  return v7;
}

+ (id)createUserInfoWithIntentName:(id)name alarmIDString:(id)string time:(id)time label:(id)label
{
  nameCopy = name;
  stringCopy = string;
  timeCopy = time;
  labelCopy = label;
  if ([nameCopy length])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:nameCopy forKeyedSubscript:@"identifier"];
    if (stringCopy)
    {
      [dictionary setObject:stringCopy forKeyedSubscript:@"alarmID"];
    }

    if (timeCopy)
    {
      [dictionary setObject:timeCopy forKeyedSubscript:@"time"];
    }

    if (labelCopy)
    {
      [dictionary setObject:labelCopy forKeyedSubscript:@"label"];
    }

    v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end