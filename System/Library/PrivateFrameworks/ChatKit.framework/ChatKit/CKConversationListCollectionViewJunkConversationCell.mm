@interface CKConversationListCollectionViewJunkConversationCell
- (unint64_t)_daysUntilDeletion:(id)deletion;
@end

@implementation CKConversationListCollectionViewJunkConversationCell

- (unint64_t)_daysUntilDeletion:(id)deletion
{
  chat = [deletion chat];
  earliestCachedMessageDate = [chat earliestCachedMessageDate];
  v5 = [CKUtilities daysUntilJunkFilterDeletionForDate:earliestCachedMessageDate];

  return v5;
}

@end