@interface EMWorkbookMapper
- (BOOL)hasMultipleSheets;
- (CGSize)pageSizeForDevice;
- (EMWorkbookMapper)initWithDocument:(id)a3 archiver:(id)a4;
- (id)_copyStringForSheet:(id)a3 atIndex:(unint64_t)a4 withState:(id)a5 andMapper:(id)a6;
- (id)_frontPageByCopyingMainPage;
- (id)_mainPageBack;
- (id)blipAtIndex:(unsigned int)a3;
- (id)copySheetMapperWithEdSheet:(id)a3;
- (id)documentTitle;
- (id)headElementForFrontPage;
- (id)styleMatrix;
- (id)tabTitleDrawingAttributes;
- (void)_pushTabForSheet:(id)a3 atIndex:(unint64_t)a4;
- (void)finishMappingWithState:(id)a3;
- (void)mapElement:(id)a3 atIndex:(unint64_t)a4 withState:(id)a5 isLastElement:(BOOL)a6;
- (void)mapStylesheetData:(id)a3 name:(id)a4 atElement:(id)a5;
- (void)mapStylesheetNamed:(id)a3 atElement:(id)a4;
- (void)startMappingWithState:(id)a3;
@end

@implementation EMWorkbookMapper

- (BOOL)hasMultipleSheets
{
  if (self->mRealSheetCount < 2)
  {
    return 0;
  }

  else
  {
    return ![(CMArchiveManager *)self->super.super.mArchiver isThumbnail:v2];
  }
}

- (id)documentTitle
{
  v3 = [(CMMapper *)self document];
  v4 = [v3 summary];

  if (v4)
  {
    v5 = [v3 summary];
    v6 = [v5 title];

    if (v6 && [v6 length])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 workbookName];

  if (v7 && [v7 length])
  {
    v6 = v7;
LABEL_9:
    v8 = v6;
    v7 = v8;
    goto LABEL_11;
  }

  v8 = [(EMWorkbookMapper *)self fileName];
LABEL_11:
  v9 = v8;

  return v9;
}

- (id)_frontPageByCopyingMainPage
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = +[CMXmlUtils copyXhtmlDocument];
  mXhtmlDoc = self->mXhtmlDoc;
  self->mXhtmlDoc = v3;

  v35 = [(EMWorkbookMapper *)self headElementForFrontPage];
  v5 = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  [v5 addChild:v35];

  v6 = [OIXMLElement elementWithType:1];
  mBodyElement = self->mBodyElement;
  self->mBodyElement = v6;

  v8 = self->mBodyElement;
  v9 = MEMORY[0x277CCACA8];
  v10 = [(NSMutableArray *)self->mSheetURLs objectAtIndex:0];
  v11 = [v9 stringWithFormat:@"javascript:ReloadFirstSheetIfNeeded('%@')", v10];
  v12 = [OIXMLAttribute attributeWithName:@"onload" stringValue:v11];
  [(OIXMLElement *)v8 addAttribute:v12];

  v13 = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  [v13 addChild:self->mBodyElement];

  v37 = [OIXMLElement elementWithType:3];
  v14 = [OIXMLAttribute attributeWithName:@"id" stringValue:@"wrapper"];
  [v37 addAttribute:v14];

  v15 = [OIXMLAttribute attributeWithName:@"style" stringValue:@"position:absolute top:40; left:0; right:0; "];;
  [v37 addAttribute:v15];

  v36 = [OIXMLElement elementWithType:8];
  v16 = [OIXMLAttribute attributeWithName:@"id" stringValue:@"SheetFrame"];
  [v36 addAttribute:v16];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = self->mSheetURLs;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v18)
  {
    v19 = *v39;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v39 != v19)
      {
        objc_enumerationMutation(v17);
      }

      v21 = *(*(&v38 + 1) + 8 * v20);
      v22 = [MEMORY[0x277CBEB68] null];
      v23 = v21 == v22;

      if (!v23)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v18)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v24 = v21;

    v25 = v24;
    if (v24)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v25 = &stru_286EE1130;
LABEL_12:
  v26 = [OIXMLAttribute attributeWithName:@"src" stringValue:v25];
  [v36 addAttribute:v26];

  v27 = [OIXMLAttribute attributeWithName:@"style" stringValue:@"border:0 width:100%; height:100%;"];;
  [v36 addAttribute:v27];

  [v37 addChild:v36];
  [(OIXMLElement *)self->mBodyElement addChild:v37];
  v28 = [MEMORY[0x277CCAB68] string];
  v29 = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  v30 = [v29 openingTagString];
  [v28 appendString:v30];

  v31 = [v35 XMLString];
  [v28 appendString:v31];

  v32 = [(OIXMLElement *)self->mBodyElement openingTagString];
  [v28 appendString:v32];

  v33 = [v37 XMLString];
  [v28 appendString:v33];

  return v28;
}

