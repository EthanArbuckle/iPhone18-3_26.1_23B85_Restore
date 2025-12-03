@interface MSVArtworkServiceConversionRequest
- (MSVArtworkServiceConversionRequest)initWithCoder:(id)coder;
- (MSVArtworkServiceConversionRequest)initWithSourceURL:(id)l destinationURL:(id)rL destinationFormat:(int64_t)format;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSVArtworkServiceConversionRequest

- (id)debugDescription
{
  destinationFormat = [(MSVArtworkServiceConversionRequest *)self destinationFormat];
  switch(destinationFormat)
  {
    case 2:
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      sourceURL = [(MSVArtworkServiceConversionRequest *)self sourceURL];
      destinationURL = [(MSVArtworkServiceConversionRequest *)self destinationURL];
      [v12 stringWithFormat:@"<%@: %p>\nsourceURL: %@\ndestinationURL: %@\ndestinationFormat: ASTC", v13, self, sourceURL, destinationURL, v16];
      goto LABEL_7;
    case 1:
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      sourceURL = [(MSVArtworkServiceConversionRequest *)self sourceURL];
      destinationURL = [(MSVArtworkServiceConversionRequest *)self destinationURL];
      [v10 stringWithFormat:@"<%@: %p>\nsourceURL: %@\ndestinationURL: %@\ndestinationFormat: PNG", v11, self, sourceURL, destinationURL, v16];
      goto LABEL_7;
    case 0:
      v5 = MEMORY[0x1E696AEC0];
      v6 = objc_opt_class();
      sourceURL = [(MSVArtworkServiceConversionRequest *)self sourceURL];
      destinationURL = [(MSVArtworkServiceConversionRequest *)self destinationURL];
      [(MSVArtworkServiceConversionRequest *)self destinationCompressionQuality];
      [v5 stringWithFormat:@"<%@: %p>\nsourceURL: %@\ndestinationURL: %@\ndestinationCompressionQuality: %g\ndestinationFormat: JPEG", v6, self, sourceURL, destinationURL, v9];
      v14 = LABEL_7:;

      goto LABEL_9;
  }

  sourceURL = [MEMORY[0x1E696AAA8] currentHandler];
  [sourceURL handleFailureInMethod:a2 object:self file:@"MSVArtworkServiceConversionRequest.m" lineNumber:83 description:@"Unknown MSVImageFormat"];
  v14 = 0;
LABEL_9:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = MSVArtworkServiceConversionRequest;
  coderCopy = coder;
  [(MSVArtworkServiceRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(MSVArtworkServiceConversionRequest *)self sourceURL:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"MSVArtworkServiceConversionRequestSourceURL"];

  destinationURL = [(MSVArtworkServiceConversionRequest *)self destinationURL];
  [coderCopy encodeObject:destinationURL forKey:@"MSVArtworkServiceConversionRequestDestinationURL"];

  [coderCopy encodeInteger:-[MSVArtworkServiceConversionRequest destinationFormat](self forKey:{"destinationFormat"), @"MSVArtworkServiceConversionRequestDestinationFormat"}];
  [(MSVArtworkServiceConversionRequest *)self destinationCompressionQuality];
  *&v7 = v7;
  [coderCopy encodeFloat:@"MSVArtworkServiceConversionRequestDestinationCompressionQuality" forKey:v7];
}

- (MSVArtworkServiceConversionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MSVArtworkServiceConversionRequest;
  v5 = [(MSVArtworkServiceRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSVArtworkServiceConversionRequestSourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSVArtworkServiceConversionRequestDestinationURL"];
    destinationURL = v5->_destinationURL;
    v5->_destinationURL = v8;

    v5->_destinationFormat = [coderCopy decodeIntegerForKey:@"MSVArtworkServiceConversionRequestDestinationFormat"];
    [coderCopy decodeFloatForKey:@"MSVArtworkServiceConversionRequestDestinationCompressionQuality"];
    v5->_destinationCompressionQuality = v10;
  }

  return v5;
}

- (MSVArtworkServiceConversionRequest)initWithSourceURL:(id)l destinationURL:(id)rL destinationFormat:(int64_t)format
{
  lCopy = l;
  rLCopy = rL;
  v17.receiver = self;
  v17.super_class = MSVArtworkServiceConversionRequest;
  v10 = [(MSVArtworkServiceRequest *)&v17 init];
  if (v10)
  {
    v11 = [lCopy copy];
    sourceURL = v10->_sourceURL;
    v10->_sourceURL = v11;

    v13 = [rLCopy copy];
    destinationURL = v10->_destinationURL;
    v10->_destinationURL = v13;

    v10->_destinationFormat = format;
    [(MSVArtworkServiceRequest *)v10 addSandboxExtensionIfNeededForURL:v10->_sourceURL];
    uRLByDeletingLastPathComponent = [(NSURL *)v10->_destinationURL URLByDeletingLastPathComponent];
    [(MSVArtworkServiceRequest *)v10 addSandboxExtensionIfNeededForURL:uRLByDeletingLastPathComponent];
  }

  return v10;
}

@end