@interface EFXPCAlarmEvent
+ (id)_eventWithName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EFXPCAlarmEvent)initWithName:(id)a3 fireDate:(id)a4 isUserVisible:(BOOL)a5;
- (unint64_t)hash;
@end

@implementation EFXPCAlarmEvent

+ (id)_eventWithName:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 initWithName:v4 fireDate:v6 isUserVisible:0];

  return v7;
}

- (EFXPCAlarmEvent)initWithName:(id)a3 fireDate:(id)a4 isUserVisible:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = EFXPCAlarmEvent;
  v10 = [(EFXPCAlarmEvent *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [v9 copy];
    fireDate = v10->_fireDate;
    v10->_fireDate = v13;

    v10->_isUserVisible = a5;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 name];
    v6 = [(EFXPCAlarmEvent *)self name];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(EFXPCAlarmEvent *)self name];
  v3 = [v2 hash];

  return v3;
}

@end