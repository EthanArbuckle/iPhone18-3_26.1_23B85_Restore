@interface MTSyncDismiss
+ (id)deserialize:(id)deserialize;
+ (id)syncDismissOfObjectWithIdentifier:(id)identifier dismissDate:(id)date date:(id)a5 version:(float)version;
- (BOOL)isEqual:(id)equal;
- (MTSyncDismiss)initWithDismissedObjectIdentifier:(id)identifier dismissDate:(id)date date:(id)a5 version:(float)version;
- (NSString)description;
- (id)initFromDeserializer:(id)deserializer;
- (id)preferred:(id)preferred;
- (id)serialize;
- (void)serializeWithSerializer:(id)serializer;
@end

@implementation MTSyncDismiss

+ (id)syncDismissOfObjectWithIdentifier:(id)identifier dismissDate:(id)date date:(id)a5 version:(float)version
{
  v10 = a5;
  dateCopy = date;
  identifierCopy = identifier;
  v13 = [self alloc];
  *&v14 = version;
  v15 = [v13 initWithDismissedObjectIdentifier:identifierCopy dismissDate:dateCopy date:v10 version:v14];

  return v15;
}

- (MTSyncDismiss)initWithDismissedObjectIdentifier:(id)identifier dismissDate:(id)date date:(id)a5 version:(float)version
{
  identifierCopy = identifier;
  dateCopy = date;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MTSyncDismiss;
  v14 = [(MTSyncDismiss *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeStrong(&v15->_dismissDate, date);
    objc_storeStrong(&v15->_date, a5);
    v15->_syncVersion = version;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      date = [(MTSyncDismiss *)self date];
      date2 = [(MTSyncDismiss *)v5 date];
      if ([date isEqualToDate:date2])
      {
        dismissDate = [(MTSyncDismiss *)self dismissDate];
        dismissDate2 = [(MTSyncDismiss *)v5 dismissDate];
        if ([dismissDate isEqual:dismissDate2])
        {
          identifier = [(MTSyncDismiss *)self identifier];
          identifier2 = [(MTSyncDismiss *)v5 identifier];
          if ([identifier isEqualToString:identifier2])
          {
            [(MTSyncDismiss *)self syncVersion];
            v13 = v12;
            [(MTSyncDismiss *)v5 syncVersion];
            v15 = v13 == v14;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)preferred:(id)preferred
{
  preferredCopy = preferred;
  syncDate = [(MTSyncDismiss *)self syncDate];
  syncDate2 = [(MTSyncDismiss *)preferredCopy syncDate];
  if (![syncDate mtIsAfterDate:syncDate2])
  {
    self = preferredCopy;
  }

  selfCopy = self;

  return self;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(MTSyncDismiss *)self identifier];
  syncIdentifier = [(MTSyncDismiss *)self syncIdentifier];
  dismissDate = [(MTSyncDismiss *)self dismissDate];
  date = [(MTSyncDismiss *)self date];
  v9 = [v3 stringWithFormat:@"<%@:%p %@ %@ dismissDate: %@ (%@)>", v4, self, identifier, syncIdentifier, dismissDate, date];

  return v9;
}

- (id)serialize
{
  v3 = objc_opt_new();
  syncDate = [(MTSyncDismiss *)self syncDate];
  [syncDate timeIntervalSinceReferenceDate];
  [v3 setSyncDate:?];

  syncIdentifier = [(MTSyncDismiss *)self syncIdentifier];
  [v3 setSyncID:syncIdentifier];

  [(MTSyncDismiss *)self syncVersion];
  [v3 setSyncVersion:v6];
  v7 = objc_opt_new();
  dismissDate = [(MTSyncDismiss *)self dismissDate];
  [dismissDate timeIntervalSinceReferenceDate];
  [v7 setDismissDate:?];

  [v3 setDismissAction:v7];

  return v3;
}

+ (id)deserialize:(id)deserialize
{
  deserializeCopy = deserialize;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MTSyncDismiss(ProtoBuffer) *)deserializeCopy deserialize:a2, self];
  }

  v6 = deserializeCopy;
  if ([v6 hasDismissAction])
  {
    dismissAction = [v6 dismissAction];
    syncID = [v6 syncID];
    v9 = MEMORY[0x1E695DF00];
    [dismissAction dismissDate];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    v11 = MEMORY[0x1E695DF00];
    [v6 syncDate];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    [v6 syncVersion];
    *&v13 = v13;
    v14 = [MTSyncDismiss syncDismissOfObjectWithIdentifier:syncID dismissDate:v10 date:v12 version:v13];
  }

  else
  {
    dismissAction = [MEMORY[0x1E696AAA8] currentHandler];
    [dismissAction handleFailureInMethod:a2 object:self file:@"MTSyncDismiss+ProtoBuffer.m" lineNumber:42 description:{@"Unexpected codeable: %@", v6}];
    v14 = 0;
  }

  return v14;
}

- (id)initFromDeserializer:(id)deserializer
{
  mtCoder = [deserializer mtCoder];
  v5 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v6 = [[MTPBSyncMessage alloc] initWithData:v5];
  v7 = [objc_opt_class() deserialize:v6];

  return v7;
}

- (void)serializeWithSerializer:(id)serializer
{
  mtCoder = [serializer mtCoder];
  serialize = [(MTSyncDismiss *)self serialize];
  data = [serialize data];

  [mtCoder encodeObject:data forKey:@"data"];
}

@end