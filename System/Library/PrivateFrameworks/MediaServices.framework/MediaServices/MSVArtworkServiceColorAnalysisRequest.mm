@interface MSVArtworkServiceColorAnalysisRequest
- (MSVArtworkServiceColorAnalysisRequest)initWithCoder:(id)a3;
- (MSVArtworkServiceColorAnalysisRequest)initWithSourceURL:(id)a3 preferredImageSize:(CGSize)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSVArtworkServiceColorAnalysisRequest

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MSVArtworkServiceColorAnalysisRequest *)self sourceURL];
  v4 = [v3 absoluteString];
  v5 = [v2 stringWithFormat:@"<algorithm=MSVArtworkColorAnalyzerAlgorithmiTunes -- %@>", v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourceURL = self->_sourceURL;
  v7 = a3;
  [v7 encodeObject:sourceURL forKey:@"MSVArtworkServiceColorAnalysisRequestSourceURL"];
  *&v5 = self->_preferredImageWidth;
  [v7 encodeFloat:@"MSVArtworkServiceColorAnalysisRequestPreferredImageWidth" forKey:v5];
  *&v6 = self->_preferredImageHeight;
  [v7 encodeFloat:@"MSVArtworkServiceColorAnalysisRequestPreferredImageHeight" forKey:v6];
}

- (MSVArtworkServiceColorAnalysisRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MSVArtworkServiceColorAnalysisRequest;
  v5 = [(MSVArtworkServiceRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSVArtworkServiceColorAnalysisRequestSourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v6;

    [v4 decodeFloatForKey:@"MSVArtworkServiceColorAnalysisRequestPreferredImageWidth"];
    v5->_preferredImageWidth = v8;
    [v4 decodeFloatForKey:@"MSVArtworkServiceColorAnalysisRequestPreferredImageHeight"];
    v5->_preferredImageHeight = v9;
  }

  return v5;
}

- (MSVArtworkServiceColorAnalysisRequest)initWithSourceURL:(id)a3 preferredImageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MSVArtworkServiceColorAnalysisRequest;
  v9 = [(MSVArtworkServiceRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceURL, a3);
    v11 = width;
    v10->_preferredImageWidth = v11;
    v12 = height;
    v10->_preferredImageHeight = v12;
  }

  return v10;
}

@end