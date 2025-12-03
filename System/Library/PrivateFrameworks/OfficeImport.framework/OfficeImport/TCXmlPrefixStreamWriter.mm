@interface TCXmlPrefixStreamWriter
- (BOOL)addElement:(id)element;
- (BOOL)startElement:(id)element;
- (BOOL)writeAttribute:(id)attribute BOOLContent:(BOOL)content;
- (BOOL)writeAttribute:(id)attribute content:(id)content;
- (BOOL)writeAttribute:(id)attribute doubleContent:(double)content;
- (BOOL)writeAttribute:(id)attribute enumContent:(int)content map:(id)map;
- (BOOL)writeAttribute:(id)attribute intContent:(int64_t)content;
- (BOOL)writeAttribute:(id)attribute unsignedLongContent:(unint64_t)content;
- (BOOL)writeIndexAttribute:(id)attribute intContent:(unint64_t)content;
- (BOOL)writeOAAttribute:(id)attribute BOOLContent:(BOOL)content;
- (BOOL)writeOAAttribute:(id)attribute doubleContent:(double)content;
- (BOOL)writeOAAttribute:(id)attribute enumContent:(int)content map:(id)map;
- (BOOL)writeOAAttribute:(id)attribute intContent:(int64_t)content;
- (BOOL)writeOneAttributeElementWithName:(id)name attributeName:(id)attributeName BOOLContent:(BOOL)content;
- (BOOL)writeOneAttributeElementWithName:(id)name attributeName:(id)attributeName content:(id)content;
- (BOOL)writeOneAttributeElementWithName:(id)name attributeName:(id)attributeName doubleContent:(double)content;
- (BOOL)writeOneAttributeElementWithName:(id)name attributeName:(id)attributeName enumContent:(int)content map:(id)map;
- (BOOL)writeOneAttributeElementWithName:(id)name attributeName:(id)attributeName intContent:(int64_t)content;
- (TCXmlPrefixStreamWriter)initWithTextWriterProvider:(id)provider;
- (id)currentAttributePrefix;
- (id)currentElementPrefix;
- (id)pushState;
- (id)pushStateWithElementPrefix:(id)prefix attributePrefix:(id)attributePrefix;
- (id)pushStateWithSharedPrefix:(id)prefix;
- (void)dealloc;
- (void)pushElementPrefix:(id)prefix attributePrefix:(id)attributePrefix;
- (void)writeTextString:(id)string forElement:(id)element;
@end

@implementation TCXmlPrefixStreamWriter

- (TCXmlPrefixStreamWriter)initWithTextWriterProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = TCXmlPrefixStreamWriter;
  v5 = [(TCXmlStreamWriter *)&v10 initWithTextWriterProvider:providerCopy];
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

- (void)pushElementPrefix:(id)prefix attributePrefix:(id)attributePrefix
{
  mStateStack = self->mStateStack;
  v5 = [OITSUPair pairWithFirst:prefix second:attributePrefix];
  [(NSMutableArray *)mStateStack addObject:?];
}

- (id)pushState
{
  v3 = objc_alloc_init(TCXmlPrefixStreamWriterState);
  [(NSMutableArray *)self->mStateStack addObject:v3];

  return v3;
}

- (id)pushStateWithElementPrefix:(id)prefix attributePrefix:(id)attributePrefix
{
  prefixCopy = prefix;
  attributePrefixCopy = attributePrefix;
  pushState = [(TCXmlPrefixStreamWriter *)self pushState];
  [pushState setElementPrefix:prefixCopy];
  [pushState setAttributePrefix:attributePrefixCopy];

  return pushState;
}

- (id)pushStateWithSharedPrefix:(id)prefix
{
  v3 = [(TCXmlPrefixStreamWriter *)self pushStateWithElementPrefix:prefix attributePrefix:prefix];

  return v3;
}

- (id)currentElementPrefix
{
  currentState = [(TCXmlPrefixStreamWriter *)self currentState];
  elementPrefix = [currentState elementPrefix];

  return elementPrefix;
}

- (id)currentAttributePrefix
{
  currentState = [(TCXmlPrefixStreamWriter *)self currentState];
  attributePrefix = [currentState attributePrefix];

  return attributePrefix;
}

- (BOOL)startElement:(id)element
{
  elementCopy = element;
  currentElementPrefix = [(TCXmlPrefixStreamWriter *)self currentElementPrefix];
  LOBYTE(self) = [(TCXmlStreamWriter *)self startElement:elementCopy prefix:currentElementPrefix ns:0];

  return self;
}

- (BOOL)addElement:(id)element
{
  elementCopy = element;
  endElement = [(TCXmlPrefixStreamWriter *)self startElement:elementCopy]&& [(TCXmlStreamWriter *)self endElement];

  return endElement;
}

- (BOOL)writeAttribute:(id)attribute content:(id)content
{
  attributeCopy = attribute;
  contentCopy = content;
  currentAttributePrefix = [(TCXmlPrefixStreamWriter *)self currentAttributePrefix];
  LOBYTE(self) = [(TCXmlStreamWriter *)self writeAttribute:attributeCopy content:contentCopy prefix:currentAttributePrefix ns:0];

  return self;
}

- (BOOL)writeAttribute:(id)attribute BOOLContent:(BOOL)content
{
  contentCopy = content;
  attributeCopy = attribute;
  v7 = TCXmlStringForBool(contentCopy);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeAttribute:attributeCopy content:v7];

  return self;
}

