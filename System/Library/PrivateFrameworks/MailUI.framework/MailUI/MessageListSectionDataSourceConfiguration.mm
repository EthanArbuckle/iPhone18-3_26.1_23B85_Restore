@interface MessageListSectionDataSourceConfiguration
- (MessageListSectionDataSourceConfiguration)initWithSection:(id)section collectionView:(id)view messageList:(id)list layoutValuesHelper:(id)helper state:(id)state delegate:(id)delegate selectionModelProvider:(id)provider initialLoadCompletedPromise:(id)self0 searchProgressView:(id)self1 headerType:(unint64_t)self2 avatarGenerator:(id)self3 contactStore:(id)self4;
- (MessageListSectionDataSourceDelegate)delegate;
- (MessageListSectionDataSourceSelectionModelProvider)selectionModelProvider;
@end

@implementation MessageListSectionDataSourceConfiguration

- (MessageListSectionDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MessageListSectionDataSourceSelectionModelProvider)selectionModelProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionModelProvider);

  return WeakRetained;
}

- (MessageListSectionDataSourceConfiguration)initWithSection:(id)section collectionView:(id)view messageList:(id)list layoutValuesHelper:(id)helper state:(id)state delegate:(id)delegate selectionModelProvider:(id)provider initialLoadCompletedPromise:(id)self0 searchProgressView:(id)self1 headerType:(unint64_t)self2 avatarGenerator:(id)self3 contactStore:(id)self4
{
  sectionCopy = section;
  viewCopy = view;
  listCopy = list;
  listCopy2 = list;
  helperCopy = helper;
  helperCopy2 = helper;
  stateCopy = state;
  stateCopy2 = state;
  delegateCopy = delegate;
  providerCopy = provider;
  promiseCopy = promise;
  progressViewCopy = progressView;
  generatorCopy = generator;
  storeCopy = store;
  v38.receiver = self;
  v38.super_class = MessageListSectionDataSourceConfiguration;
  v25 = [(MessageListSectionDataSourceConfiguration *)&v38 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_section, section);
    objc_storeStrong(&v26->_collectionView, view);
    objc_storeStrong(&v26->_messageList, listCopy);
    objc_storeStrong(&v26->_layoutValuesHelper, helperCopy);
    objc_storeStrong(&v26->_state, stateCopy);
    objc_storeWeak(&v26->_delegate, delegateCopy);
    objc_storeWeak(&v26->_selectionModelProvider, providerCopy);
    objc_storeStrong(&v26->_initialLoadCompletedPromise, promise);
    objc_storeStrong(&v26->_searchProgressView, progressView);
    v26->_headerType = type;
    objc_storeStrong(&v26->_avatarGenerator, generator);
    objc_storeStrong(&v26->_contactStore, store);
  }

  return v26;
}

@end