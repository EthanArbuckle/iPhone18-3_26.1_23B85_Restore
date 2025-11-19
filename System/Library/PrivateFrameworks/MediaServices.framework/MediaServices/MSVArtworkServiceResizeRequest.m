@interface MSVArtworkServiceResizeRequest
- (MSVArtworkServiceResizeRequest)initWithCoder:(id)a3;
- (MSVArtworkServiceResizeRequest)initWithSourceURL:(id)a3;
- (id)debugDescription;
- (void)addDestinationWithFormat:(int64_t)a3 size:(CGSize)a4 url:(id)a5;
- (void)addJPEGDestinationWithSize:(CGSize)a3 compressionQuality:(double)a4 url:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateDestinationsUsingBlock:(id)a3;
@end

@implementation MSVArtworkServiceResizeRequest

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MSVArtworkServiceResizeRequest *)self sourceURL];
  v6 = [(MSVArtworkServiceResizeRequest *)self resizeDestinations];
  v7 = [v3 stringWithFormat:@"<%@: %p>\nsourceURL: %@\ndestinations: %@", v4, self, v5, v6];

  return v7;
}

- (void)enumerateDestinationsUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVArtworkServiceResizeRequest.m" lineNumber:152 description:@"Cannot enumerate destinations without a block"];
  }

  v6 = [(MSVArtworkServiceResizeRequest *)self resizeDestinations];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__MSVArtworkServiceResizeRequest_enumerateDestinationsUsingBlock___block_invoke;
  v9[3] = &unk_1E7981988;
  v10 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v9];
}

- (void)addJPEGDestinationWithSize:(CGSize)a3 compressionQuality:(double)a4 url:(id)a5
{
  height = a3.height;
  width = a3.width;
  resizeDestinations = self->_resizeDestinations;
  v10 = a5;
  v11 = [MSVArtworkServiceResizeRequestDestination jpegDestinationWithSize:v10 compressionQuality:width url:height, a4];
  [(NSMutableArray *)resizeDestinations addObject:v11];

  v12 = [v10 URLByDeletingLastPathComponent];

  [(MSVArtworkServiceRequest *)self addSandboxExtensionIfNeededForURL:v12];
}

- (void)addDestinationWithFormat:(int64_t)a3 size:(CGSize)a4 url:(id)a5
{
  height = a4.height;
  width = a4.width;
  resizeDestinations = self->_resizeDestinations;
  v10 = a5;
  v11 = [MSVArtworkServiceResizeRequestDestination destinationWithFormat:a3 size:v10 url:width, height];
  [(NSMutableArray *)resizeDestinations addObject:v11];

  v12 = [v10 URLByDeletingLastPathComponent];

  [(MSVArtworkServiceRequest *)self addSandboxExtensionIfNeededForURL:v12];
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MSVArtworkServiceResizeRequest;
  v4 = a3;
  [(MSVArtworkServiceRequest *)&v7 encodeWithCoder:v4];
  v5 = [(MSVArtworkServiceResizeRequest *)self sourceURL:v7.receiver];
  [v4 encodeObject:v5 forKey:@"MSVArtworkServiceResizeRequestSourceURL"];

  v6 = [(MSVArtworkServiceResizeRequest *)self resizeDestinations];
  [v4 encodeObject:v6 forKey:@"MSVArtworkServiceResizeRequestDestinations"];
}

- (MSVArtworkServiceResizeRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MSVArtworkServiceResizeRequest;
  v5 = [(MSVArtworkServiceRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSVArtworkServiceResizeRequestSourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"MSVArtworkServiceResizeRequestDestinations"];
    resizeDestinations = v5->_resizeDestinations;
    v5->_resizeDestinations = v11;
  }

  return v5;
}

- (MSVArtworkServiceResizeRequest)initWithSourceURL:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MSVArtworkServiceResizeRequest;
  v6 = [(MSVArtworkServiceRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceURL, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    resizeDestinations = v7->_resizeDestinations;
    v7->_resizeDestinations = v8;

    [(MSVArtworkServiceRequest *)v7 addSandboxExtensionIfNeededForURL:v7->_sourceURL];
  }

  return v7;
}

@end