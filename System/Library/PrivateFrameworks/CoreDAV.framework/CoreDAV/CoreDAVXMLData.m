@interface CoreDAVXMLData
+ (BOOL)string:(id)a3 isEqualToXmlCharString:(const char *)a4;
- (CoreDAVXMLData)init;
- (NSData)data;
- (const)_prefixForNameSpace:(const char *)a3;
- (void)_startElement:(id)a3 inNamespace:(id)a4;
- (void)_startElement:(id)a3 inNamespace:(id)a4 withAttributeNamesAndValues:(id)a5 attributes:(char *)a6;
- (void)appendElement:(id)a3 inNamespace:(id)a4 withStringContent:(id)a5 withAttributeNamesAndValues:(id)a6;
- (void)appendElement:(id)a3 inNamespace:(id)a4 withStringContentAsCDATA:(id)a5 withAttributeNamesAndValues:(id)a6;
- (void)dealloc;
- (void)endElement:(id)a3 inNamespace:(id)a4;
- (void)startElement:(id)a3 inNamespace:(id)a4 withAttributeNamesAndValues:(id)a5;
- (void)startElement:(id)a3 inNamespace:(id)a4 withAttributes:(id)a5;
@end

@implementation CoreDAVXMLData

- (CoreDAVXMLData)init
{
  v12.receiver = self;
  v12.super_class = CoreDAVXMLData;
  v2 = [(CoreDAVXMLData *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dataImpl = v2->_dataImpl;
    v2->_dataImpl = v3;

    initializeLibXMLParser();
    v2->_dataImpl->_writer = xmlNewTextWriterDoc(&v2->_dataImpl->_doc, 0);
    xmlTextWriterStartDocument(v2->_dataImpl->_writer, cdXMLVersion, cdXMLEncoding, 0);
    v5 = objc_opt_new();
    seenURIsToPrefixes = v2->_seenURIsToPrefixes;
    v2->_seenURIsToPrefixes = v5;

    v7 = objc_opt_new();
    seenURIsToDepth = v2->_seenURIsToDepth;
    v2->_seenURIsToDepth = v7;

    v9 = objc_opt_new();
    elementStack = v2->_elementStack;
    v2->_elementStack = v9;

    [(CoreDAVXMLData *)v2 setShouldAddFormattingSpaces:1];
  }

  return v2;
}

- (void)dealloc
{
  xmlFreeTextWriter(self->_dataImpl->_writer);
  xmlFreeDoc(self->_dataImpl->_doc);
  v3.receiver = self;
  v3.super_class = CoreDAVXMLData;
  [(CoreDAVXMLData *)&v3 dealloc];
}

- (const)_prefixForNameSpace:(const char *)a3
{
  if (_prefixForNameSpace__pred != -1)
  {
    [CoreDAVXMLData _prefixForNameSpace:];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v7 = _prefixForNameSpace___sPrefixQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CoreDAVXMLData__prefixForNameSpace___block_invoke_2;
  block[3] = &unk_278E31420;
  v23 = &v24;
  v8 = v6;
  v22 = v8;
  dispatch_sync(v7, block);
  v9 = v25[3];
  if (!v9)
  {
    v10 = malloc_type_calloc(2uLL, 1uLL, 0x100004077774924uLL);
    v25[3] = v10;
    v11 = _prefixForNameSpace__sNextPrefix++;
    *v10 = v11;
    v12 = _prefixForNameSpace___sPrefixQueue;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __38__CoreDAVXMLData__prefixForNameSpace___block_invoke_3;
    v18 = &unk_278E31448;
    v19 = v8;
    v20 = &v24;
    dispatch_sync(v12, &v15);
    if (_prefixForNameSpace__sNextPrefix >= 0x5Bu)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"CoreDAVXMLData.m" lineNumber:78 description:@"Whoops- we're out of XML namespaces!"];
    }

    v9 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  return v9;
}

uint64_t __38__CoreDAVXMLData__prefixForNameSpace___block_invoke()
{
  v0 = dispatch_queue_create("com.coredav.namespacequeue", 0);
  v1 = _prefixForNameSpace___sPrefixQueue;
  _prefixForNameSpace___sPrefixQueue = v0;

  v2 = objc_opt_new();
  v3 = _prefixForNameSpace___sNamespacePrefixes;
  _prefixForNameSpace___sNamespacePrefixes = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void __38__CoreDAVXMLData__prefixForNameSpace___block_invoke_2(uint64_t a1)
{
  v2 = [_prefixForNameSpace___sNamespacePrefixes objectForKeyedSubscript:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 pointerValue];
}

void __38__CoreDAVXMLData__prefixForNameSpace___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE60] valueWithPointer:*(*(*(a1 + 40) + 8) + 24)];
  [_prefixForNameSpace___sNamespacePrefixes setObject:v2 forKeyedSubscript:*(a1 + 32)];
}

