@interface MessageListSectionDataSourceUpdateRequest
- (MessageListSectionDataSourceUpdateRequest)initWithSection:(id)a3 messageList:(id)a4 shouldClearSnapshot:(BOOL)a5;
- (NSString)ef_publicDescription;
@end

@implementation MessageListSectionDataSourceUpdateRequest

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MessageListSectionDataSourceUpdateRequest *)self section];
  v5 = [(MessageListSectionDataSourceUpdateRequest *)self messageList];
  v6 = [v3 stringWithFormat:@"<%p: MessageListSectionDataSourceUpdateRequest> section=%@, messageList=%p, shouldClearSnapshot=%d", self, v4, v5, -[MessageListSectionDataSourceUpdateRequest shouldClearSnapshot](self, "shouldClearSnapshot")];

  return v6;
}

- (MessageListSectionDataSourceUpdateRequest)initWithSection:(id)a3 messageList:(id)a4 shouldClearSnapshot:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MessageListSectionDataSourceUpdateRequest;
  v11 = [(MessageListSectionDataSourceUpdateRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_section, a3);
    objc_storeStrong(&v12->_messageList, a4);
    v12->_shouldClearSnapshot = a5;
  }

  return v12;
}

@end