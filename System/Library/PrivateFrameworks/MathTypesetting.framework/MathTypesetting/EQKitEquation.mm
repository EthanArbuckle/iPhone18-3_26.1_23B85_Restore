@interface EQKitEquation
+ (id)equationSourceFromXMLMetadata:(id)metadata;
+ (id)equationWithData:(id)data format:(unint64_t)format environment:(id)environment error:(id *)error;
+ (id)equationWithString:(id)string format:(unint64_t)format environment:(id)environment error:(id *)error;
+ (id)equationWithString:(id)string format:(unint64_t)format error:(id *)error;
+ (id)equationWithXMLDoc:(_xmlDoc *)doc node:(_xmlNode *)node environment:(id)environment error:(id *)error;
+ (id)xmlMetadataFromEquationSource:(id)source;
+ (unint64_t)formatFromData:(id)data;
+ (unint64_t)formatFromString:(id)string;
- (EQKitEquation)initWithRoot:(id)root source:(id)source;
- (id)description;
- (void)dealloc;
@end

@implementation EQKitEquation

- (EQKitEquation)initWithRoot:(id)root source:(id)source
{
  v9.receiver = self;
  v9.super_class = EQKitEquation;
  v6 = [(EQKitEquation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (root)
    {
      v6->mRoot = root;
      v7->mSource = source;
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

+ (unint64_t)formatFromData:(id)data
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:data encoding:4];
  v5 = [self formatFromString:v4];

  return v5;
}

+ (unint64_t)formatFromString:(id)string
{
  v29 = *MEMORY[0x277D85DE8];
  if ([string hasPrefix:@"$$"])
  {
    return 2;
  }

  if (!+[EQKitEquation formatFromString:]::sMathMLPatterns)
  {
    v6 = objc_alloc(MEMORY[0x277CBEA60]);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"<math", @"</math>", 0}];
    +[EQKitEquation formatFromString:]::sMathMLPatterns = [v6 initWithObjects:{v7, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", @"<", @":math", @"</", @":math>", 0), 0}];
  }

  v8 = _laTeXPatterns();
  v9 = [string stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = +[EQKitEquation formatFromString:]::sMathMLPatterns;
  v11 = [+[EQKitEquation formatFromString:]::sMathMLPatterns countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v11)
  {
LABEL_14:
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (!v15)
    {
      return 0;
    }

    v16 = v15;
    v17 = *v20;
LABEL_16:
    v18 = 0;
    while (1)
    {
      if (*v20 != v17)
      {
        objc_enumerationMutation(v8);
      }

      if (_findPattern(*(*(&v19 + 1) + 8 * v18), v9, 1) != 0x7FFFFFFFFFFFFFFFLL)
      {
        return 2;
      }

      if (v16 == ++v18)
      {
        v16 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        v4 = 0;
        if (v16)
        {
          goto LABEL_16;
        }

        return v4;
      }
    }
  }

  v12 = v11;
  v13 = *v24;
  v4 = 1;
LABEL_8:
  v14 = 0;
  while (1)
  {
    if (*v24 != v13)
    {
      objc_enumerationMutation(v10);
    }

    if (_findPattern(*(*(&v23 + 1) + 8 * v14), v9, 0) != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v4;
    }

    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }
}

+ (id)equationWithData:(id)data format:(unint64_t)format environment:(id)environment error:(id *)error
{
  if (format == 2)
  {
    if (data)
    {
      _convertLaTeXStringToMathML(environment, [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(data length:"bytes") encoding:{objc_msgSend(data, "length"), 4}], error);
    }

    return 0;
  }

  if (format != 1)
  {
    if (!format && error && !*error)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = MEMORY[0x277CBEAC0];
      v11 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      parse = 0;
      *error = [v9 errorWithDomain:@"EQKitErrorDomain" code:0 userInfo:{objc_msgSend(v10, "dictionaryWithObjectsAndKeys:", v11, *MEMORY[0x277CCA450], 0)}];
      return parse;
    }

    return 0;
  }

  dataCopy = data;
  if (!dataCopy)
  {
    return 0;
  }

  if (xmlSAXVersion(&hdlr, 2))
  {
    parse = 0;
  }

  else
  {
    hdlr.getEntity = EQKitMathMLParserGetEntity;
    v14 = xmlSubstituteEntitiesDefault(1);
    ExternalEntityLoader = xmlGetExternalEntityLoader();
    xmlSetExternalEntityLoader(NoExternalEntityLoader);
    v16 = xmlSAXParseMemory(&hdlr, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0);
    xmlSetExternalEntityLoader(ExternalEntityLoader);
    xmlSubstituteEntitiesDefault(v14);
    parse = 0;
    if (environment && v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        environmentCopy = environment;
      }

      else
      {
        environmentCopy = 0;
      }

      v18 = [[EQKitMathMLParser alloc] initWithDocument:v16 node:0 source:dataCopy attribution:data environment:environmentCopy];
      parse = [(EQKitMathMLParser *)v18 parse];
      if (error && !*error)
      {
        *error = [(EQKitMathMLParser *)v18 error];
      }

      xmlFreeDoc(v16);
    }
  }

  if (error && !parse)
  {
    if (!*error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = MEMORY[0x277CBEAC0];
      v21 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      *error = [v19 errorWithDomain:@"EQKitErrorDomain" code:0 userInfo:{objc_msgSend(v20, "dictionaryWithObjectsAndKeys:", v21, *MEMORY[0x277CCA450], 0)}];
    }

    return 0;
  }

  if (parse)
  {
    parse[3] = environment;
  }

  return parse;
}

+ (id)equationWithString:(id)string format:(unint64_t)format environment:(id)environment error:(id *)error
{
  uTF8String = [string UTF8String];
  if (uTF8String)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:uTF8String length:strlen(uTF8String)];

    return [self equationWithData:v11 format:format environment:environment error:error];
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:2048 userInfo:0];
    }

    return 0;
  }
}

