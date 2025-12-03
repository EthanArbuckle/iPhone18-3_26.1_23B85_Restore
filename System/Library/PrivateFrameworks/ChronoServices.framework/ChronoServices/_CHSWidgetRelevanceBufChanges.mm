@interface _CHSWidgetRelevanceBufChanges
- (void)replaceAttributeKey:(id)key;
- (void)replaceIntentReference:(id)reference;
@end

@implementation _CHSWidgetRelevanceBufChanges

- (void)replaceAttributeKey:(id)key
{
  keyCopy = key;
  self->_changeTypeAttributeKey = 1;
  v7 = keyCopy;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2014 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    keyCopy = 0;
  }

  self->_replacementAttributeKey = [keyCopy unsignedIntValue];
}

- (void)replaceIntentReference:(id)reference
{
  referenceCopy = reference;
  self->_changeTypeIntentReference = 1;
  v7 = referenceCopy;
  if (!referenceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2037 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    referenceCopy = 0;
  }

  self->_replacementIntentReference = [referenceCopy unsignedIntValue];
}

@end