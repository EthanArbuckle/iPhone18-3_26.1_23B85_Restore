@interface MSVArtworkServiceResizeOperation
- (void)main;
@end

@implementation MSVArtworkServiceResizeOperation

- (void)main
{
  v84 = *MEMORY[0x1E69E9840];
  request = [(MSVArtworkServiceOperation *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVArtworkServiceResizeOperation.m" lineNumber:21 description:@"MSVArtworkServiceResizeOperation only supports requests of type MSVArtworkServiceResizeRequest"];
  }

  request2 = [(MSVArtworkServiceOperation *)self request];
  [request2 consumeSandboxExtensions];
  v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
  array = [MEMORY[0x1E695DF70] array];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __40__MSVArtworkServiceResizeOperation_main__block_invoke;
  v79[3] = &unk_1E7981958;
  v9 = v7;
  v80 = v9;
  v10 = array;
  v81 = v10;
  [request2 enumerateDestinationsUsingBlock:v79];
  if (![v10 count])
  {
    [(MSVArtworkServiceOperation *)self setDebugMessage:@"No resizing needed, all destinations already exist on disk."];
    goto LABEL_58;
  }

  sourceURL = [request2 sourceURL];
  ImageSource = MSVImageUtilitiesCreateImageSource(sourceURL);

  if (!ImageSource)
  {
    v13 = MEMORY[0x1E696ABC0];
    sourceURL2 = [request2 sourceURL];
    v15 = [v13 msv_errorWithDomain:@"MSVArtworkServiceErrorDomain" code:1 debugDescription:{@"Invalid source image URL=%@", sourceURL2}];
    [(MSVArtworkServiceOperation *)self setOperationError:v15];
  }

  operationError = [(MSVArtworkServiceOperation *)self operationError];

  if (!operationError)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v67 = v10;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v75 objects:v83 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v76;
      v65 = request2;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v76 != v20)
          {
            objc_enumerationMutation(v17);
          }

          destinationURL = [*(*(&v75 + 1) + 8 * i) destinationURL];
          uRLByDeletingLastPathComponent = [destinationURL URLByDeletingLastPathComponent];

          path = [uRLByDeletingLastPathComponent path];
          v25 = [v9 fileExistsAtPath:path];

          if (v25)
          {
            path2 = [uRLByDeletingLastPathComponent path];
            v27 = [v9 isWritableFileAtPath:path2];

            if ((v27 & 1) == 0)
            {
              v29 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVArtworkServiceErrorDomain" code:1 debugDescription:{@"Destination directory isn't writable URL=%@", uRLByDeletingLastPathComponent}];
LABEL_21:
              v30 = v29;
              [(MSVArtworkServiceOperation *)self setOperationError:v29];

              request2 = v65;
              goto LABEL_22;
            }
          }

          else
          {
            v74 = 0;
            [v9 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v74];
            v29 = v74;
            if (v29)
            {
              goto LABEL_21;
            }

            path3 = [uRLByDeletingLastPathComponent path];
            MSVEnableDirStatsForDirectory(path3);
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v75 objects:v83 count:16];
        request2 = v65;
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    v10 = v67;
  }

  operationError2 = [(MSVArtworkServiceOperation *)self operationError];

  if (operationError2)
  {
    goto LABEL_56;
  }

  ImageFromSource = MSVImageUtilitiesCreateImageFromSource(ImageSource, 0);
  Width = CGImageGetWidth(ImageFromSource);
  cf = ImageFromSource;
  Height = CGImageGetHeight(ImageFromSource);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v35 = v10;
  v36 = [v35 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (!v36)
  {
    v60 = cf;
    goto LABEL_53;
  }

  v37 = v36;
  v66 = request2;
  v68 = v10;
  v69 = 0;
  v38 = Width;
  v39 = Height;
  v40 = *v71;
  while (2)
  {
    for (j = 0; j != v37; ++j)
    {
      if (*v71 != v40)
      {
        objc_enumerationMutation(v35);
      }

      v42 = *(*(&v70 + 1) + 8 * j);
      [v42 size];
      if (v43 >= v38)
      {
        [v42 size];
        if (v44 >= v39)
        {
          ++v69;
          continue;
        }
      }

      format = [v42 format];
      destinationURL2 = [v42 destinationURL];
      FileImageDestination = MSVImageUtilitiesCreateFileImageDestination(format, destinationURL2, 1uLL);

      if (!FileImageDestination)
      {
        v61 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVArtworkServiceErrorDomain" code:1 debugDescription:{@"Failed to create file image destination format=%ld", objc_msgSend(v42, "format")}];
        [(MSVArtworkServiceOperation *)self setOperationError:v61];

        goto LABEL_51;
      }

      if ([v42 format])
      {
        format2 = [v42 format];
        [v42 size];
        v50 = v49;
        [v42 size];
        if (v50 >= v51)
        {
          v52 = v50;
        }

        else
        {
          v52 = v51;
        }

        if (MSVImageUtilitiesResizeSourceImageToDestination(ImageSource, 0, format2, FileImageDestination, v52))
        {
          goto LABEL_41;
        }
      }

      else
      {
        [v42 compressionQuality];
        v54 = v53;
        [v42 size];
        v56 = v55;
        [v42 size];
        if (v56 >= v57)
        {
          v57 = v56;
        }

        if (MSVImageUtilitiesResizeSourceImageToJPEGDestination(ImageSource, 0, FileImageDestination, v54, v57))
        {
LABEL_41:
          if (CGImageDestinationFinalize(FileImageDestination))
          {
            goto LABEL_43;
          }
        }
      }

      v58 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVArtworkServiceErrorDomain" code:1 debugDescription:@"Failed to resize image"];
      [(MSVArtworkServiceOperation *)self setOperationError:v58];

LABEL_43:
      CFRelease(FileImageDestination);
      operationError3 = [(MSVArtworkServiceOperation *)self operationError];

      if (operationError3)
      {
        goto LABEL_51;
      }
    }

    v37 = [v35 countByEnumeratingWithState:&v70 objects:v82 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_51:

  request2 = v66;
  v10 = v68;
  v60 = cf;
  if (v69)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Skipped %lu destinations that were larger than the source image.", v69];
    [(MSVArtworkServiceOperation *)self setDebugMessage:v35];
LABEL_53:
  }

  if (v60)
  {
    CFRelease(v60);
  }

LABEL_56:
  if (ImageSource)
  {
    CFRelease(ImageSource);
  }

LABEL_58:
  [request2 releaseSandboxExtensions];

  v62 = *MEMORY[0x1E69E9840];
}

void __40__MSVArtworkServiceResizeOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 destinationURL];
  v6 = [v5 path];
  LOBYTE(v4) = [v4 fileExistsAtPath:v6];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v7];
  }
}

@end