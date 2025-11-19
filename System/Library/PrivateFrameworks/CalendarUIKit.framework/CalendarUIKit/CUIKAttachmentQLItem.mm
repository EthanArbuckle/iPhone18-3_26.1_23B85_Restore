@interface CUIKAttachmentQLItem
- (CUIKAttachmentQLItem)initWithURL:(id)a3 title:(id)a4;
@end

@implementation CUIKAttachmentQLItem

- (CUIKAttachmentQLItem)initWithURL:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CUIKAttachmentQLItem;
  v9 = [(CUIKAttachmentQLItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_title, a4);
  }

  return v10;
}

@end