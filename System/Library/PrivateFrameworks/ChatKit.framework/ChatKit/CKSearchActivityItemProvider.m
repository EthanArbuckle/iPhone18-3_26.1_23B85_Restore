@interface CKSearchActivityItemProvider
- (CKSearchActivityItemProvider)initWithPlaceholderItem:(id)a3 metadata:(id)a4;
@end

@implementation CKSearchActivityItemProvider

- (CKSearchActivityItemProvider)initWithPlaceholderItem:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CKSearchActivityItemProvider;
  v8 = [(UIActivityItemProvider *)&v11 initWithPlaceholderItem:v6];
  v9 = v8;
  if (v8)
  {
    [(CKSearchActivityItemProvider *)v8 setPayload:v6];
    [(CKSearchActivityItemProvider *)v9 setMetadata:v7];
  }

  return v9;
}

@end