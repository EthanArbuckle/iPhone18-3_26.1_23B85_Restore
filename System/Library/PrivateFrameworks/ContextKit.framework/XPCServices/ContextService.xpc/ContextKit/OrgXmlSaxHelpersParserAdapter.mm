@interface OrgXmlSaxHelpersParserAdapter
- (BOOL)getFeatureWithNSString:(id)a3;
- (id)getPropertyWithNSString:(id)a3;
- (id)setupParser;
- (void)dealloc;
- (void)endDocument;
- (void)endElementWithNSString:(id)a3;
- (void)parseWithNSString:(id)a3;
- (void)parseWithOrgXmlSaxInputSource:(id)a3;
- (void)processingInstructionWithNSString:(id)a3 withNSString:(id)a4;
- (void)reportErrorWithNSString:(id)a3;
- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id)a3;
- (void)setFeatureWithNSString:(id)a3 withBoolean:(BOOL)a4;
- (void)setPropertyWithNSString:(id)a3 withId:(id)a4;
- (void)startDocument;
- (void)startElementWithNSString:(id)a3 withOrgXmlSaxAttributeList:(id)a4;
@end

@implementation OrgXmlSaxHelpersParserAdapter

- (void)setFeatureWithNSString:(id)a3 withBoolean:(BOOL)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ([a3 isEqual:off_1005501D8])
  {
    sub_1001A17BC(self, @"feature", a3, v7, v8, v9, v10, v11);
    self->namespaces_ = a4;
    if (!a4 && !self->prefixes_)
    {
      self->prefixes_ = 1;
    }
  }

  else if ([a3 isEqual:off_1005501E0])
  {
    sub_1001A17BC(self, @"feature", a3, v12, v13, v14, v15, v16);
    self->prefixes_ = a4;
    if (!a4 && !self->namespaces_)
    {
      self->namespaces_ = 1;
    }
  }

  else
  {
    if (![a3 isEqual:off_1005501E8])
    {
      v24 = JreStrcat("$$", v17, v18, v19, v20, v21, v22, v23, @"Feature: ");
      v25 = new_OrgXmlSaxSAXNotRecognizedException_initWithNSString_(v24);
      objc_exception_throw(v25);
    }

    sub_1001A17BC(self, @"feature", a3, v19, v20, v21, v22, v23);
    self->uris_ = a4;
  }
}

- (BOOL)getFeatureWithNSString:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ([a3 isEqual:off_1005501D8])
  {
    v5 = 96;
  }

  else if ([a3 isEqual:off_1005501E0])
  {
    v5 = 97;
  }

  else
  {
    if (([a3 isEqual:off_1005501E8] & 1) == 0)
    {
      v14 = JreStrcat("$$", v6, v7, v8, v9, v10, v11, v12, @"Feature: ");
      v15 = new_OrgXmlSaxSAXNotRecognizedException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    v5 = 98;
  }

  return *(&self->super.isa + v5);
}

