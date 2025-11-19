@interface TCXmlTextWriterProvider
- (BOOL)setUp;
- (BOOL)tearDown;
- (void)dealloc;
@end

@implementation TCXmlTextWriterProvider

- (void)dealloc
{
  [(TCXmlTextWriterProvider *)self tearDown];
  v3.receiver = self;
  v3.super_class = TCXmlTextWriterProvider;
  [(TCXmlTextWriterProvider *)&v3 dealloc];
}

- (BOOL)setUp
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TCXmlTextWriterProvider setUp]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCXmlStreamWriter.mm"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:33 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"Abstract method not overridden by %@: %s", v9, "-[TCXmlTextWriterProvider setUp]"];
  v11 = [v6 exceptionWithName:*MEMORY[0x277CBE658] reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (BOOL)tearDown
{
  textWriter = self->_textWriter;
  if (textWriter)
  {
    xmlFreeTextWriter(self->_textWriter);
    self->_textWriter = 0;
  }

  return textWriter != 0;
}

@end