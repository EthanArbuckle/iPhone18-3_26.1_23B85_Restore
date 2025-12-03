@interface EMWorkbookMapper
- (BOOL)hasMultipleSheets;
- (CGSize)pageSizeForDevice;
- (EMWorkbookMapper)initWithDocument:(id)document archiver:(id)archiver;
- (id)_copyStringForSheet:(id)sheet atIndex:(unint64_t)index withState:(id)state andMapper:(id)mapper;
- (id)_frontPageByCopyingMainPage;
- (id)_mainPageBack;
- (id)blipAtIndex:(unsigned int)index;
- (id)copySheetMapperWithEdSheet:(id)sheet;
- (id)documentTitle;
- (id)headElementForFrontPage;
- (id)styleMatrix;
- (id)tabTitleDrawingAttributes;
- (void)_pushTabForSheet:(id)sheet atIndex:(unint64_t)index;
- (void)finishMappingWithState:(id)state;
- (void)mapElement:(id)element atIndex:(unint64_t)index withState:(id)state isLastElement:(BOOL)lastElement;
- (void)mapStylesheetData:(id)data name:(id)name atElement:(id)element;
- (void)mapStylesheetNamed:(id)named atElement:(id)element;
- (void)startMappingWithState:(id)state;
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
  document = [(CMMapper *)self document];
  summary = [document summary];

  if (summary)
  {
    summary2 = [document summary];
    title = [summary2 title];

    if (title && [title length])
    {
      goto LABEL_9;
    }
  }

  else
  {
    title = 0;
  }

  workbookName = [document workbookName];

  if (workbookName && [workbookName length])
  {
    title = workbookName;
LABEL_9:
    fileName = title;
    workbookName = fileName;
    goto LABEL_11;
  }

  fileName = [(EMWorkbookMapper *)self fileName];
LABEL_11:
  v9 = fileName;

  return v9;
}

- (id)_frontPageByCopyingMainPage
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = +[CMXmlUtils copyXhtmlDocument];
  mXhtmlDoc = self->mXhtmlDoc;
  self->mXhtmlDoc = v3;

  headElementForFrontPage = [(EMWorkbookMapper *)self headElementForFrontPage];
  rootElement = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  [rootElement addChild:headElementForFrontPage];

  v6 = [OIXMLElement elementWithType:1];
  mBodyElement = self->mBodyElement;
  self->mBodyElement = v6;

  v8 = self->mBodyElement;
  v9 = MEMORY[0x277CCACA8];
  v10 = [(NSMutableArray *)self->mSheetURLs objectAtIndex:0];
  v11 = [v9 stringWithFormat:@"javascript:ReloadFirstSheetIfNeeded('%@')", v10];
  v12 = [OIXMLAttribute attributeWithName:@"onload" stringValue:v11];
  [(OIXMLElement *)v8 addAttribute:v12];

  rootElement2 = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  [rootElement2 addChild:self->mBodyElement];

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
      null = [MEMORY[0x277CBEB68] null];
      v23 = v21 == null;

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
  string = [MEMORY[0x277CCAB68] string];
  rootElement3 = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  openingTagString = [rootElement3 openingTagString];
  [string appendString:openingTagString];

  xMLString = [headElementForFrontPage XMLString];
  [string appendString:xMLString];

  openingTagString2 = [(OIXMLElement *)self->mBodyElement openingTagString];
  [string appendString:openingTagString2];

  xMLString2 = [v37 XMLString];
  [string appendString:xMLString2];

  return string;
}

- (id)_mainPageBack
{
  string = [MEMORY[0x277CCAB68] string];
  closingTagString = [(OIXMLElement *)self->mBodyElement closingTagString];
  [string appendString:closingTagString];

  rootElement = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  closingTagString2 = [rootElement closingTagString];
  [string appendString:closingTagString2];

  return string;
}

