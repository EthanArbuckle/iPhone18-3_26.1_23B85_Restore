@interface MUIMessageListSearchSectionDataSource
- (BOOL)hasSupplementaryViewOfKind:(id)kind;
- (BOOL)shouldShowSupplementaryViewOfKindIfEmpty:(id)empty;
- (MUIMessageListSearchSectionDataSource)initWithConfiguration:(id)configuration;
- (MUIMessageListSearchSectionDataSource)initWithSection:(id)section collectionView:(id)view searchProgressView:(id)progressView messageList:(id)list initialLoadCompletedPromise:(id)promise layoutValuesHelper:(id)helper state:(id)state;
- (id)configuredReusableSupplementaryViewForCollectionView:(id)view elementKind:(id)kind indexPath:(id)path;
- (void)_setUpSearchHeaderRegistrationForSection:(id)section layoutValuesHelper:(id)helper;
- (void)_setUpSearchProgressRegistrationForSection:(id)section searchProgressView:(id)view;
@end

@implementation MUIMessageListSearchSectionDataSource

- (MUIMessageListSearchSectionDataSource)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  section = [configurationCopy section];
  collectionView = [configurationCopy collectionView];
  searchProgressView = [configurationCopy searchProgressView];
  messageList = [configurationCopy messageList];
  initialLoadCompletedPromise = [configurationCopy initialLoadCompletedPromise];
  layoutValuesHelper = [configurationCopy layoutValuesHelper];
  state = [configurationCopy state];
  v12 = [(MUIMessageListSearchSectionDataSource *)self initWithSection:section collectionView:collectionView searchProgressView:searchProgressView messageList:messageList initialLoadCompletedPromise:initialLoadCompletedPromise layoutValuesHelper:layoutValuesHelper state:state];

  if (v12)
  {
    delegate = [configurationCopy delegate];
    [(MessageListSectionDataSource *)v12 setDelegate:delegate];

    selectionModelProvider = [configurationCopy selectionModelProvider];
    [(MessageListSectionDataSource *)v12 setSelectionModelProvider:selectionModelProvider];

    contactStore = [configurationCopy contactStore];
    [(MessageListSectionDataSource *)v12 setContactStore:contactStore];

    [(MUIMessageListUnbundledSectionDataSource *)v12 cellRegistration];
  }

  return v12;
}

- (MUIMessageListSearchSectionDataSource)initWithSection:(id)section collectionView:(id)view searchProgressView:(id)progressView messageList:(id)list initialLoadCompletedPromise:(id)promise layoutValuesHelper:(id)helper state:(id)state
{
  sectionCopy = section;
  progressViewCopy = progressView;
  helperCopy = helper;
  v21.receiver = self;
  v21.super_class = MUIMessageListSearchSectionDataSource;
  v18 = [(MUIMessageListUnbundledSectionDataSource *)&v21 initWithSection:sectionCopy collectionView:view messageList:list initialLoadCompletedPromise:promise layoutValuesHelper:helperCopy state:state headerType:2];
  v19 = v18;
  if (v18)
  {
    [(MUIMessageListSearchSectionDataSource *)v18 _setUpSearchProgressRegistrationForSection:sectionCopy searchProgressView:progressViewCopy];
    [(MUIMessageListSearchSectionDataSource *)v19 _setUpSearchHeaderRegistrationForSection:sectionCopy layoutValuesHelper:helperCopy];
  }

  return v19;
}

- (void)_setUpSearchProgressRegistrationForSection:(id)section searchProgressView:(id)view
{
  sectionCopy = section;
  viewCopy = view;
  v8 = MEMORY[0x277D75320];
  v9 = objc_opt_class();
  v10 = *MEMORY[0x277D767D0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__MUIMessageListSearchSectionDataSource__setUpSearchProgressRegistrationForSection_searchProgressView___block_invoke;
  v14[3] = &unk_27818AC28;
  v11 = viewCopy;
  v15 = v11;
  v12 = [v8 registrationWithSupplementaryClass:v9 elementKind:v10 configurationHandler:v14];
  if (@"MessageListSectionIndexedSearch" == sectionCopy)
  {
    v13 = [MEMORY[0x277D75320] registrationWithSupplementaryClass:objc_opt_class() elementKind:v10 configurationHandler:&__block_literal_global_28];
    [(MUIMessageListSearchSectionDataSource *)self setIndexedFooterRegistration:v13];
  }

  else if (@"MessageListSectionServerSearch" == sectionCopy)
  {
    [(MUIMessageListSearchSectionDataSource *)self setServerFooterRegistration:v12];
  }
}

void __103__MUIMessageListSearchSectionDataSource__setUpSearchProgressRegistrationForSection_searchProgressView___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 removeFromSuperview];
  [v4 addSubview:*(a1 + 32)];
  [*(a1 + 32) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 32) mf_pinToView:v4 usingLayoutMargins:1];
}

