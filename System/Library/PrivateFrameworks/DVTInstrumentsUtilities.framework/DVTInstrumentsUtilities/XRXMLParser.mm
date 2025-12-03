@interface XRXMLParser
+ (BOOL)parseStream:(id)stream topLevelParser:(id)parser delegate:(id)delegate;
+ (id)commonXMLSchemaRepositoryURL;
- (BOOL)parseData:(id)data;
- (XRXMLParser)initWithTopLevelParser:(id)parser;
- (XRXMLParserDelegate)delegate;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)setDelegate:(id)delegate;
@end

@implementation XRXMLParser

+ (id)commonXMLSchemaRepositoryURL
{
  v4 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], a2, @"com.apple.dt.instruments.DVTInstrumentsUtilities", v2, v3);
  v9 = objc_msgSend_resourceURL(v4, v5, v6, v7, v8);
  if (!v9)
  {
    sub_2480B3548();
  }

  v10 = v9;

  return v10;
}

+ (BOOL)parseStream:(id)stream topLevelParser:(id)parser delegate:(id)delegate
{
  streamCopy = stream;
  parserCopy = parser;
  delegateCopy = delegate;
  v10 = [XRXMLParser alloc];
  v14 = objc_msgSend_initWithTopLevelParser_(v10, v11, parserCopy, v12, v13);
  objc_msgSend_setDelegate_(v14, v15, delegateCopy, v16, v17);
  if (!objc_msgSend_streamStatus(streamCopy, v18, v19, v20, v21))
  {
    objc_msgSend_open(streamCopy, v22, v23, v24, v25);
  }

  v30 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v22, *MEMORY[0x277D85FA0], v24, v25);
  v31 = 1;
  while (1)
  {
    if ((v31 & 1) != 0 && objc_msgSend_streamStatus(streamCopy, v26, v27, v28, v29) != 2)
    {
LABEL_10:
      v46 = 1;
      goto LABEL_12;
    }

    v32 = v30;
    v37 = objc_msgSend_mutableBytes(v32, v33, v34, v35, v36);
    v42 = objc_msgSend_length(v30, v38, v39, v40, v41);
    maxLength = objc_msgSend_read_maxLength_(streamCopy, v43, v37, v42, v44);
    if (maxLength < 1)
    {
      break;
    }

    v31 = objc_msgSend_parseData_(v14, v26, v30, v28, v29);
LABEL_9:
    if ((objc_msgSend_hasBytesAvailable(streamCopy, v26, v27, v28, v29) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ((maxLength & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v46 = 0;
LABEL_12:
  objc_msgSend_finishedParsing(v14, v26, v27, v28, v29);

  return v46;
}

- (XRXMLParser)initWithTopLevelParser:(id)parser
{
  parserCopy = parser;
  v9.receiver = self;
  v9.super_class = XRXMLParser;
  v6 = [(XRXMLParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (parserCopy)
    {
      objc_storeStrong(&v6->_topLevelElementParser, parser);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)parseData:(id)data
{
  dataCopy = data;
  parser = self->_parser;
  if (!parser)
  {
    v9 = objc_alloc(MEMORY[0x277CCAE70]);
    v14 = objc_msgSend_initForIncrementalParsing(v9, v10, v11, v12, v13);
    v15 = self->_parser;
    self->_parser = v14;

    objc_msgSend_setDelegate_(self->_parser, v16, self, v17, v18);
    parser = self->_parser;
  }

  v19 = objc_msgSend_parseData_(parser, v4, dataCopy, v5, v6);

  return v19;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v5 = objc_opt_respondsToSelector();

  self->_delegateWantsFinishedCB = v5 & 1;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  parserCopy = parser;
  elementCopy = element;
  attributesCopy = attributes;
  workingElement = self->_workingElement;
  if (workingElement)
  {
    v17 = objc_msgSend_lineNumber(parserCopy, v11, v12, v13, v14);
    v22 = objc_msgSend_columnNumber(parserCopy, v18, v19, v20, v21);
    v28 = objc_msgSend_startElementWithName_attributes_line_col_(workingElement, v23, elementCopy, attributesCopy, v17, v22);
    if (v28)
    {
      objc_storeStrong(&self->_workingElement, v28);
    }

    else
    {
      objc_msgSend_abortParsing(self->_parser, v24, v25, v26, v27);
    }
  }

  else
  {
    objc_storeStrong(&self->_workingElement, self->_topLevelElementParser);
    topLevelElementParser = self->_topLevelElementParser;
    self->_topLevelElementParser = 0;

    objc_msgSend__handleStart(self->_workingElement, v30, v31, v32, v33);
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  workingElement = self->_workingElement;
  parserCopy = parser;
  v13 = objc_msgSend_lineNumber(parserCopy, v9, v10, v11, v12);
  v18 = objc_msgSend_columnNumber(parserCopy, v14, v15, v16, v17);

  v21 = objc_msgSend_endElementAtLine_col_(workingElement, v19, v13, v18, v20);
  v26 = self->_workingElement;
  v30 = v21;
  if (v21)
  {
    if (v21 != v26 && self->_delegateWantsFinishedCB)
    {
      v27 = objc_msgSend_delegate(self, v22, v23, v24, v25);
      objc_msgSend_parser_didFinishParsingElement_(v27, v28, self, self->_workingElement, v29);

      v21 = v30;
    }

    v21 = v21;
    v26 = self->_workingElement;
  }

  self->_workingElement = v21;
}

- (XRXMLParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end