@interface SUUIAddToWishlistActivity
- (SUUIAddToWishlistActivity)initWithItem:(id)a3 clientContext:(id)a4;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation SUUIAddToWishlistActivity

- (SUUIAddToWishlistActivity)initWithItem:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SUUIAddToWishlistActivity;
  v9 = [(UIActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_item, a3);
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