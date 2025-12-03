@interface DBGImage
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withImageData:(id)data type:(__CFString *)type metadata:(id)metadata;
- (DBGImage)initWithImageData:(id)data type:(__CFString *)type metadata:(id)metadata;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation DBGImage

+ (id)withImageData:(id)data type:(__CFString *)type metadata:(id)metadata
{
  metadataCopy = metadata;
  dataCopy = data;
  v10 = [[self alloc] initWithImageData:dataCopy type:type metadata:metadataCopy];

  return v10;
}

- (DBGImage)initWithImageData:(id)data type:(__CFString *)type metadata:(id)metadata
{
  dataCopy = data;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = DBGImage;
  v11 = [(DBGImage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_imageData, data);
    v12->_imageType = type;
    objc_storeStrong(&v12->_metadata, metadata);
  }

  return v12;
}

- (NSString)description
{
  objectValue = [(DBGImage *)self objectValue];
  v3 = [objectValue description];

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

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  formatCopy = format;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [UTTypePNG identifier];
    if ([formatCopy isEqualToString:identifier])
    {
LABEL_5:

LABEL_6:
      dbgDataValue = [valueCopy dbgDataValue];
      v13 = [self withImageData:dbgDataValue type:formatCopy metadata:0];

      goto LABEL_19;
    }

    identifier2 = [UTTypeTIFF identifier];
    if ([formatCopy isEqualToString:identifier2])
    {

      goto LABEL_5;
    }

    identifier3 = [UTTypeJPEG identifier];
    v15 = [formatCopy isEqualToString:identifier3];

    if (v15)
    {
      goto LABEL_6;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [formatCopy isEqualToString:@"image"])
  {
    v16 = DBGDecodeValueFromJSONCompatibleValue();
    v17 = 0;
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        v13 = 0;
        *error = v18;
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
      identifier4 = [UTTypePNG identifier];
      v13 = [self withImageData:v20 type:identifier4 metadata:v21];
    }
  }

  else
  {
    v13 = 0;
    if (!valueCopy && error)
    {
      v13 = 0;
      *error = 0;
    }
  }

LABEL_19:

  return v13;
}

@end