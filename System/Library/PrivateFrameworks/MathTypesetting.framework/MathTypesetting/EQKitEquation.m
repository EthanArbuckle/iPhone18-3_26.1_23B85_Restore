@interface EQKitEquation
+ (id)equationSourceFromXMLMetadata:(id)a3;
+ (id)equationWithData:(id)a3 format:(unint64_t)a4 environment:(id)a5 error:(id *)a6;
+ (id)equationWithString:(id)a3 format:(unint64_t)a4 environment:(id)a5 error:(id *)a6;
+ (id)equationWithString:(id)a3 format:(unint64_t)a4 error:(id *)a5;
+ (id)equationWithXMLDoc:(_xmlDoc *)a3 node:(_xmlNode *)a4 environment:(id)a5 error:(id *)a6;
+ (id)xmlMetadataFromEquationSource:(id)a3;
+ (unint64_t)formatFromData:(id)a3;
+ (unint64_t)formatFromString:(id)a3;
- (EQKitEquation)initWithRoot:(id)a3 source:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation EQKitEquation

- (EQKitEquation)initWithRoot:(id)a3 source:(id)a4
{
  v9.receiver = self;
  v9.super_class = EQKitEquation;
  v6 = [(EQKitEquation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v6->mRoot = a3;
      v7->mSource = a4;
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

+ (unint64_t)formatFromData:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a3 encoding:4];
  v5 = [a1 formatFromString:v4];

  return v5;
}

+ (unint64_t)formatFromString:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if ([a3 hasPrefix:@"$$"])
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
  v9 = [a3 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
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

+ (id)equationWithData:(id)a3 format:(unint64_t)a4 environment:(id)a5 error:(id *)a6
{
  if (a4 == 2)
  {
    if (a3)
    {
      _convertLaTeXStringToMathML(a5, [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(a3 length:"bytes") encoding:{objc_msgSend(a3, "length"), 4}], a6);
    }

    return 0;
  }

  if (a4 != 1)
  {
    if (!a4 && a6 && !*a6)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = MEMORY[0x277CBEAC0];
      v11 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      v12 = 0;
      *a6 = [v9 errorWithDomain:@"EQKitErrorDomain" code:0 userInfo:{objc_msgSend(v10, "dictionaryWithObjectsAndKeys:", v11, *MEMORY[0x277CCA450], 0)}];
      return v12;
    }

    return 0;
  }

  v13 = a3;
  if (!v13)
  {
    return 0;
  }

  if (xmlSAXVersion(&hdlr, 2))
  {
    v12 = 0;
  }

  else
  {
    hdlr.getEntity = EQKitMathMLParserGetEntity;
    v14 = xmlSubstituteEntitiesDefault(1);
    ExternalEntityLoader = xmlGetExternalEntityLoader();
    xmlSetExternalEntityLoader(NoExternalEntityLoader);
    v16 = xmlSAXParseMemory(&hdlr, [v13 bytes], objc_msgSend(v13, "length"), 0);
    xmlSetExternalEntityLoader(ExternalEntityLoader);
    xmlSubstituteEntitiesDefault(v14);
    v12 = 0;
    if (a5 && v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = a5;
      }

      else
      {
        v17 = 0;
      }

      v18 = [[EQKitMathMLParser alloc] initWithDocument:v16 node:0 source:v13 attribution:a3 environment:v17];
      v12 = [(EQKitMathMLParser *)v18 parse];
      if (a6 && !*a6)
      {
        *a6 = [(EQKitMathMLParser *)v18 error];
      }

      xmlFreeDoc(v16);
    }
  }

  if (a6 && !v12)
  {
    if (!*a6)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = MEMORY[0x277CBEAC0];
      v21 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      *a6 = [v19 errorWithDomain:@"EQKitErrorDomain" code:0 userInfo:{objc_msgSend(v20, "dictionaryWithObjectsAndKeys:", v21, *MEMORY[0x277CCA450], 0)}];
    }

    return 0;
  }

  if (v12)
  {
    v12[3] = a5;
  }

  return v12;
}

+ (id)equationWithString:(id)a3 format:(unint64_t)a4 environment:(id)a5 error:(id *)a6
{
  v10 = [a3 UTF8String];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:strlen(v10)];

    return [a1 equationWithData:v11 format:a4 environment:a5 error:a6];
  }

  else
  {
    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:2048 userInfo:0];
    }

    return 0;
  }
}

+ (id)equationWithString:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v8 = [a3 UTF8String];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:strlen(v8)];
    v10 = +[EQKitEnvironment defaultEnvironment];

    return [a1 equationWithData:v9 format:a4 environment:v10 error:a5];
  }

  else
  {
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:2048 userInfo:0];
    }

    return 0;
  }
}

+ (id)equationWithXMLDoc:(_xmlDoc *)a3 node:(_xmlNode *)a4 environment:(id)a5 error:(id *)a6
{
  v6 = 0;
  if (a3 && a4)
  {
    v11 = [EQKitMathMLParser alloc];
    v12 = objc_opt_class();
    v13 = [(EQKitMathMLParser *)v11 initWithDocument:a3 node:a4 source:0 attribution:0 environment:EQKitUtilDynamicCast(v12, a5)];
    v6 = [(EQKitMathMLParser *)v13 parse];
    if (a6)
    {
      *a6 = [(EQKitMathMLParser *)v13 error];
    }
  }

  return v6;
}

+ (id)xmlMetadataFromEquationSource:(id)a3
{
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = xmlNewDoc("1.0");
  v6 = xmlNewNode(0, "root");
  xmlDocSetRootElement(v5, v6);
  v7 = xmlNewChild(v6, 0, "com.apple.iwork", 0);
  xmlNewProp(v7, "version", "1.0");
  v8 = xmlNewChild(v7, 0, "equation", 0);
  v9 = [a3 dataUsingEncoding:4];
  v10 = xmlNewCDataBlock(v5, [v9 bytes], objc_msgSend(v9, "length"));
  xmlAddChild(v8, v10);
  if (v5)
  {
    v11 = xmlKeepBlanksDefault(0);
    IO = xmlOutputBufferCreateIO(sfaxmlNSMutableDataWriteCallback, 0, v4, 0);
    if (IO)
    {
      xmlSaveFormatFileTo(IO, v5, 0, 1);
    }

    xmlKeepBlanksDefault(v11);
  }

  xmlFreeDoc(v5);
  return v4;
}

+ (id)equationSourceFromXMLMetadata:(id)a3
{
  if (xmlSAXVersion(&v15, 2))
  {
    return 0;
  }

  v5 = xmlSubstituteEntitiesDefault(1);
  ExternalEntityLoader = xmlGetExternalEntityLoader();
  xmlSetExternalEntityLoader(NoExternalEntityLoader);
  v7 = xmlSAXParseMemory(&v15, [a3 bytes], objc_msgSend(a3, "length"), 0);
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