@interface _CPVisibleResultsFeedback
- (BOOL)isEqual:(id)equal;
- (_CPVisibleResultsFeedback)init;
- (_CPVisibleResultsFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (unint64_t)uniqueIdsOfVisibleButtonsAtIndex:(unint64_t)index;
- (void)addResults:(id)results;
- (void)addUniqueIdentifiersOfVisibleCardSections:(id)sections;
- (void)addUniqueIdsOfVisibleButtons:(unint64_t)buttons;
- (void)setResults:(id)results;
- (void)setUniqueIdentifiersOfVisibleCardSections:(id)sections;
- (void)setUniqueIdsOfVisibleButtons:(id)buttons;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_24;
  }

  results = [(_CPVisibleResultsFeedback *)self results];
  results2 = [equalCopy results];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_23;
  }

  results3 = [(_CPVisibleResultsFeedback *)self results];
  if (results3)
  {
    v9 = results3;
    results4 = [(_CPVisibleResultsFeedback *)self results];
    results5 = [equalCopy results];
    v12 = [results4 isEqual:results5];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_24;
  }

  results = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
  results2 = [equalCopy goTakeoverResult];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_23;
  }

  goTakeoverResult = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
  if (goTakeoverResult)
  {
    v15 = goTakeoverResult;
    goTakeoverResult2 = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
    goTakeoverResult3 = [equalCopy goTakeoverResult];
    v18 = [goTakeoverResult2 isEqual:goTakeoverResult3];

    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  results = [(_CPVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
  results2 = [equalCopy uniqueIdsOfVisibleButtons];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_23;
  }

  uniqueIdsOfVisibleButtons = [(_CPVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
  if (uniqueIdsOfVisibleButtons)
  {
    v20 = uniqueIdsOfVisibleButtons;
    uniqueIdsOfVisibleButtons2 = [(_CPVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
    uniqueIdsOfVisibleButtons3 = [equalCopy uniqueIdsOfVisibleButtons];
    v23 = [uniqueIdsOfVisibleButtons2 isEqual:uniqueIdsOfVisibleButtons3];

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  results = [(_CPVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
  results2 = [equalCopy uniqueIdentifiersOfVisibleCardSections];
  if ((results != 0) == (results2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  uniqueIdentifiersOfVisibleCardSections = [(_CPVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
  if (uniqueIdentifiersOfVisibleCardSections)
  {
    v25 = uniqueIdentifiersOfVisibleCardSections;
    uniqueIdentifiersOfVisibleCardSections2 = [(_CPVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
    uniqueIdentifiersOfVisibleCardSections3 = [equalCopy uniqueIdentifiersOfVisibleCardSections];
    v28 = [uniqueIdentifiersOfVisibleCardSections2 isEqual:uniqueIdentifiersOfVisibleCardSections3];

    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  isFilterBarShown = self->_isFilterBarShown;
  if (isFilterBarShown == [equalCopy isFilterBarShown])
  {
    inputToResultShownMs = self->_inputToResultShownMs;
    v29 = inputToResultShownMs == [equalCopy inputToResultShownMs];
    goto LABEL_25;
  }

LABEL_24:
  v29 = 0;
LABEL_25:

  return v29;
}

- (void)writeTo:(id)to
{
  v44 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  goTakeoverResult = [(_CPVisibleResultsFeedback *)self goTakeoverResult];

  if (goTakeoverResult)
  {
    goTakeoverResult2 = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
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

- (void)addUniqueIdentifiersOfVisibleCardSections:(id)sections
{
  sectionsCopy = sections;
  uniqueIdentifiersOfVisibleCardSections = self->_uniqueIdentifiersOfVisibleCardSections;
  v8 = sectionsCopy;
  if (!uniqueIdentifiersOfVisibleCardSections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_uniqueIdentifiersOfVisibleCardSections;
    self->_uniqueIdentifiersOfVisibleCardSections = array;

    sectionsCopy = v8;
    uniqueIdentifiersOfVisibleCardSections = self->_uniqueIdentifiersOfVisibleCardSections;
  }

  [(NSArray *)uniqueIdentifiersOfVisibleCardSections addObject:sectionsCopy];
}

- (void)setUniqueIdentifiersOfVisibleCardSections:(id)sections
{
  v4 = [sections mutableCopy];
  uniqueIdentifiersOfVisibleCardSections = self->_uniqueIdentifiersOfVisibleCardSections;
  self->_uniqueIdentifiersOfVisibleCardSections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)uniqueIdsOfVisibleButtonsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_uniqueIdsOfVisibleButtons objectAtIndexedSubscript:index];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)addUniqueIdsOfVisibleButtons:(unint64_t)buttons
{
  uniqueIdsOfVisibleButtons = self->_uniqueIdsOfVisibleButtons;
  if (!uniqueIdsOfVisibleButtons)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_uniqueIdsOfVisibleButtons;
    self->_uniqueIdsOfVisibleButtons = array;

    uniqueIdsOfVisibleButtons = self->_uniqueIdsOfVisibleButtons;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:buttons];
  [(NSArray *)uniqueIdsOfVisibleButtons addObject:v8];
}

- (void)setUniqueIdsOfVisibleButtons:(id)buttons
{
  v4 = [buttons mutableCopy];
  uniqueIdsOfVisibleButtons = self->_uniqueIdsOfVisibleButtons;
  self->_uniqueIdsOfVisibleButtons = v4;

  MEMORY[0x1EEE66BB8]();
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

- (_CPVisibleResultsFeedback)initWithFacade:(id)facade
{
  v53 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v49.receiver = self;
  v49.super_class = _CPVisibleResultsFeedback;
  v5 = [(_CPVisibleResultsFeedback *)&v49 init];
  if (v5)
  {
    -[_CPVisibleResultsFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    results = [facadeCopy results];
    if (results)
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
    results2 = [facadeCopy results];
    v9 = [results2 countByEnumeratingWithState:&v45 objects:v52 count:16];
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
            objc_enumerationMutation(results2);
          }

          v13 = [[_CPSearchResultForFeedback alloc] initWithFacade:*(*(&v45 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [results2 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v10);
    }

    [(_CPVisibleResultsFeedback *)v5 setResults:v7];
    -[_CPVisibleResultsFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    goTakeoverResult = [facadeCopy goTakeoverResult];

    if (goTakeoverResult)
    {
      v15 = [_CPSearchResultForFeedback alloc];
      goTakeoverResult2 = [facadeCopy goTakeoverResult];
      v17 = [(_CPSearchResultForFeedback *)v15 initWithFacade:goTakeoverResult2];
      [(_CPVisibleResultsFeedback *)v5 setGoTakeoverResult:v17];
    }

    uniqueIdsOfVisibleButtons = [facadeCopy uniqueIdsOfVisibleButtons];
    if (uniqueIdsOfVisibleButtons)
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
    uniqueIdsOfVisibleButtons2 = [facadeCopy uniqueIdsOfVisibleButtons];
    v21 = [uniqueIdsOfVisibleButtons2 countByEnumeratingWithState:&v41 objects:v51 count:16];
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
            objc_enumerationMutation(uniqueIdsOfVisibleButtons2);
          }

          if (*(*(&v41 + 1) + 8 * j))
          {
            [v19 addObject:?];
          }
        }

        v22 = [uniqueIdsOfVisibleButtons2 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v22);
    }

    [(_CPVisibleResultsFeedback *)v5 setUniqueIdsOfVisibleButtons:v19];
    uniqueIdentifiersOfVisibleCardSections = [facadeCopy uniqueIdentifiersOfVisibleCardSections];
    if (uniqueIdentifiersOfVisibleCardSections)
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
    uniqueIdentifiersOfVisibleCardSections2 = [facadeCopy uniqueIdentifiersOfVisibleCardSections];
    v28 = [uniqueIdentifiersOfVisibleCardSections2 countByEnumeratingWithState:&v37 objects:v50 count:16];
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
            objc_enumerationMutation(uniqueIdentifiersOfVisibleCardSections2);
          }

          if (*(*(&v37 + 1) + 8 * k))
          {
            [v26 addObject:?];
          }
        }

        v29 = [uniqueIdentifiersOfVisibleCardSections2 countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v29);
    }

    [(_CPVisibleResultsFeedback *)v5 setUniqueIdentifiersOfVisibleCardSections:v26];
    -[_CPVisibleResultsFeedback setIsFilterBarShown:](v5, "setIsFilterBarShown:", [facadeCopy isFilterBarShown]);
    inputToResultShownMs = [facadeCopy inputToResultShownMs];

    if (inputToResultShownMs)
    {
      inputToResultShownMs2 = [facadeCopy inputToResultShownMs];
      -[_CPVisibleResultsFeedback setInputToResultShownMs:](v5, "setInputToResultShownMs:", [inputToResultShownMs2 intValue]);
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

@end