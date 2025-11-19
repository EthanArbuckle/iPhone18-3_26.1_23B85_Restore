@interface WXReadState
- (WXReadState)init;
- (_xmlNode)xmlAnnotationExtendedWithParaId:(unsigned int)a3;
- (_xmlNode)xmlAnnotationWithID:(int64_t)a3;
- (_xmlNode)xmlEndnoteWithID:(int64_t)a3;
- (_xmlNode)xmlFootnoteWithID:(int64_t)a3;
- (id)annotationWithId:(int64_t)a3;
- (id)annotationWithParaId:(unsigned int)a3;
- (id)bookmarkName:(int64_t)a3;
- (id)initNoStacksWith:(id)a3;
- (id)nodesToBeAdded:(id)a3;
- (id)textBoxForFlowId:(id)a3;
- (void)addAnnotationId:(int64_t)a3 annotation:(id)a4;
- (void)addAnnotationParaId:(unsigned int)a3 annotation:(id)a4;
- (void)addBookmarkId:(int64_t)a3 name:(id)a4;
- (void)addPendingBookmark:(_xmlNode *)a3;
- (void)addPendingComment:(_xmlNode *)a3;
- (void)addText:(id)a3 node:(_xmlNode *)a4;
- (void)clearOutNodesToBeAdded:(id)a3;
- (void)clearPendingBookmarks;
- (void)dealloc;
- (void)popDeleteAuthorDate;
- (void)popEditAuthorDate;
- (void)popFormatAuthorDate;
- (void)pushDeleteAuthor:(id)a3 date:(id)a4;
- (void)pushEditAuthor:(id)a3 date:(id)a4;
- (void)pushFormatAuthor:(id)a3 date:(id)a4;
- (void)setDocument:(id)a3;
- (void)setDocumentPart:(id)a3;
- (void)setupNSForXMLFormat:(int)a3;
@end

@implementation WXReadState

- (WXReadState)init
{
  v40.receiver = self;
  v40.super_class = WXReadState;
  v2 = [(OCXState *)&v40 init];
  v3 = v2;
  if (v2)
  {
    mDocument = v2->mDocument;
    v2->mDocument = 0;

    v5 = objc_alloc_init(OITSUNoCopyDictionary);
    mTextNodesToBeAdded = v3->mTextNodesToBeAdded;
    v3->mTextNodesToBeAdded = v5;

    v7 = objc_alloc_init(OITSUNoCopyDictionary);
    mMapBookmarkIdToName = v3->mMapBookmarkIdToName;
    v3->mMapBookmarkIdToName = v7;

    v9 = objc_alloc_init(OITSUNoCopyDictionary);
    mMapAnnotationIdToAnnotation = v3->mMapAnnotationIdToAnnotation;
    v3->mMapAnnotationIdToAnnotation = v9;

    v11 = objc_alloc_init(OITSUNoCopyDictionary);
    mMapAnnotationParaIdToAnnotation = v3->mMapAnnotationParaIdToAnnotation;
    v3->mMapAnnotationParaIdToAnnotation = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mMapFlowIdToTextBox = v3->mMapFlowIdToTextBox;
    v3->mMapFlowIdToTextBox = v13;

    mPackagePart = v3->mPackagePart;
    v3->mPackagePart = 0;

    mAnnotationPart = v3->mAnnotationPart;
    v3->mAnnotationPart = 0;

    mAnnotationExtendedPart = v3->mAnnotationExtendedPart;
    v3->mAnnotationExtendedPart = 0;

    v3->mFootnotes = 0;
    v3->mEndnotes = 0;
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mDeleteAuthorStack = v3->mDeleteAuthorStack;
    v3->mDeleteAuthorStack = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mDeleteDateStack = v3->mDeleteDateStack;
    v3->mDeleteDateStack = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mEditAuthorStack = v3->mEditAuthorStack;
    v3->mEditAuthorStack = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mEditDateStack = v3->mEditDateStack;
    v3->mEditDateStack = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mFormatAuthorStack = v3->mFormatAuthorStack;
    v3->mFormatAuthorStack = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mFormatDateStack = v3->mFormatDateStack;
    v3->mFormatDateStack = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mPendingCommentNodes = v3->mPendingCommentNodes;
    v3->mPendingCommentNodes = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mPendingBookmarkNodes = v3->mPendingBookmarkNodes;
    v3->mPendingBookmarkNodes = v32;

    v34 = [[WXOAVReadState alloc] initWithWXReadState:v3];
    mWXOavState = v3->mWXOavState;
    v3->mWXOavState = v34;

    v36 = objc_alloc_init(WXOfficeArtClient);
    v37 = [[OAXDrawingState alloc] initWithClient:v36];
    mDrawingState = v3->mDrawingState;
    v3->mDrawingState = v37;

    [(OAXDrawingState *)v3->mDrawingState setDocumentState:v3];
    v3->mCurrentOfficeArtTextType = -1;
    [(OAVReadState *)v3->mWXOavState setOaxState:v3->mDrawingState];
    [(OAXDrawingState *)v3->mDrawingState setOavState:v3->mWXOavState];
    v3->mNewSectionRequested = 0;
    v3->mReadingMath = 0;
  }

  return v3;
}

