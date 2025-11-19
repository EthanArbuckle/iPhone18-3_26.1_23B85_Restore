@interface MTSyncSnooze
+ (id)deserialize:(id)a3;
+ (id)syncSnoozeOfObjectWithIdentifier:(id)a3 snoozeDate:(id)a4 date:(id)a5 version:(float)a6;
- (BOOL)isEqual:(id)a3;
- (MTSyncSnooze)initWithSnoozedObjectIdentifier:(id)a3 snoozeDate:(id)a4 date:(id)a5 version:(float)a6;
- (NSString)description;
- (id)initFromDeserializer:(id)a3;
- (id)preferred:(id)a3;
- (id)serialize;
- (void)serializeWithSerializer:(id)a3;
@end

@implementation MTSyncSnooze

- (id)serialize
{
  v3 = objc_opt_new();
  v4 = [(MTSyncSnooze *)self syncDate];
  [v4 timeIntervalSinceReferenceDate];
  [v3 setSyncDate:?];

  v5 = [(MTSyncSnooze *)self syncIdentifier];
  [v3 setSyncID:v5];

  [(MTSyncSnooze *)self syncVersion];
  [v3 setSyncVersion:v6];
  v7 = objc_opt_new();
  v8 = [(MTSyncSnooze *)self snoozeDate];
  [v8 timeIntervalSinceReferenceDate];
  [v7 setSnoozeDate:?];

  [v3 setSnoozeAction:v7];

  return v3;
}

+ (id)deserialize:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MTSyncSnooze(ProtoBuffer) *)v5 deserialize:a2, a1];
  }

  v6 = v5;
  if ([v6 hasSnoozeAction])
  {
    v7 = [v6 snoozeAction];
    v8 = [v6 syncID];
    v9 = MEMORY[0x1E695DF00];
    [v7 snoozeDate];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    v11 = MEMORY[0x1E695DF00];
    [v6 syncDate];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    [v6 syncVersion];
    *&v13 = v13;
    v14 = [MTSyncSnooze syncSnoozeOfObjectWithIdentifier:v8 snoozeDate:v10 date:v12 version:v13];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"MTSyncSnooze+ProtoBuffer.m" lineNumber:40 description:{@"Unexpected codeable: %@", v6}];
    v14 = 0;
  }

  return v14;
}

- (id)initFromDeserializer:(id)a3
{
  v4 = [a3 mtCoder];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v6 = [[MTPBSyncMessage alloc] initWithData:v5];
  v7 = [objc_opt_class() deserialize:v6];

  return v7;
}

- (void)serializeWithSerializer:(id)a3
{
  v6 = [a3 mtCoder];
  v4 = [(MTSyncSnooze *)self serialize];
  v5 = [v4 data];

  [v6 encodeObject:v5 forKey:@"data"];
}

+ (id)syncSnoozeOfObjectWithIdentifier:(id)a3 snoozeDate:(id)a4 date:(id)a5 version:(float)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a1 alloc];
  *&v14 = a6;
  v15 = [v13 initWithSnoozedObjectIdentifier:v12 snoozeDate:v11 date:v10 version:v14];

  return v15;
}

- (MTSyncSnooze)initWithSnoozedObjectIdentifier:(id)a3 snoozeDate:(id)a4 date:(id)a5 version:(float)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MTSyncSnooze;
  v14 = [(MTSyncSnooze *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, a3);
    objc_storeStrong(&v15->_snoozeDate, a4);
    objc_storeStrong(&v15->_date, a5);
    v15->_syncVersion = a6;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MTSyncSnooze *)self date];
      v7 = [(MTSyncSnooze *)v5 date];
      if ([v6 isEqualToDate:v7])
      {
        v8 = [(MTSyncSnooze *)self snoozeDate];
        v9 = [(MTSyncSnooze *)v5 snoozeDate];
        if ([v8 isEqual:v9])
        {
          v10 = [(MTSyncSnooze *)self identifier];
          v11 = [(MTSyncSnooze *)v5 identifier];
          if ([v10 isEqualToString:v11])
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

- (id)preferred:(id)a3
{
  v4 = a3;
  v5 = [(MTSyncSnooze *)self syncDate];
  v6 = [(MTSyncSnooze *)v4 syncDate];
  if (![v5 mtIsAfterDate:v6])
  {
    self = v4;
  }

  v7 = self;

  return self;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTSyncSnooze *)self syncIdentifier];
  v6 = [(MTSyncSnooze *)self snoozeDate];
  v7 = [(MTSyncSnooze *)self date];
  v8 = [v3 stringWithFormat:@"<%@:%p %@ snoozeDate: %@ (%@)>", v4, self, v5, v6, v7];

  return v8;
}

@end