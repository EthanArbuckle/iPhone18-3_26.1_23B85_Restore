@interface NNMKHTMLParser
- (BOOL)_isElementBlocked:(id)blocked attributes:(const char *)attributes;
- (BOOL)_isElementDisplayedInBlock:(id)block;
- (BOOL)_isElementLineBreak:(id)break;
- (BOOL)_isElementList:(id)list ordered:(BOOL *)ordered;
- (BOOL)_isElementQuoteElement:(id)element attributes:(const char *)attributes;
- (NNMKHTMLParser)init;
- (_xmlSAXHandler)parsingSAXHandler;
- (id)_stringAttributeValueForCSSStyleName:(id)name inStyleAttribute:(id)attribute;
- (id)_stringAttributesForStyleAttribute:(id)attribute;
- (id)_topStringAttributes;
- (id)_valueForAttributeNamed:(id)named inAttributes:(const char *)attributes;
- (unint64_t)_textAlignmentFromString:(id)string;
- (unint64_t)_writingDirectionFromString:(id)string;
- (void)_appendImageFromAttributes:(const char *)attributes;
- (void)_appendString:(id)string;
- (void)_enumerateAttributes:(const char *)attributes withBlock:(id)block;
- (void)_flushCharactersIfNeeded;
- (void)_pushStringAttributes:(id)attributes;
- (void)_requireNewLine;
- (void)_stringAttributeForElement:(id)element attributes:(const char *)attributes stringAttributeKey:(id *)key stringAttributeValue:(id *)value;
- (void)_stringAttributeForHyperlink:(id)hyperlink attributes:(const char *)attributes stringAttributeKey:(id *)key stringAttributeValue:(id *)value;
- (void)parseHTMLBody:(id)body encoding:(unint64_t)encoding;
- (void)setParsingSAXHandler:(_xmlSAXHandler *)handler;
@end

@implementation NNMKHTMLParser

- (NNMKHTMLParser)init
{
  v5.receiver = self;
  v5.super_class = NNMKHTMLParser;
  v2 = [(NNMKHTMLParser *)&v5 init];
  v3 = v2;
  if (v2)
  {
    xmlSAX2InitHtmlDefaultSAXHandler(&v2->_parsingSAXHandler);
    v3->_parsingSAXHandler.endDocument = 0;
    v3->_parsingSAXHandler.startElement = _handleStartElement;
    v3->_parsingSAXHandler.endElement = _handleEndElement;
    v3->_parsingSAXHandler.characters = _handleCharacters;
    v3->_parsingSAXHandler.internalSubset = 0;
    v3->_parsingSAXHandler.getEntity = 0;
    v3->_parsingSAXHandler.cdataBlock = 0;
    v3->_parsingSAXHandler.error = _handleError;
    v3->_parsingSAXHandler.fatalError = 0;
    v3->_parsingSAXHandler.setDocumentLocator = 0;
    v3->_parsingSAXHandler.startDocument = 0;
    *&v3->_parsingSAXHandler.ignorableWhitespace = 0u;
    *&v3->_parsingSAXHandler.comment = 0u;
  }

  return v3;
}

- (void)parseHTMLBody:(id)body encoding:(unint64_t)encoding
{
  bodyCopy = body;
  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  charactersBuffer = self->_charactersBuffer;
  self->_charactersBuffer = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  stringAttributesStack = self->_stringAttributesStack;
  self->_stringAttributesStack = v8;

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  isQuoteElementStack = self->_isQuoteElementStack;
  self->_isQuoteElementStack = v10;

  self->_currentQuoteLevel = 0;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  listStack = self->_listStack;
  self->_listStack = v12;

  self->_currentListLevel = 0;
  self->_isLastCharAddedLineBreak = 0;
  self->_containsBlockedElements = 0;
  self->_bodyTagStartIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_currentHeadTagStartIndex = 0x7FFFFFFFFFFFFFFFLL;
  currentImgTagSource = self->_currentImgTagSource;
  self->_currentImgTagSource = 0;

  *&self->_parsingHead = 0;
  self->_cancelled = 0;
  htmlBodyToParse = self->_htmlBodyToParse;
  self->_htmlBodyToParse = bodyCopy;
  v16 = bodyCopy;

  v20 = [(NSString *)v16 dataUsingEncoding:4];
  v17 = v20;
  PushParserCtxt = htmlCreatePushParserCtxt(&self->_parsingSAXHandler, self, [v20 bytes], objc_msgSend(v20, "length"), 0, XML_CHAR_ENCODING_UTF8);
  self->_parserContext = PushParserCtxt;
  htmlCtxtUseOptions(PushParserCtxt, 2099201);
  htmlParseDocument(self->_parserContext);
  MEMORY[0x25F8641C0](self->_parserContext);
  v19 = self->_htmlBodyToParse;
  self->_htmlBodyToParse = 0;
}

