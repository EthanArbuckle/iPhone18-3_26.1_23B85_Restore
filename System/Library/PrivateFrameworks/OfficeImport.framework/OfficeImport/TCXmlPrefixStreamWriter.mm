@interface TCXmlPrefixStreamWriter
- (BOOL)addElement:(id)a3;
- (BOOL)startElement:(id)a3;
- (BOOL)writeAttribute:(id)a3 BOOLContent:(BOOL)a4;
- (BOOL)writeAttribute:(id)a3 content:(id)a4;
- (BOOL)writeAttribute:(id)a3 doubleContent:(double)a4;
- (BOOL)writeAttribute:(id)a3 enumContent:(int)a4 map:(id)a5;
- (BOOL)writeAttribute:(id)a3 intContent:(int64_t)a4;
- (BOOL)writeAttribute:(id)a3 unsignedLongContent:(unint64_t)a4;
- (BOOL)writeIndexAttribute:(id)a3 intContent:(unint64_t)a4;
- (BOOL)writeOAAttribute:(id)a3 BOOLContent:(BOOL)a4;
- (BOOL)writeOAAttribute:(id)a3 doubleContent:(double)a4;
- (BOOL)writeOAAttribute:(id)a3 enumContent:(int)a4 map:(id)a5;
- (BOOL)writeOAAttribute:(id)a3 intContent:(int64_t)a4;
- (BOOL)writeOneAttributeElementWithName:(id)a3 attributeName:(id)a4 BOOLContent:(BOOL)a5;
- (BOOL)writeOneAttributeElementWithName:(id)a3 attributeName:(id)a4 content:(id)a5;
- (BOOL)writeOneAttributeElementWithName:(id)a3 attributeName:(id)a4 doubleContent:(double)a5;
- (BOOL)writeOneAttributeElementWithName:(id)a3 attributeName:(id)a4 enumContent:(int)a5 map:(id)a6;
- (BOOL)writeOneAttributeElementWithName:(id)a3 attributeName:(id)a4 intContent:(int64_t)a5;
- (TCXmlPrefixStreamWriter)initWithTextWriterProvider:(id)a3;
- (id)currentAttributePrefix;
- (id)currentElementPrefix;
- (id)pushState;
- (id)pushStateWithElementPrefix:(id)a3 attributePrefix:(id)a4;
- (id)pushStateWithSharedPrefix:(id)a3;
- (void)dealloc;
- (void)pushElementPrefix:(id)a3 attributePrefix:(id)a4;
- (void)writeTextString:(id)a3 forElement:(id)a4;
@end

@implementation TCXmlPrefixStreamWriter

- (TCXmlPrefixStreamWriter)initWithTextWriterProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TCXmlPrefixStreamWriter;
  v5 = [(TCXmlStreamWriter *)&v10 initWithTextWriterProvider:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    mStateStack = v5->mStateStack;
    v5->mStateStack = v6;

    v8 = [(TCXmlPrefixStreamWriter *)v5 pushStateWithElementPrefix:0 attributePrefix:0];
  }

  return v5;
}

- (void)dealloc
{
  [(TCXmlPrefixStreamWriter *)self popState];
  v3.receiver = self;
  v3.super_class = TCXmlPrefixStreamWriter;
  [(TCXmlStreamWriter *)&v3 dealloc];
}

- (void)pushElementPrefix:(id)a3 attributePrefix:(id)a4
{
  mStateStack = self->mStateStack;
  v5 = [OITSUPair pairWithFirst:a3 second:a4];
  [(NSMutableArray *)mStateStack addObject:?];
}

- (id)pushState
{
  v3 = objc_alloc_init(TCXmlPrefixStreamWriterState);
  [(NSMutableArray *)self->mStateStack addObject:v3];

  return v3;
}

- (id)pushStateWithElementPrefix:(id)a3 attributePrefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TCXmlPrefixStreamWriter *)self pushState];
  [v8 setElementPrefix:v6];
  [v8 setAttributePrefix:v7];

  return v8;
}

- (id)pushStateWithSharedPrefix:(id)a3
{
  v3 = [(TCXmlPrefixStreamWriter *)self pushStateWithElementPrefix:a3 attributePrefix:a3];

  return v3;
}

- (id)currentElementPrefix
{
  v2 = [(TCXmlPrefixStreamWriter *)self currentState];
  v3 = [v2 elementPrefix];

  return v3;
}

- (id)currentAttributePrefix
{
  v2 = [(TCXmlPrefixStreamWriter *)self currentState];
  v3 = [v2 attributePrefix];

  return v3;
}

- (BOOL)startElement:(id)a3
{
  v4 = a3;
  v5 = [(TCXmlPrefixStreamWriter *)self currentElementPrefix];
  LOBYTE(self) = [(TCXmlStreamWriter *)self startElement:v4 prefix:v5 ns:0];

  return self;
}

