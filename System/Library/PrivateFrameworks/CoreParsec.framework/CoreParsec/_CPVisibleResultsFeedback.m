@interface _CPVisibleResultsFeedback
- (BOOL)isEqual:(id)a3;
- (_CPVisibleResultsFeedback)init;
- (_CPVisibleResultsFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (unint64_t)uniqueIdsOfVisibleButtonsAtIndex:(unint64_t)a3;
- (void)addResults:(id)a3;
- (void)addUniqueIdentifiersOfVisibleCardSections:(id)a3;
- (void)addUniqueIdsOfVisibleButtons:(unint64_t)a3;
- (void)setResults:(id)a3;
- (void)setUniqueIdentifiersOfVisibleCardSections:(id)a3;
- (void)setUniqueIdsOfVisibleButtons:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPVisibleResultsFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSArray *)self->_results hash]^ v3;
  v5 = 2654435761 * self->_triggerEvent;
  v6 = v4 ^ v5 ^ [(_CPSearchResultForFeedback *)self->_goTakeoverResult hash];
  v7 = [(NSArray *)self->_uniqueIdsOfVisibleButtons hash];
  return v6 ^ v7 ^ [(NSArray *)self->_uniqueIdentifiersOfVisibleCardSections hash]^ (2654435761 * self->_isFilterBarShown) ^ (2654435761 * self->_inputToResultShownMs);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_24;
  }

  v6 = [(_CPVisibleResultsFeedback *)self results];
  v7 = [v4 results];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_23;
  }

  v8 = [(_CPVisibleResultsFeedback *)self results];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPVisibleResultsFeedback *)self results];
    v11 = [v4 results];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [v4 triggerEvent])
  {
    goto LABEL_24;
  }

  v6 = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
  v7 = [v4 goTakeoverResult];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_23;
  }

  v14 = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
  if (v14)
  {
    v15 = v14;
    v16 = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
    v17 = [v4 goTakeoverResult];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v6 = [(_CPVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
  v7 = [v4 uniqueIdsOfVisibleButtons];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_23;
  }

  v19 = [(_CPVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
  if (v19)
  {
    v20 = v19;
    v21 = [(_CPVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
    v22 = [v4 uniqueIdsOfVisibleButtons];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v6 = [(_CPVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
  v7 = [v4 uniqueIdentifiersOfVisibleCardSections];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  v24 = [(_CPVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
  if (v24)
  {
    v25 = v24;
    v26 = [(_CPVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
    v27 = [v4 uniqueIdentifiersOfVisibleCardSections];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  isFilterBarShown = self->_isFilterBarShown;
  if (isFilterBarShown == [v4 isFilterBarShown])
  {
    inputToResultShownMs = self->_inputToResultShownMs;
    v29 = inputToResultShownMs == [v4 inputToResultShownMs];
    goto LABEL_25;
  }

LABEL_24:
  v29 = 0;
LABEL_25:

  return v29;
}

- (void)writeTo:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_CPVisibleResultsFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = self->_results;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v8);
  }

  if ([(_CPVisibleResultsFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  v13 = [(_CPVisibleResultsFeedback *)self goTakeoverResult];

  if (v13)
  {
    v14 = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
    PBDataWriterWriteSubmessage();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = self->_uniqueIdsOfVisibleButtons;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      v19 = 0;
      do
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v33 + 1) + 8 * v19) unsignedLongLongValue];
        PBDataWriterWriteUint64Field();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v17);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = self->_uniqueIdentifiersOfVisibleCardSections;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      v24 = 0;
      do
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v29 + 1) + 8 * v24);
        PBDataWriterWriteStringField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v22);
  }

  if ([(_CPVisibleResultsFeedback *)self isFilterBarShown])
  {
    isFilterBarShown = self->_isFilterBarShown;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPVisibleResultsFeedback *)self inputToResultShownMs])
  {
    inputToResultShownMs = self->_inputToResultShownMs;
    PBDataWriterWriteInt32Field();
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)addUniqueIdentifiersOfVisibleCardSections:(id)a3
{
  v4 = a3;
  uniqueIdentifiersOfVisibleCardSections = self->_uniqueIdentifiersOfVisibleCardSections;
  v8 = v4;
  if (!uniqueIdentifiersOfVisibleCardSections)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_uniqueIdentifiersOfVisibleCardSections;
    self->_uniqueIdentifiersOfVisibleCardSections = v6;

    v4 = v8;
    uniqueIdentifiersOfVisibleCardSections = self->_uniqueIdentifiersOfVisibleCardSections;
  }

  [(NSArray *)uniqueIdentifiersOfVisibleCardSections addObject:v4];
}

- (void)setUniqueIdentifiersOfVisibleCardSections:(id)a3
{
  v4 = [a3 mutableCopy];
  uniqueIdentifiersOfVisibleCardSections = self->_uniqueIdentifiersOfVisibleCardSections;
  self->_uniqueIdentifiersOfVisibleCardSections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)uniqueIdsOfVisibleButtonsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_uniqueIdsOfVisibleButtons objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (void)addUniqueIdsOfVisibleButtons:(unint64_t)a3
{
  uniqueIdsOfVisibleButtons = self->_uniqueIdsOfVisibleButtons;
  if (!uniqueIdsOfVisibleButtons)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_uniqueIdsOfVisibleButtons;
    self->_uniqueIdsOfVisibleButtons = v6;

    uniqueIdsOfVisibleButtons = self->_uniqueIdsOfVisibleButtons;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSArray *)uniqueIdsOfVisibleButtons addObject:v8];
}

- (void)setUniqueIdsOfVisibleButtons:(id)a3
{
  v4 = [a3 mutableCopy];
  uniqueIdsOfVisibleButtons = self->_uniqueIdsOfVisibleButtons;
  self->_uniqueIdsOfVisibleButtons = v4;

  MEMORY[0x1EEE66BB8]();
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

- (_CPVisibleResultsFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPVisibleResultsFeedback;
  v2 = [(_CPVisibleResultsFeedback *)&v5 init];
  if (v2)
  {
    [(_CPVisibleResultsFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPVisibleResultsFeedback)initWithFacade:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = _CPVisibleResultsFeedback;
  v5 = [(_CPVisibleResultsFeedback *)&v49 init];
  if (v5)
  {
    -[_CPVisibleResultsFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 results];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = [v4 results];
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_CPSearchResultForFeedback alloc] initWithFacade:*(*(&v45 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v10);
    }

    [(_CPVisibleResultsFeedback *)v5 setResults:v7];
    -[_CPVisibleResultsFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    v14 = [v4 goTakeoverResult];

    if (v14)
    {
      v15 = [_CPSearchResultForFeedback alloc];
      v16 = [v4 goTakeoverResult];
      v17 = [(_CPSearchResultForFeedback *)v15 initWithFacade:v16];
      [(_CPVisibleResultsFeedback *)v5 setGoTakeoverResult:v17];
    }

    v18 = [v4 uniqueIdsOfVisibleButtons];
    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v20 = [v4 uniqueIdsOfVisibleButtons];
    v21 = [v20 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v20);
          }

          if (*(*(&v41 + 1) + 8 * j))
          {
            [v19 addObject:?];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v22);
    }

    [(_CPVisibleResultsFeedback *)v5 setUniqueIdsOfVisibleButtons:v19];
    v25 = [v4 uniqueIdentifiersOfVisibleCardSections];
    if (v25)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v26 = 0;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = [v4 uniqueIdentifiersOfVisibleCardSections];
    v28 = [v27 countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v38;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(v27);
          }

          if (*(*(&v37 + 1) + 8 * k))
          {
            [v26 addObject:?];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v29);
    }

    [(_CPVisibleResultsFeedback *)v5 setUniqueIdentifiersOfVisibleCardSections:v26];
    -[_CPVisibleResultsFeedback setIsFilterBarShown:](v5, "setIsFilterBarShown:", [v4 isFilterBarShown]);
    v32 = [v4 inputToResultShownMs];

    if (v32)
    {
      v33 = [v4 inputToResultShownMs];
      -[_CPVisibleResultsFeedback setInputToResultShownMs:](v5, "setInputToResultShownMs:", [v33 intValue]);
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

@end