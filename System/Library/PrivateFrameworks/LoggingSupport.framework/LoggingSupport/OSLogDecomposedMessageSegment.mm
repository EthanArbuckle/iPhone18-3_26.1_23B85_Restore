@interface OSLogDecomposedMessageSegment
- (OSLogDecomposedMessageSegment)initWithDict:(id)dict metadata:(id)metadata;
@end

@implementation OSLogDecomposedMessageSegment

- (OSLogDecomposedMessageSegment)initWithDict:(id)dict metadata:(id)metadata
{
  dictCopy = dict;
  metadataCopy = metadata;
  v31.receiver = self;
  v31.super_class = OSLogDecomposedMessageSegment;
  v10 = [(OSLogDecomposedMessageSegment *)&v31 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_backingDict, dict);
    v12 = [dictCopy objectForKeyedSubscript:@"lp"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v23 = objc_opt_class();
        [currentHandler handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1366 description:{@"Unexpected class: %@. Expected: %@", v23, objc_opt_class()}];
      }

      v13 = [metadataCopy stringForIndex:v12];
      if (!v13)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1368 description:@"Failed to find literal prefix string"];
      }

      literalPrefix = v11->_literalPrefix;
      v11->_literalPrefix = v13;
    }

    v15 = [dictCopy objectForKeyedSubscript:@"p"];
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        v26 = objc_opt_class();
        [currentHandler3 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1375 description:{@"Unexpected class: %@. Expected: %@", v26, objc_opt_class()}];
      }

      v16 = [[OSLogDeserializedMessagePlaceholder alloc] initWithDict:v15 metadata:metadataCopy];
      if (!v16)
      {
        currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1377 description:@"Could not instantiate placeholder"];
      }

      placeholder = v11->_placeholder;
      v11->_placeholder = v16;
    }

    v18 = [dictCopy objectForKeyedSubscript:@"a"];
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
        v29 = objc_opt_class();
        [currentHandler5 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1384 description:{@"Unexpected class: %@. Expected: %@", v29, objc_opt_class()}];
      }

      v19 = [[OSLogDeserializedEventMessageArgument alloc] initWithDict:v18 metadata:metadataCopy];
      if (!v19)
      {
        currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler6 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1386 description:@"Could not instantiate arg"];
      }

      argument = v11->_argument;
      v11->_argument = v19;
    }
  }

  return v11;
}

@end