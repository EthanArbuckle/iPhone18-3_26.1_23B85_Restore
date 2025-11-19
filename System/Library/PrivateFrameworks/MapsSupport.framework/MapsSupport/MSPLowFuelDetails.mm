@interface MSPLowFuelDetails
- (MSPLowFuelDetails)initWithCoder:(id)a3;
- (MSPLowFuelDetails)initWithTitle:(id)a3 subtitle:(id)a4 engineType:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSPLowFuelDetails

- (MSPLowFuelDetails)initWithTitle:(id)a3 subtitle:(id)a4 engineType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MSPLowFuelDetails;
  v12 = [(MSPLowFuelDetails *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_subtitle, a4);
    objc_storeStrong(&v13->_engineType, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_title forKey:@"title"];
  [v6 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v6 encodeObject:self->_engineType forKey:@"engineType"];
  iconData = self->_iconData;
  if (iconData)
  {
    [v6 encodeObject:iconData forKey:@"iconData"];
  }

  iconDataCarPlay = self->_iconDataCarPlay;
  if (iconDataCarPlay)
  {
    [v6 encodeObject:iconDataCarPlay forKey:@"iconDataCarPlay"];
  }
}

- (MSPLowFuelDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MSPLowFuelDetails *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"engineType"];
    engineType = v5->_engineType;
    v5->_engineType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
    iconData = v5->_iconData;
    v5->_iconData = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconDataCarPlay"];
    iconDataCarPlay = v5->_iconDataCarPlay;
    v5->_iconDataCarPlay = v14;
  }

  return v5;
}

@end