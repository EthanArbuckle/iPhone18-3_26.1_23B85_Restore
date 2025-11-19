@interface IFCacheImage
- (IFCacheImage)initWithCoder:(id)a3;
- (IFCacheImage)initWithData:(id)a3 uuid:(id)a4 validationToken:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IFCacheImage

- (IFCacheImage)initWithData:(id)a3 uuid:(id)a4 validationToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 __IS_imageHeader];
  if (!v11)
  {
    v12 = IFDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [IFCacheImage initWithData:uuid:validationToken:];
    }
  }

  v13 = [IFImage createCGImageWithIFImageData:v8];
  if (!v13)
  {
    v22 = IFDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [IFCacheImage initWithData:uuid:validationToken:];
    }

    if (v11)
    {
      goto LABEL_7;
    }

LABEL_12:
    v21 = 0;
    v19 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_7:
  v15 = *(v11 + 24);
  v16 = *(v11 + 28);
  LODWORD(v14) = *(v11 + 12);
  v17 = *(v11 + 16);
  v18 = *(v11 + 20);
  v19 = v14;
  v20 = [IFImage _layerDataFromIFImageData:v8];
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v24 = *(v11 + 8);
    v23 = (v11 + 8);
    if (v24)
    {
      v25 = IFDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [IFCacheImage initWithData:v23 uuid:v25 validationToken:?];
      }
    }

    v21 = 0;
  }

LABEL_18:
  v26 = [(IFConcreteImage *)self initWithCGImage:v13 scale:v21 layerData:v19];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_uuid, a4);
    objc_storeStrong(&v27->_validationToken, a5);
    [(IFConcreteImage *)v27 setMinimumSize:v15, v16];
    [(IFConcreteImage *)v27 setIconSize:v17, v18];
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v27;
}

- (IFCacheImage)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IFCacheImage;
  v5 = [(IFImage *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 _IF_decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 _IF_decodeObjectOfClass:objc_opt_class() forKey:@"validationToken"];
    validationToken = v5->_validationToken;
    v5->_validationToken = v8;

    [v4 decodeFloatForKey:@"minimumSize.width"];
    v11 = v10;
    [v4 decodeFloatForKey:@"minimumSize.height"];
    [(IFConcreteImage *)v5 setMinimumSize:v11, v12];
    [v4 decodeFloatForKey:@"iconSize.width"];
    v14 = v13;
    [v4 decodeFloatForKey:@"iconSize.height"];
    [(IFConcreteImage *)v5 setIconSize:v14, v15];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = IFCacheImage;
  v4 = a3;
  [(IFImage *)&v11 encodeWithCoder:v4];
  [v4 encodeObject:self->_uuid forKey:{@"uuid", v11.receiver, v11.super_class}];
  [v4 encodeObject:self->_validationToken forKey:@"validationToken"];
  [(IFConcreteImage *)self minimumSize];
  *&v5 = v5;
  [v4 encodeFloat:@"minimumSize.width" forKey:v5];
  [(IFConcreteImage *)self minimumSize];
  *&v7 = v6;
  [v4 encodeFloat:@"minimumSize.height" forKey:v7];
  [(IFConcreteImage *)self iconSize];
  *&v8 = v8;
  [v4 encodeFloat:@"iconSize.width" forKey:v8];
  [(IFConcreteImage *)self iconSize];
  *&v10 = v9;
  [v4 encodeFloat:@"iconSize.height" forKey:v10];
}

- (void)initWithData:(_DWORD *)a1 uuid:(NSObject *)a2 validationToken:.cold.3(_DWORD *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1 != 0;
  v3[0] = 67240192;
  v3[1] = v2;
  _os_log_error_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_ERROR, "Failed to read layer data from cache data, layerDataSize=%{public}d", v3, 8u);
}

@end