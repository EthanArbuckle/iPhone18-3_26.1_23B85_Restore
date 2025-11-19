@interface MessageListSectionDataSourceConfiguration
- (MessageListSectionDataSourceConfiguration)initWithSection:(id)a3 collectionView:(id)a4 messageList:(id)a5 layoutValuesHelper:(id)a6 state:(id)a7 delegate:(id)a8 selectionModelProvider:(id)a9 initialLoadCompletedPromise:(id)a10 searchProgressView:(id)a11 headerType:(unint64_t)a12 avatarGenerator:(id)a13 contactStore:(id)a14;
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

- (MessageListSectionDataSourceConfiguration)initWithSection:(id)a3 collectionView:(id)a4 messageList:(id)a5 layoutValuesHelper:(id)a6 state:(id)a7 delegate:(id)a8 selectionModelProvider:(id)a9 initialLoadCompletedPromise:(id)a10 searchProgressView:(id)a11 headerType:(unint64_t)a12 avatarGenerator:(id)a13 contactStore:(id)a14
{
  v37 = a3;
  v36 = a4;
  v29 = a5;
  v35 = a5;
  v30 = a6;
  v34 = a6;
  v31 = a7;
  v33 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a13;
  v24 = a14;
  v38.receiver = self;
  v38.super_class = MessageListSectionDataSourceConfiguration;
  v25 = [(MessageListSectionDataSourceConfiguration *)&v38 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_section, a3);
    objc_storeStrong(&v26->_collectionView, a4);
    objc_storeStrong(&v26->_messageList, v29);
    objc_storeStrong(&v26->_layoutValuesHelper, v30);
    objc_storeStrong(&v26->_state, v31);
    objc_storeWeak(&v26->_delegate, v19);
    objc_storeWeak(&v26->_selectionModelProvider, v20);
    objc_storeStrong(&v26->_initialLoadCompletedPromise, a10);
    objc_storeStrong(&v26->_searchProgressView, a11);
    v26->_headerType = a12;
    objc_storeStrong(&v26->_avatarGenerator, a13);
    objc_storeStrong(&v26->_contactStore, a14);
  }

  return v26;
}

@end