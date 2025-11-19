@interface PBUIImageSlotView
- (CGSize)_pointSize;
- (void)_updateWithImage:(id)a3;
- (void)deferredImageSlot:(id)a3 didUpdateImage:(id)a4;
- (void)layoutSubviews;
- (void)setImageSlot:(id)a3;
@end

@implementation PBUIImageSlotView

- (void)setImageSlot:(id)a3
{
  v5 = a3;
  imageSlot = self->_imageSlot;
  if (imageSlot != v5)
  {
    v12 = v5;
    v7 = [(PBUIImageSlot *)imageSlot _deferredImageSlot];
    [v7 removeImageSlotObserver:self];

    objc_storeStrong(&self->_imageSlot, a3);
    v8 = [(PBUIImageSlot *)self->_imageSlot _deferredImageSlot];
    [v8 addImageSlotObserver:self];
    v9 = [v8 fallbackColor];
    [(PBUIImageSlotView *)self setBackgroundColor:v9];

    v10 = [(PBUIImageSlot *)self->_imageSlot image];

    if (v10)
    {
      imageView = [(PBUIImageSlot *)self->_imageSlot image];
      [(PBUIImageSlotView *)self _updateWithImage:imageView];
    }

    else
    {
      [(UIImageView *)self->_imageView removeFromSuperview];
      imageView = self->_imageView;
      self->_imageView = 0;
    }

    [(PBUIImageSlotView *)self invalidateIntrinsicContentSize];
    [(PBUIImageSlotView *)self setNeedsLayout];

    v5 = v12;
  }

  MEMORY[0x2821F96F8](imageSlot, v5);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PBUIImageSlotView;
  [(PBUIImageSlotView *)&v5 layoutSubviews];
  v3 = [(PBUIImageSlot *)self->_imageSlot image];
  v4 = [(UIImageView *)self->_imageView image];

  if (v4 != v3)
  {
    [(PBUIImageSlotView *)self _updateWithImage:v3];
  }
}

- (void)deferredImageSlot:(id)a3 didUpdateImage:(id)a4
{
  if (self->_imageSlot == a3)
  {
    [(PBUIImageSlotView *)self _updateWithImage:a4];
  }
}

- (void)_updateWithImage:(id)a3
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    [(PBUIImageSlotView *)self bounds];
    v6 = [v5 initWithFrame:?];
    v7 = self->_imageView;
    self->_imageView = v6;

    [(UIImageView *)self->_imageView setAutoresizingMask:18];
    [(PBUIImageSlotView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  v8 = [(PBUIImageSlot *)self->_imageSlot image];
  [(UIImageView *)imageView setImage:v8];

  [(PBUIImageSlotView *)self invalidateIntrinsicContentSize];

  [(PBUIImageSlotView *)self setNeedsLayout];
}

- (CGSize)_pointSize
{
  v2 = [(PBUIImageSlot *)self->_imageSlot image];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end