- (void)_startElement:(id)a3 inNamespace:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 UTF8String];
  v8 = [v6 UTF8String];
  if (v8)
  {
    v9 = v8;
    v10 = [(NSMutableDictionary *)self->_seenURIsToPrefixes objectForKeyedSubscript:v6];
    v11 = [v10 pointerValue];

    if (!v11)
    {
      v12 = [(CoreDAVXMLData *)self _prefixForNameSpace:v9];
      if (v12)
      {
        v11 = v12;
        v13 = [MEMORY[0x277CCAE60] valueWithPointer:v12];
        [(NSMutableDictionary *)self->_seenURIsToPrefixes setObject:v13 forKeyedSubscript:v6];
      }

      else
      {
        v16 = +[CoreDAVLogging sharedLogging];
        v17 = [v16 logHandleForAccountInfoProvider:0];
        v18 = v17;
        if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v27 = 136315138;
          v28 = v9;
          _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_ERROR, "Unknown namespace being written %s.  This will not go well", &v27, 0xCu);
        }

        v11 = 0;
      }
    }

    v19 = [(NSMutableArray *)self->_elementStack count];
    v20 = [(NSMutableDictionary *)self->_seenURIsToDepth objectForKey:v6];

    if (v20)
    {
      v21 = [(NSMutableDictionary *)self->_seenURIsToDepth objectForKeyedSubscript:v6];
      v22 = [v21 integerValue];

      if (v19 > v22)
      {
        v9 = 0;
LABEL_15:
        elementStack = self->_elementStack;
        v25 = [MEMORY[0x277CCAE60] valueWithPointer:v7];
        [(NSMutableArray *)elementStack addObject:v25];

        xmlTextWriterStartElementNS(self->_dataImpl->_writer, v11, v7, v9);
        goto LABEL_16;
      }

      if (v19 >= v22)
      {
        goto LABEL_15;
      }
    }

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
    [(NSMutableDictionary *)self->_seenURIsToDepth setObject:v23 forKeyedSubscript:v6];

    goto LABEL_15;
  }

  v14 = self->_elementStack;
  v15 = [MEMORY[0x277CCAE60] valueWithPointer:v7];
  [(NSMutableArray *)v14 addObject:v15];

  xmlTextWriterStartElement(self->_dataImpl->_writer, v7);
LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_startElement:(id)a3 inNamespace:(id)a4 withAttributeNamesAndValues:(id)a5 attributes:(char *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21 = a6;
  [(CoreDAVXMLData *)self _startElement:v10 inNamespace:v11];
  if (v12)
  {
    v13 = *a6;
    xmlTextWriterStartAttributeNS(self->_dataImpl->_writer, 0, [v12 UTF8String], 0);
    xmlTextWriterWriteString(self->_dataImpl->_writer, [v13 UTF8String]);
    xmlTextWriterEndAttribute(self->_dataImpl->_writer);
    v14 = (v21 + 8);
    v22 = (v21 + 16);
    v15 = *v14;
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      do
      {
        v18 = *v22;

        xmlTextWriterStartAttributeNS(self->_dataImpl->_writer, 0, [v16 UTF8String], 0);
        v17 = v18;
        xmlTextWriterWriteString(self->_dataImpl->_writer, [v18 UTF8String]);
        xmlTextWriterEndAttribute(self->_dataImpl->_writer);
        v19 = v22 + 1;
        v22 += 2;
        v20 = *v19;

        v16 = v20;
      }

      while (v20);
    }
  }
}

