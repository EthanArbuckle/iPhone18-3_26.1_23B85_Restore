@interface _CHSIntentReferenceBufChanges
- (uint64_t)replacementStableHash;
- (void)replaceIntentData:(id)data;
- (void)replacePartialIntentData:(id)data;
- (void)replaceSchemaData:(id)data;
@end

@implementation _CHSIntentReferenceBufChanges

- (void)replaceIntentData:(id)data
{
  dataCopy = data;
  self->_changeTypeIntentData = 1;
  v7 = dataCopy;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2561 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    dataCopy = 0;
  }

  self->_replacementIntentData = [dataCopy unsignedIntValue];
}

- (void)replaceSchemaData:(id)data
{
  dataCopy = data;
  self->_changeTypeSchemaData = 1;
  v7 = dataCopy;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2584 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    dataCopy = 0;
  }

  self->_replacementSchemaData = [dataCopy unsignedIntValue];
}

- (void)replacePartialIntentData:(id)data
{
  dataCopy = data;
  self->_changeTypePartialIntentData = 1;
  v7 = dataCopy;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2607 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    dataCopy = 0;
  }

  self->_replacementPartialIntentData = [dataCopy unsignedIntValue];
}

- (uint64_t)replacementStableHash
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end