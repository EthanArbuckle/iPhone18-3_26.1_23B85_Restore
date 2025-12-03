@interface SUUIAddToWishlistActivity
- (SUUIAddToWishlistActivity)initWithItem:(id)item clientContext:(id)context;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation SUUIAddToWishlistActivity

- (SUUIAddToWishlistActivity)initWithItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SUUIAddToWishlistActivity;
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
  v3 = [MEMORY[0x277D755B8] imageNamed:@"ShareSheetWishList" inBundle:v2];

  return v3;
}

- (id)activityTitle
{
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SUUIClientContext *)clientContext localizedStringForKey:@"ADD_TO_WISHLIST"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"ADD_TO_WISHLIST" inBundles:0];
  }
  v3 = ;

  return v3;
}

- (void)performActivity
{
  v3 = +[SUUIWishlist activeWishlist];
  [v3 addItem:self->_item];
  [v3 postChangeNotification];
  [(UIActivity *)self activityDidFinish:1];
}

@end