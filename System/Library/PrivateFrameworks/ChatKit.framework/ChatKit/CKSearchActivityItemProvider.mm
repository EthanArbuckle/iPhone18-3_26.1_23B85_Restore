@interface CKSearchActivityItemProvider
- (CKSearchActivityItemProvider)initWithPlaceholderItem:(id)item metadata:(id)metadata;
@end

@implementation CKSearchActivityItemProvider

- (CKSearchActivityItemProvider)initWithPlaceholderItem:(id)item metadata:(id)metadata
{
  itemCopy = item;
  metadataCopy = metadata;
  v11.receiver = self;
  v11.super_class = CKSearchActivityItemProvider;
  v8 = [(UIActivityItemProvider *)&v11 initWithPlaceholderItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    [(CKSearchActivityItemProvider *)v8 setPayload:itemCopy];
    [(CKSearchActivityItemProvider *)v9 setMetadata:metadataCopy];
  }

  return v9;
}

@end