- (id)initNoStacksWith:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WXReadState;
  v5 = [(OCXState *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->mDocument, v4[4]);
    objc_storeStrong(&v6->mTextNodesToBeAdded, v4[5]);
    objc_storeStrong(&v6->mMapBookmarkIdToName, v4[6]);
    objc_storeStrong(&v6->mPackagePart, v4[10]);
    objc_storeStrong(&v6->mMapAnnotationIdToAnnotation, v4[7]);
    objc_storeStrong(&v6->mMapAnnotationParaIdToAnnotation, v4[8]);
    objc_storeStrong(&v6->mMapFlowIdToTextBox, v4[9]);
    v6->mFootnoteDocument = v4[13];
    v6->mFootnotes = v4[14];
    v6->mEndnoteDocument = v4[15];
    v6->mAnnotationDocument = v4[17];
    v6->mAnnotations = v4[18];
    v6->mAnnotationExtendedDocument = v4[19];
    v6->mAnnotationsExtended = v4[20];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mPendingCommentNodes = v6->mPendingCommentNodes;
    v6->mPendingCommentNodes = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mPendingBookmarkNodes = v6->mPendingBookmarkNodes;
    v6->mPendingBookmarkNodes = v9;

    objc_storeStrong(&v6->mWXOavState, v4[29]);
    objc_storeStrong(&v6->mDrawingState, v4[30]);
    v6->mNewSectionRequested = *(v4 + 264);
    v6->mCurrentRowCNFStyle = v4[34];
    v6->mCurrentCellCNFStyle = v4[35];
    v6->mCurrentTableWraps = *(v4 + 288);
  }

  return v6;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(OITSUNoCopyDictionary *)self->mTextNodesToBeAdded allKeys];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(WXReadState *)self clearOutNodesToBeAdded:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(WXReadState *)self clearPendingBookmarks];
  v7.receiver = self;
  v7.super_class = WXReadState;
  [(WXReadState *)&v7 dealloc];
}

- (void)setDocument:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->mDocument)
  {
    mDrawingState = self->mDrawingState;
    v7 = [(OCDDocument *)v4 blips];
    [(OAXDrawingState *)mDrawingState setTargetBlipCollection:v7];
  }

  mDocument = self->mDocument;
  self->mDocument = v5;
}

- (void)addText:(id)a3 node:(_xmlNode *)a4
{
  v8 = a3;
  v6 = [(OITSUNoCopyDictionary *)self->mTextNodesToBeAdded objectForKey:?];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(OITSUNoCopyDictionary *)self->mTextNodesToBeAdded setObject:v6 forUncopiedKey:v8];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithLong:{xmlCopyNode(a4, 1)}];
  [v6 addObject:v7];
}

- (id)nodesToBeAdded:(id)a3
{
  v3 = [(OITSUNoCopyDictionary *)self->mTextNodesToBeAdded objectForKey:a3];
  v4 = [v3 objectEnumerator];

  return v4;
}

- (void)clearOutNodesToBeAdded:(id)a3
{
  v5 = [(OITSUNoCopyDictionary *)self->mTextNodesToBeAdded objectForKey:a3];
  v3 = [v5 count];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      xmlFreeNode([v5 objectAtIndex:i]);
    }
  }

  [v5 removeAllObjects];
}

