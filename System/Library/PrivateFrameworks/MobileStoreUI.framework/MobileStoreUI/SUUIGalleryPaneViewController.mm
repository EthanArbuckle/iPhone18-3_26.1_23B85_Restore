@interface SUUIGalleryPaneViewController
- (SUUIGalleryPaneViewController)initWithMediaComponent:(id)a3 galleryIndex:(int64_t)a4;
@end

@implementation SUUIGalleryPaneViewController

- (SUUIGalleryPaneViewController)initWithMediaComponent:(id)a3 galleryIndex:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SUUIGalleryPaneViewController;
  v8 = [(SUUIGalleryPaneViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_component, a3);
    v9->_galleryIndex = a4;
  }

  return v9;
}

@end