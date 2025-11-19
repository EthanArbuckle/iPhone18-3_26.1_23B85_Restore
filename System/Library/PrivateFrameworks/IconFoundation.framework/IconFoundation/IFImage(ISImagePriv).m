@interface IFImage(ISImagePriv)
- (NSData)data;
- (void)data;
@end

@implementation IFImage(ISImagePriv)

- (NSData)data
{
  data = self->_data;
  if (!data)
  {
    v4 = [IFGraphicsContext presetFromCGImage:[(IFImage *)self CGImage]];
    if (v4 == 8)
    {
      v5 = IFDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [IFImage(ISImagePriv) data];
      }

      v4 = 0;
    }

    [(IFImage *)self size];
    v7 = v6;
    v9 = v8;
    [(IFImage *)self scale];
    v11 = [IFGraphicsContext bitmapContextWithSize:v4 scale:v7 preset:v9, v10];
    v12 = [(IFImage *)self CGImage];
    [(IFImage *)self size];
    v14 = v13;
    [(IFImage *)self size];
    [v11 drawCGImage:v12 inRect:{0.0, 0.0, v14, v15}];
    v16 = [v11 data];
    if (!v16)
    {
      v17 = IFDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(IFImage(ISImagePriv) *)self data];
      }
    }

    LODWORD(v35) = 9;
    HIDWORD(v35) = [v16 length];
    v18 = [(IFImage *)self layerData];
    v36 = [v18 length];

    [(IFImage *)self scale];
    v37 = v19;
    [(IFImage *)self size];
    *&v20 = v20;
    v42 = LODWORD(v20);
    [(IFImage *)self size];
    v22 = v21;
    v43 = v22;
    [(IFImage *)self iconSize];
    *&v23 = v23;
    v38 = LODWORD(v23);
    [(IFImage *)self iconSize];
    v25 = v24;
    v39 = v25;
    [(IFImage *)self minimumSize];
    *&v26 = v26;
    v40 = LODWORD(v26);
    [(IFImage *)self minimumSize];
    v28 = v27;
    v41 = v28;
    v44 = [IFGraphicsContext pixelFormatFromCGImage:[(IFImage *)self CGImage]];
    [(IFImage *)self CGImage];
    CGImageGetContentHeadroom();
    v45 = v29;
    v30 = objc_opt_new();
    [v30 appendBytes:&v35 length:48];
    [v30 appendData:v16];
    v31 = [(IFImage *)self layerData];
    [v30 appendData:v31];

    v32 = [v30 copy];
    v33 = self->_data;
    self->_data = v32;

    data = self->_data;
  }

  return data;
}

- (void)data
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_ERROR, "Failed getting bitmap data for %@", &v2, 0xCu);
}

@end