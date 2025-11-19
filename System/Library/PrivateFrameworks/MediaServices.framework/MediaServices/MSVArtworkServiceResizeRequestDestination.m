@interface MSVArtworkServiceResizeRequestDestination
+ (id)destinationWithFormat:(int64_t)a3 size:(CGSize)a4 url:(id)a5;
+ (id)jpegDestinationWithSize:(CGSize)a3 compressionQuality:(double)a4 url:(id)a5;
- (CGSize)size;
- (MSVArtworkServiceResizeRequestDestination)initWithCoder:(id)a3;
- (MSVArtworkServiceResizeRequestDestination)initWithFormat:(int64_t)a3 size:(CGSize)a4 compressionQuality:(double)a5 destinationURL:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSVArtworkServiceResizeRequestDestination

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v4 = [(MSVArtworkServiceResizeRequestDestination *)self format];
  switch(v4)
  {
    case 2:
      v19 = MEMORY[0x1E696AEC0];
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v21 = v20;
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v23 = v22;
      v12 = [(MSVArtworkServiceResizeRequestDestination *)self destinationURL];
      v13 = [v12 absoluteString];
      [v19 stringWithFormat:@"<size={%g, %g} format=ASTC -- %@>", v21, v23, v13, v26];
      goto LABEL_7;
    case 1:
      v14 = MEMORY[0x1E696AEC0];
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v16 = v15;
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v18 = v17;
      v12 = [(MSVArtworkServiceResizeRequestDestination *)self destinationURL];
      v13 = [v12 absoluteString];
      [v14 stringWithFormat:@"<size={%g, %g} format=PNG -- %@>", v16, v18, v13, v26];
      goto LABEL_7;
    case 0:
      v5 = MEMORY[0x1E696AEC0];
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v7 = v6;
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v9 = v8;
      [(MSVArtworkServiceResizeRequestDestination *)self compressionQuality];
      v11 = v10;
      v12 = [(MSVArtworkServiceResizeRequestDestination *)self destinationURL];
      v13 = [v12 absoluteString];
      [v5 stringWithFormat:@"<size={%g, %g} quality=%g format=JPEG -- %@>", v7, v9, v11, v13];
      v24 = LABEL_7:;

      goto LABEL_9;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"MSVArtworkServiceResizeRequest.m" lineNumber:88 description:@"Unknown MSVImageFormat"];
  v24 = 0;
LABEL_9:

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [(MSVArtworkServiceResizeRequestDestination *)self size];
  *&v4 = v4;
  [v9 encodeFloat:@"MSVArtworkServiceResizeRequestDestinationSizeWidth" forKey:v4];
  [(MSVArtworkServiceResizeRequestDestination *)self size];
  *&v6 = v5;
  [v9 encodeFloat:@"MSVArtworkServiceResizeRequestDestinationSizeHeight" forKey:v6];
  [(MSVArtworkServiceResizeRequestDestination *)self compressionQuality];
  *&v7 = v7;
  [v9 encodeFloat:@"MSVArtworkServiceResizeRequestDestinationCompressionQuality" forKey:v7];
  v8 = [(MSVArtworkServiceResizeRequestDestination *)self destinationURL];
  [v9 encodeObject:v8 forKey:@"MSVArtworkServiceResizeRequestDestinationURL"];

  [v9 encodeInteger:-[MSVArtworkServiceResizeRequestDestination format](self forKey:{"format"), @"MSVArtworkServiceResizeRequestDestinationFormat"}];
}

- (MSVArtworkServiceResizeRequestDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MSVArtworkServiceResizeRequestDestination;
  v5 = [(MSVArtworkServiceResizeRequestDestination *)&v13 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"MSVArtworkServiceResizeRequestDestinationSizeWidth"];
    v7 = v6;
    [v4 decodeFloatForKey:@"MSVArtworkServiceResizeRequestDestinationSizeHeight"];
    v5->_size.width = v7;
    v5->_size.height = v8;
    [v4 decodeFloatForKey:@"MSVArtworkServiceResizeRequestDestinationCompressionQuality"];
    v5->_compressionQuality = v9;
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSVArtworkServiceResizeRequestDestinationURL"];
    destinationURL = v5->_destinationURL;
    v5->_destinationURL = v10;

    v5->_format = [v4 decodeIntegerForKey:@"MSVArtworkServiceResizeRequestDestinationFormat"];
  }

  return v5;
}

- (MSVArtworkServiceResizeRequestDestination)initWithFormat:(int64_t)a3 size:(CGSize)a4 compressionQuality:(double)a5 destinationURL:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = MSVArtworkServiceResizeRequestDestination;
  v13 = [(MSVArtworkServiceResizeRequestDestination *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_size.width = width;
    v13->_size.height = height;
    v13->_compressionQuality = a5;
    objc_storeStrong(&v13->_destinationURL, a6);
    v14->_format = a3;
  }

  return v14;
}

+ (id)jpegDestinationWithSize:(CGSize)a3 compressionQuality:(double)a4 url:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = a5;
  v9 = [objc_alloc(objc_opt_class()) initWithFormat:0 size:v8 compressionQuality:width destinationURL:height, a4];

  return v9;
}

+ (id)destinationWithFormat:(int64_t)a3 size:(CGSize)a4 url:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a5;
  v9 = [objc_alloc(objc_opt_class()) initWithFormat:a3 size:v8 compressionQuality:width destinationURL:height, 0.0];

  return v9;
}

@end