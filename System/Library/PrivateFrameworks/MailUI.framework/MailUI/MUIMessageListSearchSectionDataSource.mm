@interface MUIMessageListSearchSectionDataSource
- (BOOL)hasSupplementaryViewOfKind:(id)a3;
- (BOOL)shouldShowSupplementaryViewOfKindIfEmpty:(id)a3;
- (MUIMessageListSearchSectionDataSource)initWithConfiguration:(id)a3;
- (MUIMessageListSearchSectionDataSource)initWithSection:(id)a3 collectionView:(id)a4 searchProgressView:(id)a5 messageList:(id)a6 initialLoadCompletedPromise:(id)a7 layoutValuesHelper:(id)a8 state:(id)a9;
- (id)configuredReusableSupplementaryViewForCollectionView:(id)a3 elementKind:(id)a4 indexPath:(id)a5;
- (void)_setUpSearchHeaderRegistrationForSection:(id)a3 layoutValuesHelper:(id)a4;
- (void)_setUpSearchProgressRegistrationForSection:(id)a3 searchProgressView:(id)a4;
@end

@implementation MUIMessageListSearchSectionDataSource

- (MUIMessageListSearchSectionDataSource)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 collectionView];
  v7 = [v4 searchProgressView];
  v8 = [v4 messageList];
  v9 = [v4 initialLoadCompletedPromise];
  v10 = [v4 layoutValuesHelper];
  v11 = [v4 state];
  v12 = [(MUIMessageListSearchSectionDataSource *)self initWithSection:v5 collectionView:v6 searchProgressView:v7 messageList:v8 initialLoadCompletedPromise:v9 layoutValuesHelper:v10 state:v11];

  if (v12)
  {
    v13 = [v4 delegate];
    [(MessageListSectionDataSource *)v12 setDelegate:v13];

    v14 = [v4 selectionModelProvider];
    [(MessageListSectionDataSource *)v12 setSelectionModelProvider:v14];

    v15 = [v4 contactStore];
    [(MessageListSectionDataSource *)v12 setContactStore:v15];

    [(MUIMessageListUnbundledSectionDataSource *)v12 cellRegistration];
  }

  return v12;
}

- (MUIMessageListSearchSectionDataSource)initWithSection:(id)a3 collectionView:(id)a4 searchProgressView:(id)a5 messageList:(id)a6 initialLoadCompletedPromise:(id)a7 layoutValuesHelper:(id)a8 state:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = MUIMessageListSearchSectionDataSource;
  v18 = [(MUIMessageListUnbundledSectionDataSource *)&v21 initWithSection:v15 collectionView:a4 messageList:a6 initialLoadCompletedPromise:a7 layoutValuesHelper:v17 state:a9 headerType:2];
  v19 = v18;
  if (v18)
  {
    [(MUIMessageListSearchSectionDataSource *)v18 _setUpSearchProgressRegistrationForSection:v15 searchProgressView:v16];
    [(MUIMessageListSearchSectionDataSource *)v19 _setUpSearchHeaderRegistrationForSection:v15 layoutValuesHelper:v17];
  }

  return v19;
}

- (void)_setUpSearchProgressRegistrationForSection:(id)a3 searchProgressView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D75320];
  v9 = objc_opt_class();
  v10 = *MEMORY[0x277D767D0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__MUIMessageListSearchSectionDataSource__setUpSearchProgressRegistrationForSection_searchProgressView___block_invoke;
  v14[3] = &unk_27818AC28;
  v11 = v7;
  v15 = v11;
  v12 = [v8 registrationWithSupplementaryClass:v9 elementKind:v10 configurationHandler:v14];
  if (@"MessageListSectionIndexedSearch" == v6)
  {
    v13 = [MEMORY[0x277D75320] registrationWithSupplementaryClass:objc_opt_class() elementKind:v10 configurationHandler:&__block_literal_global_28];
    [(MUIMessageListSearchSectionDataSource *)self setIndexedFooterRegistration:v13];
  }

  else if (@"MessageListSectionServerSearch" == v6)
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

- (void)_setUpSearchHeaderRegistrationForSection:(id)a3 layoutValuesHelper:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (@"MessageListSectionInstantAnswers" != v7)
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
    v17 = v8;
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

- (BOOL)hasSupplementaryViewOfKind:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D767D0]] && (-[MessageListSectionDataSource section](self, "section"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != @"MessageListSectionTopHits") || (v6 = *MEMORY[0x277D767D8], objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D767D8])) && (-[MessageListSectionDataSource section](self, "section"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == @"MessageListSectionServerSearch") || _os_feature_enabled_impl() && objc_msgSend(v4, "isEqualToString:", v6) && (-[MessageListSectionDataSource section](self, "section"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8 != @"MessageListSectionInstantAnswers"))
  {
    v9 = 1;
  }

  else if (_os_feature_enabled_impl())
  {
    v10 = [(MessageListSectionDataSource *)self section];
    v9 = v10 == @"MessageListSectionIndexedSearch";
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowSupplementaryViewOfKindIfEmpty:(id)a3
{
  v4 = a3;
  v5 = [(MessageListSectionDataSource *)self section];
  v6 = v5;
  if (v5 == @"MessageListSectionServerSearch")
  {
  }

  else
  {
    v7 = [(MessageListSectionDataSource *)self section];

    if (v7 != @"MessageListSectionIndexedSearch")
    {
LABEL_7:
      v8 = 0;
      goto LABEL_8;
    }
  }

  if (([v4 isEqualToString:*MEMORY[0x277D767D0]] & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = 1;
LABEL_8:

  return v8;
}

- (id)configuredReusableSupplementaryViewForCollectionView:(id)a3 elementKind:(id)a4 indexPath:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 isEqualToString:*MEMORY[0x277D767D0]] || (-[MessageListSectionDataSource section](self, "section"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == @"MessageListSectionTopHits"))
  {
    if ([v9 isEqualToString:*MEMORY[0x277D767D8]])
    {
      v13 = [(MessageListSectionDataSource *)self headerRegistration];
      v14 = [v8 dequeueConfiguredReusableSupplementaryViewWithRegistration:v13 forIndexPath:v10];
    }

    else
    {
      v15 = [(MessageListSectionDataSource *)self log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 134218754;
        v19 = self;
        v20 = 2114;
        v21 = v8;
        v22 = 2114;
        v23 = v9;
        v24 = 2114;
        v25 = v10;
        _os_log_error_impl(&dword_214A5E000, v15, OS_LOG_TYPE_ERROR, "%p: unable to configure supplementary view for collectionView:%{public}@ of elementKind:%{public}@ at indexPath:%{public}@", &v18, 0x2Au);
      }

      v14 = 0;
    }
  }

  else
  {
    v12 = [(MessageListSectionDataSource *)self section];
    if (v12 == @"MessageListSectionIndexedSearch")
    {
      [(MUIMessageListSearchSectionDataSource *)self indexedFooterRegistration];
    }

    else
    {
      [(MUIMessageListSearchSectionDataSource *)self serverFooterRegistration];
    }
    v16 = ;

    v14 = [v8 dequeueConfiguredReusableSupplementaryViewWithRegistration:v16 forIndexPath:v10];
  }

  return v14;
}

void __101__MUIMessageListSearchSectionDataSource__setUpSearchHeaderRegistrationForSection_layoutValuesHelper___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:a2 file:@"MUIMessageListSearchSectionDataSource.m" lineNumber:83 description:@"Delegate does not implement necessary method to get search section header title"];
}

@end