- (BOOL)writeAttribute:(id)attribute intContent:(int64_t)content
{
  attributeCopy = attribute;
  v7 = TCXmlStringForInt(content);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeAttribute:attributeCopy content:v7];

  return self;
}

- (BOOL)writeAttribute:(id)attribute unsignedLongContent:(unint64_t)content
{
  attributeCopy = attribute;
  v7 = TCXmlStringForUnsignedLong(content);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeAttribute:attributeCopy content:v7];

  return self;
}

- (BOOL)writeAttribute:(id)attribute enumContent:(int)content map:(id)map
{
  v6 = *&content;
  attributeCopy = attribute;
  v9 = TCXmlStringForEnum(v6, map);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeAttribute:attributeCopy content:v9];

  return self;
}

- (BOOL)writeAttribute:(id)attribute doubleContent:(double)content
{
  attributeCopy = attribute;
  v7 = TCXmlStringForDouble(content);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeAttribute:attributeCopy content:v7];

  return self;
}

- (BOOL)writeOneAttributeElementWithName:(id)name attributeName:(id)attributeName content:(id)content
{
  nameCopy = name;
  attributeNameCopy = attributeName;
  contentCopy = content;
  if (![(TCXmlPrefixStreamWriter *)self startElement:nameCopy])
  {
    goto LABEL_6;
  }

  if (contentCopy && ![(TCXmlPrefixStreamWriter *)self writeAttribute:attributeNameCopy content:contentCopy])
  {
    [(TCXmlStreamWriter *)self endElement];
LABEL_6:
    endElement = 0;
    goto LABEL_7;
  }

  endElement = [(TCXmlStreamWriter *)self endElement];
LABEL_7:

  return endElement;
}

- (BOOL)writeOneAttributeElementWithName:(id)name attributeName:(id)attributeName BOOLContent:(BOOL)content
{
  contentCopy = content;
  nameCopy = name;
  attributeNameCopy = attributeName;
  v10 = TCXmlStringForBool(contentCopy);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOneAttributeElementWithName:nameCopy attributeName:attributeNameCopy content:v10];

  return self;
}

- (BOOL)writeOneAttributeElementWithName:(id)name attributeName:(id)attributeName intContent:(int64_t)content
{
  nameCopy = name;
  attributeNameCopy = attributeName;
  v10 = TCXmlStringForInt(content);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOneAttributeElementWithName:nameCopy attributeName:attributeNameCopy content:v10];

  return self;
}

- (BOOL)writeOneAttributeElementWithName:(id)name attributeName:(id)attributeName enumContent:(int)content map:(id)map
{
  v7 = *&content;
  nameCopy = name;
  attributeNameCopy = attributeName;
  v12 = TCXmlStringForEnum(v7, map);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOneAttributeElementWithName:nameCopy attributeName:attributeNameCopy content:v12];

  return self;
}

- (BOOL)writeOneAttributeElementWithName:(id)name attributeName:(id)attributeName doubleContent:(double)content
{
  nameCopy = name;
  attributeNameCopy = attributeName;
  v10 = TCXmlStringForDouble(content);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOneAttributeElementWithName:nameCopy attributeName:attributeNameCopy content:v10];

  return self;
}

- (BOOL)writeOAAttribute:(id)attribute BOOLContent:(BOOL)content
{
  contentCopy = content;
  attributeCopy = attribute;
  v7 = TCXmlStringForBool(contentCopy);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOAAttribute:attributeCopy content:v7];

  return self;
}

- (BOOL)writeOAAttribute:(id)attribute intContent:(int64_t)content
{
  attributeCopy = attribute;
  v7 = TCXmlStringForInt(content);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOAAttribute:attributeCopy content:v7];

  return self;
}

- (BOOL)writeOAAttribute:(id)attribute enumContent:(int)content map:(id)map
{
  v6 = *&content;
  attributeCopy = attribute;
  v9 = TCXmlStringForEnum(v6, map);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOAAttribute:attributeCopy content:v9];

  return self;
}

- (BOOL)writeOAAttribute:(id)attribute doubleContent:(double)content
{
  attributeCopy = attribute;
  v7 = TCXmlStringForDouble(content);
  LOBYTE(self) = [(TCXmlPrefixStreamWriter *)self writeOAAttribute:attributeCopy content:v7];

  return self;
}

- (BOOL)writeIndexAttribute:(id)attribute intContent:(unint64_t)content
{
  attributeCopy = attribute;
  v7 = content != 0xFFFFFFFF && [(TCXmlPrefixStreamWriter *)self writeAttribute:attributeCopy intContent:content];

  return v7;
}

- (void)writeTextString:(id)string forElement:(id)element
{
  stringCopy = string;
  elementCopy = element;
  [(TCXmlPrefixStreamWriter *)self startElement:elementCopy];
  if (([stringCopy hasPrefix:@" "] & 1) != 0 || (objc_msgSend(stringCopy, "hasSuffix:", @" ") & 1) != 0 || (objc_msgSend(stringCopy, "hasPrefix:", @"\n") & 1) != 0 || (objc_msgSend(stringCopy, "hasSuffix:", @"\n") & 1) != 0 || (objc_msgSend(stringCopy, "hasPrefix:", @"\t") & 1) != 0 || objc_msgSend(stringCopy, "hasSuffix:", @"\t"))
  {
    [(TCXmlStreamWriter *)self writeAttribute:@"space" content:@"preserve" prefix:@"xml" ns:0];
  }

  [(TCXmlStreamWriter *)self writeString:stringCopy];
  [(TCXmlStreamWriter *)self endElement];
}

@end