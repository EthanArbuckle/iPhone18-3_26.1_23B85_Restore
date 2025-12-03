@interface _CPSessionMissingResultsFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSessionMissingResultsFeedback)init;
- (void)addResults:(id)results;
- (void)setResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation _CPSessionMissingResultsFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      results = [(_CPSessionMissingResultsFeedback *)self results];
      results2 = [equalCopy results];
      v8 = results2;
      if ((results != 0) != (results2 == 0))
      {
        results3 = [(_CPSessionMissingResultsFeedback *)self results];
        if (!results3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = results3;
        results4 = [(_CPSessionMissingResultsFeedback *)self results];
        results5 = [equalCopy results];
        v13 = [results4 isEqual:results5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_CPSessionMissingResultsFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_results;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addResults:(id)results
{
  resultsCopy = results;
  results = self->_results;
  v8 = resultsCopy;
  if (!results)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = array;

    resultsCopy = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:resultsCopy];
}

- (void)setResults:(id)results
{
  v4 = [results mutableCopy];
  results = self->_results;
  self->_results = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPSessionMissingResultsFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSessionMissingResultsFeedback;
  v2 = [(_CPSessionMissingResultsFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSessionMissingResultsFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

@end