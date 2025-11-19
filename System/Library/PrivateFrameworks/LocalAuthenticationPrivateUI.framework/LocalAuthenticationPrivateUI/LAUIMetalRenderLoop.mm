@interface LAUIMetalRenderLoop
- (BOOL)_isForcingPause;
- (BOOL)isDrawableAvailable;
- (CGSize)drawableSize;
- (LAUIMetalRenderLoop)initWithPixelFormat:(unint64_t)a3 forDevice:(id)a4;
- (id)currentDrawable;
- (void)_didDraw;
- (void)_didInvalidate;
- (void)_willDraw;
- (void)dealloc;
- (void)setColorSpace:(CGColorSpace *)a3;
- (void)setDrawableSize:(CGSize)a3;
@end

@implementation LAUIMetalRenderLoop

- (LAUIMetalRenderLoop)initWithPixelFormat:(unint64_t)a3 forDevice:(id)a4
{
  v8 = a4;
  {
    v18.receiver = self;
    v18.super_class = LAUIMetalRenderLoop;
    v10 = [(LAUIRenderLoop *)&v18 init];
    v11 = v10;
    if (v10)
    {
      v10->_pixel_format = a3;
      objc_storeStrong(&v10->_device, a4);
      *(v11 + 104) = default_color_space;
      v12 = objc_alloc_init(MEMORY[0x277CD9F10]);
      v13 = *(v11 + 72);
      *(v11 + 72) = v12;

      [*(v11 + 72) setDevice:*(v11 + 112)];
      [*(v11 + 72) setPixelFormat:*(v11 + 96)];
      [*(v11 + 72) setColorspace:*(v11 + 104)];
      [*(v11 + 72) setLowLatency:0];
      [*(v11 + 72) drawableSize];
      *(v11 + 120) = v14;
      *(v11 + 128) = v15;
      [(LAUIRenderLoop *)v11 _setNeedsForcingPauseUpdate];
    }

    else
    {
      CFRelease(default_color_space);
    }

    self = v11;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_color_space);
  v3.receiver = self;
  v3.super_class = LAUIMetalRenderLoop;
  [(LAUIRenderLoop *)&v3 dealloc];
}

- (BOOL)isDrawableAvailable
{
  if (self->super._invalidated)
  {
    return 0;
  }

  if (self->_current_drawable)
  {
    return 1;
  }

  if (!self->super._drawing)
  {
    return 0;
  }

  return [(CAMetalLayer *)self->_layer isDrawableAvailable];
}

- (id)currentDrawable
{
  if (self->super._invalidated)
  {
    v3 = 0;
  }

  else
  {
    if (self->super._drawing && !self->_current_drawable)
    {
      v6 = [(CAMetalLayer *)self->_layer nextDrawable];
      current_drawable = self->_current_drawable;
      self->_current_drawable = v6;
    }

    v3 = self->_current_drawable;
  }

  return v3;
}

- (void)setDrawableSize:(CGSize)a3
{
  p_drawable_size = &self->_drawable_size;
  if (self->_drawable_size.width != a3.width || self->_drawable_size.height != a3.height)
  {
    p_drawable_size->width = a3.width;
    self->_drawable_size.height = a3.height;
    if (a3.width == *MEMORY[0x277CBF3A8] && a3.height == *(MEMORY[0x277CBF3A8] + 8))
    {
      self->_drawable_size_dirty = 0;
      [(CAMetalLayer *)self->_layer setDrawableSize:?];
    }

    else
    {
      self->_drawable_size_dirty = 1;
    }

    [(LAUIRenderLoop *)self _setNeedsForcingPauseUpdate];
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained renderLoop:self drawableSizeDidChange:{p_drawable_size->width, p_drawable_size->height}];
  }
}

- (void)setColorSpace:(CGColorSpace *)a3
{
  if (a3)
  {
    default_color_space = a3;
    CGColorSpaceRetain(a3);
  }

  else
  {
  }

  CGColorSpaceRelease(self->_color_space);
  self->_color_space = default_color_space;
  layer = self->_layer;

  [(CAMetalLayer *)layer setColorspace:default_color_space];
}

- (void)_didInvalidate
{
  device = self->_device;
  self->_device = 0;

  layer = self->_layer;
  self->_layer = 0;

  current_drawable = self->_current_drawable;
  self->_current_drawable = 0;

  v6.receiver = self;
  v6.super_class = LAUIMetalRenderLoop;
  [(LAUIRenderLoop *)&v6 _didInvalidate];
}

- (void)_willDraw
{
  v3.receiver = self;
  v3.super_class = LAUIMetalRenderLoop;
  [(LAUIRenderLoop *)&v3 _willDraw];
  if (self->_drawable_size_dirty)
  {
    self->_drawable_size_dirty = 0;
    [(CAMetalLayer *)self->_layer setDrawableSize:self->_drawable_size.width, self->_drawable_size.height];
  }
}

- (void)_didDraw
{
  current_drawable = self->_current_drawable;
  self->_current_drawable = 0;

  v4.receiver = self;
  v4.super_class = LAUIMetalRenderLoop;
  [(LAUIRenderLoop *)&v4 _didDraw];
}

- (BOOL)_isForcingPause
{
  if (self->_drawable_size.width == *MEMORY[0x277CBF3A8] && self->_drawable_size.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    return 1;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = LAUIMetalRenderLoop;
  return [(LAUIRenderLoop *)&v6 _isForcingPause];
}

- (CGSize)drawableSize
{
  width = self->_drawable_size.width;
  height = self->_drawable_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end