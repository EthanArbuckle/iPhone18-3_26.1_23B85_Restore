@interface NTKComplicationNoContentImages
- (NTKComplicationNoContentImages)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKComplicationNoContentImages

- (NTKComplicationNoContentImages)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NTKComplicationNoContentImages *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modsm"];
    modularSmallImage = v5->_modularSmallImage;
    v5->_modularSmallImage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"utlsm"];
    utilitarianSmallImage = v5->_utilitarianSmallImage;
    v5->_utilitarianSmallImage = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crcsm"];
    circularSmallImage = v5->_circularSmallImage;
    v5->_circularSmallImage = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modxl"];
    extraLargeImage = v5->_extraLargeImage;
    v5->_extraLargeImage = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  modularSmallImage = self->_modularSmallImage;
  coderCopy = coder;
  [coderCopy encodeObject:modularSmallImage forKey:@"modsm"];
  [coderCopy encodeObject:self->_utilitarianSmallImage forKey:@"utlsm"];
  [coderCopy encodeObject:self->_circularSmallImage forKey:@"crcsm"];
  [coderCopy encodeObject:self->_extraLargeImage forKey:@"modxl"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NTKComplicationNoContentImages allocWithZone:?]];
  objc_storeStrong(&v4->_modularSmallImage, self->_modularSmallImage);
  objc_storeStrong(&v4->_utilitarianSmallImage, self->_utilitarianSmallImage);
  objc_storeStrong(&v4->_circularSmallImage, self->_circularSmallImage);
  objc_storeStrong(&v4->_extraLargeImage, self->_extraLargeImage);
  return v4;
}

@end