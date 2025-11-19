@interface NTKComplicationNoContentImages
- (NTKComplicationNoContentImages)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKComplicationNoContentImages

- (NTKComplicationNoContentImages)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKComplicationNoContentImages *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modsm"];
    modularSmallImage = v5->_modularSmallImage;
    v5->_modularSmallImage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"utlsm"];
    utilitarianSmallImage = v5->_utilitarianSmallImage;
    v5->_utilitarianSmallImage = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"crcsm"];
    circularSmallImage = v5->_circularSmallImage;
    v5->_circularSmallImage = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modxl"];
    extraLargeImage = v5->_extraLargeImage;
    v5->_extraLargeImage = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  modularSmallImage = self->_modularSmallImage;
  v5 = a3;
  [v5 encodeObject:modularSmallImage forKey:@"modsm"];
  [v5 encodeObject:self->_utilitarianSmallImage forKey:@"utlsm"];
  [v5 encodeObject:self->_circularSmallImage forKey:@"crcsm"];
  [v5 encodeObject:self->_extraLargeImage forKey:@"modxl"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NTKComplicationNoContentImages allocWithZone:?]];
  objc_storeStrong(&v4->_modularSmallImage, self->_modularSmallImage);
  objc_storeStrong(&v4->_utilitarianSmallImage, self->_utilitarianSmallImage);
  objc_storeStrong(&v4->_circularSmallImage, self->_circularSmallImage);
  objc_storeStrong(&v4->_extraLargeImage, self->_extraLargeImage);
  return v4;
}

@end