- (id)_mainPageBack
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(OIXMLElement *)self->mBodyElement closingTagString];
  [v3 appendString:v4];

  v5 = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  v6 = [v5 closingTagString];
  [v3 appendString:v6];

  return v3;
}

- (EMWorkbookMapper)initWithDocument:(id)a3 archiver:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v26.receiver = self;
    v26.super_class = EMWorkbookMapper;
    v9 = [(CMDocumentMapper *)&v26 initWithDocument:v8 archiver:v7];
    v10 = v9;
    if (v9)
    {
      v9->mWidth = 0;
      v9->mHeight = 0;
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      mWorksheetGuids = v10->mWorksheetGuids;
      v10->mWorksheetGuids = v11;

      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      mWorksheetUrls = v10->mWorksheetUrls;
      v10->mWorksheetUrls = v13;

      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      mWorksheetNames = v10->mWorksheetNames;
      v10->mWorksheetNames = v15;

      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      mSheetURLs = v10->mSheetURLs;
      v10->mSheetURLs = v17;

      mResourceUrlPrefix = v10->mResourceUrlPrefix;
      v10->mResourceUrlPrefix = &stru_286EE1130;

      mStyleSheetGuid = v10->mStyleSheetGuid;
      v10->mStyleSheetGuid = &stru_286EE1130;

      v10->mRealSheetCount = 0;
      v21 = [v8 sheetCount];
      if (v21 >= 1)
      {
        for (i = 0; i != v21; ++i)
        {
          v23 = [v8 sheetAtIndex:i loadIfNeeded:0];
          if (([v23 isHidden] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              ++v10->mRealSheetCount;
            }
          }
        }
      }
    }

    self = v10;

    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)blipAtIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(CMMapper *)self document];
  v5 = [v4 blips];
  v6 = [v5 blipAtIndex:v3];

  return v6;
}

- (id)styleMatrix
{
  v2 = [(CMMapper *)self document];
  v3 = [v2 theme];
  v4 = [v3 baseStyles];

  if (v4)
  {
    v5 = [v4 styleMatrix];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)pageSizeForDevice
{
  mWidth = self->mWidth;
  mHeight = self->mHeight;
  if ([(EMWorkbookMapper *)self hasMultipleSheets])
  {
    v4 = mHeight + 40.0;
  }

  else
  {
    v4 = mHeight;
  }

  v5 = mWidth;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)mapStylesheetData:(id)a3 name:(id)a4 atElement:(id)a5
{
  v14 = a5;
  v8 = [(CMArchiveManager *)self->super.super.mArchiver addResource:a3 withName:a4 type:8];
  v9 = [OIXMLElement elementWithType:10];
  v10 = [OIXMLAttribute attributeWithName:@"href" stringValue:v8];
  [v9 addAttribute:v10];

  v11 = [OIXMLAttribute attributeWithName:@"rel" stringValue:@"stylesheet"];
  [v9 addAttribute:v11];

  v12 = [OIXMLAttribute attributeWithName:@"type" stringValue:@"text/css"];
  [v9 addAttribute:v12];

  v13 = [OIXMLAttribute attributeWithName:@"charset" stringValue:@"utf-8"];
  [v9 addAttribute:v13];

  [v14 addChild:v9];
}

- (void)mapStylesheetNamed:(id)a3 atElement:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:v11 withExtension:@"css"];
  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
  v10 = [v11 stringByAppendingPathExtension:@"css"];
  [(EMWorkbookMapper *)self mapStylesheetData:v9 name:v10 atElement:v6];
}

- (id)headElementForFrontPage
{
  v3 = [(EMWorkbookMapper *)self documentTitle];
  v4 = [CMXmlUtils copyHeadElementWithTitle:v3];

  v5 = [OIXMLElement elementWithType:12];
  v6 = [OIXMLAttribute attributeWithName:@"http-equiv" stringValue:@"Content-Type"];
  [v5 addAttribute:v6];

  v7 = [OIXMLAttribute attributeWithName:@"content" stringValue:@"text/html charset=utf-8"];;
  [v5 addAttribute:v7];

  [v4 addChild:v5];
  v8 = MEMORY[0x277CBEA90];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 pathForResource:@"TabViewPhone" ofType:@"js"];
  v11 = [v8 dataWithContentsOfFile:v10];

  v12 = [(CMArchiveManager *)self->super.super.mArchiver addResource:v11 withName:@"Tabs.js" type:9];
  v13 = [OIXMLElement elementWithType:15];
  v14 = [OIXMLAttribute attributeWithName:@"src" stringValue:v12];
  [v13 addAttribute:v14];

  v15 = [OIXMLAttribute attributeWithName:@"charset" stringValue:@"utf-8"];
  [v13 addAttribute:v15];

  [v4 addChild:v13];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 pathForResource:@"TabViewPurple" ofType:@"css"];

  v18 = [objc_alloc(MEMORY[0x277CCAB68]) initWithContentsOfFile:v17 encoding:4 error:0];
  v19 = [v18 dataUsingEncoding:4];
  [(EMWorkbookMapper *)self mapStylesheetData:v19 name:@"Tabs.css" atElement:v4];

  return v4;
}

