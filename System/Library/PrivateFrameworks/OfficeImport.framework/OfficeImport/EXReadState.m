@interface EXReadState
- (EXReadState)initWithWorkbookPart:(id)a3 cancelDelegate:(id)a4;
- (id).cxx_construct;
- (id)authorForReference:(id)a3;
- (id)columnWidthConvertor;
- (id)textBoxForReference:(id)a3;
- (unint64_t)sharedBaseFormulaIndexWithIndex:(int64_t)a3;
- (void)addSharedBaseFormulaIndex:(unint64_t)a3 withIndex:(int64_t)a4;
- (void)reportWarning:(id)a3;
- (void)reportWorksheetWarning:(id)a3;
- (void)resetForNewSheet;
- (void)setCurrentPart:(id)a3;
- (void)setCurrentSheet:(id)a3;
- (void)setOfficeArtState:(id)a3;
- (void)setSheetDimension:(id)a3;
- (void)setTextBox:(id)a3 author:(id)a4 forReference:(id)a5;
- (void)setWorkbook:(id)a3;
- (void)setupNSForXMLFormat:(int)a3;
@end

@implementation EXReadState

- (EXReadState)initWithWorkbookPart:(id)a3 cancelDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = EXReadState;
  v9 = [(OCXState *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mWorkbookPart, a3);
    objc_storeStrong(&v10->mCancelDelegate, a4);
    v10->mCurrentSheetIndex = 0;
    v10->mCellStyleXfsOffset = 0;
    v10->mDefaultColumnWidth = -1.0;
    v10->mDefaultRowHeight = -1.0;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mArrayedFormulas = v10->mArrayedFormulas;
    v10->mArrayedFormulas = v11;

    v13 = [[EXOfficeArtState alloc] initWithExcelState:v10];
    mOfficeArtState = v10->mOfficeArtState;
    v10->mOfficeArtState = v13;

    v15 = [[EXOAVState alloc] initWithEXReadState:v10 packagePart:0];
    mOAVState = v10->mOAVState;
    v10->mOAVState = v15;

    [(OAXDrawingState *)v10->mOfficeArtState setOavState:v10->mOAVState];
    [(OAVReadState *)v10->mOAVState setOaxState:v10->mOfficeArtState];
    v10->mMaxColumnsWarned = 0;
    v10->mMaxRowsWarned = 0;
    v10->mIsPredefinedTableStylesRead = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mReferenceForCommentTextBox = v10->mReferenceForCommentTextBox;
    v10->mReferenceForCommentTextBox = v17;

    v10->mIsPredefinedDxfsBeingRead = 0;
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mLegacyDrawables = v10->mLegacyDrawables;
    v10->mLegacyDrawables = v19;

    v10->mCurrentRowMinColumnIndex = 0;
    v10->mCurrentRowMaxColumnIndex = 0;
  }

  return v10;
}

- (void)setWorkbook:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->mWorkbook, a3);
  mOfficeArtState = self->mOfficeArtState;
  v6 = [v9 blips];
  [(OAXDrawingState *)mOfficeArtState setTargetBlipCollection:v6];

  v7 = self->mOfficeArtState;
  v8 = [v9 bulletBlips];
  [(OAXDrawingState *)v7 setTargetBulletBlipArray:v8];
}

- (void)setCurrentSheet:(id)a3
{
  v5 = a3;
  if (self->mCurrentSheet != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->mCurrentSheet, a3);
    p_mSharedFormulasMap = &self->mSharedFormulasMap;
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(p_mSharedFormulasMap, p_mSharedFormulasMap->__tree_.__end_node_.__left_);
    v5 = v7;
    p_mSharedFormulasMap->__tree_.__begin_node_ = &p_mSharedFormulasMap->__tree_.__end_node_;
    p_mSharedFormulasMap->__tree_.__size_ = 0;
    p_mSharedFormulasMap->__tree_.__end_node_.__left_ = 0;
  }
}

- (void)setCurrentPart:(id)a3
{
  v5 = a3;
  if (self->mCurrentPart != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mCurrentPart, a3);
    v5 = v6;
  }
}

- (unint64_t)sharedBaseFormulaIndexWithIndex:(int64_t)a3
{
  left = self->mSharedFormulasMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    return 0xFFFFFFFFLL;
  }

  p_end_node = &self->mSharedFormulasMap.__tree_.__end_node_;
  do
  {
    if (left[4].__left_ >= a3)
    {
      p_end_node = left;
    }

    left = left[left[4].__left_ < a3].__left_;
  }

  while (left);
  if (p_end_node != &self->mSharedFormulasMap.__tree_.__end_node_ && p_end_node[4].__left_ <= a3)
  {
    return p_end_node[5].__left_;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

- (void)addSharedBaseFormulaIndex:(unint64_t)a3 withIndex:(int64_t)a4
{
  v4[0] = a4;
  v4[2] = v4;
  std::__tree<std::__value_type<long,unsigned long>,std::__map_value_compare<long,std::__value_type<long,unsigned long>,std::less<long>,true>,std::allocator<std::__value_type<long,unsigned long>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&self->mSharedFormulasMap, v4)[5] = a3;
}

