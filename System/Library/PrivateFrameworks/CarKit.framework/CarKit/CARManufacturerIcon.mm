@interface CARManufacturerIcon
- (CARManufacturerIcon)initWithDictionary:(id)a3;
- (CGSize)pixelSize;
- (id)description;
@end

@implementation CARManufacturerIcon

- (CARManufacturerIcon)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CARManufacturerIcon;
  v5 = [(CARManufacturerIcon *)&v18 init];
  if (v5)
  {
    v6 = [v4 valueForKey:@"widthPixels"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = 0.0;
    v9 = 0.0;
    if (isKindOfClass)
    {
      [v6 floatValue];
      v9 = v10;
    }

    v5->_pixelSize.width = v9;
    v11 = [v4 valueForKey:@"heightPixels"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      v8 = v12;
    }

    v5->_pixelSize.height = v8;
    v13 = [v4 valueForKey:@"imageData"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v5->_imageData, v14);
    v15 = [v4 valueForKey:@"prerendered"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 BOOLValue];
    }

    else
    {
      v16 = 1;
    }

    v5->_prerendered = v16;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = CARManufacturerIcon;
  v4 = [(CARManufacturerIcon *)&v13 description];
  [(CARManufacturerIcon *)self pixelSize];
  v6 = v5;
  [(CARManufacturerIcon *)self pixelSize];
  v8 = v7;
  [(CARManufacturerIcon *)self isPrerendered];
  v9 = NSStringFromBOOL();
  v10 = [(CARManufacturerIcon *)self imageData];
  v11 = [v3 stringWithFormat:@"%@ <size: %f x %f, prerendered: %@, data length: %lu>", v4, v6, v8, v9, objc_msgSend(v10, "length")];

  return v11;
}

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end