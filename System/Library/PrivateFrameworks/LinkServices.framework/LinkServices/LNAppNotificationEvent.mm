@interface LNAppNotificationEvent
+ (id)eventWithType:(int64_t)a3 bundleIdentifier:(id)a4 entityType:(id)a5 instanceIdentifiers:(id)a6;
- (BOOL)isEqual:(id)a3;
- (LNAppNotificationEvent)initWithCoder:(id)a3;
- (LNAppNotificationEvent)initWithEventType:(int64_t)a3 bundleIdentifier:(id)a4 entityType:(id)a5 instanceIdentifiers:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAppNotificationEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNAppNotificationEvent *)self eventType];
        if (v7 != [(LNAppNotificationEvent *)v6 eventType])
        {
          LOBYTE(v13) = 0;
LABEL_31:

          goto LABEL_32;
        }

        v8 = [(LNAppNotificationEvent *)self bundleIdentifier];
        v9 = [(LNAppNotificationEvent *)v6 bundleIdentifier];
        v10 = v8;
        v11 = v9;
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          LOBYTE(v13) = 0;
          v14 = v11;
          v15 = v10;
          if (!v10 || !v11)
          {
            goto LABEL_28;
          }

          v16 = [(LNAppNotificationEvent *)v10 isEqual:v11];

          if (!v16)
          {
            LOBYTE(v13) = 0;
LABEL_29:

            goto LABEL_30;
          }
        }

        v17 = [(LNAppNotificationEvent *)self entityType];
        v18 = [(LNAppNotificationEvent *)v6 entityType];
        v15 = v17;
        v19 = v18;
        v14 = v19;
        if (v15 == v19)
        {
        }

        else
        {
          LOBYTE(v13) = 0;
          v20 = v19;
          v21 = v15;
          if (!v15 || !v19)
          {
LABEL_27:

LABEL_28:
            goto LABEL_29;
          }

          v13 = [(LNAppNotificationEvent *)v15 isEqual:v19];

          if (!v13)
          {
            goto LABEL_28;
          }
        }

        v22 = [(LNAppNotificationEvent *)self instanceIdentifiers];
        v23 = [(LNAppNotificationEvent *)v6 instanceIdentifiers];
        v21 = v22;
        v24 = v23;
        v20 = v24;
        if (v21 == v24)
        {
          LOBYTE(v13) = 1;
        }

        else
        {
          LOBYTE(v13) = 0;
          if (v21 && v24)
          {
            LOBYTE(v13) = [(LNAppNotificationEvent *)v21 isEqual:v24];
          }
        }

        goto LABEL_27;
      }

      LOBYTE(v13) = 0;
      v10 = v6;
      v6 = 0;
    }

    else
    {
      v10 = 0;
      LOBYTE(v13) = 0;
    }

LABEL_30:

    goto LABEL_31;
  }

  LOBYTE(v13) = 1;
LABEL_32:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(LNAppNotificationEvent *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAppNotificationEvent *)self entityType];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNAppNotificationEvent *)self instanceIdentifiers];
  v8 = [v7 hash];
  v9 = v8 ^ [(LNAppNotificationEvent *)self eventType];

  return v6 ^ v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAppNotificationEvent *)self bundleIdentifier];
  v7 = [(LNAppNotificationEvent *)self entityType];
  v8 = [(LNAppNotificationEvent *)self eventType];
  v9 = @"Created";
  if (v8 == 1)
  {
    v9 = @"Deleted";
  }

  if (v8 == 2)
  {
    v9 = @"Updated";
  }

  v10 = v9;
  v11 = [(LNAppNotificationEvent *)self instanceIdentifiers];
  v12 = [v3 stringWithFormat:@"<%@:%p, bundleIdentifier: %@, entityType: %@, eventType: %@, instanceIdentifiers: %@>", v5, self, v6, v7, v10, v11];

  return v12;
}

- (LNAppNotificationEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"eventType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityType"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"instanceIdentifiers"];

  v12 = [(LNAppNotificationEvent *)self initWithEventType:v5 bundleIdentifier:v6 entityType:v7 instanceIdentifiers:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(LNAppNotificationEvent *)self bundleIdentifier];
  [v7 encodeObject:v4 forKey:@"bundleIdentifier"];

  v5 = [(LNAppNotificationEvent *)self entityType];
  [v7 encodeObject:v5 forKey:@"entityType"];

  v6 = [(LNAppNotificationEvent *)self instanceIdentifiers];
  [v7 encodeObject:v6 forKey:@"instanceIdentifiers"];

  [v7 encodeInteger:-[LNAppNotificationEvent eventType](self forKey:{"eventType"), @"eventType"}];
}

- (LNAppNotificationEvent)initWithEventType:(int64_t)a3 bundleIdentifier:(id)a4 entityType:(id)a5 instanceIdentifiers:(id)a6
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNAppNotificationEvent.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"LNAppNotificationEvent.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"entityType"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = LNAppNotificationEvent;
  v15 = [(LNAppNotificationEvent *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_eventType = a3;
    objc_storeStrong(&v15->_bundleIdentifier, a4);
    objc_storeStrong(&v16->_entityType, a5);
    v17 = [v14 copy];
    instanceIdentifiers = v16->_instanceIdentifiers;
    v16->_instanceIdentifiers = v17;

    v19 = v16;
  }

  return v16;
}

+ (id)eventWithType:(int64_t)a3 bundleIdentifier:(id)a4 entityType:(id)a5 instanceIdentifiers:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [[LNAppNotificationEvent alloc] initWithEventType:a3 bundleIdentifier:v11 entityType:v10 instanceIdentifiers:v9];

  return v12;
}

@end