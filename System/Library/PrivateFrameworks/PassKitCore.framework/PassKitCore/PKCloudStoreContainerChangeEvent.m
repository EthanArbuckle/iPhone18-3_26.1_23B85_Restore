@interface PKCloudStoreContainerChangeEvent
+ (id)_csvSafeString:(id)a3;
+ (id)_csvSafeStringForEvent:(id)a3;
+ (id)_dateFormatter;
+ (id)csvStringForEvents:(id)a3;
+ (id)intervalBeginEventWithType:(unint64_t)a3 containerIdentifier:(id)a4 stateName:(id)a5 objectNames:(id)a6 error:(id)a7 changeToken:(id)a8 operationGroupName:(id)a9 operationGroupNameSuffix:(id)a10;
+ (id)intervalEndEventWithBeginUniqueIdentifier:(id)a3 error:(id)a4;
+ (id)signpostEventWithType:(unint64_t)a3 containerIdentifier:(id)a4 stateName:(id)a5 objectNames:(id)a6 error:(id)a7 changeToken:(id)a8 operationGroupName:(id)a9 operationGroupNameSuffix:(id)a10;
+ (id)writeCSVFileForEvents:(id)a3 error:(id *)a4;
+ (void)populateEndIntervalEvent:(id)a3 withBeginIntervalEvent:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PKCloudStoreContainerChangeEvent)initWithChangeType:(unint64_t)a3 beginUniqueIdentifier:(id)a4 error:(id)a5;
- (PKCloudStoreContainerChangeEvent)initWithCoder:(id)a3;
- (PKCloudStoreContainerChangeEvent)initWithEventType:(unint64_t)a3 changeType:(unint64_t)a4 containerIdentifier:(id)a5 beginUniqueIdentifier:(id)a6 stateName:(id)a7 objectNames:(id)a8 error:(id)a9 changeToken:(id)a10 operationGroupName:(id)a11 operationGroupNameSuffix:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudStoreContainerChangeEvent

- (PKCloudStoreContainerChangeEvent)initWithChangeType:(unint64_t)a3 beginUniqueIdentifier:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = PKCloudStoreContainerChangeEvent;
  v11 = [(PKCloudStoreContainerChangeEvent *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_changeType = a3;
    objc_storeStrong(&v11->_beginIntervalEventIdentifier, a4);
    v13 = [v10 debugDescription];
    errorDescription = v12->_errorDescription;
    v12->_errorDescription = v13;

    v15 = [MEMORY[0x1E695DF00] date];
    timestamp = v12->_timestamp;
    v12->_timestamp = v15;

    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [v17 UUIDString];
    identifier = v12->_identifier;
    v12->_identifier = v18;
  }

  return v12;
}

- (PKCloudStoreContainerChangeEvent)initWithEventType:(unint64_t)a3 changeType:(unint64_t)a4 containerIdentifier:(id)a5 beginUniqueIdentifier:(id)a6 stateName:(id)a7 objectNames:(id)a8 error:(id)a9 changeToken:(id)a10 operationGroupName:(id)a11 operationGroupNameSuffix:(id)a12
{
  v27 = a5;
  v26 = a7;
  v25 = a8;
  v24 = a10;
  v23 = a11;
  v18 = a12;
  v19 = [(PKCloudStoreContainerChangeEvent *)self initWithChangeType:a4 beginUniqueIdentifier:a6 error:a9];
  v20 = v19;
  if (v19)
  {
    v19->_eventType = a3;
    objc_storeStrong(&v19->_containerIdentifier, a5);
    objc_storeStrong(&v20->_stateName, a7);
    objc_storeStrong(&v20->_objectNames, a8);
    objc_storeStrong(&v20->_changeToken, a10);
    objc_storeStrong(&v20->_operationGroupName, a11);
    objc_storeStrong(&v20->_operationGroupNameSuffix, a12);
  }

  return v20;
}

+ (id)signpostEventWithType:(unint64_t)a3 containerIdentifier:(id)a4 stateName:(id)a5 objectNames:(id)a6 error:(id)a7 changeToken:(id)a8 operationGroupName:(id)a9 operationGroupNameSuffix:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = [[PKCloudStoreContainerChangeEvent alloc] initWithEventType:a3 changeType:1 containerIdentifier:v22 beginUniqueIdentifier:0 stateName:v21 objectNames:v20 error:v19 changeToken:v18 operationGroupName:v17 operationGroupNameSuffix:v16];

  return v23;
}

+ (id)intervalBeginEventWithType:(unint64_t)a3 containerIdentifier:(id)a4 stateName:(id)a5 objectNames:(id)a6 error:(id)a7 changeToken:(id)a8 operationGroupName:(id)a9 operationGroupNameSuffix:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = [[PKCloudStoreContainerChangeEvent alloc] initWithEventType:a3 changeType:2 containerIdentifier:v22 beginUniqueIdentifier:0 stateName:v21 objectNames:v20 error:v19 changeToken:v18 operationGroupName:v17 operationGroupNameSuffix:v16];

  return v23;
}

