@interface MBDXMLParser
+ (id)sharedInstance;
- (BOOL)parseContext:(id)context;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parser:(id)parser foundIgnorableWhitespace:(id)whitespace;
@end

@implementation MBDXMLParser

+ (id)sharedInstance
{
  if (qword_100043428 != -1)
  {
    sub_10002DDA0();
  }

  v3 = qword_100043420;

  return v3;
}

- (BOOL)parseContext:(id)context
{
  contextCopy = context;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000AE88;
  v18[3] = &unk_10003D648;
  v18[4] = self;
  v6 = objc_retainBlock(v18);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000AF44;
  v17[3] = &unk_10003D670;
  v17[4] = self;
  v7 = objc_retainBlock(v17);
  inContentAsData = [contextCopy inContentAsData];
  objc_storeStrong(&self->_context, context);
  name = [contextCopy name];
  Mutable = qword_100043430;
  if (!qword_100043430)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    qword_100043430 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, name);
  self->_framespace = Value;
  if (!Value)
  {
    v12 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    self->_framespace = v12;
    CFDictionarySetValue(qword_100043430, name, v12);
  }

  v13 = (v6[2])(v6, inContentAsData);
  if ((v13 & 1) == 0)
  {
    v14 = os_log_create("com.apple.Messages.blastdoor", "IMXMLParser");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10002DDB4(v14);
    }
  }

  (v7[2])(v7);
  context = self->_context;
  self->_context = 0;

  return v13;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  parserCopy = parser;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  attributesCopy = attributes;
  context = objc_autoreleasePoolPush();
  framespace = self->_framespace;
  v17 = self->_context;
  MutableCopy = CFStringCreateMutableCopy(0, 0, elementCopy);
  CFStringUppercase(MutableCopy, 0);
  Value = CFDictionaryGetValue(framespace, MutableCopy);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000B59C;
  v30[3] = &unk_10003D698;
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

  [(MBDXMLParserFrame *)v27 parser:self context:self->_context didStartElement:elementCopy namespaceURI:iCopy qualifiedName:nameCopy attributes:attributesCopy];
  objc_autoreleasePoolPop(context);
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  parserCopy = parser;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  v13 = objc_autoreleasePoolPush();
  [(MBDXMLParserFrame *)self->_topFrame parser:self context:self->_context didEndElement:elementCopy namespaceURI:iCopy qualifiedName:nameCopy];
  lastObject = [(NSMutableArray *)self->_otherFrames lastObject];
  topFrame = self->_topFrame;
  self->_topFrame = lastObject;

  if (self->_topFrame)
  {
    [(NSMutableArray *)self->_otherFrames removeLastObject];
  }

  objc_autoreleasePoolPop(v13);
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  parserCopy = parser;
  charactersCopy = characters;
  v7 = objc_autoreleasePoolPush();
  [(MBDXMLParserFrame *)self->_topFrame parser:self context:self->_context foundCharacters:charactersCopy];
  objc_autoreleasePoolPop(v7);
}

- (void)parser:(id)parser foundIgnorableWhitespace:(id)whitespace
{
  parserCopy = parser;
  whitespaceCopy = whitespace;
  v7 = objc_autoreleasePoolPush();
  [(MBDXMLParserFrame *)self->_topFrame parser:self context:self->_context foundIgnorableWhitespace:whitespaceCopy];
  objc_autoreleasePoolPop(v7);
}

@end