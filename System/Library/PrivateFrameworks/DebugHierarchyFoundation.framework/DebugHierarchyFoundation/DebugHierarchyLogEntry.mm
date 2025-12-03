@interface DebugHierarchyLogEntry
+ (id)errorLogEntryWithTitle:(id)title message:(id)message methodSignature:(id)signature;
+ (id)errorLogEntryWithTitle:(id)title message:(id)message methodSignature:(id)signature environmentInfo:(id)info;
+ (id)formattedSummaryOfLogs:(id)logs;
+ (id)logEntryWithDictionary:(id)dictionary;
+ (id)warningLogEntryWithTitle:(id)title message:(id)message methodSignature:(id)signature;
+ (id)warningLogEntryWithTitle:(id)title message:(id)message methodSignature:(id)signature environmentInfo:(id)info;
- (DebugHierarchyLogEntry)initWithDictionary:(id)dictionary;
- (DebugHierarchyLogEntry)initWithSeverity:(unint64_t)severity title:(id)title message:(id)message methodSignature:(id)signature environmentInfo:(id)info;
- (id)dictionaryRepresentation;
- (id)formattedSummary;
@end

@implementation DebugHierarchyLogEntry

+ (id)errorLogEntryWithTitle:(id)title message:(id)message methodSignature:(id)signature environmentInfo:(id)info
{
  infoCopy = info;
  signatureCopy = signature;
  messageCopy = message;
  titleCopy = title;
  v14 = [[self alloc] initWithSeverity:0 title:titleCopy message:messageCopy methodSignature:signatureCopy environmentInfo:infoCopy];

  return v14;
}

+ (id)warningLogEntryWithTitle:(id)title message:(id)message methodSignature:(id)signature environmentInfo:(id)info
{
  infoCopy = info;
  signatureCopy = signature;
  messageCopy = message;
  titleCopy = title;
  v14 = [[self alloc] initWithSeverity:1 title:titleCopy message:messageCopy methodSignature:signatureCopy environmentInfo:infoCopy];

  return v14;
}

+ (id)errorLogEntryWithTitle:(id)title message:(id)message methodSignature:(id)signature
{
  signatureCopy = signature;
  messageCopy = message;
  titleCopy = title;
  v11 = [[self alloc] initWithSeverity:0 title:titleCopy message:messageCopy methodSignature:signatureCopy environmentInfo:0];

  return v11;
}

+ (id)warningLogEntryWithTitle:(id)title message:(id)message methodSignature:(id)signature
{
  signatureCopy = signature;
  messageCopy = message;
  titleCopy = title;
  v11 = [[self alloc] initWithSeverity:1 title:titleCopy message:messageCopy methodSignature:signatureCopy environmentInfo:0];

  return v11;
}

+ (id)logEntryWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

+ (id)formattedSummaryOfLogs:(id)logs
{
  logsCopy = logs;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [logsCopy count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = logsCopy;
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

        formattedSummary = [*(*(&v13 + 1) + 8 * i) formattedSummary];
        [v4 addObject:formattedSummary];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:@"\n\n"];

  return v11;
}

- (DebugHierarchyLogEntry)initWithSeverity:(unint64_t)severity title:(id)title message:(id)message methodSignature:(id)signature environmentInfo:(id)info
{
  titleCopy = title;
  messageCopy = message;
  signatureCopy = signature;
  infoCopy = info;
  v21.receiver = self;
  v21.super_class = DebugHierarchyLogEntry;
  v17 = [(DebugHierarchyLogEntry *)&v21 init];
  if (v17)
  {
    v18 = +[NSDate date];
    timestamp = v17->_timestamp;
    v17->_timestamp = v18;

    v17->_severity = severity;
    objc_storeStrong(&v17->_title, title);
    objc_storeStrong(&v17->_message, message);
    objc_storeStrong(&v17->_methodSignature, signature);
    objc_storeStrong(&v17->_environmentInfo, info);
  }

  return v17;
}

- (DebugHierarchyLogEntry)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = DebugHierarchyLogEntry;
  v5 = [(DebugHierarchyLogEntry *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"logTimestampKey"];
    v7 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v6 integerValue]);
    timestamp = v5->_timestamp;
    v5->_timestamp = v7;

    v9 = [dictionaryCopy objectForKeyedSubscript:@"logSeverityKey"];
    v5->_severity = [v9 unsignedIntegerValue];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"logTitleKey"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"logMessageKey"];
    message = v5->_message;
    v5->_message = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"logMethodKey"];
    methodSignature = v5->_methodSignature;
    v5->_methodSignature = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"logEnvironmentKey"];
    environmentInfo = v5->_environmentInfo;
    v5->_environmentInfo = v16;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:5];
  timestamp = [(DebugHierarchyLogEntry *)self timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"logTimestampKey"];

  v6 = [NSNumber numberWithUnsignedInteger:[(DebugHierarchyLogEntry *)self severity]];
  [v3 setObject:v6 forKeyedSubscript:@"logSeverityKey"];

  title = [(DebugHierarchyLogEntry *)self title];
  v8 = [title length];

  if (v8)
  {
    title2 = [(DebugHierarchyLogEntry *)self title];
    [v3 setObject:title2 forKeyedSubscript:@"logTitleKey"];
  }

  message = [(DebugHierarchyLogEntry *)self message];
  v11 = [message length];

  if (v11)
  {
    message2 = [(DebugHierarchyLogEntry *)self message];
    [v3 setObject:message2 forKeyedSubscript:@"logMessageKey"];
  }

  methodSignature = [(DebugHierarchyLogEntry *)self methodSignature];
  v14 = [methodSignature length];

  if (v14)
  {
    methodSignature2 = [(DebugHierarchyLogEntry *)self methodSignature];
    [v3 setObject:methodSignature2 forKeyedSubscript:@"logMethodKey"];
  }

  environmentInfo = [(DebugHierarchyLogEntry *)self environmentInfo];
  v17 = [environmentInfo length];

  if (v17)
  {
    environmentInfo2 = [(DebugHierarchyLogEntry *)self environmentInfo];
    [v3 setObject:environmentInfo2 forKeyedSubscript:@"logEnvironmentKey"];
  }

  v19 = [v3 copy];

  return v19;
}

- (id)formattedSummary
{
  title = [(DebugHierarchyLogEntry *)self title];
  message = [(DebugHierarchyLogEntry *)self message];
  methodSignature = [(DebugHierarchyLogEntry *)self methodSignature];
  v6 = [NSString stringWithFormat:@"Log Title: %@\nLog Details: %@\nLog Method: %@", title, message, methodSignature];

  return v6;
}

@end