- (void)addBookmarkId:(int64_t)a3 name:(id)a4
{
  v8 = a4;
  mMapBookmarkIdToName = self->mMapBookmarkIdToName;
  v7 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  [(OITSUNoCopyDictionary *)mMapBookmarkIdToName setObject:v8 forKey:v7];
}

- (id)bookmarkName:(int64_t)a3
{
  mMapBookmarkIdToName = self->mMapBookmarkIdToName;
  v4 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  v5 = [(OITSUNoCopyDictionary *)mMapBookmarkIdToName objectForKey:v4];

  return v5;
}

- (void)addAnnotationId:(int64_t)a3 annotation:(id)a4
{
  v8 = a4;
  mMapAnnotationIdToAnnotation = self->mMapAnnotationIdToAnnotation;
  v7 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  [(OITSUNoCopyDictionary *)mMapAnnotationIdToAnnotation setObject:v8 forKey:v7];
}

- (id)annotationWithId:(int64_t)a3
{
  mMapAnnotationIdToAnnotation = self->mMapAnnotationIdToAnnotation;
  v4 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  v5 = [(OITSUNoCopyDictionary *)mMapAnnotationIdToAnnotation objectForKey:v4];

  return v5;
}

- (void)addAnnotationParaId:(unsigned int)a3 annotation:(id)a4
{
  v4 = *&a3;
  v8 = a4;
  mMapAnnotationParaIdToAnnotation = self->mMapAnnotationParaIdToAnnotation;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(OITSUNoCopyDictionary *)mMapAnnotationParaIdToAnnotation setObject:v8 forKey:v7];
}

- (id)annotationWithParaId:(unsigned int)a3
{
  mMapAnnotationParaIdToAnnotation = self->mMapAnnotationParaIdToAnnotation;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&a3];
  v5 = [(OITSUNoCopyDictionary *)mMapAnnotationParaIdToAnnotation objectForKey:v4];

  return v5;
}

- (id)textBoxForFlowId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mMapFlowIdToTextBox objectForKeyedSubscript:a3];

  return v3;
}

- (_xmlNode)xmlFootnoteWithID:(int64_t)a3
{
  mFootnotes = self->mFootnotes;
  if (!mFootnotes)
  {
    return 0;
  }

  for (i = OCXFirstChild(mFootnotes); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "footnote") && CXDefaultLongAttribute(i, self->mWXMainNamespace, "id", 0) == a3)
    {
      break;
    }
  }

  return i;
}

- (_xmlNode)xmlEndnoteWithID:(int64_t)a3
{
  mEndnotes = self->mEndnotes;
  if (!mEndnotes)
  {
    return 0;
  }

  for (i = OCXFirstChild(mEndnotes); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "endnote") && CXDefaultLongAttribute(i, self->mWXMainNamespace, "id", 0) == a3)
    {
      break;
    }
  }

  return i;
}

- (_xmlNode)xmlAnnotationWithID:(int64_t)a3
{
  mAnnotations = self->mAnnotations;
  if (!mAnnotations)
  {
    return 0;
  }

  for (i = OCXFirstChild(mAnnotations); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "comment") && CXDefaultLongAttribute(i, self->mWXMainNamespace, "id", 0) == a3)
    {
      break;
    }
  }

  return i;
}

- (_xmlNode)xmlAnnotationExtendedWithParaId:(unsigned int)a3
{
  if (!self->mAnnotationsExtended)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v6 = [OCXSTValidator isValidValue:v5 simpleType:10];

  if (!v6)
  {
    return 0;
  }

  for (i = OCXFirstChild(self->mAnnotationsExtended); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "commentEx"))
    {
      v12 = 0;
      if (CXOptionalUnsignedAttributeFromHex8X(i, WXWord2012Namespace, "paraId", &v12))
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
        v9 = [OCXSTValidator isValidValue:v8 simpleType:10];

        if (v12 == a3 && v9)
        {
          break;
        }
      }
    }
  }

  return i;
}

