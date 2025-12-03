@interface ECMessageBodyParser
+ (BOOL)isLinebreakImpliedAfterTagName:(id)name;
+ (BOOL)isLinebreakImpliedBeforeTagName:(id)name;
- (BOOL)isLandmarkTagName:(id)name;
- (BOOL)shouldIgnoreTagWithTagName:(id)name;
- (BOOL)shouldProceedParsing;
- (ECMessageBodyParser)init;
- (NSError)parserError;
- (NSNumberFormatter)currencyFormatter;
- (id)getAvailableMessageBodyElement;
- (id)newStringAccumulatorWithOptions:(unint64_t)options lengthLimit:(unint64_t)limit;
- (unint64_t)quoteLevelForBodyNode:(id)node;
- (void)addSubparser:(id)subparser;
- (void)dealloc;
- (void)didFindBodyElement:(id)element;
- (void)didFindError:(id)error;
- (void)didFinishParsing;
- (void)enqueueParagraphNode:(id)node withTagName:(id)name;
- (void)flushParagraphNodes;
- (void)getLevel:(int64_t *)level quoteLevel:(int64_t *)quoteLevel forBodyNode:(id)node;
- (void)setFoundMessageBodyElementBlock:(id)block;
- (void)willBeginParsing;
@end

@implementation ECMessageBodyParser

os_log_t ___ef_log_ECMessageBodyParser_block_invoke()
{
  result = os_log_create("com.apple.email", "ECMessageBodyParser");
  _ef_log_ECMessageBodyParser_log = result;
  return result;
}

