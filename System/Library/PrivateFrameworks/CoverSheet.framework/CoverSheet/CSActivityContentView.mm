@interface CSActivityContentView
- (CGSize)iconImageSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CSActivityContentViewDelegate)delegate;
- (id)_buttonGroupName;
@end

@implementation CSActivityContentView

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(CSActivityContentView *)self delegate:fits.width];
  [v5 contentSizeForContentView:self];
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  delegate = [(CSActivityContentView *)self delegate];
  [delegate contentSizeForContentView:self];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)iconImageSize
{
  [(CSActivityContentView *)self iconImageFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)_buttonGroupName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@.button", v4];

  return v5;
}

- (CSActivityContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end