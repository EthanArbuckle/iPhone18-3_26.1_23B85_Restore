@interface IMXMLReparser
- (BOOL)parseWithContext:(id)context;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
@end

@implementation IMXMLReparser

- (BOOL)parseWithContext:(id)context
{
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_msgSend(context "_inContent")];
  self->_context = context;
  self->_parser = [objc_alloc(MEMORY[0x1E696B0A8]) initWithData:v6];
  self->_output = objc_alloc_init(MEMORY[0x1E696AD60]);
  self->_depth = 0;
  [(NSXMLParser *)self->_parser setDelegate:self];
  parse = [(NSXMLParser *)self->_parser parse];
  if (!parse || self->_error)
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
  return parse;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableString *)self->_output appendFormat:@"<%@", element, i, name, element];
  if (self->_depth)
  {
    attributesCopy = attributes;
  }

  else
  {
    attributesToPreserve = [(IMXMLReparserContext *)self->_context attributesToPreserve];
    attributesCopy = [MEMORY[0x1E695DF90] dictionary];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = [attributes countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(attributes);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([(NSArray *)attributesToPreserve containsObject:v15])
          {
            [attributesCopy setObject:objc_msgSend(attributes forKey:{"objectForKey:", v15), v15}];
          }
        }

        v12 = [attributes countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    [attributesCopy addEntriesFromDictionary:{-[IMXMLReparserContext attributesToMerge](self->_context, "attributesToMerge")}];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [attributesCopy countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(attributesCopy);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        v21 = IMCreateEscapedAttributeValueFromString([attributesCopy objectForKey:v20]);
        [(NSMutableString *)self->_output appendFormat:@" %@=%@", v20, v21];
      }

      v17 = [attributesCopy countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  [(NSMutableString *)self->_output appendFormat:@">"];
  ++self->_depth;
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  v5 = IMCreateEscapedStringFromString(characters, @" ", @" ", @"'", @"");
  [(NSMutableString *)self->_output appendString:v5];
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  if (self->_error != occurred)
  {
    occurredCopy = occurred;
    self->_error = occurredCopy;
  }

  parser = self->_parser;

  MEMORY[0x1EEE66B58](parser, sel_abortParsing);
}

@end