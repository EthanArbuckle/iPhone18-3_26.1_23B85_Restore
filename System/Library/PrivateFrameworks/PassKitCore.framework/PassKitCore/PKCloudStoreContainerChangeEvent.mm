@interface PKCloudStoreContainerChangeEvent
+ (id)_csvSafeString:(id)string;
+ (id)_csvSafeStringForEvent:(id)event;
+ (id)_dateFormatter;
+ (id)csvStringForEvents:(id)events;
+ (id)intervalBeginEventWithType:(unint64_t)type containerIdentifier:(id)identifier stateName:(id)name objectNames:(id)names error:(id)error changeToken:(id)token operationGroupName:(id)groupName operationGroupNameSuffix:(id)self0;
+ (id)intervalEndEventWithBeginUniqueIdentifier:(id)identifier error:(id)error;
+ (id)signpostEventWithType:(unint64_t)type containerIdentifier:(id)identifier stateName:(id)name objectNames:(id)names error:(id)error changeToken:(id)token operationGroupName:(id)groupName operationGroupNameSuffix:(id)self0;
+ (id)writeCSVFileForEvents:(id)events error:(id *)error;
+ (void)populateEndIntervalEvent:(id)event withBeginIntervalEvent:(id)intervalEvent;
- (BOOL)isEqual:(id)equal;
- (PKCloudStoreContainerChangeEvent)initWithChangeType:(unint64_t)type beginUniqueIdentifier:(id)identifier error:(id)error;
- (PKCloudStoreContainerChangeEvent)initWithCoder:(id)coder;
- (PKCloudStoreContainerChangeEvent)initWithEventType:(unint64_t)type changeType:(unint64_t)changeType containerIdentifier:(id)identifier beginUniqueIdentifier:(id)uniqueIdentifier stateName:(id)name objectNames:(id)names error:(id)error changeToken:(id)self0 operationGroupName:(id)self1 operationGroupNameSuffix:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudStoreContainerChangeEvent

- (PKCloudStoreContainerChangeEvent)initWithChangeType:(unint64_t)type beginUniqueIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = PKCloudStoreContainerChangeEvent;
  v11 = [(PKCloudStoreContainerChangeEvent *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_changeType = type;
    objc_storeStrong(&v11->_beginIntervalEventIdentifier, identifier);
    v13 = [errorCopy debugDescription];
    errorDescription = v12->_errorDescription;
    v12->_errorDescription = v13;

    date = [MEMORY[0x1E695DF00] date];
    timestamp = v12->_timestamp;
    v12->_timestamp = date;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v12->_identifier;
    v12->_identifier = uUIDString;
  }

  return v12;
}

- (PKCloudStoreContainerChangeEvent)initWithEventType:(unint64_t)type changeType:(unint64_t)changeType containerIdentifier:(id)identifier beginUniqueIdentifier:(id)uniqueIdentifier stateName:(id)name objectNames:(id)names error:(id)error changeToken:(id)self0 operationGroupName:(id)self1 operationGroupNameSuffix:(id)self2
{
  identifierCopy = identifier;
  nameCopy = name;
  namesCopy = names;
  tokenCopy = token;
  groupNameCopy = groupName;
  suffixCopy = suffix;
  v19 = [(PKCloudStoreContainerChangeEvent *)self initWithChangeType:changeType beginUniqueIdentifier:uniqueIdentifier error:error];
  v20 = v19;
  if (v19)
  {
    v19->_eventType = type;
    objc_storeStrong(&v19->_containerIdentifier, identifier);
    objc_storeStrong(&v20->_stateName, name);
    objc_storeStrong(&v20->_objectNames, names);
    objc_storeStrong(&v20->_changeToken, token);
    objc_storeStrong(&v20->_operationGroupName, groupName);
    objc_storeStrong(&v20->_operationGroupNameSuffix, suffix);
  }

  return v20;
}

+ (id)signpostEventWithType:(unint64_t)type containerIdentifier:(id)identifier stateName:(id)name objectNames:(id)names error:(id)error changeToken:(id)token operationGroupName:(id)groupName operationGroupNameSuffix:(id)self0
{
  suffixCopy = suffix;
  groupNameCopy = groupName;
  tokenCopy = token;
  errorCopy = error;
  namesCopy = names;
  nameCopy = name;
  identifierCopy = identifier;
  v23 = [[PKCloudStoreContainerChangeEvent alloc] initWithEventType:type changeType:1 containerIdentifier:identifierCopy beginUniqueIdentifier:0 stateName:nameCopy objectNames:namesCopy error:errorCopy changeToken:tokenCopy operationGroupName:groupNameCopy operationGroupNameSuffix:suffixCopy];

  return v23;
}

