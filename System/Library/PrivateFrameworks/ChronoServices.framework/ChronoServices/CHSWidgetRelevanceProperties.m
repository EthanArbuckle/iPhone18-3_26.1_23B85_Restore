@interface CHSWidgetRelevanceProperties
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3;
- (CHSWidgetRelevanceKey)key;
- (CHSWidgetRelevanceProperties)initWithCoder:(id)a3;
- (CHSWidgetRelevanceProperties)initWithSupportsBackgroundRefresh:(BOOL)a3 lastRelevanceUpdate:(double)a4 relevances:(id)a5;
- (CHSWidgetRelevanceProperties)initWithWidgetExtensionIdentity:(id)a3 kind:(id)a4 supportsBackgroundRefresh:(BOOL)a5 lastRelevanceUpdate:(double)a6 relevanceFunction:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetRelevanceProperties

- (CHSWidgetRelevanceProperties)initWithSupportsBackgroundRefresh:(BOOL)a3 lastRelevanceUpdate:(double)a4 relevances:(id)a5
{
  v8 = a5;
  v18.receiver = self;
  v18.super_class = CHSWidgetRelevanceProperties;
  v9 = [(CHSWidgetRelevanceProperties *)&v18 init];
  v10 = v9;
  if (v9)
  {
    extensionIdentity = v9->_extensionIdentity;
    v9->_extensionIdentity = 0;

    kind = v10->_kind;
    v10->_kind = 0;

    v10->_supportsBackgroundRefresh = a3;
    v10->_lastRelevanceUpdate = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__CHSWidgetRelevanceProperties_initWithSupportsBackgroundRefresh_lastRelevanceUpdate_relevances___block_invoke;
    aBlock[3] = &unk_1E7453028;
    v17 = v8;
    v13 = _Block_copy(aBlock);
    relevanceFunction = v10->_relevanceFunction;
    v10->_relevanceFunction = v13;
  }

  return v10;
}

- (CHSWidgetRelevanceProperties)initWithWidgetExtensionIdentity:(id)a3 kind:(id)a4 supportsBackgroundRefresh:(BOOL)a5 lastRelevanceUpdate:(double)a6 relevanceFunction:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = CHSWidgetRelevanceProperties;
  v16 = [(CHSWidgetRelevanceProperties *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_extensionIdentity, a3);
    objc_storeStrong(&v17->_kind, a4);
    v17->_supportsBackgroundRefresh = a5;
    v17->_lastRelevanceUpdate = a6;
    v18 = _Block_copy(v15);
    relevanceFunction = v17->_relevanceFunction;
    v17->_relevanceFunction = v18;
  }

  return v17;
}

- (CHSWidgetRelevanceKey)key
{
  v2 = [[CHSWidgetRelevanceKey alloc] initWithExtensionIdentity:self->_extensionIdentity kind:self->_kind];

  return v2;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_extensionIdentity];
  v5 = [v3 appendObject:self->_kind];
  v6 = [v3 appendBool:self->_supportsBackgroundRefresh];
  v7 = [v3 appendDouble:self->_lastRelevanceUpdate];
  v8 = [(CHSWidgetRelevanceProperties *)self relevances];
  v9 = [v3 appendObject:v8];

  v10 = [v3 hash];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  extensionIdentity = self->_extensionIdentity;
  v6 = v4[3];
  if (!BSEqualObjects())
  {
    goto LABEL_7;
  }

  kind = self->_kind;
  v8 = v4[4];
  if (BSEqualObjects() && (supportsBackgroundRefresh = self->_supportsBackgroundRefresh, v10 = *(v4 + 16), BSEqualBools()) && (lastRelevanceUpdate = self->_lastRelevanceUpdate, v12 = v4[5], BSEqualDoubles()))
  {
    v13 = [(CHSWidgetRelevanceProperties *)self relevances];
    v14 = [v4 relevances];
    v15 = BSEqualObjects();
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  return v15;
}

- (BOOL)matches:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionIdentity];
  if ([v5 isEqual:self->_extensionIdentity])
  {
    v6 = [v4 kind];
    v7 = [v6 isEqual:self->_kind];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_extensionIdentity forKey:@"extensionIdentity"];
  [v5 encodeObject:self->_kind forKey:@"kind"];
  [v5 encodeBool:self->_supportsBackgroundRefresh forKey:@"supportsBackgroundRefresh"];
  [v5 encodeDouble:@"lastRelevanceUpdate" forKey:self->_lastRelevanceUpdate];
  v4 = [(CHSWidgetRelevanceProperties *)self relevances];
  [v5 encodeObject:v4 forKey:@"relevances"];
}

- (CHSWidgetRelevanceProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentity"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v7 = [v4 decodeBoolForKey:@"supportsBackgroundRefresh"];
  [v4 decodeDoubleForKey:@"lastRelevanceUpdate"];
  v9 = v8;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"relevances"];
  v14 = [(CHSWidgetRelevanceProperties *)self initWithWidgetExtensionIdentity:v5 kind:v6 supportsBackgroundRefresh:v7 lastRelevanceUpdate:v13 relevances:v9];

  return v14;
}

@end