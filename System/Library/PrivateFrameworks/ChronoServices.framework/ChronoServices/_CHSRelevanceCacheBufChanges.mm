@interface _CHSRelevanceCacheBufChanges
- (uint64_t)changeTypeArchivedObjects;
- (uint64_t)changeTypeGroups;
- (unsigned)replacementArchivedObjects;
- (unsigned)replacementGroups;
- (void)replaceArchivedObjects:(id)a3;
- (void)replaceGroups:(id)a3;
@end

@implementation _CHSRelevanceCacheBufChanges

- (void)replaceArchivedObjects:(id)a3
{
  v5 = a3;
  self->_changeTypeArchivedObjects = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementArchivedObjects = [v5 unsignedIntValue];
}

- (void)replaceGroups:(id)a3
{
  v5 = a3;
  self->_changeTypeGroups = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:551 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementGroups = [v5 unsignedIntValue];
}

- (uint64_t)changeTypeArchivedObjects
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (unsigned)replacementArchivedObjects
{
  if (a1)
  {
    a1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:a1[3]];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)changeTypeGroups
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (unsigned)replacementGroups
{
  if (a1)
  {
    a1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:a1[5]];
    v1 = vars8;
  }

  return a1;
}

@end