+ (id)intervalBeginEventWithType:(unint64_t)type containerIdentifier:(id)identifier stateName:(id)name objectNames:(id)names error:(id)error changeToken:(id)token operationGroupName:(id)groupName operationGroupNameSuffix:(id)self0
{
  suffixCopy = suffix;
  groupNameCopy = groupName;
  tokenCopy = token;
  errorCopy = error;
  namesCopy = names;
  nameCopy = name;
  identifierCopy = identifier;
  v23 = [[PKCloudStoreContainerChangeEvent alloc] initWithEventType:type changeType:2 containerIdentifier:identifierCopy beginUniqueIdentifier:0 stateName:nameCopy objectNames:namesCopy error:errorCopy changeToken:tokenCopy operationGroupName:groupNameCopy operationGroupNameSuffix:suffixCopy];

  return v23;
}

+ (id)intervalEndEventWithBeginUniqueIdentifier:(id)identifier error:(id)error
{
  errorCopy = error;
  identifierCopy = identifier;
  v7 = [[PKCloudStoreContainerChangeEvent alloc] initWithChangeType:2 beginUniqueIdentifier:identifierCopy error:errorCopy];

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  changeType = self->_changeType;
  v5 = @"unknown";
  if (changeType == 1)
  {
    v5 = @"signpost";
  }

  if (changeType == 2)
  {
    v6 = @"interval";
  }

  else
  {
    v6 = v5;
  }

  [v3 setObject:v6 forKeyedSubscript:@"changeType"];
  v7 = PKCloudStoreContainerChangeEventTypeToString(self->_eventType);
  [v3 setObject:v7 forKeyedSubscript:@"eventType"];

  v8 = [(NSDate *)self->_timestamp description];
  [v3 setObject:v8 forKeyedSubscript:@"timestamp"];

  if ([(NSString *)self->_containerIdentifier length])
  {
    [v3 setObject:self->_containerIdentifier forKeyedSubscript:@"containerIdentifier"];
  }

  if ([(NSString *)self->_beginIntervalEventIdentifier length])
  {
    [v3 setObject:self->_beginIntervalEventIdentifier forKeyedSubscript:@"beginIntervalEventIdentifier"];
  }

  if ([@"operationGroupName" length])
  {
    [v3 setObject:self->_operationGroupName forKeyedSubscript:@"operationGroupName"];
  }

  if ([(NSString *)self->_operationGroupNameSuffix length])
  {
    [v3 setObject:self->_operationGroupNameSuffix forKeyedSubscript:@"operationGroupNameSuffix"];
  }

  if ([(NSString *)self->_stateName length])
  {
    [v3 setObject:self->_stateName forKeyedSubscript:@"stateName"];
  }

  if ([(NSString *)self->_errorDescription length])
  {
    [v3 setObject:self->_errorDescription forKeyedSubscript:@"errorDescription"];
  }

  if ([(NSData *)self->_changeToken length])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSData hash](self->_changeToken, "hash")}];
    [v3 setObject:v9 forKeyedSubscript:@"changeToken"];
  }

  if ([(NSArray *)self->_objectNames count])
  {
    [v3 setObject:self->_objectNames forKeyedSubscript:@"objectNames"];
  }

  if (self->_timeInterval != 0.0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v3 setObject:v10 forKeyedSubscript:@"timeInterval"];
  }

  v11 = [v3 copy];

  return v11;
}

+ (id)csvStringForEvents:(id)events
{
  v25[13] = *MEMORY[0x1E69E9840];
  v25[0] = @"identifier";
  v25[1] = @"changeType";
  v25[2] = @"eventType";
  v25[3] = @"containerIdentifier";
  v25[4] = @"beginIntervalEventIdentifier";
  v25[5] = @"operationGroupName";
  v25[6] = @"operationGroupNameSuffix";
  v25[7] = @"timestamp";
  v25[8] = @"errorDescription";
  v25[9] = @"changeToken";
  v25[10] = @"stateName";
  v25[11] = @"objectNames";
  v25[12] = @"timeInterval";
  v3 = MEMORY[0x1E695DEC8];
  eventsCopy = events;
  v5 = [v3 arrayWithObjects:v25 count:13];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v6 mutableCopy];

  [v7 appendString:@"\n"];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
  v24 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v10 = [eventsCopy sortedArrayUsingDescriptors:v9];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [PKCloudStoreContainerChangeEvent _csvSafeStringForEvent:*(*(&v19 + 1) + 8 * i), v19];
        [v7 appendString:v16];

        [v7 appendString:@"\n"];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [v7 copy];

  return v17;
}

