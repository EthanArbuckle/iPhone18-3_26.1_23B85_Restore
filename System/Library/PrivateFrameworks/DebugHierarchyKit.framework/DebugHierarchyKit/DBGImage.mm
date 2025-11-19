@interface DBGImage
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withImageData:(id)a3 type:(__CFString *)a4 metadata:(id)a5;
- (DBGImage)initWithImageData:(id)a3 type:(__CFString *)a4 metadata:(id)a5;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation DBGImage

+ (id)withImageData:(id)a3 type:(__CFString *)a4 metadata:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithImageData:v9 type:a4 metadata:v8];

  return v10;
}

- (DBGImage)initWithImageData:(id)a3 type:(__CFString *)a4 metadata:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = DBGImage;
  v11 = [(DBGImage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_imageData, a3);
    v12->_imageType = a4;
    objc_storeStrong(&v12->_metadata, a5);
  }

  return v12;
}

- (NSString)description
{
  v2 = [(DBGImage *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGImage *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [UTTypePNG identifier];
    if ([v9 isEqualToString:v10])
    {
LABEL_5:

LABEL_6:
      v12 = [v8 dbgDataValue];
      v13 = [a1 withImageData:v12 type:v9 metadata:0];

      goto LABEL_19;
    }

    v11 = [UTTypeTIFF identifier];
    if ([v9 isEqualToString:v11])
    {

      goto LABEL_5;
    }

    v14 = [UTTypeJPEG identifier];
    v15 = [v9 isEqualToString:v14];

    if (v15)
    {
      goto LABEL_6;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isEqualToString:@"image"])
  {
    v16 = DBGDecodeValueFromJSONCompatibleValue();
    v17 = 0;
    v18 = v17;
    if (v17)
    {
      if (a5)
      {
        v19 = v17;
        v13 = 0;
        *a5 = v18;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v20 = [v16 objectForKeyedSubscript:@"imageData"];
      v21 = [v16 objectForKeyedSubscript:@"metadata"];
      v22 = [UTTypePNG identifier];
      v13 = [a1 withImageData:v20 type:v22 metadata:v21];
    }
  }

  else
  {
    v13 = 0;
    if (!v8 && a5)
    {
      v13 = 0;
      *a5 = 0;
    }
  }

LABEL_19:

  return v13;
}

@end