@interface _CHSWidgetRelevancePropertiesBufChanges
- (double)replacementLastRelevanceUpdate;
- (uint64_t)changeTypeIsDeletion;
- (uint64_t)changeTypeLastRelevanceUpdate;
- (uint64_t)changeTypeRelevances;
- (uint64_t)replacementIsDeletion;
- (uint64_t)replacementSupportsBackgroundRefresh;
- (unsigned)replacementRelevances;
- (void)replaceExtensionIdentity:(id)a3;
- (void)replaceKind:(id)a3;
- (void)replaceRelevances:(id)a3;
@end

@implementation _CHSWidgetRelevancePropertiesBufChanges

- (void)replaceExtensionIdentity:(id)a3
{
  v5 = a3;
  self->_changeTypeExtensionIdentity = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1562 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementExtensionIdentity = [v5 unsignedIntValue];
}

- (void)replaceKind:(id)a3
{
  v5 = a3;
  self->_changeTypeKind = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1585 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementKind = [v5 unsignedIntValue];
}

- (void)replaceRelevances:(id)a3
{
  v5 = a3;
  self->_changeTypeRelevances = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1671 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementRelevances = [v5 unsignedIntValue];
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
  if (a1)
  {
    a1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:a1[11]];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)replacementSupportsBackgroundRefresh
{
  if (a1)
  {
    v1 = *(a1 + 25);
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
  if (a1)
  {
    v1 = *(a1 + 27);
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
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0.0;
  }
}

@end