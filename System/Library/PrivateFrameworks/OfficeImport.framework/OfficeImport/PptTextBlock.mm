@interface PptTextBlock
- (PptCharRun)characterRunAtIndex:(int)index;
- (PptTextBlock)init;
- (int)characterRunCount;
- (int)paragraphRunCount;
- (int)specialInfoRunCount;
- (void)paragraphRunAtIndex:(int)index;
- (void)readMetaCharacterFieldsBookmarksAndHyperlinks:(id)hyperlinks;
- (void)readSpecialInfo:(id)info;
- (void)readString:(id)string;
- (void)readStyles:(id)styles;
- (void)readTextBlock:(id)block;
- (void)specialInfoRunAtIndex:(int)index;
@end

@implementation PptTextBlock

- (PptTextBlock)init
{
  v13.receiver = self;
  v13.super_class = PptTextBlock;
  v2 = [(PptTextBlock *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->mTextHeader = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mText = v3->mText;
    v3->mText = v4;

    v3->mStyleText = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mMetaCharacterFields = v3->mMetaCharacterFields;
    v3->mMetaCharacterFields = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mBookmarks = v3->mBookmarks;
    v3->mBookmarks = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mHyperlinks = v3->mHyperlinks;
    v3->mHyperlinks = v10;

    v3->mTextRuler = 0;
  }

  return v3;
}

- (int)paragraphRunCount
{
  mStyleText = self->mStyleText;
  if (mStyleText)
  {
    return (mStyleText[7] - mStyleText[6]) >> 3;
  }

  else
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

- (int)characterRunCount
{
  mStyleText = self->mStyleText;
  if (mStyleText)
  {
    return (mStyleText[10] - mStyleText[9]) >> 3;
  }

  else
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

- (void)readTextBlock:(id)block
{
  blockCopy = block;
  v4 = [blockCopy firstChildOfType:3999];
  v5 = v4;
  if (!v4)
  {
LABEL_11:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1000;
  }

  eshObject = [v4 eshObject];
  if (!eshObject)
  {
    self->mTextHeader = 0;
    goto LABEL_11;
  }

  self->mTextHeader = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  [(PptTextBlock *)self readString:blockCopy];
  [(PptTextBlock *)self readStyles:blockCopy];
  [(PptTextBlock *)self readSpecialInfo:blockCopy];
  [(PptTextBlock *)self readMetaCharacterFieldsBookmarksAndHyperlinks:blockCopy];
  v8 = [blockCopy firstChildOfType:4006];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  eshObject2 = [v8 eshObject];
  if (!eshObject2)
  {
    self->mTextRuler = 0;
LABEL_13:
    v13 = __cxa_allocate_exception(4uLL);
    *v13 = 1000;
  }

  self->mTextRuler = v11;
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_7:
}

- (void)paragraphRunAtIndex:(int)index
{
  mStyleText = self->mStyleText;
  if (!mStyleText)
  {
    return 0;
  }

  v5 = (mStyleText + 6);
  v4 = mStyleText[6];
  v6 = (*(v5 + 1) - v4) >> 3;
  if (v6 < index)
  {
    return 0;
  }

  if (v6 <= index)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v4 + 8 * index);
}

- (PptCharRun)characterRunAtIndex:(int)index
{
  mStyleText = self->mStyleText;
  if (!mStyleText)
  {
    return 0;
  }

  v5 = (mStyleText + 9);
  v4 = mStyleText[9];
  v6 = (*(v5 + 1) - v4) >> 3;
  if (v6 < index)
  {
    return 0;
  }

  if (v6 <= index)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v4 + 8 * index);
}

- (int)specialInfoRunCount
{
  mSpecialInfo = self->mSpecialInfo;
  if (mSpecialInfo)
  {
    return (mSpecialInfo[7] - mSpecialInfo[6]) >> 3;
  }

  else
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

- (void)specialInfoRunAtIndex:(int)index
{
  mSpecialInfo = self->mSpecialInfo;
  if (mSpecialInfo && (v5 = (mSpecialInfo + 6), v4 = mSpecialInfo[6], ((*(v5 + 1) - v4) >> 3) >= index))
  {
    return *(v4 + 8 * index);
  }

  else
  {
    return 0;
  }
}

- (void)readString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy firstChildOfType:4000];
  v5 = v4;
  if (v4)
  {
    eshObject = [v4 eshObject];
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1000;
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:v7 + 48];
    [(NSMutableString *)self->mText setString:v8];
LABEL_5:

    goto LABEL_6;
  }

  v9 = [stringCopy firstChildOfType:4008];
  v5 = v9;
  if (v9)
  {
    eshObject2 = [v9 eshObject];
    {
      v15 = __cxa_allocate_exception(4uLL);
      *v15 = 1000;
    }

    v12 = v11;
    DataLength = EshRecord::getDataLength(v11);
    if (DataLength)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v12 + 6) length:DataLength encoding:12];
      if (!v8)
      {
        operator new[]();
      }

      [(NSMutableString *)self->mText setString:v8];
      goto LABEL_5;
    }
  }

