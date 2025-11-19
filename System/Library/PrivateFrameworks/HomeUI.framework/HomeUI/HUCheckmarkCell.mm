@interface HUCheckmarkCell
- (HUCheckmarkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIImage)checkedImage;
- (UIImage)uncheckedImage;
- (id)description;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)a3;
@end

@implementation HUCheckmarkCell

- (HUCheckmarkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HUCheckmarkCell;
  v4 = [(HUActivityIndicatorCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
    v3 = checkedImage;
  }

  else
  {
    v3 = [MEMORY[0x277D755B8] hu_cellCheckmarkImage];
  }

  return v3;
}

- (UIImage)uncheckedImage
{
  uncheckedImage = self->_uncheckedImage;
  if (uncheckedImage)
  {
    v3 = uncheckedImage;
  }

  else
  {
    v3 = [objc_opt_class() hu_emptyCheckmarkPlaceholderImage];
  }

  return v3;
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    self->_checked = a3;
    if (a3)
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
  v6 = [(HUActivityIndicatorCell *)self titleText];
  v7 = [v3 stringWithFormat:@"<%@ %p %@ (animating=%d, checked=%d)>", v5, self, v6, -[HUActivityIndicatorCell isAnimating](self, "isAnimating"), -[HUCheckmarkCell checked](self, "checked")];

  return v7;
}

@end