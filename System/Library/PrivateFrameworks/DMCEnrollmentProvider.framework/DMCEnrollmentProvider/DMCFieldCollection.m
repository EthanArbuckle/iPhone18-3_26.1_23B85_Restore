@interface DMCFieldCollection
- (BOOL)currentFieldIsLastInPayload;
- (BOOL)currentFieldIsSinglePasswordField;
- (DMCFieldCollection)initWithUserInput:(id)a3;
- (id)responseDictionariesForCurrentPayload;
- (id)userInputResponses;
- (void)_setCurrentFieldToCurrentIndices;
- (void)_setIsFinalField;
- (void)moveToNextField;
@end

@implementation DMCFieldCollection

- (DMCFieldCollection)initWithUserInput:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = DMCFieldCollection;
  v5 = [(DMCFieldCollection *)&v31 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    payloadFieldArrays = v5->_payloadFieldArrays;
    v5->_payloadFieldArrays = v6;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v4;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v22 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v14 = v12;
          v15 = [v14 countByEnumeratingWithState:&v23 objects:v32 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v24;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v24 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [[DMCPayloadUserInputField alloc] initWithFieldDictionary:*(*(&v23 + 1) + 8 * j)];
                [v13 addObject:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v23 objects:v32 count:16];
            }

            while (v16);
            v10 = 1;
          }

          [(NSMutableArray *)v5->_payloadFieldArrays addObject:v13];
          if ((v10 & 1) == 0)
          {
            ++v5->_currentPayloadIndex;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v9);
    }

    [(DMCFieldCollection *)v5 _setCurrentFieldToCurrentIndices];
  }

  return v5;
}

- (id)userInputResponses
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_payloadFieldArrays, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_payloadFieldArrays;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v18 + 1) + 8 * j) responseDictionary];
              [v9 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }

        [v3 addObject:v9];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)_setIsFinalField
{
  if ([(DMCFieldCollection *)self currentFieldIsLastInPayload])
  {
    self->_isFinalField = 1;
    v3 = self->_currentPayloadIndex + 1;
    while (v3 < [(NSMutableArray *)self->_payloadFieldArrays count])
    {
      v4 = [(NSMutableArray *)self->_payloadFieldArrays objectAtIndex:v3];
      v5 = [v4 count];

      ++v3;
      if (v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    self->_isFinalField = 0;
  }
}

- (void)_setCurrentFieldToCurrentIndices
{
  currentField = self->_currentField;
  self->_currentField = 0;

  currentPayloadIndex = self->_currentPayloadIndex;
  if (currentPayloadIndex < [(NSMutableArray *)self->_payloadFieldArrays count])
  {
    v5 = [(NSMutableArray *)self->_payloadFieldArrays objectAtIndex:self->_currentPayloadIndex];
    currentFieldIndex = self->_currentFieldIndex;
    if (currentFieldIndex < [v5 count])
    {
      v7 = [v5 objectAtIndex:self->_currentFieldIndex];
      v8 = self->_currentField;
      self->_currentField = v7;
    }
  }

  [(DMCFieldCollection *)self _setIsFinalField];
}

- (void)moveToNextField
{
  if ([(DMCFieldCollection *)self currentFieldIsLastInPayload])
  {
    do
    {
      payloadFieldArrays = self->_payloadFieldArrays;
      v4 = self->_currentPayloadIndex + 1;
      self->_currentPayloadIndex = v4;
      if (v4 >= [(NSMutableArray *)payloadFieldArrays count])
      {
        break;
      }

      v5 = [(NSMutableArray *)self->_payloadFieldArrays objectAtIndex:self->_currentPayloadIndex];
      v6 = [v5 count];
    }

    while (!v6);
    self->_currentFieldIndex = 0;
  }

  else
  {
    ++self->_currentFieldIndex;
  }

  [(DMCFieldCollection *)self _setCurrentFieldToCurrentIndices];
}

- (BOOL)currentFieldIsLastInPayload
{
  currentPayloadIndex = self->_currentPayloadIndex;
  if (currentPayloadIndex >= [(NSMutableArray *)self->_payloadFieldArrays count])
  {
    return 0;
  }

  currentFieldIndex = self->_currentFieldIndex;
  v5 = [(NSMutableArray *)self->_payloadFieldArrays objectAtIndex:self->_currentPayloadIndex];
  v6 = currentFieldIndex == [v5 count] - 1;

  return v6;
}

- (BOOL)currentFieldIsSinglePasswordField
{
  if (![(DMCPayloadUserInputField *)self->_currentField isPassword])
  {
    return 0;
  }

  v3 = [(NSMutableArray *)self->_payloadFieldArrays objectAtIndex:self->_currentPayloadIndex];
  v4 = [v3 count] == 1;

  return v4;
}

- (id)responseDictionariesForCurrentPayload
{
  v20 = *MEMORY[0x277D85DE8];
  currentPayloadIndex = self->_currentPayloadIndex;
  if (currentPayloadIndex >= [(NSMutableArray *)self->_payloadFieldArrays count])
  {
    v5 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_payloadFieldArrays objectAtIndex:self->_currentPayloadIndex];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * v10) responseDictionary];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = v12;

  return v12;
}

@end