@interface IDSGFTMetricsAnonymizer
- (IDSGFTMetricsAnonymizer)init;
- (id)anonymizeID:(id)a3;
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

- (id)anonymizeID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (@"IDSGFTMetricsWildcard" == v4)
  {
    v8 = v4;
    v5 = v8;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_assignedIDs objectForKeyedSubscript:v4];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      if (!v5)
      {
        v5 = [MEMORY[0x1E695DFB0] null];
      }

      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_nextAnonymizedID];
      [(NSMutableDictionary *)self->_assignedIDs setObject:v7 forKeyedSubscript:v5];
      ++self->_nextAnonymizedID;
    }

    v8 = v7;
  }

  return v8;
}

@end