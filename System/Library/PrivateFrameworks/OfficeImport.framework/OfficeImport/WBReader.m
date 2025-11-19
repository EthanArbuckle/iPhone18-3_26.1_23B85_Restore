@interface WBReader
- (BOOL)start;
- (OCCEncryptionInfoReader)encryptionInfoReader;
- (WBReader)initWithCancelDelegate:(id)a3;
- (WBTextBoxReaderInfo)textBoxInfoAtIndex:(unint64_t)a3;
- (WDDocument)targetDocument;
- (id)annotationRangeStartForBookmarkIndex:(unint64_t)a3;
- (id)fontAtIndex:(int)a3;
- (id)read;
- (id)readCharactersFrom:(unsigned int)a3 to:(unsigned int)a4 textType:(int)a5;
- (id)styleAtIndex:(int)a3;
- (id)styleAtIndex:(int)a3 expectedType:(int)a4;
- (void)addFont:(id)a3 index:(int)a4;
- (void)addStyle:(id)a3 index:(int)a4;
- (void)cacheTextBox:(id)a3 withChainIndex:(unsigned __int16)a4;
- (void)dealloc;
- (void)setAnnotationRangeStart:(id)a3 forBookmarkIndex:(unint64_t)a4;
- (void)setLastRowParagraphProperties:(void *)a3;
@end

@implementation WBReader

- (BOOL)start
{
  v3 = [(WBReader *)self wrdReader];
  v4 = [(WBReader *)self wrdReader];
  if (v4)
  {
    v5 = [(OCDReader *)self fileName];

    if (v5)
    {
      v6 = [(OCDReader *)self fileName];
      v7 = fopen([v6 UTF8String], "rb");

      if (v7)
      {
        [(OCBReader *)self setFile:v7];
        (*(*v3 + 16))(v3, [(OCBReader *)self file]);
LABEL_7:
        LOBYTE(v4) = 1;
        return v4;
      }

      v12 = TCUnknownProblemMessage;
      v13 = [(OCDReader *)self fileName];
      [TCMessageException raise:v12, v13];
    }

    else
    {
      v8 = [(OCDReader *)self data];

      if (v8)
      {
        v9 = [(OCDReader *)self data];
        v10 = [v9 bytes];
        v11 = [(OCDReader *)self data];
        (*(*v3 + 120))(v3, v10, [v11 length]);

        goto LABEL_7;
      }
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

- (OCCEncryptionInfoReader)encryptionInfoReader
{
  v2 = [(WBReader *)self wrdReader];
  if (v2)
  {
    return v2 + 3;
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
  v3 = [(WBReader *)self wrdReader];
  if (v3)
  {
    (*(*v3 + 24))(v3);
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

- (WBReader)initWithCancelDelegate:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = WBReader;
  if ([(OCBReader *)&v6 initWithCancelDelegate:v4])
  {
    operator new();
  }

  return 0;
}

- (id)readCharactersFrom:(unsigned int)a3 to:(unsigned int)a4 textType:(int)a5
{
  v9 = [MEMORY[0x277CCAB68] string];
  while (a3 < a4)
  {
    WrdText::WrdText(&v13, a5, a3, a4 - a3);
    v10 = [(WBReader *)self wrdReader];
    (*(*v10 + 176))(v10, &v13);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithOcText:&v14];
    if (v11)
    {
      [v9 appendString:v11];
    }

    a3 += v14.var3;

    v13 = &unk_286ED5AE0;
    OcText::~OcText(&v14);
  }

  return v9;
}

- (void)setLastRowParagraphProperties:(void *)a3
{
  mLastRowParagraphProperties = self->mLastRowParagraphProperties;
  if (mLastRowParagraphProperties)
  {
    (*(*mLastRowParagraphProperties + 8))(mLastRowParagraphProperties, a2);
  }

  self->mLastRowParagraphProperties = a3;
}

- (id)styleAtIndex:(int)a3
{
  mIndexToStyles = self->mIndexToStyles;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&a3];
  v5 = [(OITSUNoCopyDictionary *)mIndexToStyles objectForKeyedSubscript:v4];

  return v5;
}

- (id)styleAtIndex:(int)a3 expectedType:(int)a4
{
  v5 = [(WBReader *)self styleAtIndex:*&a3];
  v6 = v5;
  if (v5 && [v5 type] != a4)
  {

    v6 = 0;
  }

  return v6;
}

- (void)addStyle:(id)a3 index:(int)a4
{
  v4 = *&a4;
  v8 = a3;
  mIndexToStyles = self->mIndexToStyles;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [(OITSUNoCopyDictionary *)mIndexToStyles setObject:v8 forKey:v7];
}

- (id)fontAtIndex:(int)a3
{
  mIndexToFonts = self->mIndexToFonts;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&a3];
  v5 = [(OITSUNoCopyDictionary *)mIndexToFonts objectForKey:v4];

  return v5;
}

- (void)addFont:(id)a3 index:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if (v6)
  {
    v9 = v6;
    mIndexToFonts = self->mIndexToFonts;
    v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    [(OITSUNoCopyDictionary *)mIndexToFonts setObject:v9 forKey:v8];

    v6 = v9;
  }
}

- (void)cacheTextBox:(id)a3 withChainIndex:(unsigned __int16)a4
{
  v6 = a3;
  mTextBoxes = self->mTextBoxes;
  v9 = v6;
  v10 = a4;
  v8 = v6;
  std::vector<WBTextBoxReaderInfo>::push_back[abi:ne200100](mTextBoxes, &v9);
}

- (WBTextBoxReaderInfo)textBoxInfoAtIndex:(unint64_t)a3
{
  v3 = *self->mTextBoxes + 16 * a3;
  v4 = *v3;
  v5 = *(v3 + 8);
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (id)annotationRangeStartForBookmarkIndex:(unint64_t)a3
{
  mBookmarkIndexToAnnotationRangeStartMap = self->mBookmarkIndexToAnnotationRangeStartMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)mBookmarkIndexToAnnotationRangeStartMap objectForKeyedSubscript:v4];

  return v5;
}

- (void)setAnnotationRangeStart:(id)a3 forBookmarkIndex:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v9 = v6;
    mBookmarkIndexToAnnotationRangeStartMap = self->mBookmarkIndexToAnnotationRangeStartMap;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)mBookmarkIndexToAnnotationRangeStartMap setObject:v9 forKeyedSubscript:v8];

    v6 = v9;
  }
}

@end