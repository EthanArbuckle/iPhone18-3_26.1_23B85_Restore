@interface HDXPCAlarmEvent
+ (id)_eventWithName:(id)name;
- (BOOL)isEqual:(id)equal;
- (HDXPCAlarmEvent)initWithName:(id)name fireDate:(id)date isUserVisible:(BOOL)visible;
- (id)description;
- (unint64_t)hash;
@end

@implementation HDXPCAlarmEvent

+ (id)_eventWithName:(id)name
{
  nameCopy = name;
  v5 = [self alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 initWithName:nameCopy fireDate:date isUserVisible:0];

  return v7;
}

- (HDXPCAlarmEvent)initWithName:(id)name fireDate:(id)date isUserVisible:(BOOL)visible
{
  nameCopy = name;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = HDXPCAlarmEvent;
  v10 = [(HDXPCAlarmEvent *)&v16 init];
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
    name2 = [(HDXPCAlarmEvent *)self name];
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
  name = [(HDXPCAlarmEvent *)self name];
  v3 = [name hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = self->_name;
  v6 = HDDiagnosticStringFromDate(self->_fireDate);
  v7 = [v3 stringWithFormat:@"<%@:%p name:%@ fireDate:%@ isUserVisible:%d>", v4, self, name, v6, self->_isUserVisible];

  return v7;
}

@end