- (void)_setUpSearchHeaderRegistrationForSection:(id)section layoutValuesHelper:(id)helper
{
  sectionCopy = section;
  helperCopy = helper;
  if (@"MessageListSectionInstantAnswers" != sectionCopy)
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D75320];
    v10 = objc_opt_class();
    v11 = *MEMORY[0x277D767D8];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __101__MUIMessageListSearchSectionDataSource__setUpSearchHeaderRegistrationForSection_layoutValuesHelper___block_invoke;
    v16 = &unk_27818AC70;
    objc_copyWeak(v18, &location);
    v18[1] = a2;
    v17 = helperCopy;
    v12 = [v9 registrationWithSupplementaryClass:v10 elementKind:v11 configurationHandler:&v13];
    [(MessageListSectionDataSource *)self setHeaderRegistration:v12, v13, v14, v15, v16];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

void __101__MUIMessageListSearchSectionDataSource__setUpSearchHeaderRegistrationForSection_layoutValuesHelper___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (_os_feature_enabled_impl())
    {
      v4 = [WeakRetained delegate];
      v5 = objc_opt_respondsToSelector();

      if ((v5 & 1) == 0)
      {
        __101__MUIMessageListSearchSectionDataSource__setUpSearchHeaderRegistrationForSection_layoutValuesHelper___block_invoke_cold_1(a1, WeakRetained);
      }

      v6 = [WeakRetained delegate];
      v7 = [v6 sectionHeaderTitleForMessageListSectionDataSource:WeakRetained];
    }

    else
    {
      v6 = [WeakRetained section];
      v7 = MUITitleFromSection(v6);
    }

    v8 = v7;
    [v10 setTitle:v7];

    [v10 setLayoutValuesHelper:*(a1 + 32)];
    if (_os_feature_enabled_impl())
    {
      v9 = [WeakRetained section];

      if (v9 == @"MessageListSectionIndexedSearch")
      {
        [v10 showSortButtonWithIsHidden:0 selectedOption:0];
      }
    }
  }
}

- (BOOL)hasSupplementaryViewOfKind:(id)kind
{
  kindCopy = kind;
  if ([kindCopy isEqualToString:*MEMORY[0x277D767D0]] && (-[MessageListSectionDataSource section](self, "section"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != @"MessageListSectionTopHits") || (v6 = *MEMORY[0x277D767D8], objc_msgSend(kindCopy, "isEqualToString:", *MEMORY[0x277D767D8])) && (-[MessageListSectionDataSource section](self, "section"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == @"MessageListSectionServerSearch") || _os_feature_enabled_impl() && objc_msgSend(kindCopy, "isEqualToString:", v6) && (-[MessageListSectionDataSource section](self, "section"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8 != @"MessageListSectionInstantAnswers"))
  {
    v9 = 1;
  }

  else if (_os_feature_enabled_impl())
  {
    section = [(MessageListSectionDataSource *)self section];
    v9 = section == @"MessageListSectionIndexedSearch";
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowSupplementaryViewOfKindIfEmpty:(id)empty
{
  emptyCopy = empty;
  section = [(MessageListSectionDataSource *)self section];
  v6 = section;
  if (section == @"MessageListSectionServerSearch")
  {
  }

  else
  {
    section2 = [(MessageListSectionDataSource *)self section];

    if (section2 != @"MessageListSectionIndexedSearch")
    {
LABEL_7:
      v8 = 0;
      goto LABEL_8;
    }
  }

  if (([emptyCopy isEqualToString:*MEMORY[0x277D767D0]] & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = 1;
LABEL_8:

  return v8;
}

- (id)configuredReusableSupplementaryViewForCollectionView:(id)view elementKind:(id)kind indexPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (![kindCopy isEqualToString:*MEMORY[0x277D767D0]] || (-[MessageListSectionDataSource section](self, "section"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == @"MessageListSectionTopHits"))
  {
    if ([kindCopy isEqualToString:*MEMORY[0x277D767D8]])
    {
      headerRegistration = [(MessageListSectionDataSource *)self headerRegistration];
      v14 = [viewCopy dequeueConfiguredReusableSupplementaryViewWithRegistration:headerRegistration forIndexPath:pathCopy];
    }

    else
    {
      v15 = [(MessageListSectionDataSource *)self log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 134218754;
        selfCopy = self;
        v20 = 2114;
        v21 = viewCopy;
        v22 = 2114;
        v23 = kindCopy;
        v24 = 2114;
        v25 = pathCopy;
        _os_log_error_impl(&dword_214A5E000, v15, OS_LOG_TYPE_ERROR, "%p: unable to configure supplementary view for collectionView:%{public}@ of elementKind:%{public}@ at indexPath:%{public}@", &v18, 0x2Au);
      }

      v14 = 0;
    }
  }

  else
  {
    section = [(MessageListSectionDataSource *)self section];
    if (section == @"MessageListSectionIndexedSearch")
    {
      [(MUIMessageListSearchSectionDataSource *)self indexedFooterRegistration];
    }

    else
    {
      [(MUIMessageListSearchSectionDataSource *)self serverFooterRegistration];
    }
    v16 = ;

    v14 = [viewCopy dequeueConfiguredReusableSupplementaryViewWithRegistration:v16 forIndexPath:pathCopy];
  }

  return v14;
}

void __101__MUIMessageListSearchSectionDataSource__setUpSearchHeaderRegistrationForSection_layoutValuesHelper___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:a2 file:@"MUIMessageListSearchSectionDataSource.m" lineNumber:83 description:@"Delegate does not implement necessary method to get search section header title"];
}

@end