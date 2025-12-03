@interface MessageListSectionUpdate
- (MessageListSectionUpdate)initWithMessageListSectionDataSource:(id)source animated:(BOOL)animated cleanSnapshot:(BOOL)snapshot prepareHandler:(id)handler updateHandler:(id)updateHandler immediateCompletion:(BOOL)completion completionHandler:(id)completionHandler;
- (NSString)ef_publicDescription;
@end

@implementation MessageListSectionUpdate

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  sectionDataSource = [(MessageListSectionUpdate *)self sectionDataSource];
  section = [sectionDataSource section];
  v6 = [v3 stringWithFormat:@"<%p: MessageListSectionUpdate> section=%@ animated=%d cleanSnapshot=%d immediateCompletion=%d", self, section, -[MessageListSectionUpdate animated](self, "animated"), -[MessageListSectionUpdate cleanSnapshot](self, "cleanSnapshot"), -[MessageListSectionUpdate immediateCompletion](self, "immediateCompletion")];

  return v6;
}

- (MessageListSectionUpdate)initWithMessageListSectionDataSource:(id)source animated:(BOOL)animated cleanSnapshot:(BOOL)snapshot prepareHandler:(id)handler updateHandler:(id)updateHandler immediateCompletion:(BOOL)completion completionHandler:(id)completionHandler
{
  sourceCopy = source;
  handlerCopy = handler;
  updateHandlerCopy = updateHandler;
  completionHandlerCopy = completionHandler;
  v29.receiver = self;
  v29.super_class = MessageListSectionUpdate;
  v20 = [(MessageListSectionUpdate *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_sectionDataSource, source);
    v21->_animated = animated;
    v21->_cleanSnapshot = snapshot;
    v22 = _Block_copy(handlerCopy);
    prepareHandler = v21->_prepareHandler;
    v21->_prepareHandler = v22;

    v24 = _Block_copy(updateHandlerCopy);
    updateHandler = v21->_updateHandler;
    v21->_updateHandler = v24;

    v21->_immediateCompletion = completion;
    v26 = _Block_copy(completionHandlerCopy);
    completionHandler = v21->_completionHandler;
    v21->_completionHandler = v26;
  }

  return v21;
}

@end