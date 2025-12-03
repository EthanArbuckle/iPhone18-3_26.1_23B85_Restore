@interface _CPVisibleSuggestionsFeedback
- (BOOL)isEqual:(id)equal;
- (_CPVisibleSuggestionsFeedback)init;
- (_CPVisibleSuggestionsFeedback)initWithFacade:(id)facade;
- (void)addSuggestions:(id)suggestions;
- (void)setSuggestions:(id)suggestions;
- (void)writeTo:(id)to;
@end

@implementation _CPVisibleSuggestionsFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      suggestions = [(_CPVisibleSuggestionsFeedback *)self suggestions];
      suggestions2 = [equalCopy suggestions];
      v8 = suggestions2;
      if ((suggestions != 0) != (suggestions2 == 0))
      {
        suggestions3 = [(_CPVisibleSuggestionsFeedback *)self suggestions];
        if (!suggestions3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = suggestions3;
        suggestions4 = [(_CPVisibleSuggestionsFeedback *)self suggestions];
        suggestions5 = [equalCopy suggestions];
        v13 = [suggestions4 isEqual:suggestions5];

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
  if ([(_CPVisibleSuggestionsFeedback *)self timestamp])
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

- (void)addSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  suggestions = self->_suggestions;
  v8 = suggestionsCopy;
  if (!suggestions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestions;
    self->_suggestions = array;

    suggestionsCopy = v8;
    suggestions = self->_suggestions;
  }

  [(NSArray *)suggestions addObject:suggestionsCopy];
}

- (void)setSuggestions:(id)suggestions
{
  v4 = [suggestions mutableCopy];
  suggestions = self->_suggestions;
  self->_suggestions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPVisibleSuggestionsFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPVisibleSuggestionsFeedback;
  v2 = [(_CPVisibleSuggestionsFeedback *)&v5 init];
  if (v2)
  {
    [(_CPVisibleSuggestionsFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPVisibleSuggestionsFeedback)initWithFacade:(id)facade
{
  v23 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v21.receiver = self;
  v21.super_class = _CPVisibleSuggestionsFeedback;
  v5 = [(_CPVisibleSuggestionsFeedback *)&v21 init];
  if (v5)
  {
    -[_CPVisibleSuggestionsFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    suggestions = [facadeCopy suggestions];
    if (suggestions)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    suggestions2 = [facadeCopy suggestions];
    v9 = [suggestions2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(suggestions2);
          }

          v13 = [[_CPSearchSuggestionForFeedback alloc] initWithFacade:*(*(&v17 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [suggestions2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(_CPVisibleSuggestionsFeedback *)v5 setSuggestions:v7];
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end