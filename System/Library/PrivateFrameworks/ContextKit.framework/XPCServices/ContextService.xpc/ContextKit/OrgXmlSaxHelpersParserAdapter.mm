@interface OrgXmlSaxHelpersParserAdapter
- (BOOL)getFeatureWithNSString:(id)string;
- (id)getPropertyWithNSString:(id)string;
- (id)setupParser;
- (void)dealloc;
- (void)endDocument;
- (void)endElementWithNSString:(id)string;
- (void)parseWithNSString:(id)string;
- (void)parseWithOrgXmlSaxInputSource:(id)source;
- (void)processingInstructionWithNSString:(id)string withNSString:(id)sString;
- (void)reportErrorWithNSString:(id)string;
- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id)locator;
- (void)setFeatureWithNSString:(id)string withBoolean:(BOOL)boolean;
- (void)setPropertyWithNSString:(id)string withId:(id)id;
- (void)startDocument;
- (void)startElementWithNSString:(id)string withOrgXmlSaxAttributeList:(id)list;
@end

@implementation OrgXmlSaxHelpersParserAdapter

- (void)setFeatureWithNSString:(id)string withBoolean:(BOOL)boolean
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  if ([string isEqual:off_1005501D8])
  {
    sub_1001A17BC(self, @"feature", string, v7, v8, v9, v10, v11);
    self->namespaces_ = boolean;
    if (!boolean && !self->prefixes_)
    {
      self->prefixes_ = 1;
    }
  }

  else if ([string isEqual:off_1005501E0])
  {
    sub_1001A17BC(self, @"feature", string, v12, v13, v14, v15, v16);
    self->prefixes_ = boolean;
    if (!boolean && !self->namespaces_)
    {
      self->namespaces_ = 1;
    }
  }

  else
  {
    if (![string isEqual:off_1005501E8])
    {
      v24 = JreStrcat("$$", v17, v18, v19, v20, v21, v22, v23, @"Feature: ");
      v25 = new_OrgXmlSaxSAXNotRecognizedException_initWithNSString_(v24);
      objc_exception_throw(v25);
    }

    sub_1001A17BC(self, @"feature", string, v19, v20, v21, v22, v23);
    self->uris_ = boolean;
  }
}

- (BOOL)getFeatureWithNSString:(id)string
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  if ([string isEqual:off_1005501D8])
  {
    v5 = 96;
  }

  else if ([string isEqual:off_1005501E0])
  {
    v5 = 97;
  }

  else
  {
    if (([string isEqual:off_1005501E8] & 1) == 0)
    {
      v14 = JreStrcat("$$", v6, v7, v8, v9, v10, v11, v12, @"Feature: ");
      v15 = new_OrgXmlSaxSAXNotRecognizedException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    v5 = 98;
  }

  return *(&self->super.isa + v5);
}

- (void)setPropertyWithNSString:(id)string withId:(id)id
{
  v8 = JreStrcat("$$", a2, string, id, v4, v5, v6, v7, @"Property: ");
  v9 = new_OrgXmlSaxSAXNotRecognizedException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

- (id)getPropertyWithNSString:(id)string
{
  v8 = JreStrcat("$$", a2, string, v3, v4, v5, v6, v7, @"Property: ");
  v9 = new_OrgXmlSaxSAXNotRecognizedException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

- (void)parseWithNSString:(id)string
{
  v4 = new_OrgXmlSaxInputSource_initWithNSString_(string);

  [(OrgXmlSaxHelpersParserAdapter *)self parseWithOrgXmlSaxInputSource:v4];
}

- (void)parseWithOrgXmlSaxInputSource:(id)source
{
  if (self->parsing_)
  {
    v6 = new_OrgXmlSaxSAXException_initWithNSString_(@"Parser is already in use");
    objc_exception_throw(v6);
  }

  [OrgXmlSaxHelpersParserAdapter setupParser]_0(self);
  self->parsing_ = 1;
  parser = self->parser_;
  if (!parser)
  {
    JreThrowNullPointerException();
  }

  [(OrgXmlSaxParser *)parser parseWithOrgXmlSaxInputSource:source];
  self->parsing_ = 0;
}

- (id)setupParser
{
  if ((*(self + 97) & 1) == 0 && (*(self + 96) & 1) == 0)
  {
    v8 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v8);
  }

  v2 = *(self + 48);
  if (!v2)
  {
    goto LABEL_19;
  }

  [v2 reset];
  if (*(self + 98) == 1)
  {
    [*(self + 48) setNamespaceDeclUrisWithBoolean:1];
  }

  if (*(self + 16))
  {
    v3 = *(self + 80);
    if (!v3)
    {
      goto LABEL_19;
    }

    [v3 setEntityResolverWithOrgXmlSaxEntityResolver:?];
  }

  if (*(self + 24))
  {
    v4 = *(self + 80);
    if (!v4)
    {
      goto LABEL_19;
    }

    [v4 setDTDHandlerWithOrgXmlSaxDTDHandler:?];
  }

  if (*(self + 40))
  {
    v5 = *(self + 80);
    if (!v5)
    {
      goto LABEL_19;
    }

    [v5 setErrorHandlerWithOrgXmlSaxErrorHandler:?];
  }

  v6 = *(self + 80);
  if (!v6)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  [v6 setDocumentHandlerWithOrgXmlSaxDocumentHandler:self];

  return JreStrongAssign((self + 8), 0);
}

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id)locator
{
  JreStrongAssign(&self->locator_, locator);
  contentHandler = self->contentHandler_;
  if (contentHandler)
  {

    [(OrgXmlSaxContentHandler *)contentHandler setDocumentLocatorWithOrgXmlSaxLocator:locator];
  }
}

