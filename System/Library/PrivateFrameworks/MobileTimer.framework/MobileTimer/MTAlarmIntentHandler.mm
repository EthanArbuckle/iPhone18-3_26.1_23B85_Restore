@interface MTAlarmIntentHandler
+ (id)createUserInfoWithIntentName:(id)a3 alarmIDString:(id)a4 time:(id)a5 label:(id)a6;
- (MTAlarmIntentHandler)initWithAlarmManager:(id)a3;
@end

@implementation MTAlarmIntentHandler

- (MTAlarmIntentHandler)initWithAlarmManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTAlarmIntentHandler;
  v6 = [(MTAlarmIntentHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alarmManager, a3);
  }

  return v7;
}

+ (id)createUserInfoWithIntentName:(id)a3 alarmIDString:(id)a4 time:(id)a5 label:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 length])
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    [v13 setObject:v9 forKeyedSubscript:@"identifier"];
    if (v10)
    {
      [v13 setObject:v10 forKeyedSubscript:@"alarmID"];
    }

    if (v11)
    {
      [v13 setObject:v11 forKeyedSubscript:@"time"];
    }

    if (v12)
    {
      [v13 setObject:v12 forKeyedSubscript:@"label"];
    }

    v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end