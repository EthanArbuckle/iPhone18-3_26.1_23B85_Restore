@interface OSLogDecomposedMessageSegment
- (OSLogDecomposedMessageSegment)initWithDict:(id)a3 metadata:(id)a4;
@end

@implementation OSLogDecomposedMessageSegment

- (OSLogDecomposedMessageSegment)initWithDict:(id)a3 metadata:(id)a4
{
  v8 = a3;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = OSLogDecomposedMessageSegment;
  v10 = [(OSLogDecomposedMessageSegment *)&v31 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_backingDict, a3);
    v12 = [v8 objectForKeyedSubscript:@"lp"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        v23 = objc_opt_class();
        [v22 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1366 description:{@"Unexpected class: %@. Expected: %@", v23, objc_opt_class()}];
      }

      v13 = [v9 stringForIndex:v12];
      if (!v13)
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1368 description:@"Failed to find literal prefix string"];
      }

      literalPrefix = v11->_literalPrefix;
      v11->_literalPrefix = v13;
    }

    v15 = [v8 objectForKeyedSubscript:@"p"];
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = [MEMORY[0x277CCA890] currentHandler];
        v26 = objc_opt_class();
        [v25 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1375 description:{@"Unexpected class: %@. Expected: %@", v26, objc_opt_class()}];
      }

      v16 = [[OSLogDeserializedMessagePlaceholder alloc] initWithDict:v15 metadata:v9];
      if (!v16)
      {
        v27 = [MEMORY[0x277CCA890] currentHandler];
        [v27 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1377 description:@"Could not instantiate placeholder"];
      }

      placeholder = v11->_placeholder;
      v11->_placeholder = v16;
    }

    v18 = [v8 objectForKeyedSubscript:@"a"];
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = [MEMORY[0x277CCA890] currentHandler];
        v29 = objc_opt_class();
        [v28 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1384 description:{@"Unexpected class: %@. Expected: %@", v29, objc_opt_class()}];
      }

      v19 = [[OSLogDeserializedEventMessageArgument alloc] initWithDict:v18 metadata:v9];
      if (!v19)
      {
        v30 = [MEMORY[0x277CCA890] currentHandler];
        [v30 handleFailureInMethod:a2 object:v11 file:@"EventSerializer.m" lineNumber:1386 description:@"Could not instantiate arg"];
      }

      argument = v11->_argument;
      v11->_argument = v19;
    }
  }

  return v11;
}

@end