@interface _CHSWidgetRelevancePropertiesBufChanges
- (double)replacementLastRelevanceUpdate;
- (uint64_t)changeTypeIsDeletion;
- (uint64_t)changeTypeLastRelevanceUpdate;
- (uint64_t)changeTypeRelevances;
- (uint64_t)replacementIsDeletion;
- (uint64_t)replacementSupportsBackgroundRefresh;
- (unsigned)replacementRelevances;
- (void)replaceExtensionIdentity:(id)identity;
- (void)replaceKind:(id)kind;
- (void)replaceRelevances:(id)relevances;
@end

@implementation _CHSWidgetRelevancePropertiesBufChanges

- (void)replaceExtensionIdentity:(id)identity
{
  identityCopy = identity;
  self->_changeTypeExtensionIdentity = 1;
  v7 = identityCopy;
  if (!identityCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1562 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    identityCopy = 0;
  }

  self->_replacementExtensionIdentity = [identityCopy unsignedIntValue];
}

- (void)replaceKind:(id)kind
{
  kindCopy = kind;
  self->_changeTypeKind = 1;
  v7 = kindCopy;
  if (!kindCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1585 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    kindCopy = 0;
  }

  self->_replacementKind = [kindCopy unsignedIntValue];
}

- (void)replaceRelevances:(id)relevances
{
  relevancesCopy = relevances;
  self->_changeTypeRelevances = 1;
  v7 = relevancesCopy;
  if (!relevancesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1671 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    relevancesCopy = 0;
  }

  self->_replacementRelevances = [relevancesCopy unsignedIntValue];
}

- (uint64_t)changeTypeRelevances
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (unsigned)replacementRelevances
{
  if (self)
  {
    self = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self[11]];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)replacementSupportsBackgroundRefresh
{
  if (self)
  {
    v1 = *(self + 25);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)changeTypeIsDeletion
{
  if (result)
  {
    return *(result + 26);
  }

  return result;
}

- (uint64_t)replacementIsDeletion
{
  if (self)
  {
    v1 = *(self + 27);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)changeTypeLastRelevanceUpdate
{
  if (result)
  {
    return *(result + 28);
  }

  return result;
}

- (double)replacementLastRelevanceUpdate
{
  if (self)
  {
    return *(self + 32);
  }

  else
  {
    return 0.0;
  }
}

@end