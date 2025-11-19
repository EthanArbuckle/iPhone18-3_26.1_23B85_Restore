@interface CKConversationListCollectionViewController(DataSource)
@end

@implementation CKConversationListCollectionViewController(DataSource)

- (void)_ensureCellLayoutOnCell:()DataSource .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"CKConversationListCollectionViewController+DataSource.m" lineNumber:1213 description:{@"%@ needs a cell layout.", v5}];
}

@end