@interface CRUDetailViewComponent
- (CRUDetailViewComponent)init;
- (id)componentRepairSpecifierForComponent:(id)component IsUsed:(BOOL)used repairDate:(id)date;
- (id)componentSpecifierForComponent:(id)component;
- (void)handleNonGenuineComponentTap:(id)tap;
@end

@implementation CRUDetailViewComponent

- (CRUDetailViewComponent)init
{
  v30.receiver = self;
  v30.super_class = CRUDetailViewComponent;
  v2 = [(CRUDetailViewComponent *)&v30 init];
  if (v2)
  {
    v2->dataCollectionClassExist = objc_opt_class() != 0;
    kbArticleURL = v2->kbArticleURL;
    v2->kbArticleURL = 0;

    titleText = v2->titleText;
    v2->titleText = 0;

    componentName = v2->componentName;
    v2->componentName = 0;

    informativeText = v2->informativeText;
    v2->informativeText = 0;

    repairDate = v2->repairDate;
    v2->repairDate = 0;

    v8 = objc_opt_new();
    locale = v2->locale;
    v2->locale = v8;

    infoCollectionSpecifier = v2->infoCollectionSpecifier;
    v2->infoCollectionSpecifier = 0;

    v11 = MGCopyAnswer();
    v2->deviceClass = [v11 intValue];

    v12 = objc_opt_new();
    deviceHistory = v2->deviceHistory;
    v2->deviceHistory = v12;

    v14 = v2->deviceHistory;
    v29 = 0;
    v15 = [(CRRepairHistory *)v14 extractRCHLRepairHistoryAndClaimCount:&v29];
    v16 = v29;
    rchlRepairHistory = v2->rchlRepairHistory;
    v2->rchlRepairHistory = v15;

    v18 = [v16 copy];
    claimCount = v2->claimCount;
    v2->claimCount = v18;

    v20 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mobilerepaird"];
    v21 = [v20 objectForKey:@"cachedCAACert"];
    caaRepairHistoryDict = v2->caaRepairHistoryDict;
    v2->caaRepairHistoryDict = 0;

    footerText = v2->footerText;
    v2->footerText = 0;

    if (v21 && [v21 length])
    {
      v24 = [MEMORY[0x277CCAC58] propertyListWithData:v21 options:0 format:0 error:0];
      v25 = v2->caaRepairHistoryDict;
      v2->caaRepairHistoryDict = v24;
    }

    v26 = [(CRRepairHistory *)v2->deviceHistory getRepairHistoryItemswithCAAHistory:v2->caaRepairHistoryDict];
    repairHistoryItems = v2->repairHistoryItems;
    v2->repairHistoryItems = v26;
  }

  return v2;
}

- (void)handleNonGenuineComponentTap:(id)tap
{
  v3 = *MEMORY[0x277CFE418];
  tapCopy = tap;
  v7 = [tapCopy propertyForKey:v3];
  v5 = [tapCopy propertyForKey:*MEMORY[0x277CFE410]];

  v6 = [MEMORY[0x277CFE548] handlerWithItem:v7];
  [v6 handleAction:v5 completion:&__block_literal_global_0];
}

