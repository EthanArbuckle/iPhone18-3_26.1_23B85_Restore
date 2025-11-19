@interface OSLogDeserializedEventDecomposedMessage
- (OSLogDeserializedEventDecomposedMessage)initWithDict:(id)a3 metadata:(id)a4;
- (id)argumentAtIndex:(unint64_t)a3;
- (id)literalPrefixAtIndex:(unint64_t)a3;
- (id)placeholderAtIndex:(unint64_t)a3;
- (unint64_t)placeholderCount;
- (unint64_t)state;
@end

@implementation OSLogDeserializedEventDecomposedMessage

- (id)argumentAtIndex:(unint64_t)a3
{
  v5 = [(OSLogDeserializedEventDecomposedMessage *)self segments];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(OSLogDeserializedEventDecomposedMessage *)self segments];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [v8 argument];
  }

  return v9;
}

- (id)placeholderAtIndex:(unint64_t)a3
{
  v5 = [(OSLogDeserializedEventDecomposedMessage *)self segments];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(OSLogDeserializedEventDecomposedMessage *)self segments];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [v8 placeholder];
  }

  return v9;
}

- (id)literalPrefixAtIndex:(unint64_t)a3
{
  v5 = [(OSLogDeserializedEventDecomposedMessage *)self segments];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(OSLogDeserializedEventDecomposedMessage *)self segments];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [v8 literalPrefix];
  }

  return v9;
}

- (unint64_t)state
{
  v4 = [(OSLogDeserializedEventDecomposedMessage *)self backingDict];
  v5 = [v4 objectForKeyedSubscript:@"s"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1423 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)placeholderCount
{
  v4 = [(OSLogDeserializedEventDecomposedMessage *)self backingDict];
  v5 = [v4 objectForKeyedSubscript:@"pc"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [v8 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1422 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (OSLogDeserializedEventDecomposedMessage)initWithDict:(id)a3 metadata:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v34.receiver = self;
  v34.super_class = OSLogDeserializedEventDecomposedMessage;
  v10 = [(OSLogDeserializedEventDecomposedMessage *)&v34 init];
  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:@"seg"];
    if (v11)
    {
      v28 = v8;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        v25 = objc_opt_class();
        [v24 handleFailureInMethod:a2 object:v10 file:@"EventSerializer.m" lineNumber:1407 description:{@"Unexpected class: %@. Expected: %@", v25, objc_opt_class()}];
      }

      v27 = a2;
      v29 = v10;
      v12 = [MEMORY[0x277CBEB18] array];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          v17 = 0;
          do
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v30 + 1) + 8 * v17);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v20 = [MEMORY[0x277CCA890] currentHandler];
              v26 = objc_opt_class();
              [v20 handleFailureInMethod:v27 object:v29 file:@"EventSerializer.m" lineNumber:1410 description:{@"Unexpected class: %@. Expected: %@", v26, objc_opt_class()}];
            }

            v19 = [[OSLogDecomposedMessageSegment alloc] initWithDict:v18 metadata:v9];
            [(NSArray *)v12 addObject:v19];

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v15);
      }

      v10 = v29;
      segments = v29->_segments;
      v29->_segments = v12;

      v8 = v28;
    }

    objc_storeStrong(&v10->_backingDict, a3);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

@end