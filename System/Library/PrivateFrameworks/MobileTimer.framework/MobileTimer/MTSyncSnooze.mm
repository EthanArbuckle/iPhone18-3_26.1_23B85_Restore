@interface MTSyncSnooze
+ (id)deserialize:(id)deserialize;
+ (id)syncSnoozeOfObjectWithIdentifier:(id)identifier snoozeDate:(id)date date:(id)a5 version:(float)version;
- (BOOL)isEqual:(id)equal;
- (MTSyncSnooze)initWithSnoozedObjectIdentifier:(id)identifier snoozeDate:(id)date date:(id)a5 version:(float)version;
- (NSString)description;
- (id)initFromDeserializer:(id)deserializer;
- (id)preferred:(id)preferred;
- (id)serialize;
- (void)serializeWithSerializer:(id)serializer;
@end

@implementation MTSyncSnooze

- (id)serialize
{
  v3 = objc_opt_new();
  syncDate = [(MTSyncSnooze *)self syncDate];
  [syncDate timeIntervalSinceReferenceDate];
  [v3 setSyncDate:?];

  syncIdentifier = [(MTSyncSnooze *)self syncIdentifier];
  [v3 setSyncID:syncIdentifier];

  [(MTSyncSnooze *)self syncVersion];
  [v3 setSyncVersion:v6];
  v7 = objc_opt_new();
  snoozeDate = [(MTSyncSnooze *)self snoozeDate];
  [snoozeDate timeIntervalSinceReferenceDate];
  [v7 setSnoozeDate:?];

  [v3 setSnoozeAction:v7];

  return v3;
}

+ (id)deserialize:(id)deserialize
{
  deserializeCopy = deserialize;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MTSyncSnooze(ProtoBuffer) *)deserializeCopy deserialize:a2, self];
  }

  v6 = deserializeCopy;
  if ([v6 hasSnoozeAction])
  {
    snoozeAction = [v6 snoozeAction];
    syncID = [v6 syncID];
    v9 = MEMORY[0x1E695DF00];
    [snoozeAction snoozeDate];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    v11 = MEMORY[0x1E695DF00];
    [v6 syncDate];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    [v6 syncVersion];
    *&v13 = v13;
    v14 = [MTSyncSnooze syncSnoozeOfObjectWithIdentifier:syncID snoozeDate:v10 date:v12 version:v13];
  }

  else
  {
    snoozeAction = [MEMORY[0x1E696AAA8] currentHandler];
    [snoozeAction handleFailureInMethod:a2 object:self file:@"MTSyncSnooze+ProtoBuffer.m" lineNumber:40 description:{@"Unexpected codeable: %@", v6}];
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
  serialize = [(MTSyncSnooze *)self serialize];
  data = [serialize data];

  [mtCoder encodeObject:data forKey:@"data"];
}

+ (id)syncSnoozeOfObjectWithIdentifier:(id)identifier snoozeDate:(id)date date:(id)a5 version:(float)version
{
  v10 = a5;
  dateCopy = date;
  identifierCopy = identifier;
  v13 = [self alloc];
  *&v14 = version;
  v15 = [v13 initWithSnoozedObjectIdentifier:identifierCopy snoozeDate:dateCopy date:v10 version:v14];

  return v15;
}

- (MTSyncSnooze)initWithSnoozedObjectIdentifier:(id)identifier snoozeDate:(id)date date:(id)a5 version:(float)version
{
  identifierCopy = identifier;
  dateCopy = date;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MTSyncSnooze;
  v14 = [(MTSyncSnooze *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeStrong(&v15->_snoozeDate, date);
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
      date = [(MTSyncSnooze *)self date];
      date2 = [(MTSyncSnooze *)v5 date];
      if ([date isEqualToDate:date2])
      {
        snoozeDate = [(MTSyncSnooze *)self snoozeDate];
        snoozeDate2 = [(MTSyncSnooze *)v5 snoozeDate];
        if ([snoozeDate isEqual:snoozeDate2])
        {
          identifier = [(MTSyncSnooze *)self identifier];
          identifier2 = [(MTSyncSnooze *)v5 identifier];
          if ([identifier isEqualToString:identifier2])
          {
            [(MTSyncSnooze *)self syncVersion];
            v13 = v12;
            [(MTSyncSnooze *)v5 syncVersion];
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
  syncDate = [(MTSyncSnooze *)self syncDate];
  syncDate2 = [(MTSyncSnooze *)preferredCopy syncDate];
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
  syncIdentifier = [(MTSyncSnooze *)self syncIdentifier];
  snoozeDate = [(MTSyncSnooze *)self snoozeDate];
  date = [(MTSyncSnooze *)self date];
  v8 = [v3 stringWithFormat:@"<%@:%p %@ snoozeDate: %@ (%@)>", v4, self, syncIdentifier, snoozeDate, date];

  return v8;
}

@end