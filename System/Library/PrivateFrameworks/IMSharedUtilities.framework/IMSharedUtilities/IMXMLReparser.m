@interface IMXMLReparser
- (BOOL)parseWithContext:(id)a3;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
@end

@implementation IMXMLReparser

- (BOOL)parseWithContext:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_msgSend(a3 "_inContent")];
  self->_context = a3;
  self->_parser = [objc_alloc(MEMORY[0x1E696B0A8]) initWithData:v6];
  self->_output = objc_alloc_init(MEMORY[0x1E696AD60]);
  self->_depth = 0;
  [(NSXMLParser *)self->_parser setDelegate:self];
  v7 = [(NSXMLParser *)self->_parser parse];
  if (!v7 || self->_error)
  {
    output = 0;
  }

  else
  {
    output = self->_output;
  }

  [(IMXMLReparserContext *)self->_context _setOutContent:output error:?];

  self->_output = 0;
  self->_parser = 0;

  self->_context = 0;
  self->_error = 0;
  objc_autoreleasePoolPop(v5);
  return v7;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableString *)self->_output appendFormat:@"<%@", a4, a5, a6, a4];
  if (self->_depth)
  {
    v9 = a7;
  }

  else
  {
    v10 = [(IMXMLReparserContext *)self->_context attributesToPreserve];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = [a7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(a7);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([(NSArray *)v10 containsObject:v15])
          {
            [v9 setObject:objc_msgSend(a7 forKey:{"objectForKey:", v15), v15}];
          }
        }

        v12 = [a7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    [v9 addEntriesFromDictionary:{-[IMXMLReparserContext attributesToMerge](self->_context, "attributesToMerge")}];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v9);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        v21 = IMCreateEscapedAttributeValueFromString([v9 objectForKey:v20]);
        [(NSMutableString *)self->_output appendFormat:@" %@=%@", v20, v21];
      }

      v17 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  [(NSMutableString *)self->_output appendFormat:@">"];
  ++self->_depth;
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = IMCreateEscapedStringFromString(a4, @" ", @" ", @"'", @"");
  [(NSMutableString *)self->_output appendString:v5];
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  if (self->_error != a4)
  {
    v5 = a4;
    self->_error = v5;
  }

  parser = self->_parser;

  MEMORY[0x1EEE66B58](parser, sel_abortParsing);
}

@end