@interface EMAttachmentContentItem
@end

@implementation EMAttachmentContentItem

void __88___EMAttachmentContentItem_requestRepresentationWithOptions_delegate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v7 contentURL];
  [*(a1 + 32) setIsAvailableLocally:v6 != 0];

  [v7 setContentItem:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

@end