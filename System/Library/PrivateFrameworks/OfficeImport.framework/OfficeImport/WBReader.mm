@interface WBReader
- (BOOL)start;
- (OCCEncryptionInfoReader)encryptionInfoReader;
- (WBReader)initWithCancelDelegate:(id)delegate;
- (WBTextBoxReaderInfo)textBoxInfoAtIndex:(unint64_t)index;
- (WDDocument)targetDocument;
- (id)annotationRangeStartForBookmarkIndex:(unint64_t)index;
- (id)fontAtIndex:(int)index;
- (id)read;
- (id)readCharactersFrom:(unsigned int)from to:(unsigned int)to textType:(int)type;
- (id)styleAtIndex:(int)index;
- (id)styleAtIndex:(int)index expectedType:(int)type;
- (void)addFont:(id)font index:(int)index;
- (void)addStyle:(id)style index:(int)index;
- (void)cacheTextBox:(id)box withChainIndex:(unsigned __int16)index;
- (void)dealloc;
- (void)setAnnotationRangeStart:(id)start forBookmarkIndex:(unint64_t)index;
- (void)setLastRowParagraphProperties:(void *)properties;
@end

@implementation WBReader

- (BOOL)start
{
  wrdReader = [(WBReader *)self wrdReader];
  wrdReader2 = [(WBReader *)self wrdReader];
  if (wrdReader2)
  {
    fileName = [(OCDReader *)self fileName];

    if (fileName)
    {
      fileName2 = [(OCDReader *)self fileName];
      v7 = fopen([fileName2 UTF8String], "rb");

      if (v7)
      {
        [(OCBReader *)self setFile:v7];
        (*(*wrdReader + 16))(wrdReader, [(OCBReader *)self file]);
LABEL_7:
        LOBYTE(wrdReader2) = 1;
        return wrdReader2;
      }

      v12 = TCUnknownProblemMessage;
      fileName3 = [(OCDReader *)self fileName];
      [TCMessageException raise:v12, fileName3];
    }

    else
    {
      data = [(OCDReader *)self data];

      if (data)
      {
        data2 = [(OCDReader *)self data];
        bytes = [data2 bytes];
        data3 = [(OCDReader *)self data];
        (*(*wrdReader + 120))(wrdReader, bytes, [data3 length]);

        goto LABEL_7;
      }
    }

    LOBYTE(wrdReader2) = 0;
  }

  return wrdReader2;
}

- (OCCEncryptionInfoReader)encryptionInfoReader
{
  wrdReader = [(WBReader *)self wrdReader];
  if (wrdReader)
  {
    return wrdReader + 3;
  }

  else
  {
    return 0;
  }
}

- (id)read
{
  v3 = objc_autoreleasePoolPush();
  [(OCDEncryptedReader *)self useUnencryptedDocument];
  [(WBReader *)self initialize];
  v5 = [WBDocument readFrom:self];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (void)dealloc
{
  wrdReader = [(WBReader *)self wrdReader];
  if (wrdReader)
  {
    (*(*wrdReader + 24))(wrdReader);
  }

  mFootnoteTable = self->mFootnoteTable;
  if (mFootnoteTable)
  {
    (*(*mFootnoteTable + 8))(mFootnoteTable);
  }

  mEndnoteTable = self->mEndnoteTable;
  if (mEndnoteTable)
  {
    (*(*mEndnoteTable + 8))(mEndnoteTable);
  }

  mAnnotationTable = self->mAnnotationTable;
  if (mAnnotationTable)
  {
    (*(*mAnnotationTable + 8))(mAnnotationTable);
  }

  mTableHeaders = self->mTableHeaders;
  if (mTableHeaders)
  {
    (*(*mTableHeaders + 8))(mTableHeaders);
  }

  mBookmarkTable = self->mBookmarkTable;
  if (mBookmarkTable)
  {
    (*(*mBookmarkTable + 8))(mBookmarkTable);
  }

  mAnnotationBookmarkTable = self->mAnnotationBookmarkTable;
  if (mAnnotationBookmarkTable)
  {
    (*(*mAnnotationBookmarkTable + 8))(mAnnotationBookmarkTable);
  }

  mStoryTable = self->mStoryTable;
  if (mStoryTable)
  {
    (*(*mStoryTable + 8))(mStoryTable);
  }

  mHeaderStoryTable = self->mHeaderStoryTable;
  if (mHeaderStoryTable)
  {
    (*(*mHeaderStoryTable + 8))(mHeaderStoryTable);
  }

  mFileShapeAddressTable = self->mFileShapeAddressTable;
  if (mFileShapeAddressTable)
  {
    (*(*mFileShapeAddressTable + 8))(mFileShapeAddressTable);
  }

  mFileShapeAddressHeaderTable = self->mFileShapeAddressHeaderTable;
  if (mFileShapeAddressHeaderTable)
  {
    (*(*mFileShapeAddressHeaderTable + 8))(mFileShapeAddressHeaderTable);
  }

  mEshObjectFactory = self->mEshObjectFactory;
  if (mEshObjectFactory)
  {
    (*(mEshObjectFactory->var0 + 1))(mEshObjectFactory);
  }

  mLastRowParagraphProperties = self->mLastRowParagraphProperties;
  if (mLastRowParagraphProperties)
  {
    (*(*mLastRowParagraphProperties + 8))(mLastRowParagraphProperties);
  }

  for (i = 0; i != 8; ++i)
  {
    v17 = self->mFieldPositionTables[i];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  mTextBoxes = self->mTextBoxes;
  if (mTextBoxes)
  {
    v20 = self->mTextBoxes;
    std::vector<WBTextBoxReaderInfo>::__destroy_vector::operator()[abi:ne200100](&v20);
    MEMORY[0x25F897000](mTextBoxes, 0x20C40960023A9);
  }

  v19.receiver = self;
  v19.super_class = WBReader;
  [(OCBReader *)&v19 dealloc];
}

- (WDDocument)targetDocument
{
  WeakRetained = objc_loadWeakRetained(&self->mTargetDocument);

  return WeakRetained;
}

- (WBReader)initWithCancelDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6.receiver = self;
  v6.super_class = WBReader;
  if ([(OCBReader *)&v6 initWithCancelDelegate:delegateCopy])
  {
    operator new();
  }

  return 0;
}

- (id)readCharactersFrom:(unsigned int)from to:(unsigned int)to textType:(int)type
{
  string = [MEMORY[0x277CCAB68] string];
  while (from < to)
  {
    WrdText::WrdText(&v13, type, from, to - from);
    wrdReader = [(WBReader *)self wrdReader];
    (*(*wrdReader + 176))(wrdReader, &v13);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithOcText:&v14];
    if (v11)
    {
      [string appendString:v11];
    }

    from += v14.var3;

    v13 = &unk_286ED5AE0;
    OcText::~OcText(&v14);
  }

  return string;
}

