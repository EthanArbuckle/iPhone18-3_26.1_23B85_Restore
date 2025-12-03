@interface MSVArtworkServiceResizeRequest
- (MSVArtworkServiceResizeRequest)initWithCoder:(id)coder;
- (MSVArtworkServiceResizeRequest)initWithSourceURL:(id)l;
- (id)debugDescription;
- (void)addDestinationWithFormat:(int64_t)format size:(CGSize)size url:(id)url;
- (void)addJPEGDestinationWithSize:(CGSize)size compressionQuality:(double)quality url:(id)url;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateDestinationsUsingBlock:(id)block;
@end

@implementation MSVArtworkServiceResizeRequest

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  sourceURL = [(MSVArtworkServiceResizeRequest *)self sourceURL];
  resizeDestinations = [(MSVArtworkServiceResizeRequest *)self resizeDestinations];
  v7 = [v3 stringWithFormat:@"<%@: %p>\nsourceURL: %@\ndestinations: %@", v4, self, sourceURL, resizeDestinations];

  return v7;
}

- (void)enumerateDestinationsUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVArtworkServiceResizeRequest.m" lineNumber:152 description:@"Cannot enumerate destinations without a block"];
  }

  resizeDestinations = [(MSVArtworkServiceResizeRequest *)self resizeDestinations];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__MSVArtworkServiceResizeRequest_enumerateDestinationsUsingBlock___block_invoke;
  v9[3] = &unk_1E7981988;
  v10 = blockCopy;
  v7 = blockCopy;
  [resizeDestinations enumerateObjectsUsingBlock:v9];
}

- (void)addJPEGDestinationWithSize:(CGSize)size compressionQuality:(double)quality url:(id)url
{
  height = size.height;
  width = size.width;
  resizeDestinations = self->_resizeDestinations;
  urlCopy = url;
  quality = [MSVArtworkServiceResizeRequestDestination jpegDestinationWithSize:urlCopy compressionQuality:width url:height, quality];
  [(NSMutableArray *)resizeDestinations addObject:quality];

  uRLByDeletingLastPathComponent = [urlCopy URLByDeletingLastPathComponent];

  [(MSVArtworkServiceRequest *)self addSandboxExtensionIfNeededForURL:uRLByDeletingLastPathComponent];
}

- (void)addDestinationWithFormat:(int64_t)format size:(CGSize)size url:(id)url
{
  height = size.height;
  width = size.width;
  resizeDestinations = self->_resizeDestinations;
  urlCopy = url;
  height = [MSVArtworkServiceResizeRequestDestination destinationWithFormat:format size:urlCopy url:width, height];
  [(NSMutableArray *)resizeDestinations addObject:height];

  uRLByDeletingLastPathComponent = [urlCopy URLByDeletingLastPathComponent];

  [(MSVArtworkServiceRequest *)self addSandboxExtensionIfNeededForURL:uRLByDeletingLastPathComponent];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = MSVArtworkServiceResizeRequest;
  coderCopy = coder;
  [(MSVArtworkServiceRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(MSVArtworkServiceResizeRequest *)self sourceURL:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"MSVArtworkServiceResizeRequestSourceURL"];

  resizeDestinations = [(MSVArtworkServiceResizeRequest *)self resizeDestinations];
  [coderCopy encodeObject:resizeDestinations forKey:@"MSVArtworkServiceResizeRequestDestinations"];
}

- (MSVArtworkServiceResizeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MSVArtworkServiceResizeRequest;
  v5 = [(MSVArtworkServiceRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSVArtworkServiceResizeRequestSourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"MSVArtworkServiceResizeRequestDestinations"];
    resizeDestinations = v5->_resizeDestinations;
    v5->_resizeDestinations = v11;
  }

  return v5;
}

- (MSVArtworkServiceResizeRequest)initWithSourceURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = MSVArtworkServiceResizeRequest;
  v6 = [(MSVArtworkServiceRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceURL, l);
    array = [MEMORY[0x1E695DF70] array];
    resizeDestinations = v7->_resizeDestinations;
    v7->_resizeDestinations = array;

    [(MSVArtworkServiceRequest *)v7 addSandboxExtensionIfNeededForURL:v7->_sourceURL];
  }

  return v7;
}

@end