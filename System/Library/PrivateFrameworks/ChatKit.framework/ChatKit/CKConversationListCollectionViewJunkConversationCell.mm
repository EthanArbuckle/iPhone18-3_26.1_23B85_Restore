@interface CKConversationListCollectionViewJunkConversationCell
- (unint64_t)_daysUntilDeletion:(id)a3;
@end

@implementation CKConversationListCollectionViewJunkConversationCell

- (unint64_t)_daysUntilDeletion:(id)a3
{
  v3 = [a3 chat];
  v4 = [v3 earliestCachedMessageDate];
  v5 = [CKUtilities daysUntilJunkFilterDeletionForDate:v4];

  return v5;
}

@end