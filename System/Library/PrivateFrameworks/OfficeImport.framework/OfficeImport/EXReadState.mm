@interface EXReadState
- (EXReadState)initWithWorkbookPart:(id)part cancelDelegate:(id)delegate;
- (id).cxx_construct;
- (id)authorForReference:(id)reference;
- (id)columnWidthConvertor;
- (id)textBoxForReference:(id)reference;
- (unint64_t)sharedBaseFormulaIndexWithIndex:(int64_t)index;
- (void)addSharedBaseFormulaIndex:(unint64_t)index withIndex:(int64_t)withIndex;
- (void)reportWarning:(id)warning;
- (void)reportWorksheetWarning:(id)warning;
- (void)resetForNewSheet;
- (void)setCurrentPart:(id)part;
- (void)setCurrentSheet:(id)sheet;
- (void)setOfficeArtState:(id)state;
- (void)setSheetDimension:(id)dimension;
- (void)setTextBox:(id)box author:(id)author forReference:(id)reference;
- (void)setWorkbook:(id)workbook;
- (void)setupNSForXMLFormat:(int)format;
@end

@implementation EXReadState

- (EXReadState)initWithWorkbookPart:(id)part cancelDelegate:(id)delegate
{
  partCopy = part;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = EXReadState;
  v9 = [(OCXState *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mWorkbookPart, part);
    objc_storeStrong(&v10->mCancelDelegate, delegate);
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

- (void)setWorkbook:(id)workbook
{
  workbookCopy = workbook;
  objc_storeStrong(&self->mWorkbook, workbook);
  mOfficeArtState = self->mOfficeArtState;
  blips = [workbookCopy blips];
  [(OAXDrawingState *)mOfficeArtState setTargetBlipCollection:blips];

  v7 = self->mOfficeArtState;
  bulletBlips = [workbookCopy bulletBlips];
  [(OAXDrawingState *)v7 setTargetBulletBlipArray:bulletBlips];
}

- (void)setCurrentSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->mCurrentSheet != sheetCopy)
  {
    v7 = sheetCopy;
    objc_storeStrong(&self->mCurrentSheet, sheet);
    p_mSharedFormulasMap = &self->mSharedFormulasMap;
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(p_mSharedFormulasMap, p_mSharedFormulasMap->__tree_.__end_node_.__left_);
    sheetCopy = v7;
    p_mSharedFormulasMap->__tree_.__begin_node_ = &p_mSharedFormulasMap->__tree_.__end_node_;
    p_mSharedFormulasMap->__tree_.__size_ = 0;
    p_mSharedFormulasMap->__tree_.__end_node_.__left_ = 0;
  }
}

- (void)setCurrentPart:(id)part
{
  partCopy = part;
  if (self->mCurrentPart != partCopy)
  {
    v6 = partCopy;
    objc_storeStrong(&self->mCurrentPart, part);
    partCopy = v6;
  }
}

- (unint64_t)sharedBaseFormulaIndexWithIndex:(int64_t)index
{
  left = self->mSharedFormulasMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    return 0xFFFFFFFFLL;
  }

  p_end_node = &self->mSharedFormulasMap.__tree_.__end_node_;
  do
  {
    if (left[4].__left_ >= index)
    {
      p_end_node = left;
    }

    left = left[left[4].__left_ < index].__left_;
  }

  while (left);
  if (p_end_node != &self->mSharedFormulasMap.__tree_.__end_node_ && p_end_node[4].__left_ <= index)
  {
    return p_end_node[5].__left_;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

- (void)addSharedBaseFormulaIndex:(unint64_t)index withIndex:(int64_t)withIndex
{
  v4[0] = withIndex;
  v4[2] = v4;
  std::__tree<std::__value_type<long,unsigned long>,std::__map_value_compare<long,std::__value_type<long,unsigned long>,std::less<long>,true>,std::allocator<std::__value_type<long,unsigned long>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&self->mSharedFormulasMap, v4)[5] = index;
}

- (void)setSheetDimension:(id)dimension
{
  dimensionCopy = dimension;
  if (self->mSheetDimension != dimensionCopy)
  {
    v6 = dimensionCopy;
    objc_storeStrong(&self->mSheetDimension, dimension);
    dimensionCopy = v6;
  }
}

- (void)setOfficeArtState:(id)state
{
  stateCopy = state;
  if (self->mOfficeArtState != stateCopy)
  {
    v6 = stateCopy;
    objc_storeStrong(&self->mOfficeArtState, state);
    stateCopy = v6;
  }
}

- (void)setTextBox:(id)box author:(id)author forReference:(id)reference
{
  boxCopy = box;
  authorCopy = author;
  referenceCopy = reference;
  v10 = [[OITSUPair alloc] initWithFirst:boxCopy second:authorCopy];
  [(NSMutableDictionary *)self->mReferenceForCommentTextBox setObject:v10 forKey:referenceCopy];
}

- (id)textBoxForReference:(id)reference
{
  v3 = [(NSMutableDictionary *)self->mReferenceForCommentTextBox objectForKey:reference];
  first = [v3 first];

  return first;
}

- (id)authorForReference:(id)reference
{
  v3 = [(NSMutableDictionary *)self->mReferenceForCommentTextBox objectForKey:reference];
  second = [v3 second];

  return second;
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
    styles = [(EDResources *)self->mResources styles];
    defaultWorkbookStyle = [styles defaultWorkbookStyle];
    font = [defaultWorkbookStyle font];
    [(ECColumnWidthConvertor *)v6 setupWithEDFont:font state:0];

    mColumnWidthConvertor = self->mColumnWidthConvertor;
  }

  return mColumnWidthConvertor;
}

- (void)reportWarning:(id)warning
{
  warningCopy = warning;
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
  [v5 addWarning:warningCopy];
}

- (void)reportWorksheetWarning:(id)warning
{
  warningCopy = warning;
  if (self->mCurrentSheet && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    worksheetWarnings = [(EDSheet *)self->mCurrentSheet worksheetWarnings];
  }

  else
  {
    worksheetWarnings = [(EDWorkbook *)self->mWorkbook warnings];
  }

  v5 = worksheetWarnings;
  [worksheetWarnings addWarning:warningCopy];
}

- (void)setupNSForXMLFormat:(int)format
{
  v3 = *&format;
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