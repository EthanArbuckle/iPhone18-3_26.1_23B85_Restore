@interface _CHSWidgetRelevanceBufChanges
- (void)replaceAttributeKey:(id)a3;
- (void)replaceIntentReference:(id)a3;
@end

@implementation _CHSWidgetRelevanceBufChanges

- (void)replaceAttributeKey:(id)a3
{
  v5 = a3;
  self->_changeTypeAttributeKey = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2014 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementAttributeKey = [v5 unsignedIntValue];
}

- (void)replaceIntentReference:(id)a3
{
  v5 = a3;
  self->_changeTypeIntentReference = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2037 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementIntentReference = [v5 unsignedIntValue];
}

@end