+ (id)writeCSVFileForEvents:(id)events error:(id *)error
{
  v31[2] = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:@"cloudStoreContainerChangeHistory"];

  v9 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v12 = [v9 stringWithFormat:@"changeHistory-%ld.csv", v11];

  v13 = [v8 stringByAppendingPathComponent:v12];
  if (([defaultManager fileExistsAtPath:v8] & 1) != 0 || (v29 = 0, objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v8, 1, 0, &v29), (v14 = v29) == 0))
  {
    v18 = [PKCloudStoreContainerChangeEvent csvStringForEvents:eventsCopy];
    v19 = [v18 dataUsingEncoding:4];

    if ([defaultManager createFileAtPath:v13 contents:v19 attributes:0])
    {
      v17 = v13;
      v15 = 0;
    }

    else
    {
      v28 = eventsCopy;
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v31[0] = @"Error";
      v22 = *MEMORY[0x1E696A598];
      v30[0] = v21;
      v30[1] = v22;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating %@", v12];
      v24 = v23 = error;
      v31[1] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      v15 = [v20 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v25];

      if (v23)
      {
        v26 = v15;
        v17 = 0;
        *v23 = v15;
      }

      else
      {
        v17 = 0;
      }

      eventsCopy = v28;
    }
  }

  else
  {
    v15 = v14;
    if (error)
    {
      v16 = v14;
      v17 = 0;
      *error = v15;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

+ (void)populateEndIntervalEvent:(id)event withBeginIntervalEvent:(id)intervalEvent
{
  intervalEventCopy = intervalEvent;
  eventCopy = event;
  [eventCopy setChangeType:{objc_msgSend(intervalEventCopy, "changeType")}];
  [eventCopy setEventType:{objc_msgSend(intervalEventCopy, "eventType")}];
  containerIdentifier = [intervalEventCopy containerIdentifier];
  [eventCopy setContainerIdentifier:containerIdentifier];

  operationGroupName = [intervalEventCopy operationGroupName];
  [eventCopy setOperationGroupName:operationGroupName];

  operationGroupNameSuffix = [intervalEventCopy operationGroupNameSuffix];
  [eventCopy setOperationGroupNameSuffix:operationGroupNameSuffix];

  stateName = [intervalEventCopy stateName];
  [eventCopy setStateName:stateName];

  changeToken = [intervalEventCopy changeToken];
  [eventCopy setChangeToken:changeToken];

  objectNames = [intervalEventCopy objectNames];
  [eventCopy setObjectNames:objectNames];

  timestamp = [eventCopy timestamp];
  timestamp2 = [intervalEventCopy timestamp];

  [timestamp timeIntervalSinceDate:timestamp2];
  v15 = v14;

  [eventCopy setTimeInterval:v15];
}

- (PKCloudStoreContainerChangeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = PKCloudStoreContainerChangeEvent;
  v5 = [(PKCloudStoreContainerChangeEvent *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_changeType = [coderCopy decodeIntegerForKey:@"changeType"];
    v5->_eventType = [coderCopy decodeIntegerForKey:@"eventType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beginIntervalEventIdentifier"];
    beginIntervalEventIdentifier = v5->_beginIntervalEventIdentifier;
    v5->_beginIntervalEventIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationGroupName"];
    operationGroupName = v5->_operationGroupName;
    v5->_operationGroupName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationGroupNameSuffix"];
    operationGroupNameSuffix = v5->_operationGroupNameSuffix;
    v5->_operationGroupNameSuffix = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateName"];
    stateName = v5->_stateName;
    v5->_stateName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changeToken"];
    changeToken = v5->_changeToken;
    v5->_changeToken = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorDescription"];
    errorDescription = v5->_errorDescription;
    v5->_errorDescription = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"objectNames"];
    objectNames = v5->_objectNames;
    v5->_objectNames = v27;

    v5->_timeInterval = [coderCopy decodeIntegerForKey:@"timeInterval"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_changeType forKey:@"changeType"];
  [coderCopy encodeInteger:self->_eventType forKey:@"eventType"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_containerIdentifier forKey:@"containerIdentifier"];
  [coderCopy encodeObject:self->_beginIntervalEventIdentifier forKey:@"beginIntervalEventIdentifier"];
  [coderCopy encodeObject:self->_operationGroupName forKey:@"operationGroupName"];
  [coderCopy encodeObject:self->_operationGroupNameSuffix forKey:@"operationGroupNameSuffix"];
  [coderCopy encodeObject:self->_stateName forKey:@"stateName"];
  [coderCopy encodeObject:self->_changeToken forKey:@"changeToken"];
  [coderCopy encodeObject:self->_errorDescription forKey:@"errorDescription"];
  [coderCopy encodeObject:self->_objectNames forKey:@"objectNames"];
  [coderCopy encodeInteger:self->_timeInterval forKey:@"timeInterval"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKCloudStoreContainerChangeEvent allocWithZone:](PKCloudStoreContainerChangeEvent init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v5->_changeType = self->_changeType;
  v5->_eventType = self->_eventType;
  v8 = [(NSDate *)self->_timestamp copyWithZone:zone];
  timestamp = v5->_timestamp;
  v5->_timestamp = v8;

  v10 = [(NSString *)self->_containerIdentifier copyWithZone:zone];
  containerIdentifier = v5->_containerIdentifier;
  v5->_containerIdentifier = v10;

  v12 = [(NSString *)self->_beginIntervalEventIdentifier copyWithZone:zone];
  beginIntervalEventIdentifier = v5->_beginIntervalEventIdentifier;
  v5->_beginIntervalEventIdentifier = v12;

  v14 = [(NSString *)self->_operationGroupName copyWithZone:zone];
  operationGroupName = v5->_operationGroupName;
  v5->_operationGroupName = v14;

  v16 = [(NSString *)self->_operationGroupNameSuffix copyWithZone:zone];
  operationGroupNameSuffix = v5->_operationGroupNameSuffix;
  v5->_operationGroupNameSuffix = v16;

  v18 = [(NSString *)self->_stateName copyWithZone:zone];
  stateName = v5->_stateName;
  v5->_stateName = v18;

  v20 = [(NSString *)self->_errorDescription copyWithZone:zone];
  errorDescription = v5->_errorDescription;
  v5->_errorDescription = v20;

  v22 = [(NSData *)self->_changeToken copyWithZone:zone];
  changeToken = v5->_changeToken;
  v5->_changeToken = v22;

  v24 = [(NSArray *)self->_objectNames copyWithZone:zone];
  objectNames = v5->_objectNames;
  v5->_objectNames = v24;

  v5->_timeInterval = self->_timeInterval;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_54;
  }

  v8 = v6[1];
  v9 = self->_identifier;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (!v9 || !v10)
    {
      goto LABEL_53;
    }

    v12 = [(NSString *)v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_54;
    }
  }

  if (self->_eventType != *(v7 + 3) || self->_changeType != *(v7 + 2))
  {
    goto LABEL_54;
  }

  timestamp = self->_timestamp;
  v14 = *(v7 + 4);
  if (timestamp && v14)
  {
    if (([(NSDate *)timestamp isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (timestamp != v14)
  {
    goto LABEL_54;
  }

  v15 = *(v7 + 5);
  v9 = self->_containerIdentifier;
  v16 = v15;
  v11 = v16;
  if (v9 == v16)
  {
  }

  else
  {
    if (!v9 || !v16)
    {
      goto LABEL_53;
    }

    v17 = [(NSString *)v9 isEqualToString:v16];

    if (!v17)
    {
      goto LABEL_54;
    }
  }

  v18 = *(v7 + 6);
  v9 = self->_beginIntervalEventIdentifier;
  v19 = v18;
  v11 = v19;
  if (v9 == v19)
  {
  }

  else
  {
    if (!v9 || !v19)
    {
      goto LABEL_53;
    }

    v20 = [(NSString *)v9 isEqualToString:v19];

    if (!v20)
    {
      goto LABEL_54;
    }
  }

  v21 = *(v7 + 7);
  v9 = self->_operationGroupName;
  v22 = v21;
  v11 = v22;
  if (v9 == v22)
  {
  }

  else
  {
    if (!v9 || !v22)
    {
      goto LABEL_53;
    }

    v23 = [(NSString *)v9 isEqualToString:v22];

    if (!v23)
    {
      goto LABEL_54;
    }
  }

  v24 = *(v7 + 8);
  v9 = self->_operationGroupNameSuffix;
  v25 = v24;
  v11 = v25;
  if (v9 == v25)
  {
  }

  else
  {
    if (!v9 || !v25)
    {
      goto LABEL_53;
    }

    v26 = [(NSString *)v9 isEqualToString:v25];

    if (!v26)
    {
      goto LABEL_54;
    }
  }

  v27 = *(v7 + 11);
  v9 = self->_stateName;
  v28 = v27;
  v11 = v28;
  if (v9 == v28)
  {
  }

  else
  {
    if (!v9 || !v28)
    {
      goto LABEL_53;
    }

    v29 = [(NSString *)v9 isEqualToString:v28];

    if (!v29)
    {
      goto LABEL_54;
    }
  }

  v30 = *(v7 + 9);
  v9 = self->_errorDescription;
  v31 = v30;
  v11 = v31;
  if (v9 != v31)
  {
    if (v9 && v31)
    {
      v32 = [(NSString *)v9 isEqualToString:v31];

      if (!v32)
      {
        goto LABEL_54;
      }

      goto LABEL_57;
    }

LABEL_53:

    goto LABEL_54;
  }

LABEL_57:
  changeToken = self->_changeToken;
  v36 = *(v7 + 10);
  if (changeToken && v36)
  {
    if (([(NSData *)changeToken isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (changeToken != v36)
  {
    goto LABEL_54;
  }

  objectNames = self->_objectNames;
  v38 = *(v7 + 12);
  if (objectNames && v38)
  {
    if (([(NSArray *)objectNames isEqual:?]& 1) != 0)
    {
      goto LABEL_67;
    }
  }

  else if (objectNames == v38)
  {
LABEL_67:
    v33 = self->_timeInterval == *(v7 + 13);
    goto LABEL_55;
  }

LABEL_54:
  v33 = 0;
LABEL_55:

  return v33;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_timestamp];
  [array safelyAddObject:self->_containerIdentifier];
  [array safelyAddObject:self->_beginIntervalEventIdentifier];
  [array safelyAddObject:self->_operationGroupName];
  [array safelyAddObject:self->_operationGroupNameSuffix];
  [array safelyAddObject:self->_stateName];
  [array safelyAddObject:self->_errorDescription];
  [array safelyAddObject:self->_changeToken];
  [array safelyAddObject:self->_objectNames];
  v4 = PKCombinedHash(17, array);
  v5 = self->_eventType - v4 + 32 * v4;
  v6 = self->_changeType - v5 + 32 * v5;
  v7 = self->_timeInterval - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = PKCloudStoreContainerChangeEventTypeToString(self->_eventType);
  [v3 appendFormat:@"eventType: '%@'; ", v4];

  changeType = self->_changeType;
  v6 = @"unknown";
  if (changeType == 1)
  {
    v6 = @"signpost";
  }

  if (changeType == 2)
  {
    v7 = @"interval";
  }

  else
  {
    v7 = v6;
  }

  [v3 appendFormat:@"changeType: '%@'; ", v7];
  [v3 appendFormat:@"timestamp: '%@'; ", self->_timestamp];
  [v3 appendFormat:@"containerIdentifier: '%@'; ", self->_containerIdentifier];
  if ([(NSString *)self->_beginIntervalEventIdentifier length])
  {
    [v3 appendFormat:@"beginIntervalEventIdentifier: '%@'; ", self->_beginIntervalEventIdentifier];
  }

  if ([(NSString *)self->_operationGroupNameSuffix length])
  {
    [v3 appendFormat:@"operationGroupNameSuffix: '%@'; ", self->_operationGroupNameSuffix];
  }

  if ([(NSString *)self->_operationGroupName length])
  {
    [v3 appendFormat:@"operationGroupName: '%@'; ", self->_operationGroupName];
  }

  if ([(NSString *)self->_stateName length])
  {
    [v3 appendFormat:@"stateName: '%@'; ", self->_stateName];
  }

  if ([(NSString *)self->_errorDescription length])
  {
    [v3 appendFormat:@"errorDescription: '%@'; ", self->_errorDescription];
  }

  if ([(NSData *)self->_changeToken length])
  {
    [v3 appendFormat:@"changeToken: %ld hash'; ", -[NSData hash](self->_changeToken, "hash")];
  }

  if ([(NSArray *)self->_objectNames count])
  {
    [v3 appendFormat:@"objectNames: '%@'; ", self->_objectNames];
  }

  timeInterval = self->_timeInterval;
  if (timeInterval != 0.0)
  {
    [v3 appendFormat:@"timeInterval: %ld seconds; ", timeInterval];
  }

  [v3 appendFormat:@">"];

  return v3;
}

+ (id)_csvSafeStringForEvent:(id)event
{
  v52[13] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  objectNames = [eventCopy objectNames];
  v6 = [objectNames count];

  if (v6)
  {
    v7 = MEMORY[0x1E696ACB0];
    objectNames2 = [eventCopy objectNames];
    v9 = [v7 dataWithJSONObject:objectNames2 options:1 error:0];

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
  }

  objectNames3 = [eventCopy objectNames];
  v12 = [objectNames3 description];

  changeToken = [eventCopy changeToken];
  v14 = [changeToken hash];

  identifier = [eventCopy identifier];
  v49 = [self _csvSafeString:?];
  v52[0] = v49;
  changeType = [eventCopy changeType];
  v16 = @"unknown";
  if (changeType == 1)
  {
    v16 = @"signpost";
  }

  if (changeType == 2)
  {
    v16 = @"interval";
  }

  v48 = v16;
  v52[1] = v48;
  v47 = PKCloudStoreContainerChangeEventTypeToString([eventCopy eventType]);
  v52[2] = v47;
  containerIdentifier = [eventCopy containerIdentifier];
  v45 = [self _csvSafeString:?];
  v52[3] = v45;
  beginIntervalEventIdentifier = [eventCopy beginIntervalEventIdentifier];
  v42 = [self _csvSafeString:?];
  v52[4] = v42;
  operationGroupName = [eventCopy operationGroupName];
  v40 = [self _csvSafeString:?];
  v52[5] = v40;
  operationGroupNameSuffix = [eventCopy operationGroupNameSuffix];
  v38 = [self _csvSafeString:?];
  v52[6] = v38;
  _dateFormatter = [self _dateFormatter];
  timestamp = [eventCopy timestamp];
  v37 = _dateFormatter;
  v35 = [_dateFormatter stringFromDate:timestamp];
  v34 = [self _csvSafeString:?];
  v52[7] = v34;
  errorDescription = [eventCopy errorDescription];
  v18 = [self _csvSafeString:?];
  v52[8] = v18;
  v19 = 0x1E696A000;
  if (v14 < 1)
  {
    v20 = &stru_1F227FD28;
  }

  else
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
    v31 = [v32 description];
    v20 = [self _csvSafeString:?];
  }

  v43 = v14;
  v52[9] = v20;
  stateName = [eventCopy stateName];
  v22 = [self _csvSafeString:stateName];
  v52[10] = v22;
  v51 = v12;
  v23 = [self _csvSafeString:v12];
  v52[11] = v23;
  [eventCopy timeInterval];
  v25 = v24;
  if (v24 <= 0.0)
  {
    v27 = &stru_1F227FD28;
  }

  else
  {
    v26 = MEMORY[0x1E696AD98];
    [eventCopy timeInterval];
    v19 = [v26 numberWithDouble:?];
    v12 = [v19 description];
    v27 = [self _csvSafeString:v12];
  }

  v52[12] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:13];
  if (v25 > 0.0)
  {
  }

  if (v43 >= 1)
  {
  }

  v29 = [v28 componentsJoinedByString:{@", "}];

  return v29;
}

+ (id)_csvSafeString:(id)string
{
  stringCopy = string;
  if ([(__CFString *)stringCopy length])
  {
    v4 = [(__CFString *)stringCopy stringByReplacingOccurrencesOfString:@" withString:@"'""];

    if (([v4 containsString:@"\n"] & 1) != 0 || objc_msgSend(v4, "containsString:", @","))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v4];

      v4 = v5;
    }

    v6 = v4;
    stringCopy = v6;
  }

  else
  {
    v6 = &stru_1F227FD28;
  }

  return v6;
}

+ (id)_dateFormatter
{
  if (qword_1ED6D20A8 != -1)
  {
    dispatch_once(&qword_1ED6D20A8, &__block_literal_global_192);
  }

  v3 = _MergedGlobals_266;

  return v3;
}

uint64_t __50__PKCloudStoreContainerChangeEvent__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_266;
  _MergedGlobals_266 = v0;

  v2 = _MergedGlobals_266;

  return [v2 setLocalizedDateFormatFromTemplate:@"MM/dd/yyyy HH:mm:ss.SSS z"];
}

@end