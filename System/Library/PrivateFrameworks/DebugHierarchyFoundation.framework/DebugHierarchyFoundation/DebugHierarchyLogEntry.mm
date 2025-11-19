@interface DebugHierarchyLogEntry
+ (id)errorLogEntryWithTitle:(id)a3 message:(id)a4 methodSignature:(id)a5;
+ (id)errorLogEntryWithTitle:(id)a3 message:(id)a4 methodSignature:(id)a5 environmentInfo:(id)a6;
+ (id)formattedSummaryOfLogs:(id)a3;
+ (id)logEntryWithDictionary:(id)a3;
+ (id)warningLogEntryWithTitle:(id)a3 message:(id)a4 methodSignature:(id)a5;
+ (id)warningLogEntryWithTitle:(id)a3 message:(id)a4 methodSignature:(id)a5 environmentInfo:(id)a6;
- (DebugHierarchyLogEntry)initWithDictionary:(id)a3;
- (DebugHierarchyLogEntry)initWithSeverity:(unint64_t)a3 title:(id)a4 message:(id)a5 methodSignature:(id)a6 environmentInfo:(id)a7;
- (id)dictionaryRepresentation;
- (id)formattedSummary;
@end

@implementation DebugHierarchyLogEntry

+ (id)errorLogEntryWithTitle:(id)a3 message:(id)a4 methodSignature:(id)a5 environmentInfo:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithSeverity:0 title:v13 message:v12 methodSignature:v11 environmentInfo:v10];

  return v14;
}

+ (id)warningLogEntryWithTitle:(id)a3 message:(id)a4 methodSignature:(id)a5 environmentInfo:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithSeverity:1 title:v13 message:v12 methodSignature:v11 environmentInfo:v10];

  return v14;
}

+ (id)errorLogEntryWithTitle:(id)a3 message:(id)a4 methodSignature:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithSeverity:0 title:v10 message:v9 methodSignature:v8 environmentInfo:0];

  return v11;
}

+ (id)warningLogEntryWithTitle:(id)a3 message:(id)a4 methodSignature:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithSeverity:1 title:v10 message:v9 methodSignature:v8 environmentInfo:0];

  return v11;
}

+ (id)logEntryWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

+ (id)formattedSummaryOfLogs:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) formattedSummary];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:@"\n\n"];

  return v11;
}

- (DebugHierarchyLogEntry)initWithSeverity:(unint64_t)a3 title:(id)a4 message:(id)a5 methodSignature:(id)a6 environmentInfo:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = DebugHierarchyLogEntry;
  v17 = [(DebugHierarchyLogEntry *)&v21 init];
  if (v17)
  {
    v18 = +[NSDate date];
    timestamp = v17->_timestamp;
    v17->_timestamp = v18;

    v17->_severity = a3;
    objc_storeStrong(&v17->_title, a4);
    objc_storeStrong(&v17->_message, a5);
    objc_storeStrong(&v17->_methodSignature, a6);
    objc_storeStrong(&v17->_environmentInfo, a7);
  }

  return v17;
}

- (DebugHierarchyLogEntry)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DebugHierarchyLogEntry;
  v5 = [(DebugHierarchyLogEntry *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"logTimestampKey"];
    v7 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v6 integerValue]);
    timestamp = v5->_timestamp;
    v5->_timestamp = v7;

    v9 = [v4 objectForKeyedSubscript:@"logSeverityKey"];
    v5->_severity = [v9 unsignedIntegerValue];

    v10 = [v4 objectForKeyedSubscript:@"logTitleKey"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 objectForKeyedSubscript:@"logMessageKey"];
    message = v5->_message;
    v5->_message = v12;

    v14 = [v4 objectForKeyedSubscript:@"logMethodKey"];
    methodSignature = v5->_methodSignature;
    v5->_methodSignature = v14;

    v16 = [v4 objectForKeyedSubscript:@"logEnvironmentKey"];
    environmentInfo = v5->_environmentInfo;
    v5->_environmentInfo = v16;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:5];
  v4 = [(DebugHierarchyLogEntry *)self timestamp];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"logTimestampKey"];

  v6 = [NSNumber numberWithUnsignedInteger:[(DebugHierarchyLogEntry *)self severity]];
  [v3 setObject:v6 forKeyedSubscript:@"logSeverityKey"];

  v7 = [(DebugHierarchyLogEntry *)self title];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(DebugHierarchyLogEntry *)self title];
    [v3 setObject:v9 forKeyedSubscript:@"logTitleKey"];
  }

  v10 = [(DebugHierarchyLogEntry *)self message];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(DebugHierarchyLogEntry *)self message];
    [v3 setObject:v12 forKeyedSubscript:@"logMessageKey"];
  }

  v13 = [(DebugHierarchyLogEntry *)self methodSignature];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(DebugHierarchyLogEntry *)self methodSignature];
    [v3 setObject:v15 forKeyedSubscript:@"logMethodKey"];
  }

  v16 = [(DebugHierarchyLogEntry *)self environmentInfo];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [(DebugHierarchyLogEntry *)self environmentInfo];
    [v3 setObject:v18 forKeyedSubscript:@"logEnvironmentKey"];
  }

  v19 = [v3 copy];

  return v19;
}

- (id)formattedSummary
{
  v3 = [(DebugHierarchyLogEntry *)self title];
  v4 = [(DebugHierarchyLogEntry *)self message];
  v5 = [(DebugHierarchyLogEntry *)self methodSignature];
  v6 = [NSString stringWithFormat:@"Log Title: %@\nLog Details: %@\nLog Method: %@", v3, v4, v5];

  return v6;
}

@end