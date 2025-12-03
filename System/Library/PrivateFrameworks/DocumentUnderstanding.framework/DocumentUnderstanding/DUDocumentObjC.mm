@interface DUDocumentObjC
- (DUDocumentHTMLDataObjC)documentHTMLData;
- (DUDocumentObjC)init;
- (NSArray)documentUIElements;
- (void)setAbstract:(id)abstract;
- (void)setComment:(id)comment;
- (void)setCreator:(id)creator;
- (void)setDateCreated:(id)created;
- (void)setDateModified:(id)modified;
- (void)setDocumentHTMLData:(id)data;
- (void)setDocumentUIElements:(id)elements;
- (void)setHeadline:(id)headline;
- (void)setIdentifier:(id)identifier;
- (void)setInLanguage:(id)language;
- (void)setKeywords:(id)keywords;
- (void)setSignificantLink:(id)link;
- (void)setSubHeadline:(id)headline;
- (void)setText:(id)text;
- (void)setThumbnailUrl:(id)url;
- (void)setUrl:(id)url;
- (void)setVersion:(id)version;
@end

@implementation DUDocumentObjC

- (void)setDocumentHTMLData:(id)data
{
  v9 = objc_msgSend_htmlDataForObjCHTMLData_(DUObjCCompatibilityUtils, a2, data, v3, v4);
  objc_msgSend_setDocumentHTMLData_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (DUDocumentHTMLDataObjC)documentHTMLData
{
  v6 = objc_msgSend_documentHTMLData(self->_underlyingDocument, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_documentHTMLData(self->_underlyingDocument, v7, v8, v9, v10);
    v15 = objc_msgSend_objCHTMLDataForHTMLData_(DUObjCCompatibilityUtils, v12, v11, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setDocumentUIElements:(id)elements
{
  v28 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = elementsCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v18 = objc_msgSend_uiElementForObjCUIElement_(DUObjCCompatibilityUtils, v9, *(*(&v23 + 1) + 8 * v14), v10, v11, v23);
        if (v18)
        {
          objc_msgSend_addObject_(v5, v15, v18, v16, v17);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v23, v27, 16);
    }

    while (v12);
  }

  objc_msgSend_setDocumentUIElements_(self->_underlyingDocument, v19, v5, v20, v21);
  v22 = *MEMORY[0x277D85DE8];
}

- (NSArray)documentUIElements
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_documentUIElements(self->_underlyingDocument, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v5;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v26, v30, 16);
    if (v13)
    {
      v17 = v13;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v11);
          }

          v23 = objc_msgSend_objCUIElementForUIElement_(DUObjCCompatibilityUtils, v14, *(*(&v26 + 1) + 8 * i), v15, v16, v26);
          if (v23)
          {
            objc_msgSend_addObject_(v10, v20, v23, v21, v22);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v26, v30, 16);
      }

      while (v17);
    }
  }

  else
  {
    v10 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setDateModified:(id)modified
{
  v9 = objc_msgSend_copy(modified, a2, modified, v3, v4);
  objc_msgSend_setDateModified_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setDateCreated:(id)created
{
  v9 = objc_msgSend_copy(created, a2, created, v3, v4);
  objc_msgSend_setDateCreated_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setSignificantLink:(id)link
{
  v9 = objc_msgSend_copy(link, a2, link, v3, v4);
  objc_msgSend_setSignificantLink_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setThumbnailUrl:(id)url
{
  v9 = objc_msgSend_copy(url, a2, url, v3, v4);
  objc_msgSend_setThumbnailUrl_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setUrl:(id)url
{
  v9 = objc_msgSend_copy(url, a2, url, v3, v4);
  objc_msgSend_setUrl_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setIdentifier:(id)identifier
{
  v9 = objc_msgSend_copy(identifier, a2, identifier, v3, v4);
  objc_msgSend_setIdentifier_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setKeywords:(id)keywords
{
  v9 = objc_msgSend_copy(keywords, a2, keywords, v3, v4);
  objc_msgSend_setKeywords_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setInLanguage:(id)language
{
  v9 = objc_msgSend_copy(language, a2, language, v3, v4);
  objc_msgSend_setInLanguage_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setText:(id)text
{
  v9 = objc_msgSend_copy(text, a2, text, v3, v4);
  objc_msgSend_setText_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setComment:(id)comment
{
  v9 = objc_msgSend_copy(comment, a2, comment, v3, v4);
  objc_msgSend_setComment_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setAbstract:(id)abstract
{
  v9 = objc_msgSend_copy(abstract, a2, abstract, v3, v4);
  objc_msgSend_setAbstract_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setCreator:(id)creator
{
  v9 = objc_msgSend_copy(creator, a2, creator, v3, v4);
  objc_msgSend_setCreator_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setVersion:(id)version
{
  v9 = objc_msgSend_copy(version, a2, version, v3, v4);
  objc_msgSend_setVersion_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setSubHeadline:(id)headline
{
  v9 = objc_msgSend_copy(headline, a2, headline, v3, v4);
  objc_msgSend_setSubHeadline_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (void)setHeadline:(id)headline
{
  v9 = objc_msgSend_copy(headline, a2, headline, v3, v4);
  objc_msgSend_setHeadline_(self->_underlyingDocument, v6, v9, v7, v8);
}

- (DUDocumentObjC)init
{
  v6.receiver = self;
  v6.super_class = DUDocumentObjC;
  v2 = [(DUDocumentObjC *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding13DURawDocument);
    underlyingDocument = v2->_underlyingDocument;
    v2->_underlyingDocument = v3;
  }

  return v2;
}

@end