@interface MSVArtworkServiceColorAnalysisRequest
- (MSVArtworkServiceColorAnalysisRequest)initWithCoder:(id)coder;
- (MSVArtworkServiceColorAnalysisRequest)initWithSourceURL:(id)l preferredImageSize:(CGSize)size;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSVArtworkServiceColorAnalysisRequest

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  sourceURL = [(MSVArtworkServiceColorAnalysisRequest *)self sourceURL];
  absoluteString = [sourceURL absoluteString];
  v5 = [v2 stringWithFormat:@"<algorithm=MSVArtworkColorAnalyzerAlgorithmiTunes -- %@>", absoluteString];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceURL = self->_sourceURL;
  coderCopy = coder;
  [coderCopy encodeObject:sourceURL forKey:@"MSVArtworkServiceColorAnalysisRequestSourceURL"];
  *&v5 = self->_preferredImageWidth;
  [coderCopy encodeFloat:@"MSVArtworkServiceColorAnalysisRequestPreferredImageWidth" forKey:v5];
  *&v6 = self->_preferredImageHeight;
  [coderCopy encodeFloat:@"MSVArtworkServiceColorAnalysisRequestPreferredImageHeight" forKey:v6];
}

- (MSVArtworkServiceColorAnalysisRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MSVArtworkServiceColorAnalysisRequest;
  v5 = [(MSVArtworkServiceRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSVArtworkServiceColorAnalysisRequestSourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v6;

    [coderCopy decodeFloatForKey:@"MSVArtworkServiceColorAnalysisRequestPreferredImageWidth"];
    v5->_preferredImageWidth = v8;
    [coderCopy decodeFloatForKey:@"MSVArtworkServiceColorAnalysisRequestPreferredImageHeight"];
    v5->_preferredImageHeight = v9;
  }

  return v5;
}

- (MSVArtworkServiceColorAnalysisRequest)initWithSourceURL:(id)l preferredImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = MSVArtworkServiceColorAnalysisRequest;
  v9 = [(MSVArtworkServiceRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceURL, l);
    v11 = width;
    v10->_preferredImageWidth = v11;
    v12 = height;
    v10->_preferredImageHeight = v12;
  }

  return v10;
}

@end