- (id)tabTitleDrawingAttributes
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277D74328];
  v11[0] = @"Arial";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v3 = [MEMORY[0x277D74310] fontDescriptorWithFontAttributes:v2];
  v4 = [v3 fontDescriptorWithSymbolicTraits:{objc_msgSend(v3, "symbolicTraits") | 2}];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:18.0];
  if (!v5)
  {
    v5 = [MEMORY[0x277D74300] boldSystemFontOfSize:18.0];
  }

  v8 = *MEMORY[0x277D740A8];
  v9 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  return v6;
}

- (void)_pushTabForSheet:(id)a3 atIndex:(unint64_t)a4
{
  v25 = a3;
  v6 = [v25 name];
  v7 = [v6 string];

  v8 = [OIXMLElement elementWithType:3 stringValue:v7];
  v9 = MEMORY[0x277CCACA8];
  v10 = [(NSMutableArray *)self->mSheetURLs objectAtIndex:a4];
  v11 = [v9 stringWithFormat:@"javascript:SelectSheet(%lu, '%@')", a4, v10];
  v12 = [OIXMLAttribute attributeWithName:@"onclick" stringValue:v11];
  [v8 addAttribute:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Tab%lu", a4];
  v14 = [OIXMLAttribute attributeWithName:@"id" stringValue:v13];
  [v8 addAttribute:v14];

  v15 = &stru_286EE1130;
  if (!a4)
  {
    v15 = @" selected";
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"TabView%@", v15];
  v17 = [OIXMLAttribute attributeWithName:@"class" stringValue:v16];
  [v8 addAttribute:v17];

  v18 = [(EMWorkbookMapper *)self tabTitleDrawingAttributes];
  [v7 sizeWithAttributes:v18];
  v20 = v19 + 40.0;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"position:absolute overflow:hidden;  top:0; left:%d; width:%d; height:38;", self->mTabPosition, (v19 + 40.0)];;
  v22 = [OIXMLAttribute attributeWithName:@"style" stringValue:v21];
  [v8 addAttribute:v22];

  self->mTabPosition = v20 + self->mTabPosition;
  mArchiver = self->super.super.mArchiver;
  v24 = [v8 XMLString];
  [(CMArchiveManager *)mArchiver pushText:v24 toPath:0];
}

- (void)startMappingWithState:(id)a3
{
  v9 = a3;
  self->mHasPushedHeader = 0;
  self->mIsFirstMappedSheet = 1;
  if ([(EMWorkbookMapper *)self hasMultipleSheets])
  {
    self->mTabPosition = 0.0;
  }

  v4 = [(CMMapper *)self document];
  v5 = [v4 theme];
  v6 = [v5 baseStyles];
  v7 = [v6 colorScheme];
  [v9 setColorScheme:v7];

  v8 = [v4 resources];
  [v9 setResources:v8];
}

- (id)_copyStringForSheet:(id)a3 atIndex:(unint64_t)a4 withState:(id)a5 andMapper:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = +[CMXmlUtils copyXhtmlDocument];
  v11 = [OIXMLElement elementWithType:1];
  [v9 mapAt:v11 withState:v8];
  v12 = [v9 width];
  if (v12 > self->mWidth)
  {
    self->mWidth = v12;
  }

  v13 = [v9 height];
  if (v13 > self->mHeight)
  {
    self->mHeight = v13;
  }

  v14 = [(EMWorkbookMapper *)self archiver];
  v15 = [v14 cssStylesheetString];

  v16 = [(EMWorkbookMapper *)self documentTitle];
  v17 = [CMXmlUtils copyHeadElementWithTitle:v16];

  [(EMWorkbookMapper *)self mapStylesheetNamed:@"spreadsheet" atElement:v17];
  [(EMWorkbookMapper *)self mapStylesheetNamed:@"spreadsheet-ios" atElement:v17];
  v22.receiver = self;
  v22.super_class = EMWorkbookMapper;
  [(CMMapper *)&v22 mapStylesheetAt:v17 stylesheet:v15];
  v18 = [v10 rootElement];
  [v18 addChild:v17];

  v19 = [v10 rootElement];
  [v19 addChild:v11];

  v20 = [v10 XMLString];

  return v20;
}

