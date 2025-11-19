@interface CHSWidgetRelevanceServiceEvent
+ (id)addOrUpdateEventWithRelevanceKeys:(id)a3;
+ (id)reloadEvent;
+ (id)removeEventWithExtensionIdentities:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CHSWidgetRelevanceServiceEvent)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)initWithEventType:(void *)a3 keys:(void *)a4 extensionIdentities:;
@end

@implementation CHSWidgetRelevanceServiceEvent

- (void)initWithEventType:(void *)a3 keys:(void *)a4 extensionIdentities:
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = CHSWidgetRelevanceServiceEvent;
    v9 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v9;
    if (v9)
    {
      v9[1] = a2;
      v10 = [v7 copy];
      v11 = a1[2];
      a1[2] = v10;

      v12 = [v8 copy];
      v13 = a1[3];
      a1[3] = v12;
    }
  }

  return a1;
}

+ (id)reloadEvent
{
  v2 = [(CHSWidgetRelevanceServiceEvent *)[a1 alloc] initWithEventType:0 keys:0 extensionIdentities:?];

  return v2;
}

+ (id)addOrUpdateEventWithRelevanceKeys:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidgetRelevanceServiceEvent *)[a1 alloc] initWithEventType:v4 keys:0 extensionIdentities:?];

  return v5;
}

+ (id)removeEventWithExtensionIdentities:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidgetRelevanceServiceEvent *)[a1 alloc] initWithEventType:0 keys:v4 extensionIdentities:?];

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
  v8 = [(NSSet *)self->_keys allObjects];
  [v4 appendArraySection:v8 withName:@"keys" skipIfEmpty:1];

  v9 = [(NSSet *)self->_extensionIdentities allObjects];
  [v4 appendArraySection:v9 withName:@"extensionIdentities" skipIfEmpty:1];

  v10 = [v4 build];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v4[1] == self->_eventType && (v5 = v4[2], keys = self->_keys, BSEqualSets()))
  {
    v7 = v4[3];
    extensionIdentities = self->_extensionIdentities;
    v9 = BSEqualSets();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_eventType forKey:@"eventType"];
  [v4 encodeObject:self->_keys forKey:@"keys"];
  [v4 encodeObject:self->_extensionIdentities forKey:@"extensionIdentities"];
}

- (CHSWidgetRelevanceServiceEvent)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CHSWidgetRelevanceServiceEvent;
  v5 = [(CHSWidgetRelevanceServiceEvent *)&v18 init];
  if (v5)
  {
    v5->_eventType = [v4 decodeIntegerForKey:@"eventType"];
    v6 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"keys"];
    keys = v5->_keys;
    v5->_keys = v9;

    v11 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"extensionIdentities"];
    extensionIdentities = v5->_extensionIdentities;
    v5->_extensionIdentities = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

@end