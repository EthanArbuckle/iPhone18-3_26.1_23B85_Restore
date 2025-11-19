@interface MBDXMLParser
+ (id)sharedInstance;
- (BOOL)parseContext:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parser:(id)a3 foundIgnorableWhitespace:(id)a4;
@end

@implementation MBDXMLParser

+ (id)sharedInstance
{
  if (qword_1000FE138 != -1)
  {
    sub_1000C1138();
  }

  v3 = qword_1000FE130;

  return v3;
}

- (BOOL)parseContext:(id)a3
{
  v5 = a3;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D8F0;
  v18[3] = &unk_1000F0D00;
  v18[4] = self;
  v6 = objc_retainBlock(v18);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000D9AC;
  v17[3] = &unk_1000F0D28;
  v17[4] = self;
  v7 = objc_retainBlock(v17);
  v8 = [v5 inContentAsData];
  objc_storeStrong(&self->_context, a3);
  v9 = [v5 name];
  Mutable = qword_1000FE140;
  if (!qword_1000FE140)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    qword_1000FE140 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v9);
  self->_framespace = Value;
  if (!Value)
  {
    v12 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    self->_framespace = v12;
    CFDictionarySetValue(qword_1000FE140, v9, v12);
  }

  v13 = (v6[2])(v6, v8);
  if ((v13 & 1) == 0)
  {
    v14 = os_log_create("com.apple.Messages.blastdoor", "IMXMLParser");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000C114C(v14);
    }
  }

  (v7[2])(v7);
  context = self->_context;
  self->_context = 0;

  return v13;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v12 = a3;
  v13 = a4;
  v29 = a5;
  v14 = a6;
  v15 = a7;
  context = objc_autoreleasePoolPush();
  framespace = self->_framespace;
  v17 = self->_context;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v13);
  CFStringUppercase(MutableCopy, 0);
  Value = CFDictionaryGetValue(framespace, MutableCopy);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000E004;
  v30[3] = &unk_1000F0D50;
  v20 = v17;
  v31 = v20;
  v21 = objc_retainBlock(v30);
  v22 = v21;
  if (!Value)
  {
    v23 = (v21[2])(v21, MutableCopy);
    if (!v23)
    {
      v23 = (v22)[2](v22, @"Default");
      if (!v23)
      {
        v23 = objc_opt_class();
      }
    }

    Value = v23;
    CFDictionarySetValue(framespace, MutableCopy, v23);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v24 = Value;

  v25 = objc_alloc_init(Value);
  if (self->_topFrame)
  {
    [(NSMutableArray *)self->_otherFrames addObject:?];
  }

  topFrame = self->_topFrame;
  self->_topFrame = v25;
  v27 = v25;

  [(MBDXMLParserFrame *)v27 parser:self context:self->_context didStartElement:v13 namespaceURI:v29 qualifiedName:v14 attributes:v15];
  objc_autoreleasePoolPop(context);
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  [(MBDXMLParserFrame *)self->_topFrame parser:self context:self->_context didEndElement:v10 namespaceURI:v11 qualifiedName:v12];
  v14 = [(NSMutableArray *)self->_otherFrames lastObject];
  topFrame = self->_topFrame;
  self->_topFrame = v14;

  if (self->_topFrame)
  {
    [(NSMutableArray *)self->_otherFrames removeLastObject];
  }

  objc_autoreleasePoolPop(v13);
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  [(MBDXMLParserFrame *)self->_topFrame parser:self context:self->_context foundCharacters:v6];
  objc_autoreleasePoolPop(v7);
}

- (void)parser:(id)a3 foundIgnorableWhitespace:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  [(MBDXMLParserFrame *)self->_topFrame parser:self context:self->_context foundIgnorableWhitespace:v6];
  objc_autoreleasePoolPop(v7);
}

@end