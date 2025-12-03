@interface SUUIGiftActivity
- (SUUIGiftActivity)initWithItem:(id)item clientContext:(id)context;
- (id)activityImage;
- (id)activityTitle;
- (id)activityViewController;
@end

@implementation SUUIGiftActivity

- (SUUIGiftActivity)initWithItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SUUIGiftActivity;
  v9 = [(UIActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_item, item);
  }

  return v10;
}

- (id)activityImage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"ShareSheetGift" inBundle:v2];

  return v3;
}

- (id)activityTitle
{
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SUUIClientContext *)clientContext localizedStringForKey:@"SHARE_SHEET_GIFT_TITLE"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"SHARE_SHEET_GIFT_TITLE" inBundles:0];
  }
  v3 = ;

  return v3;
}

- (id)activityViewController
{
  v3 = [[SUUIGift alloc] initWithItem:self->_item];
  v4 = [[SUUIGiftViewController alloc] initWithGift:v3];
  [(SUUIGiftViewController *)v4 setClientContext:self->_clientContext];
  [(SUUIGiftViewController *)v4 setGiftDelegate:self];

  return v4;
}

@end