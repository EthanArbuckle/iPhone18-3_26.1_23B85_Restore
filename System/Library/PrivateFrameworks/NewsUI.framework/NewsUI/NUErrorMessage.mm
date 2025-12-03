@interface NUErrorMessage
- (BOOL)isEqual:(id)equal;
- (NUErrorMessage)initWithTitle:(id)title subtitle:(id)subtitle;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation NUErrorMessage

- (NUErrorMessage)initWithTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v12.receiver = self;
  v12.super_class = NUErrorMessage;
  v9 = [(NUErrorMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_subtitle, subtitle);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    title = [(NUErrorMessage *)self title];
    title2 = [v5 title];
    if ([v6 fc_string:title isEqualToString:title2])
    {
      v9 = MEMORY[0x277CCACA8];
      subtitle = [(NUErrorMessage *)self subtitle];
      subtitle2 = [v5 subtitle];
      v12 = [v9 fc_string:subtitle isEqualToString:subtitle2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  title = [(NUErrorMessage *)self title];
  v4 = [title hash];
  subtitle = [(NUErrorMessage *)self subtitle];
  v6 = [subtitle hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [NUErrorMessage alloc];
  title = [(NUErrorMessage *)self title];
  v7 = [title copyWithZone:zone];
  subtitle = [(NUErrorMessage *)self subtitle];
  v9 = [subtitle copyWithZone:zone];
  v10 = [(NUErrorMessage *)v5 initWithTitle:v7 subtitle:v9];

  return v10;
}

@end