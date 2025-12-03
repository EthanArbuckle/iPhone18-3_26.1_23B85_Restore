@interface CHSWidgetRelevanceServiceEvent
+ (id)addOrUpdateEventWithRelevanceKeys:(id)keys;
+ (id)reloadEvent;
+ (id)removeEventWithExtensionIdentities:(id)identities;
- (BOOL)isEqual:(id)equal;
- (CHSWidgetRelevanceServiceEvent)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)initWithEventType:(void *)type keys:(void *)keys extensionIdentities:;
@end

@implementation CHSWidgetRelevanceServiceEvent

- (void)initWithEventType:(void *)type keys:(void *)keys extensionIdentities:
{
  typeCopy = type;
  keysCopy = keys;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = CHSWidgetRelevanceServiceEvent;
    v9 = objc_msgSendSuper2(&v15, sel_init);
    self = v9;
    if (v9)
    {
      v9[1] = a2;
      v10 = [typeCopy copy];
      v11 = self[2];
      self[2] = v10;

      v12 = [keysCopy copy];
      v13 = self[3];
      self[3] = v12;
    }
  }

  return self;
}

+ (id)reloadEvent
{
  v2 = [(CHSWidgetRelevanceServiceEvent *)[self alloc] initWithEventType:0 keys:0 extensionIdentities:?];

  return v2;
}

+ (id)addOrUpdateEventWithRelevanceKeys:(id)keys
{
  keysCopy = keys;
  v5 = [(CHSWidgetRelevanceServiceEvent *)[self alloc] initWithEventType:keysCopy keys:0 extensionIdentities:?];

  return v5;
}

+ (id)removeEventWithExtensionIdentities:(id)identities
{
  identitiesCopy = identities;
  v5 = [(CHSWidgetRelevanceServiceEvent *)[self alloc] initWithEventType:0 keys:identitiesCopy extensionIdentities:?];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  eventType = self->_eventType;
  v6 = @"reload";
  if (eventType == 1)
  {
    v6 = @"addOrUpdate";
  }

  if (eventType == 2)
  {
    v7 = @"remove";
  }

  else
  {
    v7 = v6;
  }

  [v3 appendString:v7 withName:@"eventType"];
  allObjects = [(NSSet *)self->_keys allObjects];
  [v4 appendArraySection:allObjects withName:@"keys" skipIfEmpty:1];

  allObjects2 = [(NSSet *)self->_extensionIdentities allObjects];
  [v4 appendArraySection:allObjects2 withName:@"extensionIdentities" skipIfEmpty:1];

  build = [v4 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy[1] == self->_eventType && (v5 = equalCopy[2], keys = self->_keys, BSEqualSets()))
  {
    v7 = equalCopy[3];
    extensionIdentities = self->_extensionIdentities;
    v9 = BSEqualSets();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_eventType forKey:@"eventType"];
  [coderCopy encodeObject:self->_keys forKey:@"keys"];
  [coderCopy encodeObject:self->_extensionIdentities forKey:@"extensionIdentities"];
}

- (CHSWidgetRelevanceServiceEvent)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CHSWidgetRelevanceServiceEvent;
  v5 = [(CHSWidgetRelevanceServiceEvent *)&v18 init];
  if (v5)
  {
    v5->_eventType = [coderCopy decodeIntegerForKey:@"eventType"];
    v6 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"keys"];
    keys = v5->_keys;
    v5->_keys = v9;

    v11 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"extensionIdentities"];
    extensionIdentities = v5->_extensionIdentities;
    v5->_extensionIdentities = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

@end