+ (id)intervalEndEventWithBeginUniqueIdentifier:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PKCloudStoreContainerChangeEvent alloc] initWithChangeType:2 beginUniqueIdentifier:v6 error:v5];

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

+ (id)csvStringForEvents:(id)a3
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
  v4 = a3;
  v5 = [v3 arrayWithObjects:v25 count:13];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v6 mutableCopy];

  [v7 appendString:@"\n"];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
  v24 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v10 = [v4 sortedArrayUsingDescriptors:v9];

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

+ (id)writeCSVFileForEvents:(id)a3 error:(id *)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:@"cloudStoreContainerChangeHistory"];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E695DF00] date];
  [v10 timeIntervalSince1970];
  v12 = [v9 stringWithFormat:@"changeHistory-%ld.csv", v11];

  v13 = [v8 stringByAppendingPathComponent:v12];
  if (([v6 fileExistsAtPath:v8] & 1) != 0 || (v29 = 0, objc_msgSend(v6, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v8, 1, 0, &v29), (v14 = v29) == 0))
  {
    v18 = [PKCloudStoreContainerChangeEvent csvStringForEvents:v5];
    v19 = [v18 dataUsingEncoding:4];

    if ([v6 createFileAtPath:v13 contents:v19 attributes:0])
    {
      v17 = v13;
      v15 = 0;
    }

    else
    {
      v28 = v5;
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v31[0] = @"Error";
      v22 = *MEMORY[0x1E696A598];
      v30[0] = v21;
      v30[1] = v22;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating %@", v12];
      v24 = v23 = a4;
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

      v5 = v28;
    }
  }

  else
  {
    v15 = v14;
    if (a4)
    {
      v16 = v14;
      v17 = 0;
      *a4 = v15;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

+ (void)populateEndIntervalEvent:(id)a3 withBeginIntervalEvent:(id)a4
{
  v5 = a4;
  v16 = a3;
  [v16 setChangeType:{objc_msgSend(v5, "changeType")}];
  [v16 setEventType:{objc_msgSend(v5, "eventType")}];
  v6 = [v5 containerIdentifier];
  [v16 setContainerIdentifier:v6];

  v7 = [v5 operationGroupName];
  [v16 setOperationGroupName:v7];

  v8 = [v5 operationGroupNameSuffix];
  [v16 setOperationGroupNameSuffix:v8];

  v9 = [v5 stateName];
  [v16 setStateName:v9];

  v10 = [v5 changeToken];
  [v16 setChangeToken:v10];

  v11 = [v5 objectNames];
  [v16 setObjectNames:v11];

  v12 = [v16 timestamp];
  v13 = [v5 timestamp];

  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  [v16 setTimeInterval:v15];
}

- (PKCloudStoreContainerChangeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PKCloudStoreContainerChangeEvent;
  v5 = [(PKCloudStoreContainerChangeEvent *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_changeType = [v4 decodeIntegerForKey:@"changeType"];
    v5->_eventType = [v4 decodeIntegerForKey:@"eventType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beginIntervalEventIdentifier"];
    beginIntervalEventIdentifier = v5->_beginIntervalEventIdentifier;
    v5->_beginIntervalEventIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationGroupName"];
    operationGroupName = v5->_operationGroupName;
    v5->_operationGroupName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationGroupNameSuffix"];
    operationGroupNameSuffix = v5->_operationGroupNameSuffix;
    v5->_operationGroupNameSuffix = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateName"];
    stateName = v5->_stateName;
    v5->_stateName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changeToken"];
    changeToken = v5->_changeToken;
    v5->_changeToken = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorDescription"];
    errorDescription = v5->_errorDescription;
    v5->_errorDescription = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"objectNames"];
    objectNames = v5->_objectNames;
    v5->_objectNames = v27;

    v5->_timeInterval = [v4 decodeIntegerForKey:@"timeInterval"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_changeType forKey:@"changeType"];
  [v5 encodeInteger:self->_eventType forKey:@"eventType"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_containerIdentifier forKey:@"containerIdentifier"];
  [v5 encodeObject:self->_beginIntervalEventIdentifier forKey:@"beginIntervalEventIdentifier"];
  [v5 encodeObject:self->_operationGroupName forKey:@"operationGroupName"];
  [v5 encodeObject:self->_operationGroupNameSuffix forKey:@"operationGroupNameSuffix"];
  [v5 encodeObject:self->_stateName forKey:@"stateName"];
  [v5 encodeObject:self->_changeToken forKey:@"changeToken"];
  [v5 encodeObject:self->_errorDescription forKey:@"errorDescription"];
  [v5 encodeObject:self->_objectNames forKey:@"objectNames"];
  [v5 encodeInteger:self->_timeInterval forKey:@"timeInterval"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKCloudStoreContainerChangeEvent allocWithZone:](PKCloudStoreContainerChangeEvent init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v5->_changeType = self->_changeType;
  v5->_eventType = self->_eventType;
  v8 = [(NSDate *)self->_timestamp copyWithZone:a3];
  timestamp = v5->_timestamp;
  v5->_timestamp = v8;

  v10 = [(NSString *)self->_containerIdentifier copyWithZone:a3];
  containerIdentifier = v5->_containerIdentifier;
  v5->_containerIdentifier = v10;

  v12 = [(NSString *)self->_beginIntervalEventIdentifier copyWithZone:a3];
  beginIntervalEventIdentifier = v5->_beginIntervalEventIdentifier;
  v5->_beginIntervalEventIdentifier = v12;

  v14 = [(NSString *)self->_operationGroupName copyWithZone:a3];
  operationGroupName = v5->_operationGroupName;
  v5->_operationGroupName = v14;

  v16 = [(NSString *)self->_operationGroupNameSuffix copyWithZone:a3];
  operationGroupNameSuffix = v5->_operationGroupNameSuffix;
  v5->_operationGroupNameSuffix = v16;

  v18 = [(NSString *)self->_stateName copyWithZone:a3];
  stateName = v5->_stateName;
  v5->_stateName = v18;

  v20 = [(NSString *)self->_errorDescription copyWithZone:a3];
  errorDescription = v5->_errorDescription;
  v5->_errorDescription = v20;

  v22 = [(NSData *)self->_changeToken copyWithZone:a3];
  changeToken = v5->_changeToken;
  v5->_changeToken = v22;

  v24 = [(NSArray *)self->_objectNames copyWithZone:a3];
  objectNames = v5->_objectNames;
  v5->_objectNames = v24;

  v5->_timeInterval = self->_timeInterval;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_timestamp];
  [v3 safelyAddObject:self->_containerIdentifier];
  [v3 safelyAddObject:self->_beginIntervalEventIdentifier];
  [v3 safelyAddObject:self->_operationGroupName];
  [v3 safelyAddObject:self->_operationGroupNameSuffix];
  [v3 safelyAddObject:self->_stateName];
  [v3 safelyAddObject:self->_errorDescription];
  [v3 safelyAddObject:self->_changeToken];
  [v3 safelyAddObject:self->_objectNames];
  v4 = PKCombinedHash(17, v3);
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

+ (id)_csvSafeStringForEvent:(id)a3
{
  v52[13] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectNames];
  v6 = [v5 count];

  if (v6)
  {
    v7 = MEMORY[0x1E696ACB0];
    v8 = [v4 objectNames];
    v9 = [v7 dataWithJSONObject:v8 options:1 error:0];

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
  }

  v11 = [v4 objectNames];
  v12 = [v11 description];

  v13 = [v4 changeToken];
  v14 = [v13 hash];

  v50 = [v4 identifier];
  v49 = [a1 _csvSafeString:?];
  v52[0] = v49;
  v15 = [v4 changeType];
  v16 = @"unknown";
  if (v15 == 1)
  {
    v16 = @"signpost";
  }

  if (v15 == 2)
  {
    v16 = @"interval";
  }

  v48 = v16;
  v52[1] = v48;
  v47 = PKCloudStoreContainerChangeEventTypeToString([v4 eventType]);
  v52[2] = v47;
  v46 = [v4 containerIdentifier];
  v45 = [a1 _csvSafeString:?];
  v52[3] = v45;
  v44 = [v4 beginIntervalEventIdentifier];
  v42 = [a1 _csvSafeString:?];
  v52[4] = v42;
  v41 = [v4 operationGroupName];
  v40 = [a1 _csvSafeString:?];
  v52[5] = v40;
  v39 = [v4 operationGroupNameSuffix];
  v38 = [a1 _csvSafeString:?];
  v52[6] = v38;
  v17 = [a1 _dateFormatter];
  v36 = [v4 timestamp];
  v37 = v17;
  v35 = [v17 stringFromDate:v36];
  v34 = [a1 _csvSafeString:?];
  v52[7] = v34;
  v33 = [v4 errorDescription];
  v18 = [a1 _csvSafeString:?];
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
    v20 = [a1 _csvSafeString:?];
  }

  v43 = v14;
  v52[9] = v20;
  v21 = [v4 stateName];
  v22 = [a1 _csvSafeString:v21];
  v52[10] = v22;
  v51 = v12;
  v23 = [a1 _csvSafeString:v12];
  v52[11] = v23;
  [v4 timeInterval];
  v25 = v24;
  if (v24 <= 0.0)
  {
    v27 = &stru_1F227FD28;
  }

  else
  {
    v26 = MEMORY[0x1E696AD98];
    [v4 timeInterval];
    v19 = [v26 numberWithDouble:?];
    v12 = [v19 description];
    v27 = [a1 _csvSafeString:v12];
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

+ (id)_csvSafeString:(id)a3
{
  v3 = a3;
  if ([(__CFString *)v3 length])
  {
    v4 = [(__CFString *)v3 stringByReplacingOccurrencesOfString:@" withString:@"'""];

    if (([v4 containsString:@"\n"] & 1) != 0 || objc_msgSend(v4, "containsString:", @","))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v4];

      v4 = v5;
    }

    v6 = v4;
    v3 = v6;
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