- (id)componentRepairSpecifierForComponent:(id)component IsUsed:(BOOL)used repairDate:(id)date
{
  usedCopy = used;
  dateCopy = date;
  componentCopy = component;
  v8 = objc_opt_new();
  v9 = MEMORY[0x277D3FAD8];
  locale = [(CRUDetailViewComponent *)self locale];
  v11 = [locale localizedStringWithKey:@"REPAIR_RECORD" defaultString:@"REPAIR_RECORD"];
  v12 = [v9 groupSpecifierWithName:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 setProperty:v14 forKey:*MEMORY[0x277D3FF48]];

  kbArticleURL = [(CRUDetailViewComponent *)self kbArticleURL];
  [v12 setProperty:kbArticleURL forKey:*MEMORY[0x277D3FF78]];

  footerText = [(CRUDetailViewComponent *)self footerText];
  [v12 setProperty:footerText forKey:*MEMORY[0x277D3FF70]];

  footerText2 = [(CRUDetailViewComponent *)self footerText];
  footerText3 = [(CRUDetailViewComponent *)self footerText];
  v64.location = [footerText2 rangeOfString:footerText3];
  v19 = NSStringFromRange(v64);
  [v12 setProperty:v19 forKey:*MEMORY[0x277D3FF58]];

  v60 = v12;
  [v8 addObject:v12];
  v20 = MEMORY[0x277D3FAD8];
  locale2 = [(CRUDetailViewComponent *)self locale];
  v22 = [locale2 localizedStringWithKey:@"PART" defaultString:@"PART"];
  v23 = [v20 preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:3 edit:0];

  locale3 = [(CRUDetailViewComponent *)self locale];
  v25 = [locale3 localizedStringWithKey:@"PART" defaultString:@"PART"];
  [v23 setName:v25];

  v26 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:componentCopy];
  v27 = v8;
  [v23 setProperty:v26 forKey:@"CRImageAlertKey"];

  v28 = objc_opt_class();
  v61 = *MEMORY[0x277D3FE58];
  [v23 setProperty:v28 forKey:?];
  v59 = v23;
  [v8 addObject:v23];
  v29 = MEMORY[0x277D3FAD8];
  locale4 = [(CRUDetailViewComponent *)self locale];
  v31 = [locale4 localizedStringWithKey:@"STATUS" defaultString:@"STATUS"];
  v32 = [v29 preferenceSpecifierNamed:v31 target:self set:0 get:0 detail:0 cell:3 edit:0];

  locale5 = [(CRUDetailViewComponent *)self locale];
  v34 = [locale5 localizedStringWithKey:@"STATUS" defaultString:@"STATUS"];
  [v32 setName:v34];

  locale6 = [(CRUDetailViewComponent *)self locale];
  v36 = locale6;
  if (usedCopy)
  {
    v37 = [locale6 localizedStringWithKey:@"USED" defaultString:@"USED"];

    v38 = objc_opt_new();
    v39 = [MEMORY[0x277D755B0] systemImageNamed:@"checkmark.arrow.trianglehead.counterclockwise"];
    [MEMORY[0x277D75340] systemBlueColor];
  }

  else
  {
    v37 = [locale6 localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];

    v38 = objc_opt_new();
    v39 = [MEMORY[0x277D755B0] systemImageNamed:@"checkmark.seal.fill"];
    [MEMORY[0x277D75340] systemGreenColor];
  }
  v40 = ;
  v41 = [v39 imageWithTintColor:v40];

  v42 = [v41 imageWithRenderingMode:1];

  v56 = [MEMORY[0x277D74268] textAttachmentWithImage:v42];
  v43 = [MEMORY[0x277CCA898] attributedStringWithAttachment:?];
  [v38 appendAttributedString:v43];
  v44 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
  [v38 appendAttributedString:v44];

  v58 = v37;
  v45 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v37];
  [v38 appendAttributedString:v45];

  [v32 setProperty:v38 forKey:@"CRImageAlertKey"];
  [v32 setProperty:objc_opt_class() forKey:v61];
  [v27 addObject:v32];
  v46 = dateCopy;
  if (dateCopy)
  {
    v47 = MEMORY[0x277D3FAD8];
    [(CRUDetailViewComponent *)self locale];
    v49 = v48 = v27;
    v50 = [v49 localizedStringWithKey:@"REPAIRED" defaultString:@"REPAIRED"];
    v51 = [v47 preferenceSpecifierNamed:v50 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v46 = dateCopy;
    v27 = v48;
    locale7 = [(CRUDetailViewComponent *)self locale];
    v53 = [locale7 localizedStringWithKey:@"REPAIRED" defaultString:@"REPAIRED"];
    [v51 setName:v53];

    v54 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:dateCopy];
    [v51 setProperty:v54 forKey:@"CRImageAlertKey"];

    [v51 setProperty:objc_opt_class() forKey:v61];
    [v48 addObject:v51];
  }

  return v27;
}

- (id)componentSpecifierForComponent:(id)component
{
  v31 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  v5 = objc_opt_new();
  footerText = [(CRUDetailViewComponent *)self footerText];

  if (footerText)
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [emptyGroupSpecifier setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

    kbArticleURL = [(CRUDetailViewComponent *)self kbArticleURL];
    [emptyGroupSpecifier setProperty:kbArticleURL forKey:*MEMORY[0x277D3FF78]];

    footerText2 = [(CRUDetailViewComponent *)self footerText];
    [emptyGroupSpecifier setProperty:footerText2 forKey:*MEMORY[0x277D3FF70]];

    footerText3 = [(CRUDetailViewComponent *)self footerText];
    footerText4 = [(CRUDetailViewComponent *)self footerText];
    v33.location = [footerText3 rangeOfString:footerText4];
    v14 = NSStringFromRange(v33);
    [emptyGroupSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF58]];

    [v5 addObject:emptyGroupSpecifier];
  }

  v15 = objc_alloc_init(MEMORY[0x277CFE508]);
  v16 = MEMORY[0x277CFE4F8];
  buttonTitle = self->buttonTitle;
  kbArticleURL2 = [(CRUDetailViewComponent *)self kbArticleURL];
  v19 = [v16 actionWithLabel:buttonTitle url:kbArticleURL2];

  titleText = [(CRUDetailViewComponent *)self titleText];
  [v15 setTitle:titleText];

  informativeText = [(CRUDetailViewComponent *)self informativeText];
  [v15 setInformativeText:informativeText];

  v22 = [MEMORY[0x277CBEA60] arrayWithObject:v19];
  [v15 setActions:v22];

  v23 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28597A1D8 target:0 set:0 get:0 detail:0 cell:4 edit:0];
  [v23 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v23 setProperty:v15 forKey:*MEMORY[0x277CFE418]];
  [v5 addObject:v23];
  infoCollectionSpecifier = [(CRUDetailViewComponent *)self infoCollectionSpecifier];

  if (infoCollectionSpecifier)
  {
    v25 = handleForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = componentCopy;
      _os_log_impl(&dword_247875000, v25, OS_LOG_TYPE_DEFAULT, "Has infomation collection specifier for component: %@", buf, 0xCu);
    }

    infoCollectionSpecifier2 = [(CRUDetailViewComponent *)self infoCollectionSpecifier];
    [v5 addObject:infoCollectionSpecifier2];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

@end