- (void)setDocumentPart:(id)a3
{
  v5 = a3;
  if (self->mPackagePart != v5)
  {
    v16 = v5;
    objc_storeStrong(&self->mPackagePart, a3);
    v6 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(v16, &self->super.super, sel_OCXFootnotesRelationshipType);
    v7 = [v6 xmlDocument];
    self->mFootnoteDocument = v7;
    if (v7)
    {
      self->mFootnotes = OCXGetRootElement(v7);
    }

    v8 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(v16, &self->super.super, sel_OCXEndnotesRelationshipType);
    v9 = [v8 xmlDocument];
    self->mEndnoteDocument = v9;
    if (v9)
    {
      self->mEndnotes = OCXGetRootElement(v9);
    }

    v10 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(v16, &self->super.super, sel_OCXCommentsRelationshipType);
    mAnnotationPart = self->mAnnotationPart;
    self->mAnnotationPart = v10;

    v12 = [(OCPPackagePart *)self->mAnnotationPart xmlDocument];
    self->mAnnotationDocument = v12;
    if (v12)
    {
      self->mAnnotations = OCXGetRootElement(v12);
    }

    v13 = OCXFirstPartWithRelationshipOfTypeToPartWithFallback(v16, &self->super.super, sel_OCXCommentsExtendedRelationshipType);
    mAnnotationExtendedPart = self->mAnnotationExtendedPart;
    self->mAnnotationExtendedPart = v13;

    v15 = [(OCPPackagePart *)self->mAnnotationExtendedPart xmlDocument];
    self->mAnnotationExtendedDocument = v15;
    if (v15)
    {
      self->mAnnotationsExtended = OCXGetRootElement(v15);
    }

    [(OAVReadState *)self->mWXOavState setPackagePart:v16];
    [(OAXDrawingState *)self->mDrawingState setPackagePart:v16];

    v5 = v16;
  }
}

- (void)pushDeleteAuthor:(id)a3 date:(id)a4
{
  v8 = a3;
  v6 = a4;
  mDeleteAuthorStack = self->mDeleteAuthorStack;
  if (mDeleteAuthorStack && self->mDeleteDateStack)
  {
    if (v8)
    {
      [(NSMutableArray *)mDeleteAuthorStack addObject:v8];
    }

    if (v6)
    {
      [(NSMutableArray *)self->mDeleteDateStack addObject:v6];
    }
  }
}

- (void)popDeleteAuthorDate
{
  mDeleteAuthorStack = self->mDeleteAuthorStack;
  if (mDeleteAuthorStack && self->mDeleteDateStack)
  {
    [(NSMutableArray *)mDeleteAuthorStack removeLastObject];
    mDeleteDateStack = self->mDeleteDateStack;

    [(NSMutableArray *)mDeleteDateStack removeLastObject];
  }
}

- (void)pushEditAuthor:(id)a3 date:(id)a4
{
  v8 = a3;
  v6 = a4;
  mEditAuthorStack = self->mEditAuthorStack;
  if (mEditAuthorStack && self->mEditDateStack)
  {
    if (v8)
    {
      [(NSMutableArray *)mEditAuthorStack addObject:v8];
    }

    if (v6)
    {
      [(NSMutableArray *)self->mEditDateStack addObject:v6];
    }
  }
}

- (void)popEditAuthorDate
{
  mEditAuthorStack = self->mEditAuthorStack;
  if (mEditAuthorStack && self->mEditDateStack)
  {
    if ([(NSMutableArray *)mEditAuthorStack count])
    {
      [(NSMutableArray *)self->mEditDateStack count];
    }

    [(NSMutableArray *)self->mEditAuthorStack removeLastObject];
    mEditDateStack = self->mEditDateStack;

    [(NSMutableArray *)mEditDateStack removeLastObject];
  }
}

- (void)pushFormatAuthor:(id)a3 date:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(NSMutableArray *)self->mFormatAuthorStack addObject:v7];
  }

  if (v6)
  {
    [(NSMutableArray *)self->mFormatDateStack addObject:v6];
  }
}

- (void)popFormatAuthorDate
{
  [(NSMutableArray *)self->mFormatAuthorStack removeLastObject];
  mFormatDateStack = self->mFormatDateStack;

  [(NSMutableArray *)mFormatDateStack removeLastObject];
}

