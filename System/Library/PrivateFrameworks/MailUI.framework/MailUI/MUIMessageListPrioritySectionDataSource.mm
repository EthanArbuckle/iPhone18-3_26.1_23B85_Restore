@interface MUIMessageListPrioritySectionDataSource
- (BOOL)hasSupplementaryViewOfKind:(id)kind;
- (MUIMessageListPrioritySectionDataSource)initWithSection:(id)section collectionView:(id)view messageList:(id)list initialLoadCompletedPromise:(id)promise layoutValuesHelper:(id)helper state:(id)state headerType:(unint64_t)type;
- (id)configuredReusableSupplementaryViewForCollectionView:(id)view elementKind:(id)kind indexPath:(id)path;
@end

@implementation MUIMessageListPrioritySectionDataSource

- (MUIMessageListPrioritySectionDataSource)initWithSection:(id)section collectionView:(id)view messageList:(id)list initialLoadCompletedPromise:(id)promise layoutValuesHelper:(id)helper state:(id)state headerType:(unint64_t)type
{
  sectionCopy = section;
  viewCopy = view;
  promiseCopy = promise;
  helperCopy = helper;
  stateCopy = state;
  if (type != 1)
  {
    [MUIMessageListPrioritySectionDataSource initWithSection:a2 collectionView:self messageList:? initialLoadCompletedPromise:? layoutValuesHelper:? state:? headerType:?];
  }

  v23.receiver = self;
  v23.super_class = MUIMessageListPrioritySectionDataSource;
  v20 = [(MessageListSectionDataSource *)&v23 initWithSection:sectionCopy collectionView:viewCopy messageList:0 initialLoadCompletedPromise:promiseCopy layoutValuesHelper:helperCopy state:stateCopy headerType:1];
  if (v20 && _os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v21 = [MEMORY[0x277D75320] registrationWithSupplementaryClass:objc_opt_class() elementKind:*MEMORY[0x277D767D8] configurationHandler:&__block_literal_global_27];
    [(MessageListSectionDataSource *)v20 setHeaderRegistration:v21];
  }

  return v20;
}

- (BOOL)hasSupplementaryViewOfKind:(id)kind
{
  kindCopy = kind;
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported() && ([kindCopy isEqualToString:*MEMORY[0x277D767D8]] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MUIMessageListPrioritySectionDataSource;
    v5 = [(MessageListSectionDataSource *)&v7 hasSupplementaryViewOfKind:kindCopy];
  }

  return v5;
}

- (id)configuredReusableSupplementaryViewForCollectionView:(id)view elementKind:(id)kind indexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported() && [kindCopy isEqualToString:*MEMORY[0x277D767D8]])
  {
    headerRegistration = [(MessageListSectionDataSource *)self headerRegistration];
    v12 = [viewCopy dequeueConfiguredReusableSupplementaryViewWithRegistration:headerRegistration forIndexPath:pathCopy];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MUIMessageListPrioritySectionDataSource;
    v12 = [(MessageListSectionDataSource *)&v14 configuredReusableSupplementaryViewForCollectionView:viewCopy elementKind:kindCopy indexPath:pathCopy];
  }

  return v12;
}

- (void)initWithSection:(uint64_t)a1 collectionView:(uint64_t)a2 messageList:initialLoadCompletedPromise:layoutValuesHelper:state:headerType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMessageListPrioritySectionDataSource.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"headerType == MessageListSectionHeaderTypePriority"}];
}

@end