- (void)startDocument
{
  contentHandler = self->contentHandler_;
  if (contentHandler)
  {
    [(OrgXmlSaxContentHandler *)contentHandler startDocument];
  }
}

- (void)endDocument
{
  contentHandler = self->contentHandler_;
  if (contentHandler)
  {
    [(OrgXmlSaxContentHandler *)contentHandler endDocument];
  }
}

- (void)startElementWithNSString:(id)string withOrgXmlSaxAttributeList:(id)list
{
  if (!self->namespaces_)
  {
    if (!self->contentHandler_)
    {
      return;
    }

    attAdapter = self->attAdapter_;
    if (attAdapter)
    {
      [(OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *)attAdapter setAttributeListWithOrgXmlSaxAttributeList:list];
      if (string)
      {
        contentHandler = self->contentHandler_;
        intern = [string intern];
        v43 = self->attAdapter_;

        [(OrgXmlSaxContentHandler *)contentHandler startElementWithNSString:&stru_100484358 withNSString:&stru_100484358 withNSString:intern withOrgXmlSaxAttributes:v43];
        return;
      }
    }

LABEL_57:
    JreThrowNullPointerException();
  }

  nsSupport = self->nsSupport_;
  if (!nsSupport)
  {
    goto LABEL_57;
  }

  [(OrgXmlSaxHelpersNamespaceSupport *)nsSupport pushContext];
  if (!list)
  {
    goto LABEL_57;
  }

  getLength = [list getLength];
  if (getLength < 1)
  {
    atts = self->atts_;
    p_atts = &self->atts_;
    if (atts)
    {
      [(OrgXmlSaxHelpersAttributesImpl *)atts clear];
      goto LABEL_50;
    }

    goto LABEL_57;
  }

  listCopy = list;
  v8 = 0;
  do
  {
    v9 = [listCopy getNameWithInt:v8];
    if (!v9)
    {
      goto LABEL_57;
    }

    v10 = v9;
    if ([v9 hasPrefix:@"xmlns"])
    {
      v11 = [v10 indexOf:58];
      if (v11 == 5)
      {
        v13 = [v10 substring:6];
      }

      else
      {
        if (v11 != -1)
        {
          goto LABEL_17;
        }

        v12 = [v10 length];
        v13 = &stru_100484358;
        if (v12 != 5)
        {
          goto LABEL_17;
        }
      }

      v14 = [listCopy getValueWithInt:v8];
      if ([(OrgXmlSaxHelpersNamespaceSupport *)self->nsSupport_ declarePrefixWithNSString:v13 withNSString:v14])
      {
        v22 = self->contentHandler_;
        if (v22)
        {
          [(OrgXmlSaxContentHandler *)v22 startPrefixMappingWithNSString:v13 withNSString:v14];
        }
      }

      else
      {
        [(OrgXmlSaxHelpersParserAdapter *)self reportErrorWithNSString:JreStrcat("$$", v15, v16, v17, v18, v19, v20, v21, @"Illegal Namespace prefix: ")];
      }
    }

LABEL_17:
    v8 = (v8 + 1);
  }

  while (getLength != v8);
  v23 = self->atts_;
  p_atts = &self->atts_;
  if (!v23)
  {
    goto LABEL_57;
  }

  stringCopy = string;
  [(OrgXmlSaxHelpersAttributesImpl *)v23 clear];
  v24 = 0;
  do
  {
    v25 = [listCopy getNameWithInt:v24];
    v26 = [listCopy getTypeWithInt:v24];
    v27 = [listCopy getValueWithInt:v24];
    if (!v25)
    {
      goto LABEL_57;
    }

    v28 = v27;
    if (![v25 hasPrefix:@"xmlns"])
    {
LABEL_25:
      v31 = sub_1001A2220(self, v25, 1, 1);
      v32 = v31;
      if (!v31)
      {
        JreThrowNullPointerException();
      }

      size = v31->super.size_;
      if (size < 1)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 0);
      }

      if (size < 2)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 1);
      }

      if (size <= 2)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 2);
      }

      [(OrgXmlSaxHelpersAttributesImpl *)*p_atts addAttributeWithNSString:v32->elementType_ withNSString:v32->buffer_[0] withNSString:v32->buffer_[1] withNSString:v26 withNSString:v28];
      goto LABEL_30;
    }

    v29 = [v25 indexOf:58];
    if (v29 == 5)
    {
      v30 = [v25 substring:6];
      if (!v30)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v29 != -1)
      {
        goto LABEL_25;
      }

      v30 = &stru_100484358;
      if ([v25 length] != 5)
      {
        goto LABEL_25;
      }
    }

    if (self->prefixes_)
    {
      v34 = self->atts_;
      if (self->uris_)
      {
        v35 = OrgXmlSaxHelpersNamespaceSupport_XMLNS_;
        intern2 = [v25 intern];
        v37 = v34;
        v38 = v35;
        v39 = v30;
      }

      else
      {
        intern2 = [v25 intern];
        v37 = v34;
        v38 = &stru_100484358;
        v39 = &stru_100484358;
      }

      [(OrgXmlSaxHelpersAttributesImpl *)v37 addAttributeWithNSString:v38 withNSString:v39 withNSString:intern2 withNSString:v26 withNSString:v28];
    }