- (void)addPendingComment:(_xmlNode *)a3
{
  mPendingCommentNodes = self->mPendingCommentNodes;
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:a3];
  [(NSMutableArray *)mPendingCommentNodes addObject:?];
}

- (void)addPendingBookmark:(_xmlNode *)a3
{
  v4 = xmlCopyNode(a3, 1);
  mPendingBookmarkNodes = self->mPendingBookmarkNodes;
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:v4];
  [(NSMutableArray *)mPendingBookmarkNodes addObject:?];
}

- (void)clearPendingBookmarks
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->mPendingBookmarkNodes;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        xmlFreeNode([*(*(&v7 + 1) + 8 * v6++) pointerValue]);
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)self->mPendingBookmarkNodes removeAllObjects];
}

- (void)setupNSForXMLFormat:(int)a3
{
  v3 = *&a3;
  v32.receiver = self;
  v32.super_class = WXReadState;
  [(OCXState *)&v32 setupNSForXMLFormat:?];
  v5 = [CXNamespace alloc];
  v6 = v5;
  if (v3)
  {
    v7 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/wordprocessingml/2006/main"];
    v8 = [(CXNamespace *)v6 initWithUri:"http://purl.oclc.org/ooxml/wordprocessingml/main" fallbackNamespace:v7];
    [(WXReadState *)self setWXMainNamespace:v8];

    v9 = [CXNamespace alloc];
    v10 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"];
    v11 = [(CXNamespace *)v9 initWithUri:"http://purl.oclc.org/ooxml/drawingml/wordprocessingDrawing" fallbackNamespace:v10];
    [(WXReadState *)self setWXDrawingNamespace:v11];

    v12 = [CXNamespace alloc];
    v13 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"];
    v14 = [(CXNamespace *)v12 initWithUri:"http://purl.oclc.org/ooxml/drawingml/wordprocessingDrawing" fallbackNamespace:v13];
    [(WXReadState *)self setWXShapeNamespace:v14];

    v15 = [(WXReadState *)self WXShapeNamespace];
    v16 = [v15 fallbackNamespace];
    [v16 setFallbackNamespace:WXShapeNamespace];

    v17 = [CXNamespace alloc];
    v18 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"];
    v19 = [(CXNamespace *)v17 initWithUri:"http://purl.oclc.org/ooxml/drawingml/wordprocessingDrawing" fallbackNamespace:v18];
    [(WXReadState *)self setWXGroupNamespace:v19];

    v20 = [(WXReadState *)self WXGroupNamespace];
    v21 = [v20 fallbackNamespace];
    [v21 setFallbackNamespace:WXGroupNamespace];

    v22 = [CXNamespace alloc];
    v23 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/bibliography"];
    v24 = [(CXNamespace *)v22 initWithUri:"http://purl.oclc.org/ooxml/officeDocument/bibliography" fallbackNamespace:v23];
    [(WXReadState *)self setWXOOBibliographyNamespace:v24];

    v25 = [CXNamespace alloc];
    v26 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/relationships"];
    v27 = [(CXNamespace *)v25 initWithUri:"http://purl.oclc.org/ooxml/officeDocument/relationships" fallbackNamespace:v26];
    [(WXReadState *)self setWXRelationshipNamespace:v27];
  }

  else
  {
    v28 = [(CXNamespace *)v5 initWithUri:"http://schemas.openxmlformats.org/wordprocessingml/2006/main"];
    [(WXReadState *)self setWXMainNamespace:v28];

    v29 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"];
    [(WXReadState *)self setWXDrawingNamespace:v29];

    [(WXReadState *)self setWXShapeNamespace:WXShapeNamespace];
    [(WXReadState *)self setWXGroupNamespace:WXGroupNamespace];
    v30 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing"];
    [(WXReadState *)self setWXDrawingNamespace:v30];

    v31 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/bibliography"];
    [(WXReadState *)self setWXOOBibliographyNamespace:v31];

    v26 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/relationships"];
    [(WXReadState *)self setWXRelationshipNamespace:v26];
  }

  [(OAXDrawingState *)self->mDrawingState setupNSForXMLFormat:v3];
  [(OCXState *)self->mWXOavState setupNSForXMLFormat:v3];
}

@end