- (ECMessageBodyParser)init
{
  v4.receiver = self;
  v4.super_class = ECMessageBodyParser;
  v2 = [(ECMessageBodyParser *)&v4 init];
  if (v2)
  {
    v2->_elementPool = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  elementPool = self->_elementPool;
  v4 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(elementPool);
        }

        [*(*(&v13 + 1) + 8 * i) setParser:0];
      }

      v5 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  nodesStackCache = self->_nodesStackCache;
  if (nodesStackCache)
  {
    CFRelease(nodesStackCache);
  }

  nodesLevelCache = self->_nodesLevelCache;
  if (nodesLevelCache)
  {
    CFRelease(nodesLevelCache);
  }

  nodesQuoteLevelCache = self->_nodesQuoteLevelCache;
  if (nodesQuoteLevelCache)
  {
    CFRelease(nodesQuoteLevelCache);
  }

  v12.receiver = self;
  v12.super_class = ECMessageBodyParser;
  [(ECMessageBodyParser *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldProceedParsing
{
  v5.receiver = self;
  v5.super_class = ECMessageBodyParser;
  shouldProceedParsing = [(ECMessageBodyParserObject *)&v5 shouldProceedParsing];
  if (shouldProceedParsing)
  {
    LOBYTE(shouldProceedParsing) = self->_parserError == 0;
  }

  return shouldProceedParsing;
}

- (NSError)parserError
{
  v2 = self->_parserError;

  return v2;
}

- (NSNumberFormatter)currencyFormatter
{
  result = self->_currencyFormatter;
  if (!result)
  {
    self->_currencyFormatter = objc_alloc_init(MEMORY[0x277CCABB8]);
    -[NSNumberFormatter setLocale:](self->_currencyFormatter, "setLocale:", [MEMORY[0x277CBEAF8] currentLocale]);
    [(NSNumberFormatter *)self->_currencyFormatter setNumberStyle:2];
    return self->_currencyFormatter;
  }

  return result;
}

- (id)newStringAccumulatorWithOptions:(unint64_t)options lengthLimit:(unint64_t)limit
{
  v7 = objc_alloc([(ECMessageBodyParser *)self messageBodyStringAccumulatorClass]);
  messageBodyStringAccumulatorDefaultOptions = [(ECMessageBodyParser *)self messageBodyStringAccumulatorDefaultOptions];
  currencyFormatter = [(ECMessageBodyParser *)self currencyFormatter];

  return [v7 initWithOptions:messageBodyStringAccumulatorDefaultOptions | options lengthLimit:limit currencyFormatter:currencyFormatter];
}

- (void)setFoundMessageBodyElementBlock:(id)block
{
  foundMessageBodyElementBlock = self->_foundMessageBodyElementBlock;
  if (foundMessageBodyElementBlock != block)
  {

    self->_foundMessageBodyElementBlock = [block copy];
  }
}

- (void)addSubparser:(id)subparser
{
  subparsers = self->_subparsers;
  if (!subparsers)
  {
    subparsers = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_subparsers = subparsers;
  }

  [(NSMutableArray *)subparsers addObject:subparser];
}

- (id)getAvailableMessageBodyElement
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  elementPool = self->_elementPool;
  v4 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(elementPool);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      if (![v8 isExternallyRetained])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v8)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  v8 = objc_alloc_init([(ECMessageBodyParser *)self messageBodyElementClass]);
  [v8 setParser:self];
  [(NSMutableArray *)self->_elementPool addObject:v8];

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isLandmarkTagName:(id)name
{
  if (!name)
  {
    return 0;
  }

  if ([name compare:@"div" options:3] && objc_msgSend(name, "compare:options:", @"p", 3) && objc_msgSend(name, "compare:options:", @"br", 3))
  {
    return [name compare:@"blockquote" options:3] == 0;
  }

  return 1;
}

- (BOOL)shouldIgnoreTagWithTagName:(id)name
{
  if (!name)
  {
    return 0;
  }

  if ([name compare:@"title" options:3] && objc_msgSend(name, "compare:options:", @"script", 3))
  {
    return [name compare:@"style" options:3] == 0;
  }

  return 1;
}

+ (BOOL)isLinebreakImpliedBeforeTagName:(id)name
{
  if (!name)
  {
    return 0;
  }

  if ([name compare:@"div" options:3] && objc_msgSend(name, "compare:options:", @"p", 3) && objc_msgSend(name, "compare:options:", @"h1", 3) && objc_msgSend(name, "compare:options:", @"h2", 3) && objc_msgSend(name, "compare:options:", @"h3", 3) && objc_msgSend(name, "compare:options:", @"h4", 3) && objc_msgSend(name, "compare:options:", @"h5", 3) && objc_msgSend(name, "compare:options:", @"h6", 3))
  {
    return [name compare:@"li" options:3] == 0;
  }

  return 1;
}

+ (BOOL)isLinebreakImpliedAfterTagName:(id)name
{
  if (!name)
  {
    return 0;
  }

  if ([name compare:@"div" options:3] && objc_msgSend(name, "compare:options:", @"br", 3) && objc_msgSend(name, "compare:options:", @"p", 3))
  {
    return [name compare:@"blockquote" options:3] == 0;
  }

  return 1;
}

- (void)enqueueParagraphNode:(id)node withTagName:(id)name
{
  if ([objc_opt_class() isLinebreakImpliedBeforeTagName:name])
  {
    [(ECMessageBodyParser *)self flushParagraphNodes];
  }

  paragraphNodes = self->_paragraphNodes;
  if (!paragraphNodes)
  {
    paragraphNodes = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_paragraphNodes = paragraphNodes;
  }

  [(NSMutableArray *)paragraphNodes addObject:node];
  if ([objc_opt_class() isLinebreakImpliedAfterTagName:name])
  {

    [(ECMessageBodyParser *)self flushParagraphNodes];
  }
}

- (void)flushParagraphNodes
{
  if ([(NSMutableArray *)self->_paragraphNodes count])
  {
    getAvailableMessageBodyElement = [(ECMessageBodyParser *)self getAvailableMessageBodyElement];
    [getAvailableMessageBodyElement setNodes:self->_paragraphNodes];
    [(ECMessageBodyParser *)self didFindBodyElement:getAvailableMessageBodyElement];
    paragraphNodes = self->_paragraphNodes;

    [(NSMutableArray *)paragraphNodes removeAllObjects];
  }
}

- (void)didFindBodyElement:(id)element
{
  v18 = *MEMORY[0x277D85DE8];
  foundMessageBodyElementBlock = self->_foundMessageBodyElementBlock;
  if (foundMessageBodyElementBlock)
  {
    foundMessageBodyElementBlock[2](foundMessageBodyElementBlock, element);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  subparsers = self->_subparsers;
  v7 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(subparsers);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 shouldProceedParsing])
        {
          [v11 messageBodyParser:self foundMessageBodyElement:element];
        }
      }

      v8 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)willBeginParsing
{
  v14 = *MEMORY[0x277D85DE8];
  [(ECMessageBodyParserObject *)self messageBodyParserWillBeginParsing:self];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  subparsers = self->_subparsers;
  v4 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(subparsers);
        }

        [*(*(&v9 + 1) + 8 * i) messageBodyParserWillBeginParsing:self];
      }

      v5 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didFinishParsing
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  subparsers = self->_subparsers;
  v4 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(subparsers);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([v8 shouldProceedParsing])
        {
          [v8 messageBodyParserDidFinishParsing:self];
        }
      }

      v5 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  elementPool = self->_elementPool;
  v10 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(elementPool);
        }

        [*(*(&v15 + 1) + 8 * j) setParser:0];
      }

      v11 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_elementPool removeAllObjects];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)didFindError:(id)error
{
  if (_ef_log_ECMessageBodyParser_onceToken != -1)
  {
    _ef_log_ECMessageBodyParser_cold_1();
  }

  v5 = _ef_log_ECMessageBodyParser_log;
  if (os_log_type_enabled(_ef_log_ECMessageBodyParser_log, OS_LOG_TYPE_ERROR))
  {
    [(ECMessageBodyParser *)error didFindError:v5];
  }

  if (!self->_parserError)
  {
    self->_parserError = error;
  }
}

