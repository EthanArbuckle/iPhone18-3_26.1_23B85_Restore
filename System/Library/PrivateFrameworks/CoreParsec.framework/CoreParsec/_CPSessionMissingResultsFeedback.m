@interface _CPSessionMissingResultsFeedback
- (BOOL)isEqual:(id)a3;
- (_CPSessionMissingResultsFeedback)init;
- (void)addResults:(id)a3;
- (void)setResults:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPSessionMissingResultsFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [v4 timestamp])
    {
      v6 = [(_CPSessionMissingResultsFeedback *)self results];
      v7 = [v4 results];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_CPSessionMissingResultsFeedback *)self results];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_CPSessionMissingResultsFeedback *)self results];
        v12 = [v4 results];
        v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)addResults:(id)a3
{
  v4 = a3;
  results = self->_results;
  v8 = v4;
  if (!results)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = v6;

    v4 = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:v4];
}

- (void)setResults:(id)a3
{
  v4 = [a3 mutableCopy];
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