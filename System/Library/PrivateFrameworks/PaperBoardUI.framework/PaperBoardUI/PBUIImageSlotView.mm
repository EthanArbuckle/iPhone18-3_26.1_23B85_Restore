@interface PBUIImageSlotView
- (CGSize)_pointSize;
- (void)_updateWithImage:(id)image;
- (void)deferredImageSlot:(id)slot didUpdateImage:(id)image;
- (void)layoutSubviews;
- (void)setImageSlot:(id)slot;
@end

@implementation PBUIImageSlotView

- (void)setImageSlot:(id)slot
{
  slotCopy = slot;
  imageSlot = self->_imageSlot;
  if (imageSlot != slotCopy)
  {
    v12 = slotCopy;
    _deferredImageSlot = [(PBUIImageSlot *)imageSlot _deferredImageSlot];
    [_deferredImageSlot removeImageSlotObserver:self];

    objc_storeStrong(&self->_imageSlot, slot);
    _deferredImageSlot2 = [(PBUIImageSlot *)self->_imageSlot _deferredImageSlot];
    [_deferredImageSlot2 addImageSlotObserver:self];
    fallbackColor = [_deferredImageSlot2 fallbackColor];
    [(PBUIImageSlotView *)self setBackgroundColor:fallbackColor];

    image = [(PBUIImageSlot *)self->_imageSlot image];

    if (image)
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

    slotCopy = v12;
  }

  MEMORY[0x2821F96F8](imageSlot, slotCopy);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PBUIImageSlotView;
  [(PBUIImageSlotView *)&v5 layoutSubviews];
  image = [(PBUIImageSlot *)self->_imageSlot image];
  image2 = [(UIImageView *)self->_imageView image];

  if (image2 != image)
  {
    [(PBUIImageSlotView *)self _updateWithImage:image];
  }
}

- (void)deferredImageSlot:(id)slot didUpdateImage:(id)image
{
  if (self->_imageSlot == slot)
  {
    [(PBUIImageSlotView *)self _updateWithImage:image];
  }
}

- (void)_updateWithImage:(id)image
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

  image = [(PBUIImageSlot *)self->_imageSlot image];
  [(UIImageView *)imageView setImage:image];

  [(PBUIImageSlotView *)self invalidateIntrinsicContentSize];

  [(PBUIImageSlotView *)self setNeedsLayout];
}

- (CGSize)_pointSize
{
  image = [(PBUIImageSlot *)self->_imageSlot image];
  [image size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end