- (void)setSheetDimension:(id)a3
{
  v5 = a3;
  if (self->mSheetDimension != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mSheetDimension, a3);
    v5 = v6;
  }
}

- (void)setOfficeArtState:(id)a3
{
  v5 = a3;
  if (self->mOfficeArtState != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mOfficeArtState, a3);
    v5 = v6;
  }
}

- (void)setTextBox:(id)a3 author:(id)a4 forReference:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[OITSUPair alloc] initWithFirst:v11 second:v8];
  [(NSMutableDictionary *)self->mReferenceForCommentTextBox setObject:v10 forKey:v9];
}

- (id)textBoxForReference:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mReferenceForCommentTextBox objectForKey:a3];
  v4 = [v3 first];

  return v4;
}

- (id)authorForReference:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mReferenceForCommentTextBox objectForKey:a3];
  v4 = [v3 second];

  return v4;
}

- (void)resetForNewSheet
{
  [(NSMutableDictionary *)self->mReferenceForCommentTextBox removeAllObjects];
  [(OAXDrawingState *)self->mOfficeArtState resetForNewDrawing];
  [(OAVReadState *)self->mOAVState resetForNewDrawing];
  mLegacyDrawables = self->mLegacyDrawables;

  [(NSMutableArray *)mLegacyDrawables removeAllObjects];
}

- (id)columnWidthConvertor
{
  mColumnWidthConvertor = self->mColumnWidthConvertor;
  if (!mColumnWidthConvertor)
  {
    v4 = objc_alloc_init(ECColumnWidthConvertor);
    v5 = self->mColumnWidthConvertor;
    self->mColumnWidthConvertor = v4;

    v6 = self->mColumnWidthConvertor;
    v7 = [(EDResources *)self->mResources styles];
    v8 = [v7 defaultWorkbookStyle];
    v9 = [v8 font];
    [(ECColumnWidthConvertor *)v6 setupWithEDFont:v9 state:0];

    mColumnWidthConvertor = self->mColumnWidthConvertor;
  }

  return mColumnWidthConvertor;
}

- (void)reportWarning:(id)a3
{
  v6 = a3;
  mCurrentSheet = self->mCurrentSheet;
  if (mCurrentSheet)
  {
    [(EDSheet *)mCurrentSheet warnings];
  }

  else
  {
    [(EDWorkbook *)self->mWorkbook warnings];
  }
  v5 = ;
  [v5 addWarning:v6];
}

- (void)reportWorksheetWarning:(id)a3
{
  v6 = a3;
  if (self->mCurrentSheet && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [(EDSheet *)self->mCurrentSheet worksheetWarnings];
  }

  else
  {
    v4 = [(EDWorkbook *)self->mWorkbook warnings];
  }

  v5 = v4;
  [v4 addWarning:v6];
}

- (void)setupNSForXMLFormat:(int)a3
{
  v3 = *&a3;
  v17.receiver = self;
  v17.super_class = EXReadState;
  [(OCXState *)&v17 setupNSForXMLFormat:?];
  v5 = [CXNamespace alloc];
  if (v3)
  {
    v6 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/spreadsheetml/2006/main"];
    v7 = [(CXNamespace *)v5 initWithUri:"http://purl.oclc.org/ooxml/spreadsheetml/main" fallbackNamespace:v6];
    [(EXReadState *)self setEXSpreadsheetMLNamespace:v7];

    v8 = [CXNamespace alloc];
    v9 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing"];
    v10 = [(CXNamespace *)v8 initWithUri:"http://purl.oclc.org/ooxml/drawingml/spreadsheetDrawing" fallbackNamespace:v9];
    [(EXReadState *)self setEXSpreadsheetDrawingNamespace:v10];

    v11 = [CXNamespace alloc];
    v12 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/relationships"];
    v13 = [(CXNamespace *)v11 initWithUri:"http://purl.oclc.org/ooxml/officeDocument/relationships" fallbackNamespace:v12];
    [(EXReadState *)self setEXSpreadsheetRelationsNamespace:v13];
  }

  else
  {
    v14 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/spreadsheetml/2006/7/main"];
    v15 = [(CXNamespace *)v5 initWithUri:"http://schemas.openxmlformats.org/spreadsheetml/2006/main" fallbackNamespace:v14];
    [(EXReadState *)self setEXSpreadsheetMLNamespace:v15];

    v16 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing"];
    [(EXReadState *)self setEXSpreadsheetDrawingNamespace:v16];

    v12 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/relationships"];
    [(EXReadState *)self setEXSpreadsheetRelationsNamespace:v12];
  }

  [(OAXDrawingState *)self->mOfficeArtState setupNSForXMLFormat:v3];
  [(OCXState *)self->mOAVState setupNSForXMLFormat:v3];
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 12) = 0;
  *(self + 11) = self + 96;
  return self;
}

@end