- (void)setPropertyWithNSString:(id)a3 withId:(id)a4
{
  v8 = JreStrcat("$$", a2, a3, a4, v4, v5, v6, v7, @"Property: ");
  v9 = new_OrgXmlSaxSAXNotRecognizedException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

- (id)getPropertyWithNSString:(id)a3
{
  v8 = JreStrcat("$$", a2, a3, v3, v4, v5, v6, v7, @"Property: ");
  v9 = new_OrgXmlSaxSAXNotRecognizedException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

- (void)parseWithNSString:(id)a3
{
  v4 = new_OrgXmlSaxInputSource_initWithNSString_(a3);

  [(OrgXmlSaxHelpersParserAdapter *)self parseWithOrgXmlSaxInputSource:v4];
}

- (void)parseWithOrgXmlSaxInputSource:(id)a3
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

  [(OrgXmlSaxParser *)parser parseWithOrgXmlSaxInputSource:a3];
  self->parsing_ = 0;
}

- (id)setupParser
{
  if ((*(a1 + 97) & 1) == 0 && (*(a1 + 96) & 1) == 0)
  {
    v8 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v8);
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_19;
  }

  [v2 reset];
  if (*(a1 + 98) == 1)
  {
    [*(a1 + 48) setNamespaceDeclUrisWithBoolean:1];
  }

  if (*(a1 + 16))
  {
    v3 = *(a1 + 80);
    if (!v3)
    {
      goto LABEL_19;
    }

    [v3 setEntityResolverWithOrgXmlSaxEntityResolver:?];
  }

  if (*(a1 + 24))
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      goto LABEL_19;
    }

    [v4 setDTDHandlerWithOrgXmlSaxDTDHandler:?];
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      goto LABEL_19;
    }

    [v5 setErrorHandlerWithOrgXmlSaxErrorHandler:?];
  }

  v6 = *(a1 + 80);
  if (!v6)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  [v6 setDocumentHandlerWithOrgXmlSaxDocumentHandler:a1];

  return JreStrongAssign((a1 + 8), 0);
}

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id)a3
{
  JreStrongAssign(&self->locator_, a3);
  contentHandler = self->contentHandler_;
  if (contentHandler)
  {

    [(OrgXmlSaxContentHandler *)contentHandler setDocumentLocatorWithOrgXmlSaxLocator:a3];
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

- (void)startElementWithNSString:(id)a3 withOrgXmlSaxAttributeList:(id)a4
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
      [(OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *)attAdapter setAttributeListWithOrgXmlSaxAttributeList:a4];
      if (a3)
      {
        contentHandler = self->contentHandler_;
        v42 = [a3 intern];
        v43 = self->attAdapter_;

        [(OrgXmlSaxContentHandler *)contentHandler startElementWithNSString:&stru_100484358 withNSString:&stru_100484358 withNSString:v42 withOrgXmlSaxAttributes:v43];
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
  if (!a4)
  {
    goto LABEL_57;
  }

  v51 = [a4 getLength];
  if (v51 < 1)
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

  v52 = a4;
  v8 = 0;
  do
  {
    v9 = [v52 getNameWithInt:v8];
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

      v14 = [v52 getValueWithInt:v8];
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

  while (v51 != v8);
  v23 = self->atts_;
  p_atts = &self->atts_;
  if (!v23)
  {
    goto LABEL_57;
  }

  v49 = a3;
  [(OrgXmlSaxHelpersAttributesImpl *)v23 clear];
  v24 = 0;
  do
  {
    v25 = [v52 getNameWithInt:v24];
    v26 = [v52 getTypeWithInt:v24];
    v27 = [v52 getValueWithInt:v24];
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
        v36 = [v25 intern];
        v37 = v34;
        v38 = v35;
        v39 = v30;
      }

      else
      {
        v36 = [v25 intern];
        v37 = v34;
        v38 = &stru_100484358;
        v39 = &stru_100484358;
      }

      [(OrgXmlSaxHelpersAttributesImpl *)v37 addAttributeWithNSString:v38 withNSString:v39 withNSString:v36 withNSString:v26 withNSString:v28];
    }

LABEL_30:
    v24 = (v24 + 1);
  }

  while (v51 != v24);
  a3 = v49;
LABEL_50:
  if (self->contentHandler_)
  {
    v45 = sub_1001A2220(self, a3, 0, 0);
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

- (void)endElementWithNSString:(id)a3
{
  if (self->namespaces_)
  {
    v4 = sub_1001A2220(self, a3, 0, 0);
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

      v8 = [(OrgXmlSaxHelpersNamespaceSupport *)nsSupport getDeclaredPrefixes];
      if (!v8)
      {
        goto LABEL_23;
      }

      v9 = v8;
      if ([v8 hasMoreElements])
      {
        do
        {
          v10 = [v9 nextElement];
          objc_opt_class();
          if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          [(OrgXmlSaxContentHandler *)self->contentHandler_ endPrefixMappingWithNSString:v10];
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

  if (!a3)
  {
    goto LABEL_23;
  }

  v13 = [a3 intern];

  [(OrgXmlSaxContentHandler *)contentHandler endElementWithNSString:&stru_100484358 withNSString:&stru_100484358 withNSString:v13];
}

- (void)processingInstructionWithNSString:(id)a3 withNSString:(id)a4
{
  contentHandler = self->contentHandler_;
  if (contentHandler)
  {
    [(OrgXmlSaxContentHandler *)contentHandler processingInstructionWithNSString:a3 withNSString:a4];
  }
}

- (void)reportErrorWithNSString:(id)a3
{
  errorHandler = self->errorHandler_;
  if (errorHandler)
  {
    v4 = sub_1001A2574(self, a3);

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