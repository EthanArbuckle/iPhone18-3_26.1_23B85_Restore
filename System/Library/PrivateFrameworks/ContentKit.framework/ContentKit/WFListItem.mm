@interface WFListItem
- (WFListItem)initWithCoder:(id)coder;
- (WFListItem)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFListItem

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(WFListItem *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(WFListItem *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  image = [(WFListItem *)self image];
  [coderCopy encodeObject:image forKey:@"image"];
}

- (WFListItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFListItem *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v10;

    v12 = v5;
  }

  return v5;
}

- (WFListItem)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image
{
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = WFListItem;
  v12 = [(WFListItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_subtitle, subtitle);
    objc_storeStrong(&v13->_image, image);
    v14 = v13;
  }

  return v13;
}

@end