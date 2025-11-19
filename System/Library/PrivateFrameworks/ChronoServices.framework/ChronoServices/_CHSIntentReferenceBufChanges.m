@interface _CHSIntentReferenceBufChanges
- (uint64_t)replacementStableHash;
- (void)replaceIntentData:(id)a3;
- (void)replacePartialIntentData:(id)a3;
- (void)replaceSchemaData:(id)a3;
@end

@implementation _CHSIntentReferenceBufChanges

- (void)replaceIntentData:(id)a3
{
  v5 = a3;
  self->_changeTypeIntentData = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2561 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementIntentData = [v5 unsignedIntValue];
}

- (void)replaceSchemaData:(id)a3
{
  v5 = a3;
  self->_changeTypeSchemaData = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2584 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementSchemaData = [v5 unsignedIntValue];
}

- (void)replacePartialIntentData:(id)a3
{
  v5 = a3;
  self->_changeTypePartialIntentData = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2607 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementPartialIntentData = [v5 unsignedIntValue];
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