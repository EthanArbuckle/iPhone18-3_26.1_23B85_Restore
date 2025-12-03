@interface MSVArtworkServiceConversionOperation
- (void)main;
@end

@implementation MSVArtworkServiceConversionOperation

- (void)main
{
  request = [(MSVArtworkServiceOperation *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVArtworkServiceConversionOperation.m" lineNumber:20 description:@"MSVArtworkServiceConversionOperation only supports requests of type MSVArtworkServiceConversionRequest"];
  }

  request2 = [(MSVArtworkServiceOperation *)self request];
  [request2 consumeSandboxExtensions];
  v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
  sourceURL = [request2 sourceURL];
  ImageSource = MSVImageUtilitiesCreateImageSource(sourceURL);

  if (!ImageSource)
  {
    v10 = MEMORY[0x1E696ABC0];
    sourceURL2 = [request2 sourceURL];
    v12 = [v10 msv_errorWithDomain:@"MSVArtworkServiceErrorDomain" code:1 debugDescription:{@"Invalid source image URL=%@", sourceURL2}];
    [(MSVArtworkServiceOperation *)self setOperationError:v12];
  }

  operationError = [(MSVArtworkServiceOperation *)self operationError];

  if (!operationError)
  {
    destinationURL = [request2 destinationURL];
    uRLByDeletingLastPathComponent = [destinationURL URLByDeletingLastPathComponent];

    path = [uRLByDeletingLastPathComponent path];
    v17 = [v7 fileExistsAtPath:path];

    if (v17)
    {
      path2 = [uRLByDeletingLastPathComponent path];
      v19 = [v7 isWritableFileAtPath:path2];

      if (v19)
      {
LABEL_12:

        goto LABEL_13;
      }

      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVArtworkServiceErrorDomain" code:1 debugDescription:{@"Destination directory isn't writable URL=%@", uRLByDeletingLastPathComponent}];
    }

    else
    {
      v37 = 0;
      [v7 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v37];
      v20 = v37;
      if (!v20)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    [(MSVArtworkServiceOperation *)self setOperationError:v20];
    goto LABEL_11;
  }

LABEL_13:
  operationError2 = [(MSVArtworkServiceOperation *)self operationError];

  if (operationError2)
  {
    goto LABEL_30;
  }

  destinationURL2 = [request2 destinationURL];
  [v7 removeItemAtURL:destinationURL2 error:0];

  ImageFromSource = MSVImageUtilitiesCreateImageFromSource(ImageSource, 0);
  v24 = MSVImageUtilitiesCopyUTTypeForImage();
  if (ImageFromSource)
  {
    CFRelease(ImageFromSource);
  }

  v25 = MSVImageUtilitiesCopyUTTypeForImageFormat([request2 destinationFormat]);
  if ([v25 isEqualToString:v24])
  {
    sourceURL3 = [request2 sourceURL];
    destinationURL3 = [request2 destinationURL];
    v36 = 0;
    v28 = [v7 moveItemAtURL:sourceURL3 toURL:destinationURL3 error:&v36];
    v29 = v36;

    if (v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    destinationFormat = [request2 destinationFormat];
    destinationURL4 = [request2 destinationURL];
    FileImageDestination = MSVImageUtilitiesCreateFileImageDestination(destinationFormat, destinationURL4, 1uLL);

    if (FileImageDestination)
    {
      if ([request2 destinationFormat])
      {
        MSVImageUtilitiesAddSourceImageToDestination(ImageSource, 0, [request2 destinationFormat], FileImageDestination);
      }

      else
      {
        [request2 destinationCompressionQuality];
        MSVImageUtilitiesAddSourceImageToJPEGDestination(ImageSource, 0, FileImageDestination, v33);
      }

      if (!CGImageDestinationFinalize(FileImageDestination))
      {
        v34 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVArtworkServiceErrorDomain" code:1 debugDescription:@"Failed to convert image"];
        [(MSVArtworkServiceOperation *)self setOperationError:v34];
      }

      CFRelease(FileImageDestination);
      goto LABEL_29;
    }

    v29 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVArtworkServiceErrorDomain" code:1 debugDescription:{@"Failed to convert image format=%ld", objc_msgSend(request2, "destinationFormat")}];
  }

  [(MSVArtworkServiceOperation *)self setOperationError:v29];
LABEL_24:

LABEL_29:
LABEL_30:
  if (ImageSource)
  {
    CFRelease(ImageSource);
  }

  [request2 releaseSandboxExtensions];
}

@end