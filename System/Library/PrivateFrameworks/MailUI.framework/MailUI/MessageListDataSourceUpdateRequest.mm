@interface MessageListDataSourceUpdateRequest
- (MessageListDataSourceUpdateRequest)initWithSectionUpdates:(id)updates sectionsToRemove:(id)remove startsWithEmptySnapshot:(BOOL)snapshot;
- (NSString)ef_publicDescription;
@end

@implementation MessageListDataSourceUpdateRequest

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  sectionsToUpdate = [(MessageListDataSourceUpdateRequest *)self sectionsToUpdate];
  sectionsToRemove = [(MessageListDataSourceUpdateRequest *)self sectionsToRemove];
  v6 = [v3 stringWithFormat:@"<%p: MessageListDataSourceUpdateRequest> sectionsToUpdate=%@, sectionsToRemove=%@, startsWithEmptySnapshot=%d", self, sectionsToUpdate, sectionsToRemove, -[MessageListDataSourceUpdateRequest startsWithEmptySnapshot](self, "startsWithEmptySnapshot")];

  return v6;
}

- (MessageListDataSourceUpdateRequest)initWithSectionUpdates:(id)updates sectionsToRemove:(id)remove startsWithEmptySnapshot:(BOOL)snapshot
{
  updatesCopy = updates;
  removeCopy = remove;
  v14.receiver = self;
  v14.super_class = MessageListDataSourceUpdateRequest;
  v11 = [(MessageListDataSourceUpdateRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sectionsToUpdate, updates);
    objc_storeStrong(&v12->_sectionsToRemove, remove);
    v12->_startsWithEmptySnapshot = snapshot;
  }

  return v12;
}

@end