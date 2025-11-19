@interface _CPSessionMissingSuggestionsFeedback
- (BOOL)isEqual:(id)a3;
- (_CPSessionMissingSuggestionsFeedback)init;
- (void)addSuggestions:(id)a3;
- (void)setSuggestions:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPSessionMissingSuggestionsFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [v4 timestamp])
    {
      v6 = [(_CPSessionMissingSuggestionsFeedback *)self suggestions];
      v7 = [v4 suggestions];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_CPSessionMissingSuggestionsFeedback *)self suggestions];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_CPSessionMissingSuggestionsFeedback *)self suggestions];
        v12 = [v4 suggestions];
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
  if ([(_CPSessionMissingSuggestionsFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_suggestions;
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

- (void)addSuggestions:(id)a3
{
  v4 = a3;
  suggestions = self->_suggestions;
  v8 = v4;
  if (!suggestions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestions;
    self->_suggestions = v6;

    v4 = v8;
    suggestions = self->_suggestions;
  }

  [(NSArray *)suggestions addObject:v4];
}

- (void)setSuggestions:(id)a3
{
  v4 = [a3 mutableCopy];
  suggestions = self->_suggestions;
  self->_suggestions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPSessionMissingSuggestionsFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSessionMissingSuggestionsFeedback;
  v2 = [(_CPSessionMissingSuggestionsFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSessionMissingSuggestionsFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

@end