- (BOOL)_isElementBlocked:(id)blocked attributes:(const char *)attributes
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__NNMKHTMLParser__isElementBlocked_attributes___block_invoke;
  v5[3] = &unk_279935E68;
  v5[4] = self;
  v5[5] = attributes;
  return [(NNMKHTMLParser *)self isElementBlocked:blocked attributeQueryBlock:v5];
}

- (BOOL)_isElementDisplayedInBlock:(id)block
{
  blockCopy = block;
  v4 = 1;
  if ([blockCopy compare:@"div" options:1])
  {
    v4 = 1;
    if ([blockCopy compare:@"blockquote" options:1])
    {
      v4 = 1;
      if ([blockCopy compare:@"table" options:1])
      {
        v4 = 1;
        if ([blockCopy compare:@"tr" options:1])
        {
          v4 = 1;
          if ([blockCopy compare:@"td" options:1])
          {
            v4 = 1;
            if ([blockCopy compare:@"p" options:1])
            {
              v4 = 1;
              if ([blockCopy compare:@"li" options:1])
              {
                v4 = 1;
                if ([blockCopy compare:@"ul" options:1])
                {
                  v4 = [blockCopy compare:@"ol" options:1] == 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (BOOL)_isElementQuoteElement:(id)element attributes:(const char *)attributes
{
  elementCopy = element;
  if (![elementCopy compare:@"blockquote" options:1])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__NNMKHTMLParser__isElementQuoteElement_attributes___block_invoke;
    v11[3] = &unk_279935E90;
    v11[4] = &v18;
    v11[5] = &v12;
    [(NNMKHTMLParser *)self _enumerateAttributes:attributes withBlock:v11];
    v7 = v19[5];
    if (v7 && ![v7 compare:v19[5] options:1] || (v8 = v13[5]) != 0 && !objc_msgSend(v8, "compare:options:", @"gmail_quote", 1))
    {
      _Block_object_dispose(&v12, 8);

      _Block_object_dispose(&v18, 8);
      v9 = 1;
      goto LABEL_8;
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }

  v9 = 0;
LABEL_8:

  return v9;
}

void __52__NNMKHTMLParser__isElementQuoteElement_attributes___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  v10 = a3;
  v8 = a4;
  if (![v10 compare:@"type" options:1])
  {
    v9 = 32;
    goto LABEL_5;
  }

  if (![v10 compare:@"class" options:1])
  {
    v9 = 40;
LABEL_5:
    objc_storeStrong((*(*(a1 + v9) + 8) + 40), a4);
  }

  if (*(*(*(a1 + 32) + 8) + 40) && *(*(*(a1 + 40) + 8) + 40))
  {
    *a5 = 1;
  }
}

- (BOOL)_isElementLineBreak:(id)break
{
  breakCopy = break;
  v4 = 1;
  if ([breakCopy compare:@"br" options:1])
  {
    v4 = [breakCopy compare:@"hr" options:1] == 0;
  }

  return v4;
}

- (BOOL)_isElementList:(id)list ordered:(BOOL *)ordered
{
  listCopy = list;
  if (![listCopy compare:@"ul" options:1])
  {
    if (!ordered)
    {
LABEL_8:
      v6 = 1;
      goto LABEL_9;
    }

    v6 = 0;
LABEL_7:
    *ordered = v6;
    goto LABEL_8;
  }

  if (![listCopy compare:@"ol" options:1])
  {
    v6 = 1;
    if (!ordered)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)_stringAttributeForElement:(id)element attributes:(const char *)attributes stringAttributeKey:(id *)key stringAttributeValue:(id *)value
{
  elementCopy = element;
  *key = 0;
  *value = 0;
  v15 = elementCopy;
  if (![elementCopy compare:@"b" options:1])
  {
    v13 = kBoldMessageBodyCustomAttribute;
LABEL_11:
    *key = *v13;
    *value = [MEMORY[0x277CBEB68] null];
    goto LABEL_19;
  }

  if (![v15 compare:@"i" options:1])
  {
    v13 = kItalicMessageBodyCustomAttribute;
    goto LABEL_11;
  }

  if (![v15 compare:@"u" options:1])
  {
    v14 = MEMORY[0x277D741F0];
LABEL_14:
    *key = *v14;
    *value = &unk_286C7BD78;
    goto LABEL_19;
  }

  if (![v15 compare:@"strike" options:1])
  {
    v14 = MEMORY[0x277D74150];
    goto LABEL_14;
  }

  if ([v15 compare:@"font" options:1])
  {
    if (![(NNMKHTMLParser *)self _isElementBody:v15])
    {
      goto LABEL_19;
    }

    v11 = [(NNMKHTMLParser *)self _valueForAttributeNamed:@"bgColor" inAttributes:attributes];
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = kBodyBackgroundMessageBodyCustomAttribute;
    goto LABEL_17;
  }

  v11 = [(NNMKHTMLParser *)self _valueForAttributeNamed:@"color" inAttributes:attributes];
  if (v11)
  {
    v12 = kFontColorMessageBodyCustomAttribute;
LABEL_17:
    *key = *v12;
    *value = [MEMORY[0x277D75348] colorWithWebColor:v11];
  }

LABEL_18:

LABEL_19:
}

- (id)_stringAttributesForStyleAttribute:(id)attribute
{
  v4 = MEMORY[0x277CBEB38];
  attributeCopy = attribute;
  v6 = objc_alloc_init(v4);
  v7 = [(NNMKHTMLParser *)self _stringAttributeValueForCSSStyleName:@"color" inStyleAttribute:attributeCopy];
  v8 = [(NNMKHTMLParser *)self _stringAttributeValueForCSSStyleName:@"text-align" inStyleAttribute:attributeCopy];
  v9 = [(NNMKHTMLParser *)self _stringAttributeValueForCSSStyleName:@"direction" inStyleAttribute:attributeCopy];

  if (v7)
  {
    v10 = [MEMORY[0x277D75348] colorWithWebColor:v7];
    if (v10)
    {
      [v6 setObject:v10 forKeyedSubscript:@"NNMKColor"];
    }
  }

  if (v8)
  {
    v11 = [(NNMKHTMLParser *)self _textAlignmentFromString:v8];
    if (v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
      [v6 setObject:v12 forKeyedSubscript:@"NNMKAlign"];
    }
  }

  if (v9)
  {
    v13 = [(NNMKHTMLParser *)self _writingDirectionFromString:v9];
    if (v13)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      [v6 setObject:v14 forKeyedSubscript:@"NNMKWritingDirection"];
    }
  }

  return v6;
}

- (id)_stringAttributeValueForCSSStyleName:(id)name inStyleAttribute:(id)attribute
{
  attributeCopy = attribute;
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"(^|)\\s*(%@\\s*:\\s*)(.+?)(;|$)", name];;
  v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:name options:1 error:0];
  lowercaseString = [attributeCopy lowercaseString];
  v9 = [v7 matchesInString:lowercaseString options:0 range:{0, objc_msgSend(attributeCopy, "length")}];

  if ([v9 count])
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 rangeAtIndex:3];
    v13 = [attributeCopy substringWithRange:{v11, v12}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)_textAlignmentFromString:(id)string
{
  stringCopy = string;
  v4 = 1;
  if ([stringCopy compare:@"left" options:1])
  {
    if ([stringCopy compare:@"center" options:1])
    {
      if ([stringCopy compare:@"right" options:1])
      {
        v4 = 4 * ([stringCopy compare:@"justify" options:1] == 0);
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

- (unint64_t)_writingDirectionFromString:(id)string
{
  stringCopy = string;
  v4 = 1;
  if ([stringCopy compare:@"ltr" options:1])
  {
    if ([stringCopy compare:@"rtl" options:1])
    {
      v4 = [stringCopy compare:@"initial" options:1] == 0;
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

- (void)_stringAttributeForHyperlink:(id)hyperlink attributes:(const char *)attributes stringAttributeKey:(id *)key stringAttributeValue:(id *)value
{
  *key = 0;
  *value = 0;
  v21 = [(NNMKHTMLParser *)self _valueForAttributeNamed:@"href" inAttributes:?];
  lowercaseString = [v21 lowercaseString];
  if ([lowercaseString hasPrefix:@"http:"])
  {
    goto LABEL_14;
  }

  lowercaseString2 = [v21 lowercaseString];
  if ([lowercaseString2 hasPrefix:@"https:"])
  {
LABEL_13:

LABEL_14:
LABEL_15:
    *key = @"NNMKHyperlink";
    v16 = MEMORY[0x277CBEBC0];
    v17 = [(NNMKHTMLParser *)self _valueForAttributeNamed:@"href" inAttributes:attributes];
    *value = [v16 URLWithString:v17];

    goto LABEL_16;
  }

  lowercaseString3 = [v21 lowercaseString];
  if ([lowercaseString3 hasPrefix:@"mailto:"])
  {
LABEL_12:

    goto LABEL_13;
  }

  lowercaseString4 = [v21 lowercaseString];
  if ([lowercaseString4 hasPrefix:@"map:"])
  {
LABEL_11:

    goto LABEL_12;
  }

  lowercaseString5 = [v21 lowercaseString];
  if ([lowercaseString5 hasPrefix:@"maps:"])
  {
LABEL_10:

    goto LABEL_11;
  }

  lowercaseString6 = [v21 lowercaseString];
  if ([lowercaseString6 hasPrefix:@"sms:"])
  {
LABEL_9:

    goto LABEL_10;
  }

  lowercaseString7 = [v21 lowercaseString];
  if ([lowercaseString7 hasPrefix:@"tel:"])
  {

    goto LABEL_9;
  }

  lowercaseString8 = [v21 lowercaseString];
  v19 = [lowercaseString8 hasPrefix:@"itms-services:"];

  if (v19)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (id)_valueForAttributeNamed:(id)named inAttributes:(const char *)attributes
{
  namedCopy = named;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__NNMKHTMLParser__valueForAttributeNamed_inAttributes___block_invoke;
  v10[3] = &unk_279935EB8;
  v7 = namedCopy;
  v11 = v7;
  v12 = &v13;
  [(NNMKHTMLParser *)self _enumerateAttributes:attributes withBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __55__NNMKHTMLParser__valueForAttributeNamed_inAttributes___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  v9 = a4;
  if (![a3 compare:*(a1 + 32) options:1])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
    *a5 = 1;
  }
}

- (void)_enumerateAttributes:(const char *)attributes withBlock:(id)block
{
  blockCopy = block;
  if (!attributes)
  {
    goto LABEL_14;
  }

  v6 = 0;
  for (i = 1; ; ++i)
  {
    v8 = *attributes;
    if (v6)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_13;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
LABEL_11:
    ++attributes;
  }

  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  blockCopy[2](blockCopy, i, v6, v9, &v10);
  if (v10 != 1)
  {

    v6 = 0;
    goto LABEL_11;
  }

LABEL_13:
LABEL_14:
}

- (id)_topStringAttributes
{
  lastObject = [(NSMutableArray *)self->_stringAttributesStack lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    v4 = lastObject;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = v4;

  return v4;
}

- (void)_pushStringAttributes:(id)attributes
{
  attributesCopy = attributes;
  _topStringAttributes = [(NNMKHTMLParser *)self _topStringAttributes];
  v6 = [_topStringAttributes mutableCopy];

  [v6 addEntriesFromDictionary:attributesCopy];
  [(NSMutableArray *)self->_stringAttributesStack addObject:v6];
}

- (void)_requireNewLine
{
  if (!self->_isLastCharAddedLineBreak)
  {
    [(NNMKHTMLParser *)self _appendLineBreak];
  }
}

- (void)_flushCharactersIfNeeded
{
  if ([(NSMutableData *)self->_charactersBuffer length])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_charactersBuffer encoding:4];
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    charactersBuffer = self->_charactersBuffer;
    self->_charactersBuffer = v3;

    if (v5 && (![v5 isEqualToString:@"\n"] || !self->_isLastCharAddedLineBreak))
    {
      [(NNMKHTMLParser *)self _appendString:v5];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (void)_appendString:(id)string
{
  stringCopy = string;
  _topStringAttributes = [(NNMKHTMLParser *)self _topStringAttributes];
  [(NNMKHTMLParser *)self appendString:stringCopy stringAttributes:_topStringAttributes];

  LOBYTE(_topStringAttributes) = [stringCopy hasSuffix:@"\n"];
  self->_isLastCharAddedLineBreak = _topStringAttributes;
}

- (void)_appendImageFromAttributes:(const char *)attributes
{
  v12 = [(NNMKHTMLParser *)self _valueForAttributeNamed:@"src" inAttributes:attributes];
  v5 = [(NNMKHTMLParser *)self _valueForAttributeNamed:@"width" inAttributes:attributes];
  [v5 floatValue];
  v7 = v6;

  v8 = [(NNMKHTMLParser *)self _valueForAttributeNamed:@"height" inAttributes:attributes];
  [v8 floatValue];
  v10 = v9;

  _topStringAttributes = [(NNMKHTMLParser *)self _topStringAttributes];
  [(NNMKHTMLParser *)self appendImageWithSource:v12 width:_topStringAttributes height:v7 stringAttributes:v10];

  self->_isLastCharAddedLineBreak = 0;
}

- (_xmlSAXHandler)parsingSAXHandler
{
  v3 = *&self->initialized;
  *&retstr->attributeDecl = *&self->cdataBlock;
  *&retstr->unparsedEntityDecl = v3;
  v4 = *&self->serror;
  *&retstr->startDocument = *&self->startElementNs;
  *&retstr->startElement = v4;
  v5 = *&self->processingInstruction;
  *&retstr->internalSubset = *&self->characters;
  *&retstr->hasInternalSubset = v5;
  v6 = *&self->fatalError;
  *&retstr->resolveEntity = *&self->warning;
  *&retstr->entityDecl = v6;
  v7 = *&self[1].setDocumentLocator;
  *&retstr->getParameterEntity = *&self[1].elementDecl;
  *&retstr->externalSubset = v7;
  v8 = *&self[1].endElement;
  *&retstr->_private = *&self[1].endDocument;
  *&retstr->endElementNs = v8;
  v9 = *&self[1].hasExternalSubset;
  *&retstr->reference = *&self[1].isStandalone;
  *&retstr->ignorableWhitespace = v9;
  v10 = *&self[1].notationDecl;
  *&retstr->comment = *&self[1].getEntity;
  *&retstr->error = v10;
  return self;
}

- (void)setParsingSAXHandler:(_xmlSAXHandler *)handler
{
  v3 = *&handler->internalSubset;
  v4 = *&handler->hasInternalSubset;
  v5 = *&handler->resolveEntity;
  *&self->_parsingSAXHandler.entityDecl = *&handler->entityDecl;
  *&self->_parsingSAXHandler.resolveEntity = v5;
  *&self->_parsingSAXHandler.hasInternalSubset = v4;
  *&self->_parsingSAXHandler.internalSubset = v3;
  v6 = *&handler->attributeDecl;
  v7 = *&handler->unparsedEntityDecl;
  v8 = *&handler->startDocument;
  *&self->_parsingSAXHandler.startElement = *&handler->startElement;
  *&self->_parsingSAXHandler.startDocument = v8;
  *&self->_parsingSAXHandler.unparsedEntityDecl = v7;
  *&self->_parsingSAXHandler.attributeDecl = v6;
  v9 = *&handler->reference;
  v10 = *&handler->ignorableWhitespace;
  v11 = *&handler->error;
  *&self->_parsingSAXHandler.comment = *&handler->comment;
  *&self->_parsingSAXHandler.error = v11;
  *&self->_parsingSAXHandler.reference = v9;
  *&self->_parsingSAXHandler.ignorableWhitespace = v10;
  v12 = *&handler->getParameterEntity;
  v13 = *&handler->externalSubset;
  v14 = *&handler->endElementNs;
  *&self->_parsingSAXHandler._private = *&handler->_private;
  *&self->_parsingSAXHandler.endElementNs = v14;
  *&self->_parsingSAXHandler.getParameterEntity = v12;
  *&self->_parsingSAXHandler.externalSubset = v13;
}

@end