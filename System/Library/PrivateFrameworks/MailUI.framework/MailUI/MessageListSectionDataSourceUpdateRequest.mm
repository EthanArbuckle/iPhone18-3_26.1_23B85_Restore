@interface MessageListSectionDataSourceUpdateRequest
- (MessageListSectionDataSourceUpdateRequest)initWithSection:(id)section messageList:(id)list shouldClearSnapshot:(BOOL)snapshot;
- (NSString)ef_publicDescription;
@end

@implementation MessageListSectionDataSourceUpdateRequest

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  section = [(MessageListSectionDataSourceUpdateRequest *)self section];
  messageList = [(MessageListSectionDataSourceUpdateRequest *)self messageList];
  v6 = [v3 stringWithFormat:@"<%p: MessageListSectionDataSourceUpdateRequest> section=%@, messageList=%p, shouldClearSnapshot=%d", self, section, messageList, -[MessageListSectionDataSourceUpdateRequest shouldClearSnapshot](self, "shouldClearSnapshot")];

  return v6;
}

- (MessageListSectionDataSourceUpdateRequest)initWithSection:(id)section messageList:(id)list shouldClearSnapshot:(BOOL)snapshot
{
  sectionCopy = section;
  listCopy = list;
  v14.receiver = self;
  v14.super_class = MessageListSectionDataSourceUpdateRequest;
  v11 = [(MessageListSectionDataSourceUpdateRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_section, section);
    objc_storeStrong(&v12->_messageList, list);
    v12->_shouldClearSnapshot = snapshot;
  }

  return v12;
}

@end