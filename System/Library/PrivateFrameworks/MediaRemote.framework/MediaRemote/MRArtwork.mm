@interface MRArtwork
+ (BOOL)processRequestsExternalArtworkValidation;
+ (id)generateArtworkDataWithSize:(CGSize)a3;
- (BOOL)isEqual:(id)a3;
- (MRArtwork)initWithImageData:(id)a3 height:(int64_t)a4 width:(int64_t)a5;
- (MRArtwork)initWithProtobuf:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)artworkByResizingWithWidth:(int64_t)a3 height:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (void)setImageData:(id)a3;
@end

@implementation MRArtwork

+ (BOOL)processRequestsExternalArtworkValidation
{
  if (processRequestsExternalArtworkValidation_onceToken != -1)
  {
    +[MRArtwork processRequestsExternalArtworkValidation];
  }

  return processRequestsExternalArtworkValidation___entitled;
}

- (MRArtwork)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [v4 artworkData];

  if (v5)
  {
    v17.receiver = self;
    v17.super_class = MRArtwork;
    v6 = [(MRArtwork *)&v17 init];
    if (v6)
    {
      v7 = [v4 artworkData];
      v8 = [v7 copy];
      imageData = v6->_imageData;
      v6->_imageData = v8;

      v10 = [v4 metadata];
      v11 = [v10 hasArtworkDataWidthDeprecated];

      if (v11)
      {
        v12 = [v4 metadata];
        v6->_width = [v12 artworkDataWidthDeprecated];
      }

      else
      {
        v6->_width = [v4 artworkDataWidth];
      }

      v13 = [v4 metadata];
      v14 = [v13 hasArtworkDataHeightDeprecated];

      if (v14)
      {
        v15 = [v4 metadata];
        v6->_height = [v15 artworkDataHeightDeprecated];
      }

      else
      {
        v6->_height = [v4 artworkDataHeight];
      }
    }

    self = v6;
    v5 = self;
  }

  return v5;
}

- (MRArtwork)initWithImageData:(id)a3 height:(int64_t)a4 width:(int64_t)a5
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MRArtwork;
  v7 = [(MRArtwork *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MRArtwork *)v7 setImageData:v6];
  }

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MRArtwork *)self imageData];

  if (v4)
  {
    v5 = [(MRArtwork *)self imageData];
    StringRepresentation = MRDataCreateStringRepresentation(v5);
    [v3 setObject:StringRepresentation forKeyedSubscript:@"imageData"];
  }

  if ([(MRArtwork *)self height]>= 1)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRArtwork height](self, "height")}];
    [v3 setObject:v7 forKeyedSubscript:@"height"];
  }

  if ([(MRArtwork *)self width]>= 1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRArtwork width](self, "width")}];
    [v3 setObject:v8 forKeyedSubscript:@"width"];
  }

  v9 = +[MRUserSettings currentSettings];
  if ([v9 shouldLogArtwork])
  {
    v10 = [(MRArtwork *)self imageData];
    v11 = MRCreateASCIIRepresentationFromImageData(v10);
    [v3 setObject:v11 forKeyedSubscript:@"image"];
  }

  return v3;
}

- (void)setImageData:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (+[MRArtwork processRequestsExternalArtworkValidation])
    {
      v6 = MRGetSharedService();
      [v6 imageDimensionsForArtworkData:v5];
      v9 = v8;
      v10 = v7;
      if (v8 != *MEMORY[0x1E695F060] || v7 != *(MEMORY[0x1E695F060] + 8))
      {
        goto LABEL_15;
      }

      v12 = _MRLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MRArtwork setImageData:v12];
      }
    }

    else
    {
      v16 = 0;
      [MRImageUtilities imageDimensionsForImageData:v5 error:&v16];
      v9 = v14;
      v10 = v15;
      v6 = v16;
      if (!v6)
      {
LABEL_15:
        objc_storeStrong(&self->_imageData, a3);
        self->_height = v10;
        self->_width = v9;
        goto LABEL_16;
      }

      v12 = _MRLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MRArtwork setImageData:v12];
      }
    }

LABEL_16:
    goto LABEL_17;
  }

  imageData = self->_imageData;
  self->_imageData = 0;

  self->_height = 0;
  self->_width = 0;
LABEL_17:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v5 = [(MRArtwork *)v4 imageData];
    v6 = [(MRArtwork *)self imageData];
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      v8 = [(MRArtwork *)v4 imageData];
      v9 = [(MRArtwork *)self imageData];
      v10 = [v8 isEqualToData:v9];

      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v12 = [(MRArtwork *)v4 height];
    if (v12 != [(MRArtwork *)self height])
    {
LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    v13 = [(MRArtwork *)v4 width];
    v11 = v13 == [(MRArtwork *)self width];
  }

