@interface MSVArtworkServiceConversionRequest
- (MSVArtworkServiceConversionRequest)initWithCoder:(id)a3;
- (MSVArtworkServiceConversionRequest)initWithSourceURL:(id)a3 destinationURL:(id)a4 destinationFormat:(int64_t)a5;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSVArtworkServiceConversionRequest

- (id)debugDescription
{
  v4 = [(MSVArtworkServiceConversionRequest *)self destinationFormat];
  switch(v4)
  {
    case 2:
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v7 = [(MSVArtworkServiceConversionRequest *)self sourceURL];
      v8 = [(MSVArtworkServiceConversionRequest *)self destinationURL];
      [v12 stringWithFormat:@"<%@: %p>\nsourceURL: %@\ndestinationURL: %@\ndestinationFormat: ASTC", v13, self, v7, v8, v16];
      goto LABEL_7;
    case 1:
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v7 = [(MSVArtworkServiceConversionRequest *)self sourceURL];
      v8 = [(MSVArtworkServiceConversionRequest *)self destinationURL];
      [v10 stringWithFormat:@"<%@: %p>\nsourceURL: %@\ndestinationURL: %@\ndestinationFormat: PNG", v11, self, v7, v8, v16];
      goto LABEL_7;
    case 0:
      v5 = MEMORY[0x1E696AEC0];
      v6 = objc_opt_class();
      v7 = [(MSVArtworkServiceConversionRequest *)self sourceURL];
      v8 = [(MSVArtworkServiceConversionRequest *)self destinationURL];
      [(MSVArtworkServiceConversionRequest *)self destinationCompressionQuality];
      [v5 stringWithFormat:@"<%@: %p>\nsourceURL: %@\ndestinationURL: %@\ndestinationCompressionQuality: %g\ndestinationFormat: JPEG", v6, self, v7, v8, v9];
      v14 = LABEL_7:;

      goto LABEL_9;
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"MSVArtworkServiceConversionRequest.m" lineNumber:83 description:@"Unknown MSVImageFormat"];
  v14 = 0;
LABEL_9:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = MSVArtworkServiceConversionRequest;
  v4 = a3;
  [(MSVArtworkServiceRequest *)&v8 encodeWithCoder:v4];
  v5 = [(MSVArtworkServiceConversionRequest *)self sourceURL:v8.receiver];
  [v4 encodeObject:v5 forKey:@"MSVArtworkServiceConversionRequestSourceURL"];

  v6 = [(MSVArtworkServiceConversionRequest *)self destinationURL];
  [v4 encodeObject:v6 forKey:@"MSVArtworkServiceConversionRequestDestinationURL"];

  [v4 encodeInteger:-[MSVArtworkServiceConversionRequest destinationFormat](self forKey:{"destinationFormat"), @"MSVArtworkServiceConversionRequestDestinationFormat"}];
  [(MSVArtworkServiceConversionRequest *)self destinationCompressionQuality];
  *&v7 = v7;
  [v4 encodeFloat:@"MSVArtworkServiceConversionRequestDestinationCompressionQuality" forKey:v7];
}

- (MSVArtworkServiceConversionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MSVArtworkServiceConversionRequest;
  v5 = [(MSVArtworkServiceRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSVArtworkServiceConversionRequestSourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSVArtworkServiceConversionRequestDestinationURL"];
    destinationURL = v5->_destinationURL;
    v5->_destinationURL = v8;

    v5->_destinationFormat = [v4 decodeIntegerForKey:@"MSVArtworkServiceConversionRequestDestinationFormat"];
    [v4 decodeFloatForKey:@"MSVArtworkServiceConversionRequestDestinationCompressionQuality"];
    v5->_destinationCompressionQuality = v10;
  }

  return v5;
}

- (MSVArtworkServiceConversionRequest)initWithSourceURL:(id)a3 destinationURL:(id)a4 destinationFormat:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = MSVArtworkServiceConversionRequest;
  v10 = [(MSVArtworkServiceRequest *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    sourceURL = v10->_sourceURL;
    v10->_sourceURL = v11;

    v13 = [v9 copy];
    destinationURL = v10->_destinationURL;
    v10->_destinationURL = v13;

    v10->_destinationFormat = a5;
    [(MSVArtworkServiceRequest *)v10 addSandboxExtensionIfNeededForURL:v10->_sourceURL];
    v15 = [(NSURL *)v10->_destinationURL URLByDeletingLastPathComponent];
    [(MSVArtworkServiceRequest *)v10 addSandboxExtensionIfNeededForURL:v15];
  }

  return v10;
}

@end