- (void)mapElement:(id)a3 atIndex:(unint64_t)a4 withState:(id)a5 isLastElement:(BOOL)a6
{
  v31 = a3;
  v10 = a5;
  if (([v31 isHidden] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ![(CMArchiveManager *)self->super.super.mArchiver isCancelled])
    {
      v11 = objc_autoreleasePoolPush();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = [MEMORY[0x277CCA890] currentHandler];
        [v29 handleFailureInMethod:a2 object:self file:@"EMWorkbookMapper.mm" lineNumber:436 description:@"Expected a EMState"];
      }

      v12 = v10;
      [v12 setCurrentSheet:v31];
      v13 = [(EMWorkbookMapper *)self copySheetMapperWithEdSheet:v31];
      if (v13)
      {
        v14 = [v31 name];
        v15 = [v14 string];

        [(NSMutableArray *)self->mWorksheetNames addObject:v15];
        if (self->mIsFirstMappedSheet)
        {
          [(CMArchiveManager *)self->super.super.mArchiver pushText:&stru_286EE1130 toPath:0];
          [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:0];
          self->mIsFirstMappedSheet = 0;
        }

        if ([(EMWorkbookMapper *)self hasMultipleSheets])
        {
          while ([(NSMutableArray *)self->mSheetURLs count]< a4)
          {
            mSheetURLs = self->mSheetURLs;
            v17 = [MEMORY[0x277CBEB68] null];
            [(NSMutableArray *)mSheetURLs addObject:v17];
          }

          mArchiver = self->super.super.mArchiver;
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sheet%lu.html", a4];
          v20 = [(CMArchiveManager *)mArchiver copyResourceWithName:v19 type:10];

          if (v20)
          {
            [(NSMutableArray *)self->mSheetURLs addObject:v20];
          }

          else
          {
            NSLog(@"Could not create URL for sheet %lu", a4);
          }
        }

        v21 = [(EMWorkbookMapper *)self _copyStringForSheet:v31 atIndex:a4 withState:v12 andMapper:v13];
        if ([(CMArchiveManager *)self->super.super.mArchiver isThumbnail])
        {
          [v13 adjustedSize];
          v23 = v22;
          [(CMArchiveManager *)self->super.super.mArchiver setHTMLWidth:v24];
          [(CMArchiveManager *)self->super.super.mArchiver setHTMLHeight:v23];
        }

        if (v21)
        {
          if ([(EMWorkbookMapper *)self hasMultipleSheets])
          {
            v25 = [(NSMutableArray *)self->mSheetURLs objectAtIndex:a4];
            if (!self->mHasPushedHeader)
            {
              v30 = v15;
              self->mHasPushedHeader = 1;
              v26 = [(EMWorkbookMapper *)self _frontPageByCopyingMainPage];
              [(CMArchiveManager *)self->super.super.mArchiver pushText:v26 toPath:0];

              v15 = v30;
            }

            [(EMWorkbookMapper *)self _pushTabForSheet:v31 atIndex:a4];
            [(CMArchiveManager *)self->super.super.mArchiver pushText:v21 toPath:v25];
            [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:v25];
            [(CMArchiveManager *)self->super.super.mArchiver closeResourceAtPath:v25];
            ++self->mNumberOfMappedSheets;
            if (!self->mHasPushedFirstSheet)
            {
              self->mHasPushedFirstSheet = 1;
              v27 = [MEMORY[0x277CCAC38] processInfo];
              v28 = [v27 activeProcessorCount];

              if (v28 == 1)
              {
                sleep(2u);
              }
            }
          }

          else
          {
            [(CMArchiveManager *)self->super.super.mArchiver pushText:v21 toPath:0];
            [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:0];
            [(CMArchiveManager *)self->super.super.mArchiver closeResourceAtPath:0];
          }
        }

        else
        {
          ++self->mSheetIndex;
        }
      }

      objc_autoreleasePoolPop(v11);
    }
  }
}

- (void)finishMappingWithState:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"EMWorkbookMapper.mm" lineNumber:536 description:@"Expected a EMState"];
  }

  v8 = v5;
  [v8 setCurrentSheet:0];
  if ([(EMWorkbookMapper *)self hasMultipleSheets])
  {
    v6 = [(EMWorkbookMapper *)self _mainPageBack];
    [(CMArchiveManager *)self->super.super.mArchiver pushText:v6 toPath:0];
    [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:0];
    [(CMArchiveManager *)self->super.super.mArchiver closeResourceAtPath:0];
  }
}

- (id)copySheetMapperWithEdSheet:(id)a3
{
  v4 = a3;
  if ([v4 isHidden])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[EMChartsheetMapper alloc] initWithChartSheet:v4 parent:self];
LABEL_7:
    v5 = v6;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[EMWorksheetMapper alloc] initWithEDWorksheet:v4 parent:self];
    goto LABEL_7;
  }

LABEL_2:
  v5 = 0;
LABEL_8:

  return v5;
}

@end