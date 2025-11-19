@interface OSLogDeserializedMessagePlaceholder
- (OSLogDeserializedMessagePlaceholder)initWithDict:(id)a3 metadata:(id)a4;
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
  v4 = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [v4 objectForKeyedSubscript:@"ty"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1347 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  v6 = [(OSLogDeserializedMessagePlaceholder *)self metadata];
  v7 = [v6 stringForIndex:v5];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1347 description:{@"Could not look up string for: %s", "type"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)typeNamespace
{
  v4 = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [v4 objectForKeyedSubscript:@"tn"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1346 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  v6 = [(OSLogDeserializedMessagePlaceholder *)self metadata];
  v7 = [v6 stringForIndex:v5];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1346 description:{@"Could not look up string for: %s", "typeNamespace"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)rawString
{
  v4 = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [v4 objectForKeyedSubscript:@"rs"];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    [v10 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1345 description:{@"Unexpected class: %@. Expected: %@", v11, objc_opt_class()}];
  }

  v6 = [(OSLogDeserializedMessagePlaceholder *)self metadata];
  v7 = [v6 stringForIndex:v5];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1345 description:{@"Could not look up string for: %s", "rawString"}];

LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)tokens
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [v4 objectForKeyedSubscript:@"t"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
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
            v15 = [MEMORY[0x277CCA890] currentHandler];
            v18 = objc_opt_class();
            [v15 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1336 description:{@"Unexpected class: %@. Expected: %@", v18, objc_opt_class()}];
          }

          v13 = [(OSLogDeserializedMessagePlaceholder *)self metadata];
          v14 = [v13 stringForIndex:v12];

          [v6 addObject:v14];
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
    v6 = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (int)precision
{
  v4 = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [v4 objectForKeyedSubscript:@"p"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1326 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 longLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)width
{
  v4 = [(OSLogDeserializedMessagePlaceholder *)self backingDict];
  v5 = [v4 objectForKeyedSubscript:@"w"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1325 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 longLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (OSLogDeserializedMessagePlaceholder)initWithDict:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OSLogDeserializedMessagePlaceholder;
  v9 = [(OSLogDeserializedMessagePlaceholder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingDict, a3);
    objc_storeStrong(&v10->_metadata, a4);
  }

  return v10;
}

@end