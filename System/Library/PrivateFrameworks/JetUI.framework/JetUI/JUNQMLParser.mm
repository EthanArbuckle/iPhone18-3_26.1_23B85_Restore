@interface JUNQMLParser
+ (void)initialize;
- (JUNQMLParser)init;
- (JUNQMLParser)initWithString:(id)string behavior:(unint64_t)behavior;
- (JUNQMLParserDelegate)delegate;
- (void)parse;
- (void)reportErrorWithCode:(unint64_t)code userInfo:(id)info;
- (void)reportParseError:(_xmlError *)error;
@end

@implementation JUNQMLParser

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    xmlInitParser();
  }

  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___JUNQMLParser;
  objc_msgSendSuper2(&v3, sel_initialize);
}

- (JUNQMLParser)initWithString:(id)string behavior:(unint64_t)behavior
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = JUNQMLParser;
  v7 = [(JUNQMLParser *)&v11 init];
  if (v7)
  {
    v8 = [stringCopy copy];
    string = v7->_string;
    v7->_string = v8;

    v7->_behavior = behavior;
  }

  return v7;
}

- (JUNQMLParser)init
{
  [(JUNQMLParser *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)reportErrorWithCode:(unint64_t)code userInfo:(id)info
{
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"JetUI.NQMLParser.errorDomain" code:code userInfo:info];
  delegate = [(JUNQMLParser *)self delegate];
  [delegate parser:self parseErrorOccurred:v6];
}

- (void)reportParseError:(_xmlError *)error
{
  if (error->level == XML_ERR_FATAL)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:error->line];
    [v9 setObject:v6 forKeyedSubscript:@"JetUI.NQMLParser.errorLineNumber"];

    v7 = [MEMORY[0x1E696AD98] numberWithInt:error->int2];
    [v9 setObject:v7 forKeyedSubscript:@"JetUI.NQMLParser.errorColumn"];

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:error->message];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    [(JUNQMLParser *)self reportErrorWithCode:error->code userInfo:v9];
  }
}

- (void)parse
{
  delegate = [(JUNQMLParser *)self delegate];

  if (!delegate)
  {
    return;
  }

  string = [(JUNQMLParser *)self string];
  uTF8String = [string UTF8String];

  if (!uTF8String || (-[JUNQMLParser string](self, "string"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 lengthOfBytesUsingEncoding:4], v6, v7 >> 31))
  {
    selfCopy2 = self;
    v9 = -101;
LABEL_5:

    [(JUNQMLParser *)selfCopy2 reportErrorWithCode:v9 userInfo:0];
    return;
  }

  MemoryParserCtxt = htmlCreateMemoryParserCtxt(uTF8String, v7);
  if (!MemoryParserCtxt)
  {
    selfCopy2 = self;
    v9 = -100;
    goto LABEL_5;
  }

  v11 = MemoryParserCtxt;
  v28 = xmmword_1F38E6068;
  v29 = unk_1F38E6078;
  v30 = xmmword_1F38E6088;
  v31 = unk_1F38E6098;
  v24 = xmmword_1F38E6028;
  v25 = unk_1F38E6038;
  v26 = xmmword_1F38E6048;
  v27 = *&off_1F38E6058;
  v20 = xmmword_1F38E5FE8;
  v21 = unk_1F38E5FF8;
  v22 = xmmword_1F38E6008;
  v23 = *&off_1F38E6018;
  v16 = xmmword_1F38E5FA8;
  v17 = unk_1F38E5FB8;
  v18 = xmmword_1F38E5FC8;
  v19 = unk_1F38E5FD8;
  sax = MemoryParserCtxt->sax;
  if (sax)
  {
    free(sax);
  }

  v11->sax = &v16;
  v11->userData = self;
  v11->encoding = "UTF-8";
  v11->charset = 1;
  htmlCtxtUseOptions(v11, 10305);
  [(JUNQMLParser *)self set_parserContext:v11, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31];
  v13 = htmlParseDocument(v11);
  myDoc = v11->myDoc;
  if (myDoc)
  {
    xmlFreeDoc(myDoc);
  }

  if (v13)
  {
    LastError = xmlCtxtGetLastError([(JUNQMLParser *)self _parserContext]);
    if (LastError)
    {
      [(JUNQMLParser *)self reportParseError:LastError];
    }
  }

  v11->encoding = 0;
  v11->charset = 0;
  v11->sax = 0;
  v11->userData = 0;
  MEMORY[0x1BFB03560](v11);
  [(JUNQMLParser *)self set_parserContext:0];
}

- (JUNQMLParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end