- (void)startElement:(id)a3 inNamespace:(id)a4 withAttributeNamesAndValues:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_docHasEnded)
  {
    [CoreDAVXMLData startElement:inNamespace:withAttributeNamesAndValues:];
  }

  [(CoreDAVXMLData *)self _startElement:v8 inNamespace:v9 withAttributeNamesAndValues:v10 attributes:&v11];
}

- (void)startElement:(id)a3 inNamespace:(id)a4 withAttributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_docHasEnded)
  {
    [CoreDAVXMLData startElement:inNamespace:withAttributes:];
  }

  [(CoreDAVXMLData *)self _startElement:v8 inNamespace:v9];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__CoreDAVXMLData_startElement_inNamespace_withAttributes___block_invoke;
  v11[3] = &unk_278E311D0;
  v11[4] = self;
  [v10 enumerateKeysAndObjectsUsingBlock:v11];
}

uint64_t __58__CoreDAVXMLData_startElement_inNamespace_withAttributes___block_invoke(uint64_t a1, id a2, void *a3)
{
  v6 = *(*(*(a1 + 32) + 16) + 8);
  v7 = a2;
  v8 = a3;
  xmlTextWriterStartAttributeNS(v6, 0, [a2 UTF8String], 0);
  v9 = *(*(*(a1 + 32) + 16) + 8);
  v10 = [v8 UTF8String];

  xmlTextWriterWriteString(v9, v10);
  v11 = *(*(*(a1 + 32) + 16) + 8);

  return xmlTextWriterEndAttribute(v11);
}

- (void)endElement:(id)a3 inNamespace:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = a3;
  v11 = [v10 UTF8String];
  v12 = [v9 UTF8String];

  if (self->_docHasEnded)
  {
    [CoreDAVXMLData endElement:inNamespace:];
  }

  if (![(NSMutableArray *)self->_elementStack count])
  {
    [CoreDAVXMLData endElement:inNamespace:];
  }

  v13 = [(NSMutableArray *)self->_elementStack lastObject];
  v14 = [v13 pointerValue];

  LOBYTE(v13) = [objc_opt_class() string:v10 isEqualToXmlCharString:v14];
  if ((v13 & 1) == 0)
  {
    [(CoreDAVXMLData *)a2 endElement:v11 inNamespace:v14];
  }

  [(NSMutableArray *)self->_elementStack removeLastObject];
  xmlTextWriterFullEndElement(self->_dataImpl->_writer);
  if (v9 && v12)
  {
    v15 = [(NSMutableArray *)self->_elementStack count];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
    v16 = [(NSMutableDictionary *)self->_seenURIsToDepth objectForKey:?];

    if (v16)
    {
      v17 = [(NSMutableDictionary *)self->_seenURIsToDepth objectForKeyedSubscript:v19];
      v18 = [v17 integerValue];

      if (v18 == v15)
      {
        [(NSMutableDictionary *)self->_seenURIsToDepth removeObjectForKey:v19];
      }
    }
  }
}

- (void)appendElement:(id)a3 inNamespace:(id)a4 withStringContent:(id)a5 withAttributeNamesAndValues:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_docHasEnded)
  {
    [CoreDAVXMLData appendElement:inNamespace:withStringContent:withAttributeNamesAndValues:];
  }

  [(CoreDAVXMLData *)self _startElement:v10 inNamespace:v11 withAttributeNamesAndValues:v13 attributes:&v14];
  if ([v12 length])
  {
    xmlTextWriterWriteString(self->_dataImpl->_writer, [v12 UTF8String]);
  }

  [(CoreDAVXMLData *)self endElement:v10 inNamespace:v11];
}

