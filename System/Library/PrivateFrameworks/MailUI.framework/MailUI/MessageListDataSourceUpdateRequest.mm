@interface MessageListDataSourceUpdateRequest
- (MessageListDataSourceUpdateRequest)initWithSectionUpdates:(id)a3 sectionsToRemove:(id)a4 startsWithEmptySnapshot:(BOOL)a5;
- (NSString)ef_publicDescription;
@end

@implementation MessageListDataSourceUpdateRequest

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MessageListDataSourceUpdateRequest *)self sectionsToUpdate];
  v5 = [(MessageListDataSourceUpdateRequest *)self sectionsToRemove];
  v6 = [v3 stringWithFormat:@"<%p: MessageListDataSourceUpdateRequest> sectionsToUpdate=%@, sectionsToRemove=%@, startsWithEmptySnapshot=%d", self, v4, v5, -[MessageListDataSourceUpdateRequest startsWithEmptySnapshot](self, "startsWithEmptySnapshot")];

  return v6;
}

- (MessageListDataSourceUpdateRequest)initWithSectionUpdates:(id)a3 sectionsToRemove:(id)a4 startsWithEmptySnapshot:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MessageListDataSourceUpdateRequest;
  v11 = [(MessageListDataSourceUpdateRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sectionsToUpdate, a3);
    objc_storeStrong(&v12->_sectionsToRemove, a4);
    v12->_startsWithEmptySnapshot = a5;
  }

  return v12;
}

@end