@interface MSPLowFuelDetails
- (MSPLowFuelDetails)initWithCoder:(id)coder;
- (MSPLowFuelDetails)initWithTitle:(id)title subtitle:(id)subtitle engineType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSPLowFuelDetails

- (MSPLowFuelDetails)initWithTitle:(id)title subtitle:(id)subtitle engineType:(id)type
{
  titleCopy = title;
  subtitleCopy = subtitle;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = MSPLowFuelDetails;
  v12 = [(MSPLowFuelDetails *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_subtitle, subtitle);
    objc_storeStrong(&v13->_engineType, type);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_engineType forKey:@"engineType"];
  iconData = self->_iconData;
  if (iconData)
  {
    [coderCopy encodeObject:iconData forKey:@"iconData"];
  }

  iconDataCarPlay = self->_iconDataCarPlay;
  if (iconDataCarPlay)
  {
    [coderCopy encodeObject:iconDataCarPlay forKey:@"iconDataCarPlay"];
  }
}

- (MSPLowFuelDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MSPLowFuelDetails *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"engineType"];
    engineType = v5->_engineType;
    v5->_engineType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
    iconData = v5->_iconData;
    v5->_iconData = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconDataCarPlay"];
    iconDataCarPlay = v5->_iconDataCarPlay;
    v5->_iconDataCarPlay = v14;
  }

  return v5;
}

@end