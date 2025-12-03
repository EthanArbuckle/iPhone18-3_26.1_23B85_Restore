@interface CUIKAttachmentQLItem
- (CUIKAttachmentQLItem)initWithURL:(id)l title:(id)title;
@end

@implementation CUIKAttachmentQLItem

- (CUIKAttachmentQLItem)initWithURL:(id)l title:(id)title
{
  lCopy = l;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = CUIKAttachmentQLItem;
  v9 = [(CUIKAttachmentQLItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_title, title);
  }

  return v10;
}

@end