@interface CKMessagesCarouselView
+ (id)resolvedBackgroundColorFor:(id)for;
- (CKMessagesCarouselView)init;
- (CKMessagesCarouselViewDelegate)carouselDelegate;
- (double)_getHeightForUserData:(id)data;
- (double)itemsLayout:(id)layout aspectRatioForItem:(int64_t)item;
- (id)viewUserDataForItemAtIndex:(int64_t)index inStackLayout:(id)layout;
- (void)primaryItemDidChange:(BOOL)change didChangeIndex:(BOOL)index;
- (void)setBounds:(CGRect)bounds;
- (void)setViewClass:(Class)class;
@end

@implementation CKMessagesCarouselView

- (id)viewUserDataForItemAtIndex:(int64_t)index inStackLayout:(id)layout
{
  v6 = [(PXBaseMessagesStackView *)self dataSourceManager:index];
  dataSource = [v6 dataSource];
  dataSourceManager = [(PXBaseMessagesStackView *)self dataSourceManager];
  dataSource2 = [dataSourceManager dataSource];
  v12[0] = [dataSource2 identifier];
  v12[1] = 0;
  v12[2] = index;
  v12[3] = 0x7FFFFFFFFFFFFFFFLL;
  v10 = [dataSource objectAtIndexPath:v12];

  return v10;
}

- (double)itemsLayout:(id)layout aspectRatioForItem:(int64_t)item
{
  dataSourceManager = [(PXBaseMessagesStackView *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  dataSourceManager2 = [(PXBaseMessagesStackView *)self dataSourceManager];
  dataSource2 = [dataSourceManager2 dataSource];
  v16[0] = [dataSource2 identifier];
  v16[1] = 0;
  v16[2] = item;
  v16[3] = 0x7FFFFFFFFFFFFFFFLL;
  v10 = [dataSource objectAtIndexPath:v16];

  [(CKMessagesCarouselView *)self _getHeightForUserData:v10];
  v12 = 1.0;
  if (v11 != 0.0)
  {
    v13 = v11;
    [(CKMessagesCarouselView *)self bounds];
    v12 = v14 / v13;
  }

  return v12;
}

- (double)_getHeightForUserData:(id)data
{
  dataCopy = data;
  v5 = [(NSMutableDictionary *)self->sizeCache objectForKey:dataCopy];
  v6 = v5;
  if (!v5 || ([v5 doubleValue], v7 == 0.0))
  {
    if ([(NSMutableDictionary *)self->sizeCache count]>= 0x3E9)
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CKMessagesCarouselView _getHeightForUserData:v10];
      }

      [(NSMutableDictionary *)self->sizeCache removeAllObjects];
    }

    if ([(UIView *)self->sizingView conformsToProtocol:&unk_1F06805A8])
    {
      [(UIView *)self->sizingView setUserData:dataCopy];
    }

    sizingView = self->sizingView;
    [(CKMessagesCarouselView *)self bounds];
    [(UIView *)sizingView sizeThatFits:v12, 1.79769313e308];
    v9 = v13;
    sizeCache = self->sizeCache;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    [(NSMutableDictionary *)sizeCache setObject:v15 forKey:dataCopy];
  }

  else
  {
    [v6 doubleValue];
    v9 = v8;
  }

  return v9;
}

- (void)primaryItemDidChange:(BOOL)change didChangeIndex:(BOOL)index
{
  v6.receiver = self;
  v6.super_class = CKMessagesCarouselView;
  [(PXBaseMessagesStackView *)&v6 primaryItemDidChange:change didChangeIndex:index];
  carouselDelegate = [(CKMessagesCarouselView *)self carouselDelegate];
  [carouselDelegate carousel:self didScrollToIndex:{-[PXBaseMessagesStackView currentIndex](self, "currentIndex")}];
}

- (CKMessagesCarouselView)init
{
  v6.receiver = self;
  v6.super_class = CKMessagesCarouselView;
  v2 = [(PXBaseMessagesStackView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(PXBaseMessagesStackView *)v2 setUseAspectTiles:1];
    layout = [(PXBaseMessagesStackView *)v3 layout];
    [layout setDelegate:v3];
    [layout setMediaKind:10];
    if (objc_opt_respondsToSelector())
    {
      [layout setKeepItemAspectRatioConstant:1];
    }

    if (objc_opt_respondsToSelector())
    {
      +[CKCarouselBalloonView minAspectRatio];
      [layout setMinItemAspectRatio:?];
    }

    if (objc_opt_respondsToSelector())
    {
      +[CKCarouselBalloonView maxAspectRatio];
      [layout setMaxItemAspectRatio:?];
    }
  }

  return v3;
}

- (void)setViewClass:(Class)class
{
  self->viewClass = class;
  v4 = objc_alloc_init(class);
  sizingView = self->sizingView;
  self->sizingView = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sizeCache = self->sizeCache;
  self->sizeCache = v6;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(NSMutableDictionary *)self->sizeCache removeAllObjects];
  v8.receiver = self;
  v8.super_class = CKMessagesCarouselView;
  [(CKMessagesCarouselView *)&v8 setBounds:x, y, width, height];
}

+ (id)resolvedBackgroundColorFor:(id)for
{
  forCopy = for;
  if (objc_opt_respondsToSelector())
  {
    _resolvedBackgroundColor = [forCopy _resolvedBackgroundColor];
  }

  else
  {
    _resolvedBackgroundColor = 0;
  }

  return _resolvedBackgroundColor;
}

- (CKMessagesCarouselViewDelegate)carouselDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_carouselDelegate);

  return WeakRetained;
}

@end