- (void)appendElement:(id)a3 inNamespace:(id)a4 withStringContentAsCDATA:(id)a5 withAttributeNamesAndValues:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_docHasEnded)
  {
    [CoreDAVXMLData appendElement:inNamespace:withStringContentAsCDATA:withAttributeNamesAndValues:];
  }

  v19[1] = &v20;
  [(CoreDAVXMLData *)self _startElement:v10 inNamespace:v11 withAttributeNamesAndValues:v13 attributes:&v20];
  if ([v12 length])
  {
    if (appendElement_inNamespace_withStringContentAsCDATA_withAttributeNamesAndValues__once != -1)
    {
      [CoreDAVXMLData appendElement:inNamespace:withStringContentAsCDATA:withAttributeNamesAndValues:];
    }

    if ([v12 rangeOfCharacterFromSet:appendElement_inNamespace_withStringContentAsCDATA_withAttributeNamesAndValues__invalidXMLCharacterSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CCAB68] string];
      v15 = [MEMORY[0x277CCAC80] scannerWithString:v12];
      [v15 setCharactersToBeSkipped:appendElement_inNamespace_withStringContentAsCDATA_withAttributeNamesAndValues__invalidXMLCharacterSet];
      if (([v15 isAtEnd] & 1) == 0)
      {
        v16 = 0;
        do
        {

          v19[0] = 0;
          v17 = [v15 scanUpToCharactersFromSet:appendElement_inNamespace_withStringContentAsCDATA_withAttributeNamesAndValues__invalidXMLCharacterSet intoString:v19];
          v18 = v19[0];
          v16 = v18;
          if (v17 && [v18 length])
          {
            [v14 appendString:v16];
          }
        }

        while (![v15 isAtEnd]);
      }

      v12 = v14;
    }

    xmlTextWriterWriteCDATA(self->_dataImpl->_writer, [v14 UTF8String]);
  }

  [(CoreDAVXMLData *)self endElement:v10 inNamespace:v11];
}

void __97__CoreDAVXMLData_appendElement_inNamespace_withStringContentAsCDATA_withAttributeNamesAndValues___block_invoke()
{
  v2 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:@"\t\n\r"];
  [v2 addCharactersInRange:{32, 55264}];
  [v2 addCharactersInRange:{57344, 8190}];
  [v2 addCharactersInRange:{0x10000, 0x100000}];
  v0 = [v2 invertedSet];
  v1 = appendElement_inNamespace_withStringContentAsCDATA_withAttributeNamesAndValues__invalidXMLCharacterSet;
  appendElement_inNamespace_withStringContentAsCDATA_withAttributeNamesAndValues__invalidXMLCharacterSet = v0;
}

- (NSData)data
{
  if (!self->_docHasEnded)
  {
    self->_docHasEnded = 1;
    xmlTextWriterEndDocument(self->_dataImpl->_writer);
  }

  size = 0;
  v5 = 0;
  xmlDocDumpFormatMemory(self->_dataImpl->_doc, &v5, &size, [(CoreDAVXMLData *)self shouldAddFormattingSpaces]);
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:size];
  free(v5);

  return v3;
}

+ (BOOL)string:(id)a3 isEqualToXmlCharString:(const char *)a4
{
  v5 = a3;
  if ([v5 length])
  {
    if (a4)
    {
      v6 = strlen(a4);
      if (v6)
      {
        v7 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithBytes:a4 length:v6 encoding:4];
        LOBYTE(a4) = [v5 isEqualToString:v7];
      }

      else
      {
        LOBYTE(a4) = 0;
      }
    }
  }

  else if (a4)
  {
    LOBYTE(a4) = *a4 == 0;
  }

  else
  {
    LOBYTE(a4) = 1;
  }

  return a4;
}

- (void)startElement:inNamespace:withAttributeNamesAndValues:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_2_0();
  [OUTLINED_FUNCTION_0_0(v0 v1];
}

- (void)startElement:inNamespace:withAttributes:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_2_0();
  [OUTLINED_FUNCTION_0_0(v0 v1];
}

- (void)endElement:inNamespace:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_2_0();
  [OUTLINED_FUNCTION_0_0(v0 v1];
}

- (void)endElement:inNamespace:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CoreDAVXMLData.m" lineNumber:168 description:@"You can't end an element if there aren't any on the stack"];
}

- (void)endElement:(uint64_t)a3 inNamespace:(uint64_t)a4 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"CoreDAVXMLData.m" lineNumber:171 description:{@"You tried to end element %s, but the last element on the stack was %s.", a3, a4}];
}

- (void)appendElement:inNamespace:withStringContent:withAttributeNamesAndValues:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_2_0();
  [OUTLINED_FUNCTION_0_0(v0 v1];
}

- (void)appendElement:inNamespace:withStringContentAsCDATA:withAttributeNamesAndValues:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_2_0();
  [OUTLINED_FUNCTION_0_0(v0 v1];
}

@end