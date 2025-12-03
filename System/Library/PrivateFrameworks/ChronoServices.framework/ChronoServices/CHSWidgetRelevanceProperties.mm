@interface CHSWidgetRelevanceProperties
- (BOOL)isEqual:(id)equal;
- (BOOL)matches:(id)matches;
- (CHSWidgetRelevanceKey)key;
- (CHSWidgetRelevanceProperties)initWithCoder:(id)coder;
- (CHSWidgetRelevanceProperties)initWithSupportsBackgroundRefresh:(BOOL)refresh lastRelevanceUpdate:(double)update relevances:(id)relevances;
- (CHSWidgetRelevanceProperties)initWithWidgetExtensionIdentity:(id)identity kind:(id)kind supportsBackgroundRefresh:(BOOL)refresh lastRelevanceUpdate:(double)update relevanceFunction:(id)function;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetRelevanceProperties

- (CHSWidgetRelevanceProperties)initWithSupportsBackgroundRefresh:(BOOL)refresh lastRelevanceUpdate:(double)update relevances:(id)relevances
{
  relevancesCopy = relevances;
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

    v10->_supportsBackgroundRefresh = refresh;
    v10->_lastRelevanceUpdate = update;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__CHSWidgetRelevanceProperties_initWithSupportsBackgroundRefresh_lastRelevanceUpdate_relevances___block_invoke;
    aBlock[3] = &unk_1E7453028;
    v17 = relevancesCopy;
    v13 = _Block_copy(aBlock);
    relevanceFunction = v10->_relevanceFunction;
    v10->_relevanceFunction = v13;
  }

  return v10;
}

- (CHSWidgetRelevanceProperties)initWithWidgetExtensionIdentity:(id)identity kind:(id)kind supportsBackgroundRefresh:(BOOL)refresh lastRelevanceUpdate:(double)update relevanceFunction:(id)function
{
  identityCopy = identity;
  kindCopy = kind;
  functionCopy = function;
  v21.receiver = self;
  v21.super_class = CHSWidgetRelevanceProperties;
  v16 = [(CHSWidgetRelevanceProperties *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_extensionIdentity, identity);
    objc_storeStrong(&v17->_kind, kind);
    v17->_supportsBackgroundRefresh = refresh;
    v17->_lastRelevanceUpdate = update;
    v18 = _Block_copy(functionCopy);
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_extensionIdentity];
  v5 = [builder appendObject:self->_kind];
  v6 = [builder appendBool:self->_supportsBackgroundRefresh];
  v7 = [builder appendDouble:self->_lastRelevanceUpdate];
  relevances = [(CHSWidgetRelevanceProperties *)self relevances];
  v9 = [builder appendObject:relevances];

  v10 = [builder hash];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  extensionIdentity = self->_extensionIdentity;
  v6 = equalCopy[3];
  if (!BSEqualObjects())
  {
    goto LABEL_7;
  }

  kind = self->_kind;
  v8 = equalCopy[4];
  if (BSEqualObjects() && (supportsBackgroundRefresh = self->_supportsBackgroundRefresh, v10 = *(equalCopy + 16), BSEqualBools()) && (lastRelevanceUpdate = self->_lastRelevanceUpdate, v12 = equalCopy[5], BSEqualDoubles()))
  {
    relevances = [(CHSWidgetRelevanceProperties *)self relevances];
    relevances2 = [equalCopy relevances];
    v15 = BSEqualObjects();
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  return v15;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  extensionIdentity = [matchesCopy extensionIdentity];
  if ([extensionIdentity isEqual:self->_extensionIdentity])
  {
    kind = [matchesCopy kind];
    v7 = [kind isEqual:self->_kind];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensionIdentity forKey:@"extensionIdentity"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeBool:self->_supportsBackgroundRefresh forKey:@"supportsBackgroundRefresh"];
  [coderCopy encodeDouble:@"lastRelevanceUpdate" forKey:self->_lastRelevanceUpdate];
  relevances = [(CHSWidgetRelevanceProperties *)self relevances];
  [coderCopy encodeObject:relevances forKey:@"relevances"];
}

- (CHSWidgetRelevanceProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v7 = [coderCopy decodeBoolForKey:@"supportsBackgroundRefresh"];
  [coderCopy decodeDoubleForKey:@"lastRelevanceUpdate"];
  v9 = v8;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"relevances"];
  v14 = [(CHSWidgetRelevanceProperties *)self initWithWidgetExtensionIdentity:v5 kind:v6 supportsBackgroundRefresh:v7 lastRelevanceUpdate:v13 relevances:v9];

  return v14;
}

@end