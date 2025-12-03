@interface EFXPCAlarmEvent
+ (id)_eventWithName:(id)name;
- (BOOL)isEqual:(id)equal;
- (EFXPCAlarmEvent)initWithName:(id)name fireDate:(id)date isUserVisible:(BOOL)visible;
- (unint64_t)hash;
@end

@implementation EFXPCAlarmEvent

+ (id)_eventWithName:(id)name
{
  nameCopy = name;
  v5 = [self alloc];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [v5 initWithName:nameCopy fireDate:date isUserVisible:0];

  return v7;
}

- (EFXPCAlarmEvent)initWithName:(id)name fireDate:(id)date isUserVisible:(BOOL)visible
{
  nameCopy = name;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = EFXPCAlarmEvent;
  v10 = [(EFXPCAlarmEvent *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [dateCopy copy];
    fireDate = v10->_fireDate;
    v10->_fireDate = v13;

    v10->_isUserVisible = visible;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [equalCopy name];
    name2 = [(EFXPCAlarmEvent *)self name];
    v7 = [name isEqualToString:name2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  name = [(EFXPCAlarmEvent *)self name];
  v3 = [name hash];

  return v3;
}

@end