+ (id)equationWithString:(id)string format:(unint64_t)format error:(id *)error
{
  uTF8String = [string UTF8String];
  if (uTF8String)
  {
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:uTF8String length:strlen(uTF8String)];
    v10 = +[EQKitEnvironment defaultEnvironment];

    return [self equationWithData:v9 format:format environment:v10 error:error];
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:2048 userInfo:0];
    }

    return 0;
  }
}

+ (id)equationWithXMLDoc:(_xmlDoc *)doc node:(_xmlNode *)node environment:(id)environment error:(id *)error
{
  parse = 0;
  if (doc && node)
  {
    v11 = [EQKitMathMLParser alloc];
    v12 = objc_opt_class();
    v13 = [(EQKitMathMLParser *)v11 initWithDocument:doc node:node source:0 attribution:0 environment:EQKitUtilDynamicCast(v12, environment)];
    parse = [(EQKitMathMLParser *)v13 parse];
    if (error)
    {
      *error = [(EQKitMathMLParser *)v13 error];
    }
  }

  return parse;
}

+ (id)xmlMetadataFromEquationSource:(id)source
{
  data = [MEMORY[0x277CBEB28] data];
  v5 = xmlNewDoc("1.0");
  v6 = xmlNewNode(0, "root");
  xmlDocSetRootElement(v5, v6);
  v7 = xmlNewChild(v6, 0, "com.apple.iwork", 0);
  xmlNewProp(v7, "version", "1.0");
  v8 = xmlNewChild(v7, 0, "equation", 0);
  v9 = [source dataUsingEncoding:4];
  v10 = xmlNewCDataBlock(v5, [v9 bytes], objc_msgSend(v9, "length"));
  xmlAddChild(v8, v10);
  if (v5)
  {
    v11 = xmlKeepBlanksDefault(0);
    IO = xmlOutputBufferCreateIO(sfaxmlNSMutableDataWriteCallback, 0, data, 0);
    if (IO)
    {
      xmlSaveFormatFileTo(IO, v5, 0, 1);
    }

    xmlKeepBlanksDefault(v11);
  }

  xmlFreeDoc(v5);
  return data;
}

+ (id)equationSourceFromXMLMetadata:(id)metadata
{
  if (xmlSAXVersion(&v15, 2))
  {
    return 0;
  }

  v5 = xmlSubstituteEntitiesDefault(1);
  ExternalEntityLoader = xmlGetExternalEntityLoader();
  xmlSetExternalEntityLoader(NoExternalEntityLoader);
  v7 = xmlSAXParseMemory(&v15, [metadata bytes], objc_msgSend(metadata, "length"), 0);
  xmlSetExternalEntityLoader(ExternalEntityLoader);
  xmlSubstituteEntitiesDefault(v5);
  if (!v7)
  {
    return 0;
  }

  children = xmlDocGetRootElement(v7)->children;
  if (!children)
  {
    goto LABEL_9;
  }

  while (1)
  {
    if (children->type == XML_ELEMENT_NODE)
    {
      name = children->name;
      if (name)
      {
        if (!strcmp(name, "com.apple.iwork"))
        {
          break;
        }
      }
    }

    children = children->next;
    if (!children)
    {
      goto LABEL_9;
    }
  }

  v11 = children->children;
  if (!v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    if (v11->type == XML_ELEMENT_NODE)
    {
      v12 = v11->name;
      if (v12)
      {
        if (!strcmp(v12, "equation"))
        {
          break;
        }
      }
    }

    v11 = v11->next;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v13 = v11->children;
  if (v13)
  {
    v4 = 0;
    do
    {
      if (v13->type - 3 <= 1 && v13->content && !xmlIsBlankNode(v13))
      {
        if (v4)
        {
          v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v13->content];
          v4 = [v4 stringByAppendingString:v14];
        }

        else
        {
          v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13->content];
        }
      }

      v13 = v13->next;
    }

    while (v13);
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

  xmlFreeDoc(v7);
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitEquation;
  [(EQKitEquation *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p root=%@>", NSStringFromClass(v4), self, self->mRoot];
}

@end