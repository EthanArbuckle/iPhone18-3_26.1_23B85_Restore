@interface CKMessagesCarouselView
+ (id)resolvedBackgroundColorFor:(id)a3;
- (CKMessagesCarouselView)init;
- (CKMessagesCarouselViewDelegate)carouselDelegate;
- (double)_getHeightForUserData:(id)a3;
- (double)itemsLayout:(id)a3 aspectRatioForItem:(int64_t)a4;
- (id)viewUserDataForItemAtIndex:(int64_t)a3 inStackLayout:(id)a4;
- (void)primaryItemDidChange:(BOOL)a3 didChangeIndex:(BOOL)a4;
- (void)setBounds:(CGRect)a3;
- (void)setViewClass:(Class)a3;
@end

@implementation CKMessagesCarouselView

- (id)viewUserDataForItemAtIndex:(int64_t)a3 inStackLayout:(id)a4
{
  v6 = [(PXBaseMessagesStackView *)self dataSourceManager:a3];
  v7 = [v6 dataSource];
  v8 = [(PXBaseMessagesStackView *)self dataSourceManager];
  v9 = [v8 dataSource];
  v12[0] = [v9 identifier];
  v12[1] = 0;
  v12[2] = a3;
  v12[3] = 0x7FFFFFFFFFFFFFFFLL;
  v10 = [v7 objectAtIndexPath:v12];

  return v10;
}

- (double)itemsLayout:(id)a3 aspectRatioForItem:(int64_t)a4
{
  v6 = [(PXBaseMessagesStackView *)self dataSourceManager];
  v7 = [v6 dataSource];
  v8 = [(PXBaseMessagesStackView *)self dataSourceManager];
  v9 = [v8 dataSource];
  v16[0] = [v9 identifier];
  v16[1] = 0;
  v16[2] = a4;
  v16[3] = 0x7FFFFFFFFFFFFFFFLL;
  v10 = [v7 objectAtIndexPath:v16];

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

- (double)_getHeightForUserData:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->sizeCache objectForKey:v4];
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
      [(UIView *)self->sizingView setUserData:v4];
    }

    sizingView = self->sizingView;
    [(CKMessagesCarouselView *)self bounds];
    [(UIView *)sizingView sizeThatFits:v12, 1.79769313e308];
    v9 = v13;
    sizeCache = self->sizeCache;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    [(NSMutableDictionary *)sizeCache setObject:v15 forKey:v4];
  }

  else
  {
    [v6 doubleValue];
    v9 = v8;
  }

  return v9;
}

- (void)primaryItemDidChange:(BOOL)a3 didChangeIndex:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = CKMessagesCarouselView;
  [(PXBaseMessagesStackView *)&v6 primaryItemDidChange:a3 didChangeIndex:a4];
  v5 = [(CKMessagesCarouselView *)self carouselDelegate];
  [v5 carousel:self didScrollToIndex:{-[PXBaseMessagesStackView currentIndex](self, "currentIndex")}];
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
    v4 = [(PXBaseMessagesStackView *)v3 layout];
    [v4 setDelegate:v3];
    [v4 setMediaKind:10];
    if (objc_opt_respondsToSelector())
    {
      [v4 setKeepItemAspectRatioConstant:1];
    }

    if (objc_opt_respondsToSelector())
    {
      +[CKCarouselBalloonView minAspectRatio];
      [v4 setMinItemAspectRatio:?];
    }

    if (objc_opt_respondsToSelector())
    {
      +[CKCarouselBalloonView maxAspectRatio];
      [v4 setMaxItemAspectRatio:?];
    }
  }

  return v3;
}

- (void)setViewClass:(Class)a3
{
  self->viewClass = a3;
  v4 = objc_alloc_init(a3);
  sizingView = self->sizingView;
  self->sizingView = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sizeCache = self->sizeCache;
  self->sizeCache = v6;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(NSMutableDictionary *)self->sizeCache removeAllObjects];
  v8.receiver = self;
  v8.super_class = CKMessagesCarouselView;
  [(CKMessagesCarouselView *)&v8 setBounds:x, y, width, height];
}

+ (id)resolvedBackgroundColorFor:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _resolvedBackgroundColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CKMessagesCarouselViewDelegate)carouselDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_carouselDelegate);

  return WeakRetained;
}

@end