@interface OSLogDeserializedEventDecomposedMessage
- (OSLogDeserializedEventDecomposedMessage)initWithDict:(id)dict metadata:(id)metadata;
- (id)argumentAtIndex:(unint64_t)index;
- (id)literalPrefixAtIndex:(unint64_t)index;
- (id)placeholderAtIndex:(unint64_t)index;
- (unint64_t)placeholderCount;
- (unint64_t)state;
@end

@implementation OSLogDeserializedEventDecomposedMessage

- (id)argumentAtIndex:(unint64_t)index
{
  segments = [(OSLogDeserializedEventDecomposedMessage *)self segments];
  v6 = [segments count];

  if (v6 <= index)
  {
    argument = 0;
  }

  else
  {
    segments2 = [(OSLogDeserializedEventDecomposedMessage *)self segments];
    v8 = [segments2 objectAtIndexedSubscript:index];
    argument = [v8 argument];
  }

  return argument;
}

- (id)placeholderAtIndex:(unint64_t)index
{
  segments = [(OSLogDeserializedEventDecomposedMessage *)self segments];
  v6 = [segments count];

  if (v6 <= index)
  {
    placeholder = 0;
  }

  else
  {
    segments2 = [(OSLogDeserializedEventDecomposedMessage *)self segments];
    v8 = [segments2 objectAtIndexedSubscript:index];
    placeholder = [v8 placeholder];
  }

  return placeholder;
}

- (id)literalPrefixAtIndex:(unint64_t)index
{
  segments = [(OSLogDeserializedEventDecomposedMessage *)self segments];
  v6 = [segments count];

  if (v6 <= index)
  {
    literalPrefix = 0;
  }

  else
  {
    segments2 = [(OSLogDeserializedEventDecomposedMessage *)self segments];
    v8 = [segments2 objectAtIndexedSubscript:index];
    literalPrefix = [v8 literalPrefix];
  }

  return literalPrefix;
}

- (unint64_t)state
{
  backingDict = [(OSLogDeserializedEventDecomposedMessage *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"s"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1423 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unint64_t)placeholderCount
{
  backingDict = [(OSLogDeserializedEventDecomposedMessage *)self backingDict];
  v5 = [backingDict objectForKeyedSubscript:@"pc"];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:1422 description:{@"Unexpected class: %@. Expected: %@", v9, objc_opt_class()}];
    }

    unsignedLongLongValue = [v5 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (OSLogDeserializedEventDecomposedMessage)initWithDict:(id)dict metadata:(id)metadata
{
  v36 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  metadataCopy = metadata;
  v34.receiver = self;
  v34.super_class = OSLogDeserializedEventDecomposedMessage;
  v10 = [(OSLogDeserializedEventDecomposedMessage *)&v34 init];
  if (v10)
  {
    v11 = [dictCopy objectForKeyedSubscript:@"seg"];
    if (v11)
    {
      v28 = dictCopy;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v25 = objc_opt_class();
        [currentHandler handleFailureInMethod:a2 object:v10 file:@"EventSerializer.m" lineNumber:1407 description:{@"Unexpected class: %@. Expected: %@", v25, objc_opt_class()}];
      }

      v27 = a2;
      v29 = v10;
      array = [MEMORY[0x277CBEB18] array];
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
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              v26 = objc_opt_class();
              [currentHandler2 handleFailureInMethod:v27 object:v29 file:@"EventSerializer.m" lineNumber:1410 description:{@"Unexpected class: %@. Expected: %@", v26, objc_opt_class()}];
            }

            v19 = [[OSLogDecomposedMessageSegment alloc] initWithDict:v18 metadata:metadataCopy];
            [(NSArray *)array addObject:v19];

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v15);
      }

      v10 = v29;
      segments = v29->_segments;
      v29->_segments = array;

      dictCopy = v28;
    }

    objc_storeStrong(&v10->_backingDict, dict);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

@end