@interface MessageListSectionUpdate
- (MessageListSectionUpdate)initWithMessageListSectionDataSource:(id)a3 animated:(BOOL)a4 cleanSnapshot:(BOOL)a5 prepareHandler:(id)a6 updateHandler:(id)a7 immediateCompletion:(BOOL)a8 completionHandler:(id)a9;
- (NSString)ef_publicDescription;
@end

@implementation MessageListSectionUpdate

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MessageListSectionUpdate *)self sectionDataSource];
  v5 = [v4 section];
  v6 = [v3 stringWithFormat:@"<%p: MessageListSectionUpdate> section=%@ animated=%d cleanSnapshot=%d immediateCompletion=%d", self, v5, -[MessageListSectionUpdate animated](self, "animated"), -[MessageListSectionUpdate cleanSnapshot](self, "cleanSnapshot"), -[MessageListSectionUpdate immediateCompletion](self, "immediateCompletion")];

  return v6;
}

- (MessageListSectionUpdate)initWithMessageListSectionDataSource:(id)a3 animated:(BOOL)a4 cleanSnapshot:(BOOL)a5 prepareHandler:(id)a6 updateHandler:(id)a7 immediateCompletion:(BOOL)a8 completionHandler:(id)a9
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v29.receiver = self;
  v29.super_class = MessageListSectionUpdate;
  v20 = [(MessageListSectionUpdate *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_sectionDataSource, a3);
    v21->_animated = a4;
    v21->_cleanSnapshot = a5;
    v22 = _Block_copy(v17);
    prepareHandler = v21->_prepareHandler;
    v21->_prepareHandler = v22;

    v24 = _Block_copy(v18);
    updateHandler = v21->_updateHandler;
    v21->_updateHandler = v24;

    v21->_immediateCompletion = a8;
    v26 = _Block_copy(v19);
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v26;
  }

  return v21;
}

@end