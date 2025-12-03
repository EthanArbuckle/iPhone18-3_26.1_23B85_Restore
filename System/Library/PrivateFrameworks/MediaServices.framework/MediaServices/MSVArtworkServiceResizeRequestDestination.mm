@interface MSVArtworkServiceResizeRequestDestination
+ (id)destinationWithFormat:(int64_t)format size:(CGSize)size url:(id)url;
+ (id)jpegDestinationWithSize:(CGSize)size compressionQuality:(double)quality url:(id)url;
- (CGSize)size;
- (MSVArtworkServiceResizeRequestDestination)initWithCoder:(id)coder;
- (MSVArtworkServiceResizeRequestDestination)initWithFormat:(int64_t)format size:(CGSize)size compressionQuality:(double)quality destinationURL:(id)l;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  format = [(MSVArtworkServiceResizeRequestDestination *)self format];
  switch(format)
  {
    case 2:
      v19 = MEMORY[0x1E696AEC0];
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v21 = v20;
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v23 = v22;
      destinationURL = [(MSVArtworkServiceResizeRequestDestination *)self destinationURL];
      absoluteString = [destinationURL absoluteString];
      [v19 stringWithFormat:@"<size={%g, %g} format=ASTC -- %@>", v21, v23, absoluteString, v26];
      goto LABEL_7;
    case 1:
      v14 = MEMORY[0x1E696AEC0];
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v16 = v15;
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v18 = v17;
      destinationURL = [(MSVArtworkServiceResizeRequestDestination *)self destinationURL];
      absoluteString = [destinationURL absoluteString];
      [v14 stringWithFormat:@"<size={%g, %g} format=PNG -- %@>", v16, v18, absoluteString, v26];
      goto LABEL_7;
    case 0:
      v5 = MEMORY[0x1E696AEC0];
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v7 = v6;
      [(MSVArtworkServiceResizeRequestDestination *)self size];
      v9 = v8;
      [(MSVArtworkServiceResizeRequestDestination *)self compressionQuality];
      v11 = v10;
      destinationURL = [(MSVArtworkServiceResizeRequestDestination *)self destinationURL];
      absoluteString = [destinationURL absoluteString];
      [v5 stringWithFormat:@"<size={%g, %g} quality=%g format=JPEG -- %@>", v7, v9, v11, absoluteString];
      v24 = LABEL_7:;

      goto LABEL_9;
  }

  destinationURL = [MEMORY[0x1E696AAA8] currentHandler];
  [destinationURL handleFailureInMethod:a2 object:self file:@"MSVArtworkServiceResizeRequest.m" lineNumber:88 description:@"Unknown MSVImageFormat"];
  v24 = 0;
LABEL_9:

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(MSVArtworkServiceResizeRequestDestination *)self size];
  *&v4 = v4;
  [coderCopy encodeFloat:@"MSVArtworkServiceResizeRequestDestinationSizeWidth" forKey:v4];
  [(MSVArtworkServiceResizeRequestDestination *)self size];
  *&v6 = v5;
  [coderCopy encodeFloat:@"MSVArtworkServiceResizeRequestDestinationSizeHeight" forKey:v6];
  [(MSVArtworkServiceResizeRequestDestination *)self compressionQuality];
  *&v7 = v7;
  [coderCopy encodeFloat:@"MSVArtworkServiceResizeRequestDestinationCompressionQuality" forKey:v7];
  destinationURL = [(MSVArtworkServiceResizeRequestDestination *)self destinationURL];
  [coderCopy encodeObject:destinationURL forKey:@"MSVArtworkServiceResizeRequestDestinationURL"];

  [coderCopy encodeInteger:-[MSVArtworkServiceResizeRequestDestination format](self forKey:{"format"), @"MSVArtworkServiceResizeRequestDestinationFormat"}];
}

- (MSVArtworkServiceResizeRequestDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MSVArtworkServiceResizeRequestDestination;
  v5 = [(MSVArtworkServiceResizeRequestDestination *)&v13 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"MSVArtworkServiceResizeRequestDestinationSizeWidth"];
    v7 = v6;
    [coderCopy decodeFloatForKey:@"MSVArtworkServiceResizeRequestDestinationSizeHeight"];
    v5->_size.width = v7;
    v5->_size.height = v8;
    [coderCopy decodeFloatForKey:@"MSVArtworkServiceResizeRequestDestinationCompressionQuality"];
    v5->_compressionQuality = v9;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSVArtworkServiceResizeRequestDestinationURL"];
    destinationURL = v5->_destinationURL;
    v5->_destinationURL = v10;

    v5->_format = [coderCopy decodeIntegerForKey:@"MSVArtworkServiceResizeRequestDestinationFormat"];
  }

  return v5;
}

- (MSVArtworkServiceResizeRequestDestination)initWithFormat:(int64_t)format size:(CGSize)size compressionQuality:(double)quality destinationURL:(id)l
{
  height = size.height;
  width = size.width;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = MSVArtworkServiceResizeRequestDestination;
  v13 = [(MSVArtworkServiceResizeRequestDestination *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_size.width = width;
    v13->_size.height = height;
    v13->_compressionQuality = quality;
    objc_storeStrong(&v13->_destinationURL, l);
    v14->_format = format;
  }

  return v14;
}

+ (id)jpegDestinationWithSize:(CGSize)size compressionQuality:(double)quality url:(id)url
{
  height = size.height;
  width = size.width;
  urlCopy = url;
  quality = [objc_alloc(objc_opt_class()) initWithFormat:0 size:urlCopy compressionQuality:width destinationURL:height, quality];

  return quality;
}

+ (id)destinationWithFormat:(int64_t)format size:(CGSize)size url:(id)url
{
  height = size.height;
  width = size.width;
  urlCopy = url;
  v9 = [objc_alloc(objc_opt_class()) initWithFormat:format size:urlCopy compressionQuality:width destinationURL:height, 0.0];

  return v9;
}

@end