LABEL_6:
}

- (void)readStyles:(id)styles
{
  stylesCopy = styles;
  v4 = [stylesCopy firstChildOfType:4002];
  if (v4 || ([stylesCopy firstChildOfType:4001], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    eshObject = [v4 eshObject];
    if (eshObject)
    {
      self->mStyleText = v6;
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      self->mStyleText = 0;
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 1000;
  }

LABEL_5:
}

- (void)readSpecialInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy firstChildOfType:4010];
  v5 = v4;
  if (v4)
  {
    eshObject = [v4 eshObject];
    if (eshObject)
    {
      self->mSpecialInfo = v7;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      self->mSpecialInfo = 0;
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 1000;
  }

LABEL_4:
}

- (void)readMetaCharacterFieldsBookmarksAndHyperlinks:(id)hyperlinks
{
  hyperlinksCopy = hyperlinks;
  childCount = [hyperlinksCopy childCount];
  if (childCount)
  {
    for (i = 0; childCount != i; ++i)
    {
      v6 = [hyperlinksCopy childAt:i];
      eshObject = [v6 eshObject];
      v8 = (*(*eshObject + 16))(eshObject);
      v9 = 0;
      if (v8 <= 4086)
      {
        switch(v8)
        {
          case 4007:
            v9 = 0;
            [(NSMutableArray *)self->mBookmarks addObject:v6];
            break;
          case 4056:
            if (v18)
            {
              v11 = [[PptMetaCharacterBlock alloc] initWithType:4056 position:v18[12]];
LABEL_25:
              v9 = v11;
              if (v11)
              {
                [(NSMutableArray *)self->mMetaCharacterFields addObject:v11];
              }

              break;
            }

            goto LABEL_27;
          case 4082:
            v12 = [hyperlinksCopy childAt:i + 1];
            eshObject2 = [v12 eshObject];
            if (!eshObject2 || (*(*eshObject2 + 16))(eshObject2) != 4063)
            {
              exception = __cxa_allocate_exception(4uLL);
              *exception = 1000;
            }

            v14 = objc_alloc_init(PptHyperlinkBlock);
            [(PptHyperlinkBlock *)v14 setInteractiveInfoContainerHolder:v6];
            [(PptHyperlinkBlock *)v14 setTxInteractiveInfoAtomHolder:v12];
            [(NSMutableArray *)self->mHyperlinks addObject:v14];

LABEL_27:
            v9 = 0;
            break;
        }
      }

      else
      {
        if (v8 <= 4088)
        {
          if (v8 == 4087)
          {
            if (v16)
            {
              v11 = [[PptMetaCharacterBlock alloc] initWithType:4087 position:v16[12] extraData:v16[13]];
              goto LABEL_25;
            }
          }

          else
          {
            if (v10)
            {
              v11 = [[PptMetaCharacterBlock alloc] initWithType:4088 position:v10[12]];
              goto LABEL_25;
            }
          }

          goto LABEL_27;
        }

        if (v8 == 4089)
        {
          if (v17)
          {
            v11 = [[PptMetaCharacterBlock alloc] initWithType:4089 position:v17[12]];
            goto LABEL_25;
          }

          goto LABEL_27;
        }

        if (v8 == 4090)
        {
          if (v15)
          {
            v11 = [[PptMetaCharacterBlock alloc] initWithType:4090 position:v15[12]];
            goto LABEL_25;
          }

          goto LABEL_27;
        }
      }
    }
  }
}

@end