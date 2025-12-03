@interface LNAppNotificationEvent
+ (id)eventWithType:(int64_t)type bundleIdentifier:(id)identifier entityType:(id)entityType instanceIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (LNAppNotificationEvent)initWithCoder:(id)coder;
- (LNAppNotificationEvent)initWithEventType:(int64_t)type bundleIdentifier:(id)identifier entityType:(id)entityType instanceIdentifiers:(id)identifiers;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAppNotificationEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        eventType = [(LNAppNotificationEvent *)self eventType];
        if (eventType != [(LNAppNotificationEvent *)v6 eventType])
        {
          LOBYTE(v13) = 0;
LABEL_31:

          goto LABEL_32;
        }

        bundleIdentifier = [(LNAppNotificationEvent *)self bundleIdentifier];
        bundleIdentifier2 = [(LNAppNotificationEvent *)v6 bundleIdentifier];
        v10 = bundleIdentifier;
        v11 = bundleIdentifier2;
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

        entityType = [(LNAppNotificationEvent *)self entityType];
        entityType2 = [(LNAppNotificationEvent *)v6 entityType];
        v15 = entityType;
        v19 = entityType2;
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

        instanceIdentifiers = [(LNAppNotificationEvent *)self instanceIdentifiers];
        instanceIdentifiers2 = [(LNAppNotificationEvent *)v6 instanceIdentifiers];
        v21 = instanceIdentifiers;
        v24 = instanceIdentifiers2;
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
  bundleIdentifier = [(LNAppNotificationEvent *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  entityType = [(LNAppNotificationEvent *)self entityType];
  v6 = [entityType hash] ^ v4;
  instanceIdentifiers = [(LNAppNotificationEvent *)self instanceIdentifiers];
  v8 = [instanceIdentifiers hash];
  v9 = v8 ^ [(LNAppNotificationEvent *)self eventType];

  return v6 ^ v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(LNAppNotificationEvent *)self bundleIdentifier];
  entityType = [(LNAppNotificationEvent *)self entityType];
  eventType = [(LNAppNotificationEvent *)self eventType];
  v9 = @"Created";
  if (eventType == 1)
  {
    v9 = @"Deleted";
  }

  if (eventType == 2)
  {
    v9 = @"Updated";
  }

  v10 = v9;
  instanceIdentifiers = [(LNAppNotificationEvent *)self instanceIdentifiers];
  v12 = [v3 stringWithFormat:@"<%@:%p, bundleIdentifier: %@, entityType: %@, eventType: %@, instanceIdentifiers: %@>", v5, self, bundleIdentifier, entityType, v10, instanceIdentifiers];

  return v12;
}

- (LNAppNotificationEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"eventType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityType"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"instanceIdentifiers"];

  v12 = [(LNAppNotificationEvent *)self initWithEventType:v5 bundleIdentifier:v6 entityType:v7 instanceIdentifiers:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(LNAppNotificationEvent *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  entityType = [(LNAppNotificationEvent *)self entityType];
  [coderCopy encodeObject:entityType forKey:@"entityType"];

  instanceIdentifiers = [(LNAppNotificationEvent *)self instanceIdentifiers];
  [coderCopy encodeObject:instanceIdentifiers forKey:@"instanceIdentifiers"];

  [coderCopy encodeInteger:-[LNAppNotificationEvent eventType](self forKey:{"eventType"), @"eventType"}];
}

- (LNAppNotificationEvent)initWithEventType:(int64_t)type bundleIdentifier:(id)identifier entityType:(id)entityType instanceIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  entityTypeCopy = entityType;
  identifiersCopy = identifiers;
  if (identifierCopy)
  {
    if (entityTypeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppNotificationEvent.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

    if (entityTypeCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAppNotificationEvent.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"entityType"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = LNAppNotificationEvent;
  v15 = [(LNAppNotificationEvent *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_eventType = type;
    objc_storeStrong(&v15->_bundleIdentifier, identifier);
    objc_storeStrong(&v16->_entityType, entityType);
    v17 = [identifiersCopy copy];
    instanceIdentifiers = v16->_instanceIdentifiers;
    v16->_instanceIdentifiers = v17;

    v19 = v16;
  }

  return v16;
}

+ (id)eventWithType:(int64_t)type bundleIdentifier:(id)identifier entityType:(id)entityType instanceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  entityTypeCopy = entityType;
  identifierCopy = identifier;
  v12 = [[LNAppNotificationEvent alloc] initWithEventType:type bundleIdentifier:identifierCopy entityType:entityTypeCopy instanceIdentifiers:identifiersCopy];

  return v12;
}

@end