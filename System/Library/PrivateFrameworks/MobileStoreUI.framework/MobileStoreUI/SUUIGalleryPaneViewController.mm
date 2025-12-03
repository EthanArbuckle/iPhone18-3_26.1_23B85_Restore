@interface SUUIGalleryPaneViewController
- (SUUIGalleryPaneViewController)initWithMediaComponent:(id)component galleryIndex:(int64_t)index;
@end

@implementation SUUIGalleryPaneViewController

- (SUUIGalleryPaneViewController)initWithMediaComponent:(id)component galleryIndex:(int64_t)index
{
  componentCopy = component;
  v11.receiver = self;
  v11.super_class = SUUIGalleryPaneViewController;
  v8 = [(SUUIGalleryPaneViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_component, component);
    v9->_galleryIndex = index;
  }

  return v9;
}

@end