- (void)setLastRowParagraphProperties:(void *)properties
{
  mLastRowParagraphProperties = self->mLastRowParagraphProperties;
  if (mLastRowParagraphProperties)
  {
    (*(*mLastRowParagraphProperties + 8))(mLastRowParagraphProperties, a2);
  }

  self->mLastRowParagraphProperties = properties;
}

- (id)styleAtIndex:(int)index
{
  mIndexToStyles = self->mIndexToStyles;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&index];
  v5 = [(OITSUNoCopyDictionary *)mIndexToStyles objectForKeyedSubscript:v4];

  return v5;
}

- (id)styleAtIndex:(int)index expectedType:(int)type
{
  v5 = [(WBReader *)self styleAtIndex:*&index];
  v6 = v5;
  if (v5 && [v5 type] != type)
  {

    v6 = 0;
  }

  return v6;
}

- (void)addStyle:(id)style index:(int)index
{
  v4 = *&index;
  styleCopy = style;
  mIndexToStyles = self->mIndexToStyles;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(OITSUNoCopyDictionary *)mIndexToStyles setObject:styleCopy forKey:v7];
}

- (id)fontAtIndex:(int)index
{
  mIndexToFonts = self->mIndexToFonts;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&index];
  v5 = [(OITSUNoCopyDictionary *)mIndexToFonts objectForKey:v4];

  return v5;
}

- (void)addFont:(id)font index:(int)index
{
  v4 = *&index;
  fontCopy = font;
  if (fontCopy)
  {
    v9 = fontCopy;
    mIndexToFonts = self->mIndexToFonts;
    v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    [(OITSUNoCopyDictionary *)mIndexToFonts setObject:v9 forKey:v8];

    fontCopy = v9;
  }
}

- (void)cacheTextBox:(id)box withChainIndex:(unsigned __int16)index
{
  boxCopy = box;
  mTextBoxes = self->mTextBoxes;
  v9 = boxCopy;
  indexCopy = index;
  v8 = boxCopy;
  std::vector<WBTextBoxReaderInfo>::push_back[abi:ne200100](mTextBoxes, &v9);
}

- (WBTextBoxReaderInfo)textBoxInfoAtIndex:(unint64_t)index
{
  v3 = *self->mTextBoxes + 16 * index;
  v4 = *v3;
  v5 = *(v3 + 8);
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (id)annotationRangeStartForBookmarkIndex:(unint64_t)index
{
  mBookmarkIndexToAnnotationRangeStartMap = self->mBookmarkIndexToAnnotationRangeStartMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v5 = [(NSMutableDictionary *)mBookmarkIndexToAnnotationRangeStartMap objectForKeyedSubscript:v4];

  return v5;
}

- (void)setAnnotationRangeStart:(id)start forBookmarkIndex:(unint64_t)index
{
  startCopy = start;
  if (startCopy)
  {
    v9 = startCopy;
    mBookmarkIndexToAnnotationRangeStartMap = self->mBookmarkIndexToAnnotationRangeStartMap;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    [(NSMutableDictionary *)mBookmarkIndexToAnnotationRangeStartMap setObject:v9 forKeyedSubscript:v8];

    startCopy = v9;
  }
}

@end