@interface MSVArtworkServiceColorAnalysisOperation
- (void)main;
@end

@implementation MSVArtworkServiceColorAnalysisOperation

- (void)main
{
  v24 = *MEMORY[0x1E69E9840];
  request = [(MSVArtworkServiceOperation *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVArtworkServiceColorAnalysisOperation.m" lineNumber:28 description:@"MSVArtworkServiceColorAnalysisOperation only supports requests of type MSVArtworkServiceColorAnalysisRequest"];
  }

  request2 = [(MSVArtworkServiceOperation *)self request];
  [request2 consumeSandboxExtensions];
  sourceURL = [request2 sourceURL];
  ImageSource = MSVImageUtilitiesCreateImageSource(sourceURL);

  if (!ImageSource)
  {
    v14 = MEMORY[0x1E696ABC0];
    sourceURL2 = [request2 sourceURL];
    v16 = [v14 msv_errorWithDomain:@"MSVArtworkServiceErrorDomain" code:1 debugDescription:{@"Invalid source image URL=%@", sourceURL2}];
    [(MSVArtworkServiceOperation *)self setOperationError:v16];

    goto LABEL_11;
  }

  ImageFromSource = MSVImageUtilitiesCreateImageFromSource(ImageSource, 0);
  v10 = [[MSVArtworkColorAnalyzer alloc] initWithSourceImage:ImageFromSource];
  analyze = [(MSVArtworkColorAnalyzer *)v10 analyze];
  if (analyze)
  {
    v12 = os_log_create("com.apple.amp.MediaServices", "Artwork");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      sourceURL3 = [request2 sourceURL];
      *buf = 138477827;
      v23 = sourceURL3;
      _os_log_impl(&dword_1AC81F000, v12, OS_LOG_TYPE_INFO, "Created artwork analysis for source URL=%{private}@", buf, 0xCu);
    }

    objc_storeStrong(&self->_colorAnalysis, analyze);
    if (!ImageFromSource)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = [(MSVArtworkColorAnalyzer *)v10 debugDescription];
    v20 = [v18 msv_errorWithDomain:@"MSVArtworkServiceErrorDomain" code:1 debugDescription:{@"Failed to create color analysis with analyzer=%@", v19}];
    [(MSVArtworkServiceOperation *)self setOperationError:v20];

    if (!ImageFromSource)
    {
      goto LABEL_9;
    }
  }

  CFRelease(ImageFromSource);
LABEL_9:
  CFRelease(ImageSource);

LABEL_11:
  [request2 releaseSandboxExtensions];

  v17 = *MEMORY[0x1E69E9840];
}

@end