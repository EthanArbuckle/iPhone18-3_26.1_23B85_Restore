@interface _CHSRelevanceCacheBufChanges
- (uint64_t)changeTypeArchivedObjects;
- (uint64_t)changeTypeGroups;
- (unsigned)replacementArchivedObjects;
- (unsigned)replacementGroups;
- (void)replaceArchivedObjects:(id)objects;
- (void)replaceGroups:(id)groups;
@end

@implementation _CHSRelevanceCacheBufChanges

- (void)replaceArchivedObjects:(id)objects
{
  objectsCopy = objects;
  self->_changeTypeArchivedObjects = 1;
  v7 = objectsCopy;
  if (!objectsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    objectsCopy = 0;
  }

  self->_replacementArchivedObjects = [objectsCopy unsignedIntValue];
}

- (void)replaceGroups:(id)groups
{
  groupsCopy = groups;
  self->_changeTypeGroups = 1;
  v7 = groupsCopy;
  if (!groupsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:551 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    groupsCopy = 0;
  }

  self->_replacementGroups = [groupsCopy unsignedIntValue];
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
  if (self)
  {
    self = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self[3]];
    v1 = vars8;
  }

  return self;
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
  if (self)
  {
    self = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self[5]];
    v1 = vars8;
  }

  return self;
}

@end