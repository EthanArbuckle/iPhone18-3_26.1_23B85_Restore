@interface IMXMLParser
+ (id)sharedInstance;
- (BOOL)parseContext:(id)a3;
- (id)_newDataByTidyingData:(id)a3;
- (void)_setupTidy;
- (void)_teardownTidy;
- (void)invokedTidyAndSucceeded:(BOOL)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parser:(id)a3 foundIgnorableWhitespace:(id)a4;
@end

@implementation IMXMLParser

+ (id)sharedInstance
{
  if (qword_1ED8CA428 != -1)
  {
    sub_1A88C42EC();
  }

  return qword_1ED8CA390;
}

- (void)_setupTidy
{
  if (!self->_tidyDoc)
  {
    v3 = MEMORY[0x1AC5720C0]();
    self->_tidyDoc = v3;
    if (tidyOptSetBool(v3, TidyFixUri, no) == no || tidyOptSetInt(self->_tidyDoc, TidyWrapLen, 0) == no || tidyOptSetInt(self->_tidyDoc, TidyIndentSpaces, 0) == no || tidyOptSetInt(self->_tidyDoc, TidyTabSize, 4uLL) == no || tidyOptSetInt(self->_tidyDoc, TidyNewline, 0) == no || tidyOptSetInt(self->_tidyDoc, TidyIndentContent, 0) == no || tidyOptSetBool(self->_tidyDoc, TidyVertSpace, no) == no || tidyOptSetBool(self->_tidyDoc, TidyNumEntities, yes) == no || tidyOptSetBool(self->_tidyDoc, TidyEscapeCdata, yes) == no || tidyOptSetBool(self->_tidyDoc, TidyQuoteAmpersand, yes) == no || tidyOptSetBool(self->_tidyDoc, TidyMark, no) == no || tidyOptSetBool(self->_tidyDoc, TidyDropPropAttrs, no) == no || tidyOptSetBool(self->_tidyDoc, TidyHideComments, yes) == no || tidyOptSetBool(self->_tidyDoc, TidyIndentAttributes, no) == no || tidyOptSetBool(self->_tidyDoc, TidyXhtmlOut, yes) == no)
    {

      [(IMXMLParser *)self _teardownTidy];
    }
  }
}

- (void)_teardownTidy
{
  tidyDoc = self->_tidyDoc;
  if (tidyDoc)
  {
    MEMORY[0x1AC572100](tidyDoc, a2);
    self->_tidyDoc = 0;
  }
}

- (id)_newDataByTidyingData:(id)a3
{
  [(IMXMLParser *)self _setupTidy];
  memset(&buf, 0, sizeof(buf));
  memset(&errbuf, 0, sizeof(errbuf));
  v5 = [a3 bytes];
  LODWORD(a3) = [a3 length];
  v6 = tidySetCharEncoding(self->_tidyDoc, "utf8");
  tidyBufAttach(&buf, v5, a3);
  if (v6 < 0 || tidySetErrorBuffer(self->_tidyDoc, &errbuf) < 0 || (MEMORY[0x1AC5720F0](self->_tidyDoc, &buf) & 0x80000000) != 0 || tidyCleanAndRepair(self->_tidyDoc) < 0 || tidyRunDiagnostics(self->_tidyDoc) > 1)
  {
    [(IMXMLParser *)self _teardownTidy];
    v8 = 0;
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
    MEMORY[0x1AC572120](self->_tidyDoc, &v10);
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    v8 = [v7 initWithBytesNoCopy:v10.bp length:v10.size freeWhenDone:1];
    tidyBufDetach(&v10);
    tidyBufFree(&v10);
  }

  tidyBufDetach(&buf);
  tidyBufFree(&buf);
  tidyBufFree(&errbuf);
  return v8;
}

- (void)invokedTidyAndSucceeded:(BOOL)a3
{
  if (a3)
  {
    [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    getpid();

    IMLogSimulateCrashForProcessAndPID();
  }
}

- (BOOL)parseContext:(id)a3
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v19 = sub_1A86B7728;
  v20 = &unk_1E78297D0;
  v21 = self;
  v15 = sub_1A86B77B4;
  v16 = &unk_1E7826DA8;
  v17 = self;
  v5 = [a3 inContentAsData];
  self->_context = a3;
  v6 = [a3 name];
  v7 = qword_1EB30B3C0;
  if (!qword_1EB30B3C0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
    v7 = CFMakeCollectable(Mutable);
    qword_1EB30B3C0 = v7;
  }

  Value = CFDictionaryGetValue(v7, v6);
  self->_framespace = Value;
  if (!Value)
  {
    v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
    v11 = CFMakeCollectable(v10);
    self->_framespace = v11;
    CFDictionarySetValue(qword_1EB30B3C0, v6, v11);
  }

  if (v19(v18, v5))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    getpid();
    IMLogSimulateCrashForProcessAndPID();
    v12 = [(IMXMLParser *)self _newDataByTidyingData:v5];
    if (v12)
    {
      v15(&v14);
      v5 = v19(v18, v12);
      [(IMXMLParser *)self invokedTidyAndSucceeded:v5];
    }

    else
    {

      LOBYTE(v5) = 0;
    }
  }

  v15(&v14);
  self->_context = 0;
  return v5;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v11 = objc_autoreleasePoolPush();
  context = self->_context;
  framespace = self->_framespace;
  MutableCopy = CFStringCreateMutableCopy(0, 0, a4);
  CFStringUppercase(MutableCopy, 0);
  Value = CFDictionaryGetValue(framespace, MutableCopy);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_1A86B7C68;
  v22 = &unk_1E78297F8;
  v23 = context;
  if (!Value)
  {
    v16 = sub_1A86B7C68(&v19, MutableCopy);
    if (!v16)
    {
      v16 = v21(&v19, @"Default");
      if (!v16)
      {
        v16 = objc_opt_class();
      }
    }

    Value = v16;
    CFDictionarySetValue(framespace, MutableCopy, v16);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v17 = objc_alloc_init(Value);
  if (self->_topFrame)
  {
    [(NSMutableArray *)self->_otherFrames addObject:?];
  }

  self->_topFrame = v17;
  [(IMXMLParserFrame *)v17 parser:self context:self->_context didStartElement:a4 namespaceURI:a5 qualifiedName:a6 attributes:a7, a7, v19, v20];
  objc_autoreleasePoolPop(v11);
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v10 = objc_autoreleasePoolPush();
  [(IMXMLParserFrame *)self->_topFrame parser:self context:self->_context didEndElement:a4 namespaceURI:a5 qualifiedName:a6];

  v11 = [(NSMutableArray *)self->_otherFrames lastObject];
  self->_topFrame = v11;
  if (v11)
  {
    [(NSMutableArray *)self->_otherFrames removeLastObject];
  }

  objc_autoreleasePoolPop(v10);
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v6 = objc_autoreleasePoolPush();
  [(IMXMLParserFrame *)self->_topFrame parser:self context:self->_context foundCharacters:a4];

  objc_autoreleasePoolPop(v6);
}

- (void)parser:(id)a3 foundIgnorableWhitespace:(id)a4
{
  v6 = objc_autoreleasePoolPush();
  [(IMXMLParserFrame *)self->_topFrame parser:self context:self->_context foundIgnorableWhitespace:a4];

  objc_autoreleasePoolPop(v6);
}

@end