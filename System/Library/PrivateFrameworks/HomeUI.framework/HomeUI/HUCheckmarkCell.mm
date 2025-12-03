@interface HUCheckmarkCell
- (HUCheckmarkCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIImage)checkedImage;
- (UIImage)uncheckedImage;
- (id)description;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)checked;
@end

@implementation HUCheckmarkCell

- (HUCheckmarkCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HUCheckmarkCell;
  v4 = [(HUActivityIndicatorCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUCheckmarkCell *)v4 setChecked:0];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUCheckmarkCell;
  [(HUActivityIndicatorCell *)&v3 prepareForReuse];
  [(HUCheckmarkCell *)self setChecked:0];
}

- (UIImage)checkedImage
{
  checkedImage = self->_checkedImage;
  if (checkedImage)
  {
    hu_cellCheckmarkImage = checkedImage;
  }

  else
  {
    hu_cellCheckmarkImage = [MEMORY[0x277D755B8] hu_cellCheckmarkImage];
  }

  return hu_cellCheckmarkImage;
}

- (UIImage)uncheckedImage
{
  uncheckedImage = self->_uncheckedImage;
  if (uncheckedImage)
  {
    hu_emptyCheckmarkPlaceholderImage = uncheckedImage;
  }

  else
  {
    hu_emptyCheckmarkPlaceholderImage = [objc_opt_class() hu_emptyCheckmarkPlaceholderImage];
  }

  return hu_emptyCheckmarkPlaceholderImage;
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    self->_checked = checked;
    if (checked)
    {
      [(HUCheckmarkCell *)self checkedImage];
    }

    else
    {
      [(HUCheckmarkCell *)self uncheckedImage];
    }
    v5 = ;
    [(HUActivityIndicatorCell *)self setIcon:v5];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  titleText = [(HUActivityIndicatorCell *)self titleText];
  v7 = [v3 stringWithFormat:@"<%@ %p %@ (animating=%d, checked=%d)>", v5, self, titleText, -[HUActivityIndicatorCell isAnimating](self, "isAnimating"), -[HUCheckmarkCell checked](self, "checked")];

  return v7;
}

@end