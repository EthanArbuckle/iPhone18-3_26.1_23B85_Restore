@interface MUIMessageListPrioritySectionDataSource
- (BOOL)hasSupplementaryViewOfKind:(id)a3;
- (MUIMessageListPrioritySectionDataSource)initWithSection:(id)a3 collectionView:(id)a4 messageList:(id)a5 initialLoadCompletedPromise:(id)a6 layoutValuesHelper:(id)a7 state:(id)a8 headerType:(unint64_t)a9;
- (id)configuredReusableSupplementaryViewForCollectionView:(id)a3 elementKind:(id)a4 indexPath:(id)a5;
@end

@implementation MUIMessageListPrioritySectionDataSource

- (MUIMessageListPrioritySectionDataSource)initWithSection:(id)a3 collectionView:(id)a4 messageList:(id)a5 initialLoadCompletedPromise:(id)a6 layoutValuesHelper:(id)a7 state:(id)a8 headerType:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (a9 != 1)
  {
    [MUIMessageListPrioritySectionDataSource initWithSection:a2 collectionView:self messageList:? initialLoadCompletedPromise:? layoutValuesHelper:? state:? headerType:?];
  }

  v23.receiver = self;
  v23.super_class = MUIMessageListPrioritySectionDataSource;
  v20 = [(MessageListSectionDataSource *)&v23 initWithSection:v15 collectionView:v16 messageList:0 initialLoadCompletedPromise:v17 layoutValuesHelper:v18 state:v19 headerType:1];
  if (v20 && _os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v21 = [MEMORY[0x277D75320] registrationWithSupplementaryClass:objc_opt_class() elementKind:*MEMORY[0x277D767D8] configurationHandler:&__block_literal_global_27];
    [(MessageListSectionDataSource *)v20 setHeaderRegistration:v21];
  }

  return v20;
}

- (BOOL)hasSupplementaryViewOfKind:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported() && ([v4 isEqualToString:*MEMORY[0x277D767D8]] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MUIMessageListPrioritySectionDataSource;
    v5 = [(MessageListSectionDataSource *)&v7 hasSupplementaryViewOfKind:v4];
  }

  return v5;
}

- (id)configuredReusableSupplementaryViewForCollectionView:(id)a3 elementKind:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported() && [v9 isEqualToString:*MEMORY[0x277D767D8]])
  {
    v11 = [(MessageListSectionDataSource *)self headerRegistration];
    v12 = [v8 dequeueConfiguredReusableSupplementaryViewWithRegistration:v11 forIndexPath:v10];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MUIMessageListPrioritySectionDataSource;
    v12 = [(MessageListSectionDataSource *)&v14 configuredReusableSupplementaryViewForCollectionView:v8 elementKind:v9 indexPath:v10];
  }

  return v12;
}

- (void)initWithSection:(uint64_t)a1 collectionView:(uint64_t)a2 messageList:initialLoadCompletedPromise:layoutValuesHelper:state:headerType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMessageListPrioritySectionDataSource.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"headerType == MessageListSectionHeaderTypePriority"}];
}

@end