- (BOOL)addElement:(id)a3
{
  v4 = a3;
  v5 = [(TCXmlPrefixStreamWriter *)self startElement:v4]&& [(TCXmlStreamWriter *)self endElement];

  return v5;
}

- (BOOL)writeAttribute:(id)a3 content:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TCXmlPrefixStreamWriter *)self currentAttributePrefix];
  LOBYTE(self) = [(TCXmlStreamWriter *)self writeAttribute:v6 content:v7 prefix:v8 ns:0];

  return self;
}

- (BOOL)writeAttribute:(id)a3 BOOLContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = TCXmlStringForBool(v4);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeAttribute:v6 content:v7];

  return self;
}

- (BOOL)writeAttribute:(id)a3 intContent:(int64_t)a4
{
  v6 = a3;
  v7 = TCXmlStringForInt(a4);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeAttribute:v6 content:v7];

  return self;
}

- (BOOL)writeAttribute:(id)a3 unsignedLongContent:(unint64_t)a4
{
  v6 = a3;
  v7 = TCXmlStringForUnsignedLong(a4);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeAttribute:v6 content:v7];

  return self;
}

- (BOOL)writeAttribute:(id)a3 enumContent:(int)a4 map:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = TCXmlStringForEnum(v6, a5);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeAttribute:v8 content:v9];

  return self;
}

- (BOOL)writeAttribute:(id)a3 doubleContent:(double)a4
{
  v6 = a3;
  v7 = TCXmlStringForDouble(a4);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeAttribute:v6 content:v7];

  return self;
}

- (BOOL)writeOneAttributeElementWithName:(id)a3 attributeName:(id)a4 content:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(TCXmlPrefixStreamWriter *)self startElement:v8])
  {
    goto LABEL_6;
  }

  if (v10 && ![(TCXmlPrefixStreamWriter *)self writeAttribute:v9 content:v10])
  {
    [(TCXmlStreamWriter *)self endElement];
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = [(TCXmlStreamWriter *)self endElement];
LABEL_7:

  return v11;
}

- (BOOL)writeOneAttributeElementWithName:(id)a3 attributeName:(id)a4 BOOLContent:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = TCXmlStringForBool(v5);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOneAttributeElementWithName:v8 attributeName:v9 content:v10];

  return self;
}

- (BOOL)writeOneAttributeElementWithName:(id)a3 attributeName:(id)a4 intContent:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = TCXmlStringForInt(a5);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOneAttributeElementWithName:v8 attributeName:v9 content:v10];

  return self;
}

- (BOOL)writeOneAttributeElementWithName:(id)a3 attributeName:(id)a4 enumContent:(int)a5 map:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = TCXmlStringForEnum(v7, a6);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOneAttributeElementWithName:v10 attributeName:v11 content:v12];

  return self;
}

- (BOOL)writeOneAttributeElementWithName:(id)a3 attributeName:(id)a4 doubleContent:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = TCXmlStringForDouble(a5);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOneAttributeElementWithName:v8 attributeName:v9 content:v10];

  return self;
}

- (BOOL)writeOAAttribute:(id)a3 BOOLContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = TCXmlStringForBool(v4);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOAAttribute:v6 content:v7];

  return self;
}

- (BOOL)writeOAAttribute:(id)a3 intContent:(int64_t)a4
{
  v6 = a3;
  v7 = TCXmlStringForInt(a4);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOAAttribute:v6 content:v7];

  return self;
}

- (BOOL)writeOAAttribute:(id)a3 enumContent:(int)a4 map:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = TCXmlStringForEnum(v6, a5);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOAAttribute:v8 content:v9];

  return self;
}

- (BOOL)writeOAAttribute:(id)a3 doubleContent:(double)a4
{
  v6 = a3;
  v7 = TCXmlStringForDouble(a4);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOAAttribute:v6 content:v7];

  return self;
}

- (BOOL)writeIndexAttribute:(id)a3 intContent:(unint64_t)a4
{
  v6 = a3;
  v7 = a4 != 0xFFFFFFFF && [(TCXmlPrefixStreamWriter *)self writeAttribute:v6 intContent:a4];

  return v7;
}

- (void)writeTextString:(id)a3 forElement:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(TCXmlPrefixStreamWriter *)self startElement:v6];
  if (([v7 hasPrefix:@" "] & 1) != 0 || (objc_msgSend(v7, "hasSuffix:", @" ") & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"\n") & 1) != 0 || (objc_msgSend(v7, "hasSuffix:", @"\n") & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"\t") & 1) != 0 || objc_msgSend(v7, "hasSuffix:", @"\t"))
  {
    [(TCXmlStreamWriter *)self writeAttribute:@"space" content:@"preserve" prefix:@"xml" ns:0];
  }

  [(TCXmlStreamWriter *)self writeString:v7];
  [(TCXmlStreamWriter *)self endElement];
}

@end