- (EMWorkbookMapper)initWithDocument:(id)document archiver:(id)archiver
{
  documentCopy = document;
  archiverCopy = archiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = documentCopy;
    v26.receiver = self;
    v26.super_class = EMWorkbookMapper;
    v9 = [(CMDocumentMapper *)&v26 initWithDocument:v8 archiver:archiverCopy];
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
      sheetCount = [v8 sheetCount];
      if (sheetCount >= 1)
      {
        for (i = 0; i != sheetCount; ++i)
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)blipAtIndex:(unsigned int)index
{
  v3 = *&index;
  document = [(CMMapper *)self document];
  blips = [document blips];
  v6 = [blips blipAtIndex:v3];

  return v6;
}

- (id)styleMatrix
{
  document = [(CMMapper *)self document];
  theme = [document theme];
  baseStyles = [theme baseStyles];

  if (baseStyles)
  {
    styleMatrix = [baseStyles styleMatrix];
  }

  else
  {
    styleMatrix = 0;
  }

  return styleMatrix;
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

- (void)mapStylesheetData:(id)data name:(id)name atElement:(id)element
{
  elementCopy = element;
  v8 = [(CMArchiveManager *)self->super.super.mArchiver addResource:data withName:name type:8];
  v9 = [OIXMLElement elementWithType:10];
  v10 = [OIXMLAttribute attributeWithName:@"href" stringValue:v8];
  [v9 addAttribute:v10];

  v11 = [OIXMLAttribute attributeWithName:@"rel" stringValue:@"stylesheet"];
  [v9 addAttribute:v11];

  v12 = [OIXMLAttribute attributeWithName:@"type" stringValue:@"text/css"];
  [v9 addAttribute:v12];

  v13 = [OIXMLAttribute attributeWithName:@"charset" stringValue:@"utf-8"];
  [v9 addAttribute:v13];

  [elementCopy addChild:v9];
}

- (void)mapStylesheetNamed:(id)named atElement:(id)element
{
  namedCopy = named;
  elementCopy = element;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:namedCopy withExtension:@"css"];
  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
  v10 = [namedCopy stringByAppendingPathExtension:@"css"];
  [(EMWorkbookMapper *)self mapStylesheetData:v9 name:v10 atElement:elementCopy];
}

- (id)headElementForFrontPage
{
  documentTitle = [(EMWorkbookMapper *)self documentTitle];
  v4 = [CMXmlUtils copyHeadElementWithTitle:documentTitle];

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

- (void)_pushTabForSheet:(id)sheet atIndex:(unint64_t)index
{
  sheetCopy = sheet;
  name = [sheetCopy name];
  string = [name string];

  v8 = [OIXMLElement elementWithType:3 stringValue:string];
  v9 = MEMORY[0x277CCACA8];
  v10 = [(NSMutableArray *)self->mSheetURLs objectAtIndex:index];
  v11 = [v9 stringWithFormat:@"javascript:SelectSheet(%lu, '%@')", index, v10];
  v12 = [OIXMLAttribute attributeWithName:@"onclick" stringValue:v11];
  [v8 addAttribute:v12];

  index = [MEMORY[0x277CCACA8] stringWithFormat:@"Tab%lu", index];
  v14 = [OIXMLAttribute attributeWithName:@"id" stringValue:index];
  [v8 addAttribute:v14];

  v15 = &stru_286EE1130;
  if (!index)
  {
    v15 = @" selected";
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"TabView%@", v15];
  v17 = [OIXMLAttribute attributeWithName:@"class" stringValue:v16];
  [v8 addAttribute:v17];

  tabTitleDrawingAttributes = [(EMWorkbookMapper *)self tabTitleDrawingAttributes];
  [string sizeWithAttributes:tabTitleDrawingAttributes];
  v20 = v19 + 40.0;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"position:absolute overflow:hidden;  top:0; left:%d; width:%d; height:38;", self->mTabPosition, (v19 + 40.0)];;
  v22 = [OIXMLAttribute attributeWithName:@"style" stringValue:v21];
  [v8 addAttribute:v22];

  self->mTabPosition = v20 + self->mTabPosition;
  mArchiver = self->super.super.mArchiver;
  xMLString = [v8 XMLString];
  [(CMArchiveManager *)mArchiver pushText:xMLString toPath:0];
}

- (void)startMappingWithState:(id)state
{
  stateCopy = state;
  self->mHasPushedHeader = 0;
  self->mIsFirstMappedSheet = 1;
  if ([(EMWorkbookMapper *)self hasMultipleSheets])
  {
    self->mTabPosition = 0.0;
  }

  document = [(CMMapper *)self document];
  theme = [document theme];
  baseStyles = [theme baseStyles];
  colorScheme = [baseStyles colorScheme];
  [stateCopy setColorScheme:colorScheme];

  resources = [document resources];
  [stateCopy setResources:resources];
}

- (id)_copyStringForSheet:(id)sheet atIndex:(unint64_t)index withState:(id)state andMapper:(id)mapper
{
  stateCopy = state;
  mapperCopy = mapper;
  v10 = +[CMXmlUtils copyXhtmlDocument];
  v11 = [OIXMLElement elementWithType:1];
  [mapperCopy mapAt:v11 withState:stateCopy];
  width = [mapperCopy width];
  if (width > self->mWidth)
  {
    self->mWidth = width;
  }

  height = [mapperCopy height];
  if (height > self->mHeight)
  {
    self->mHeight = height;
  }

  archiver = [(EMWorkbookMapper *)self archiver];
  cssStylesheetString = [archiver cssStylesheetString];

  documentTitle = [(EMWorkbookMapper *)self documentTitle];
  v17 = [CMXmlUtils copyHeadElementWithTitle:documentTitle];

  [(EMWorkbookMapper *)self mapStylesheetNamed:@"spreadsheet" atElement:v17];
  [(EMWorkbookMapper *)self mapStylesheetNamed:@"spreadsheet-ios" atElement:v17];
  v22.receiver = self;
  v22.super_class = EMWorkbookMapper;
  [(CMMapper *)&v22 mapStylesheetAt:v17 stylesheet:cssStylesheetString];
  rootElement = [v10 rootElement];
  [rootElement addChild:v17];

  rootElement2 = [v10 rootElement];
  [rootElement2 addChild:v11];

  xMLString = [v10 XMLString];

  return xMLString;
}

- (void)mapElement:(id)element atIndex:(unint64_t)index withState:(id)state isLastElement:(BOOL)lastElement
{
  elementCopy = element;
  stateCopy = state;
  if (([elementCopy isHidden] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ![(CMArchiveManager *)self->super.super.mArchiver isCancelled])
    {
      v11 = objc_autoreleasePoolPush();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EMWorkbookMapper.mm" lineNumber:436 description:@"Expected a EMState"];
      }

      v12 = stateCopy;
      [v12 setCurrentSheet:elementCopy];
      v13 = [(EMWorkbookMapper *)self copySheetMapperWithEdSheet:elementCopy];
      if (v13)
      {
        name = [elementCopy name];
        string = [name string];

        [(NSMutableArray *)self->mWorksheetNames addObject:string];
        if (self->mIsFirstMappedSheet)
        {
          [(CMArchiveManager *)self->super.super.mArchiver pushText:&stru_286EE1130 toPath:0];
          [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:0];
          self->mIsFirstMappedSheet = 0;
        }

        if ([(EMWorkbookMapper *)self hasMultipleSheets])
        {
          while ([(NSMutableArray *)self->mSheetURLs count]< index)
          {
            mSheetURLs = self->mSheetURLs;
            null = [MEMORY[0x277CBEB68] null];
            [(NSMutableArray *)mSheetURLs addObject:null];
          }

          mArchiver = self->super.super.mArchiver;
          index = [MEMORY[0x277CCACA8] stringWithFormat:@"Sheet%lu.html", index];
          v20 = [(CMArchiveManager *)mArchiver copyResourceWithName:index type:10];

          if (v20)
          {
            [(NSMutableArray *)self->mSheetURLs addObject:v20];
          }

          else
          {
            NSLog(@"Could not create URL for sheet %lu", index);
          }
        }

        v21 = [(EMWorkbookMapper *)self _copyStringForSheet:elementCopy atIndex:index withState:v12 andMapper:v13];
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
            v25 = [(NSMutableArray *)self->mSheetURLs objectAtIndex:index];
            if (!self->mHasPushedHeader)
            {
              v30 = string;
              self->mHasPushedHeader = 1;
              _frontPageByCopyingMainPage = [(EMWorkbookMapper *)self _frontPageByCopyingMainPage];
              [(CMArchiveManager *)self->super.super.mArchiver pushText:_frontPageByCopyingMainPage toPath:0];

              string = v30;
            }

            [(EMWorkbookMapper *)self _pushTabForSheet:elementCopy atIndex:index];
            [(CMArchiveManager *)self->super.super.mArchiver pushText:v21 toPath:v25];
            [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:v25];
            [(CMArchiveManager *)self->super.super.mArchiver closeResourceAtPath:v25];
            ++self->mNumberOfMappedSheets;
            if (!self->mHasPushedFirstSheet)
            {
              self->mHasPushedFirstSheet = 1;
              processInfo = [MEMORY[0x277CCAC38] processInfo];
              activeProcessorCount = [processInfo activeProcessorCount];

              if (activeProcessorCount == 1)
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

- (void)finishMappingWithState:(id)state
{
  stateCopy = state;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMWorkbookMapper.mm" lineNumber:536 description:@"Expected a EMState"];
  }

  v8 = stateCopy;
  [v8 setCurrentSheet:0];
  if ([(EMWorkbookMapper *)self hasMultipleSheets])
  {
    _mainPageBack = [(EMWorkbookMapper *)self _mainPageBack];
    [(CMArchiveManager *)self->super.super.mArchiver pushText:_mainPageBack toPath:0];
    [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:0];
    [(CMArchiveManager *)self->super.super.mArchiver closeResourceAtPath:0];
  }
}

- (id)copySheetMapperWithEdSheet:(id)sheet
{
  sheetCopy = sheet;
  if ([sheetCopy isHidden])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[EMChartsheetMapper alloc] initWithChartSheet:sheetCopy parent:self];
LABEL_7:
    v5 = v6;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[EMWorksheetMapper alloc] initWithEDWorksheet:sheetCopy parent:self];
    goto LABEL_7;
  }

LABEL_2:
  v5 = 0;
LABEL_8:

  return v5;
}

@end