LABEL_11:

  return v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRArtwork *)self width];
  v6 = [(MRArtwork *)self height];
  v7 = [(MRArtwork *)self imageData];
  v8 = [v3 initWithFormat:@"<%@: %p> %ld x %ld (%ld bytes)", v4, self, v5, v6, objc_msgSend(v7, "length")];

  return v8;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p> {\n", objc_opt_class(), self];
  [v3 appendFormat:@"  width = %ld\n", -[MRArtwork width](self, "width")];
  [v3 appendFormat:@"  height = %ld\n", -[MRArtwork height](self, "height")];
  v4 = [(MRArtwork *)self imageData];
  v5 = [v4 description];
  v6 = MRCreateIndentedDebugDescriptionFromObject(v5);
  [v3 appendFormat:@"  imageData = %@\n", v6];

  v7 = +[MRUserSettings currentSettings];
  LODWORD(v5) = [v7 shouldLogArtwork];

  if (v5)
  {
    v8 = [(MRArtwork *)self imageData];
    v9 = MRCreateASCIIRepresentationFromImageData(v8);
    v10 = MRCreateIndentedDebugDescriptionFromObject(v9);
    [v3 appendFormat:@"artwork = %@\n", v10];
  }

  [v3 appendString:@"}"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MRArtwork *)self imageData];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEF0]);
    v7 = [(MRArtwork *)self imageData];
    v8 = [v6 initWithData:v7];
    [v4 setImageData:v8];
  }

  else
  {
    [v4 setImageData:0];
  }

  [v4 setHeight:{-[MRArtwork height](self, "height")}];
  [v4 setWidth:{-[MRArtwork width](self, "width")}];
  return v4;
}

- (id)artworkByResizingWithWidth:(int64_t)a3 height:(int64_t)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MRArtwork *)self width];
  v10 = [(MRArtwork *)self height];
  v11 = v10;
  if (v7 + 0.5 >= v9 && v8 + 0.5 >= v11)
  {
    goto LABEL_21;
  }

  v13 = v10;
  v14 = v9;
  if ((a4 & a3) != 0xFFFFFFFFFFFFFFFFLL)
  {
    v15 = v9 / v11;
    if (a3 == -1)
    {
      v14 = v15 * v8;
      v13 = v8;
    }

    else if (a4 == -1)
    {
      v14 = v7;
      v13 = v7 / v15;
    }

    else
    {
      v13 = v8;
      v14 = v7;
    }
  }

  v16 = v13 + 0.5;
  if (v14 + 0.5 < v9 || v16 < v11)
  {
    v18 = [(MRArtwork *)self imageData:v11];
    v24 = 0;
    v19 = [MRImageUtilities resizeImageData:v18 forFittingSize:&v24 error:v14, v13];
    v20 = v24;

    if (v20)
    {
      v21 = _MRLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [MRArtwork artworkByResizingWithWidth:v20 height:v21];
      }

      v22 = 0;
    }

    else
    {
      v22 = [[MRArtwork alloc] initWithImageData:v19 height:v13 width:v14];
    }
  }

  else
  {
LABEL_21:
    v22 = 0;
  }

  return v22;
}

uint64_t __53__MRArtwork_processRequestsExternalArtworkValidation__block_invoke()
{
  result = [MEMORY[0x1E69B1418] hasBoolEntitlement:@"com.apple.mediaremote.external-artwork-validation" shouldLogForMissingEntitlement:0];
  processRequestsExternalArtworkValidation___entitled = result;
  return result;
}

+ (id)generateArtworkDataWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = a3.width * a3.height;
  v6 = malloc_type_malloc(vcvtd_n_u64_f64(a3.width * a3.height, 2uLL), 0xB0B63DDCuLL);
  v7 = v6;
  if (v5 > 0.0)
  {
    v8 = 1;
    v9 = v6;
    do
    {
      *v9++ = 4928025;
      v10 = v8++;
    }

    while (v5 > v10);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(v7, width, height, 8uLL, vcvtd_n_u64_f64(width, 2uLL), DeviceRGB, 5u);
  CFRelease(DeviceRGB);
  Image = CGBitmapContextCreateImage(v12);
  CFRelease(v12);
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v15 = [*MEMORY[0x1E6982E58] identifier];
  v16 = CGImageDestinationCreateWithData(Mutable, v15, 1uLL, 0);

  CGImageDestinationAddImage(v16, Image, 0);
  CGImageDestinationFinalize(v16);
  CFRelease(Image);
  CFRelease(v16);
  free(v7);

  return Mutable;
}

- (void)artworkByResizingWithWidth:(uint64_t)a1 height:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRArtwork] resize failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end