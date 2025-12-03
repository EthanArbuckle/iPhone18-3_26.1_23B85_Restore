@interface OSLogDeserializedMessagePlaceholder
- (OSLogDeserializedMessagePlaceholder)initWithDict:(id)dict metadata:(id)metadata;
- (id)rawString;
- (id)tokens;
- (id)type;
- (id)typeNamespace;
- (int)precision;
- (int)width;
@end

@implementation OSLogDeserializedMessagePlaceholder

- (id)type
{
  backingDict = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"ty"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1347 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  metadata = [(OSLogDeserializedMessagePlaceholder *)self metadata];
  v7 = [metadata stringForIndex:v5];

  if (!v7)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1347 description:{@"Could not look up string for: %s", "type"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)typeNamespace
{
  backingDict = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"tn"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1346 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  metadata = [(OSLogDeserializedMessagePlaceholder *)self metadata];
  v7 = [metadata stringForIndex:v5];

  if (!v7)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1346 description:{@"Could not look up string for: %s", "typeNamespace"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)rawString
{
  backingDict = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"rs"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1345 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  metadata = [(OSLogDeserializedMessagePlaceholder *)self metadata];
  v7 = [metadata stringForIndex:v5];

  if (!v7)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1345 description:{@"Could not look up string for: %s", "rawString"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)tokens
{
  v24 = *MEMORY[0x277D85DE8];
  backingDict = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"t"];

  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v18 = objc_opt_class();
            [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1336 description:{@"Unexpected class: %@. Expected: %@", v18, objc_opt_class()}];
          }

          metadata = [(OSLogDeserializedMessagePlaceholder *)self metadata];
          v14 = [metadata stringForIndex:v12];

          [array addObject:v14];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (int)precision
{
  backingDict = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"p"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1326 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    longLongValue = [v5 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (int)width
{
  backingDict = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"w"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1325 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    longLongValue = [v5 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (OSLogDeserializedMessagePlaceholder)initWithDict:(id)dict metadata:(id)metadata
{
  dictCopy = dict;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = OSLogDeserializedMessagePlaceholder;
  v9 = [(OSLogDeserializedMessagePlaceholder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingDict, dict);
    objc_storeStrong(&v10->_metadata, metadata);
  }

  return v10;
}

@end