@interface WFListItem
- (WFListItem)initWithCoder:(id)a3;
- (WFListItem)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFListItem

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFListItem *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(WFListItem *)self subtitle];
  [v4 encodeObject:v6 forKey:@"subtitle"];

  v7 = [(WFListItem *)self image];
  [v4 encodeObject:v7 forKey:@"image"];
}

- (WFListItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFListItem *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v10;

    v12 = v5;
  }

  return v5;
}

- (WFListItem)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = WFListItem;
  v12 = [(WFListItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_subtitle, a4);
    objc_storeStrong(&v13->_image, a5);
    v14 = v13;
  }

  return v13;
}

@end