@interface DSThermalLogLine
- (BOOL)isTrapEntry;
- (BOOL)isTrapEvent;
- (DSThermalLogLine)initWithLogLine:(id)a3;
@end

@implementation DSThermalLogLine

- (DSThermalLogLine)initWithLogLine:(id)a3
{
  v13.receiver = self;
  v13.super_class = DSThermalLogLine;
  v3 = [(DSLogLine *)&v13 initWithLogLine:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(DSLogLine *)v3 type];
    eventType = v4->_eventType;
    v4->_eventType = v5;

    [(DSLogLine *)v4 setType:@"Thermal"];
    v7 = [(DSLogLine *)v4 fields];
    v8 = [v7 count] - 1;

    if ([(DSThermalLogLine *)v4 isTrapEvent])
    {
      v9 = [(DSLogLine *)v4 fields];
      v10 = [v9 count];

      if (v10 >= 4)
      {
        v4->_reason = [(DSLogLine *)v4 stringFromFieldAtIndex:2];
      }
    }

    v11 = [(DSLogLine *)v4 integerFromFieldAtIndex:v8]/ 100.0;
    v4->_maxTemp = v11;
  }

  return v4;
}

- (BOOL)isTrapEvent
{
  v3 = [(DSThermalLogLine *)self eventType];
  if ([v3 isEqualToString:@"ThermalUIAlertEnter"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(DSThermalLogLine *)self eventType];
    v4 = [v5 isEqualToString:@"ThermalUIAlertExit"];
  }

  return v4;
}

- (BOOL)isTrapEntry
{
  v2 = [(DSThermalLogLine *)self eventType];
  v3 = [v2 isEqualToString:@"ThermalUIAlertEnter"];

  return v3;
}

@end