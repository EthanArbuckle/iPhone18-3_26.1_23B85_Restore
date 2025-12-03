@interface IDSGFTMetricsAnonymizer
- (IDSGFTMetricsAnonymizer)init;
- (id)anonymizeID:(id)d;
@end

@implementation IDSGFTMetricsAnonymizer

- (IDSGFTMetricsAnonymizer)init
{
  v7.receiver = self;
  v7.super_class = IDSGFTMetricsAnonymizer;
  v2 = [(IDSGFTMetricsAnonymizer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    if (!v2->_assignedIDs)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      assignedIDs = v3->_assignedIDs;
      v3->_assignedIDs = Mutable;
    }

    v3->_nextAnonymizedID = 0;
  }

  return v3;
}

- (id)anonymizeID:(id)d
{
  dCopy = d;
  null = dCopy;
  if (@"IDSGFTMetricsWildcard" == dCopy)
  {
    v8 = dCopy;
    null = v8;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_assignedIDs objectForKeyedSubscript:dCopy];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      if (!null)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_nextAnonymizedID];
      [(NSMutableDictionary *)self->_assignedIDs setObject:v7 forKeyedSubscript:null];
      ++self->_nextAnonymizedID;
    }

    v8 = v7;
  }

  return v8;
}

@end