- (unint64_t)quoteLevelForBodyNode:(id)node
{
  v4 = 0;
  [(ECMessageBodyParser *)self getLevel:0 quoteLevel:&v4 forBodyNode:node];
  return v4;
}

- (void)getLevel:(int64_t *)level quoteLevel:(int64_t *)quoteLevel forBodyNode:(id)node
{
  v14 = 0;
  value = 0;
  if (node)
  {
    if (!self->_nodesStackCache)
    {
      if ([objc_opt_class() cacheRetainsNodes])
      {
        v9 = MEMORY[0x277CBF128];
      }

      else
      {
        v9 = 0;
      }

      self->_nodesStackCache = CFArrayCreateMutable(0, 50, v9);
    }

    nodesLevelCache = self->_nodesLevelCache;
    if (!nodesLevelCache)
    {
      nodesLevelCache = CFDictionaryCreateMutable(0, 50, 0, 0);
      self->_nodesLevelCache = nodesLevelCache;
    }

    if (!self->_nodesQuoteLevelCache)
    {
      self->_nodesQuoteLevelCache = CFDictionaryCreateMutable(0, 50, 0, 0);
      nodesLevelCache = self->_nodesLevelCache;
    }

    if (!CFDictionaryGetValueIfPresent(nodesLevelCache, node, &value) || !CFDictionaryGetValueIfPresent(self->_nodesQuoteLevelCache, node, &v14))
    {
      -[ECMessageBodyParser getLevel:quoteLevel:forBodyNode:](self, "getLevel:quoteLevel:forBodyNode:", &value, &v14, [node parentNode]);
      value = value + 1;
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![@"blockquote" compare:objc_msgSend(node options:{"tagName"), 1}] && ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend(@"cite", "compare:options:", objc_msgSend(node, "getAttribute:", @"type"), 1) || !objc_msgSend(@"gmail_quote", "compare:options:", objc_msgSend(node, "getAttribute:", @"class"), 1)))
      {
        v14 = v14 + 1;
      }

      Count = CFArrayGetCount(self->_nodesStackCache);
      if (Count >= value)
      {
        v12 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(self->_nodesStackCache, v12 - 2);
          CFDictionaryRemoveValue(self->_nodesLevelCache, ValueAtIndex);
          CFDictionaryRemoveValue(self->_nodesQuoteLevelCache, ValueAtIndex);
          CFArrayRemoveValueAtIndex(self->_nodesStackCache, v12 - 2);
          --v12;
        }

        while (v12 > value);
      }

      CFArrayAppendValue(self->_nodesStackCache, node);
      CFDictionarySetValue(self->_nodesLevelCache, node, value);
      CFDictionarySetValue(self->_nodesQuoteLevelCache, node, v14);
    }
  }

  if (level)
  {
    *level = value;
  }

  if (quoteLevel)
  {
    *quoteLevel = v14;
  }
}

- (void)didFindError:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138543362;
  v5 = [a1 ef_publicDescription];
  _os_log_error_impl(&dword_22D092000, a2, OS_LOG_TYPE_ERROR, "Did find error: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end