LABEL_30:
    v24 = (v24 + 1);
  }

  while (getLength != v24);
  string = stringCopy;
LABEL_50:
  if (self->contentHandler_)
  {
    v45 = sub_1001A2220(self, string, 0, 0);
    v46 = v45;
    if (!v45)
    {
      JreThrowNullPointerException();
    }

    v47 = self->contentHandler_;
    v48 = v45->super.size_;
    if (v48 < 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v48, 0);
    }

    if (v48 < 2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v48, 1);
    }

    if (v48 <= 2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v48, 2);
    }

    [(OrgXmlSaxContentHandler *)v47 startElementWithNSString:v46->elementType_ withNSString:v46->buffer_[0] withNSString:v46->buffer_[1] withOrgXmlSaxAttributes:*p_atts];
  }
}

- (void)endElementWithNSString:(id)string
{
  if (self->namespaces_)
  {
    v4 = sub_1001A2220(self, string, 0, 0);
    if (self->contentHandler_)
    {
      v5 = v4;
      if (!v4)
      {
        goto LABEL_23;
      }

      size = v4->super.size_;
      if (size < 1)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 0);
      }

      if (size < 2)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 1);
      }

      if (size <= 2)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 2);
      }

      [(OrgXmlSaxContentHandler *)self->contentHandler_ endElementWithNSString:v5->elementType_ withNSString:v5->buffer_[0] withNSString:v5->buffer_[1]];
      nsSupport = self->nsSupport_;
      if (!nsSupport)
      {
        goto LABEL_23;
      }

      getDeclaredPrefixes = [(OrgXmlSaxHelpersNamespaceSupport *)nsSupport getDeclaredPrefixes];
      if (!getDeclaredPrefixes)
      {
        goto LABEL_23;
      }

      v9 = getDeclaredPrefixes;
      if ([getDeclaredPrefixes hasMoreElements])
      {
        do
        {
          nextElement = [v9 nextElement];
          objc_opt_class();
          if (nextElement && (objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          [(OrgXmlSaxContentHandler *)self->contentHandler_ endPrefixMappingWithNSString:nextElement];
        }

        while (([v9 hasMoreElements] & 1) != 0);
      }
    }

    v11 = self->nsSupport_;
    if (v11)
    {

      [(OrgXmlSaxHelpersNamespaceSupport *)v11 popContext];
      return;
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  contentHandler = self->contentHandler_;
  if (!contentHandler)
  {
    return;
  }

  if (!string)
  {
    goto LABEL_23;
  }

  intern = [string intern];

  [(OrgXmlSaxContentHandler *)contentHandler endElementWithNSString:&stru_100484358 withNSString:&stru_100484358 withNSString:intern];
}

- (void)processingInstructionWithNSString:(id)string withNSString:(id)sString
{
  contentHandler = self->contentHandler_;
  if (contentHandler)
  {
    [(OrgXmlSaxContentHandler *)contentHandler processingInstructionWithNSString:string withNSString:sString];
  }
}

- (void)reportErrorWithNSString:(id)string
{
  errorHandler = self->errorHandler_;
  if (errorHandler)
  {
    v4 = sub_1001A2574(self, string);

    [(OrgXmlSaxErrorHandler *)errorHandler errorWithOrgXmlSaxSAXParseException:v4];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgXmlSaxHelpersParserAdapter;
  [(OrgXmlSaxHelpersParserAdapter *)&v3 dealloc];
}

@end