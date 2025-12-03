@interface MADSpotlightImageAssetEntry
+ (id)entryWithAsset:(id)asset;
- (CSSearchableItemAttributeSet)attributeSet;
- (MADSpotlightImageAssetEntry)initWithAsset:(id)asset;
- (__CVBuffer)decodeImageAtImageURL:(id)l;
- (__CVBuffer)decodeImageAtVideoURL:(id)l;
- (id)_blastdoorMediaMetadata:(id)metadata withURL:(id)l;
- (id)filePath;
- (void)dealloc;
@end

@implementation MADSpotlightImageAssetEntry

- (MADSpotlightImageAssetEntry)initWithAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = MADSpotlightImageAssetEntry;
  v6 = [(MADSpotlightImageAssetEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    v7->_previousStatus = [assetCopy status];
    v7->_sandboxHandle = -1;
  }

  return v7;
}

+ (id)entryWithAsset:(id)asset
{
  assetCopy = asset;
  v4 = [objc_alloc(objc_opt_class()) initWithAsset:assetCopy];

  return v4;
}

- (id)filePath
{
  if (self->_sandboxHandle < 0 && (-[MADManagedSpotlightEntry sandboxToken](self->_asset, "sandboxToken"), v3 = objc_claimAutoreleasedReturnValue(), [v3 UTF8String], self->_sandboxHandle = sandbox_extension_consume(), v3, self->_sandboxHandle < 0))
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        uniqueIdentifier = [(MADSpotlightImageAssetEntry *)self uniqueIdentifier];
        v9 = 138412290;
        v10 = uniqueIdentifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@] Failed to consume sandbox extension", &v9, 0xCu);
      }
    }

    path = 0;
  }

  else
  {
    v4 = [(MADManagedSpotlightEntry *)self->_asset url];
    path = [v4 path];
  }

  return path;
}

- (void)dealloc
{
  if ((self->_sandboxHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = MADSpotlightImageAssetEntry;
  [(MADSpotlightImageAssetEntry *)&v3 dealloc];
}

- (id)_blastdoorMediaMetadata:(id)metadata withURL:(id)l
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1001A7F48;
  v19 = sub_1001A7F58;
  v20 = 0;
  lCopy = l;
  metadataCopy = metadata;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A7F60;
  v12[3] = &unk_100288618;
  v13 = dispatch_semaphore_create(0);
  v14 = &v15;
  v12[4] = self;
  v8 = v13;
  v9 = objc_retainBlock(v12);
  [metadataCopy generateMetadataforAttachmentWithfileURL:lCopy resultHandler:v9];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (__CVBuffer)decodeImageAtImageURL:(id)l
{
  lCopy = l;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      logPrefix = [(MADSpotlightImageAssetEntry *)self logPrefix];
      path = [lCopy path];
      *buf = 138412546;
      *&buf[4] = logPrefix;
      v36 = 2112;
      v37 = path;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@][Process] Decoding image at image URL: %@", buf, 0x16u);
    }
  }

  v8 = objc_alloc_init(sub_1001A8578());
  v9 = [(MADSpotlightImageAssetEntry *)self _blastdoorMediaMetadata:v8 withURL:lCopy];
  rawPixelWidth = [v9 rawPixelWidth];
  rawPixelHeight = [v9 rawPixelHeight];
  if (rawPixelWidth >= 3)
  {
    v12 = rawPixelHeight;
    if ([v9 rawPixelHeight] > 2)
    {
      v19 = [(MADSpotlightImageAssetEntryBase *)self targetMajorDimensionForImageWithWidth:rawPixelWidth height:v12 andMinPreferredMinorDimension:1210];
      if (rawPixelWidth <= v12)
      {
        v22 = v12;
      }

      else
      {
        v22 = rawPixelWidth;
      }

      if (v19)
      {
        v22 = v19;
      }

      *&v20 = v22;
      v34 = 0;
      LODWORD(v21) = 1.0;
      v23 = [v8 generateImagePreviewForFileURL:lCopy maxPixelDimension:&v34 scale:v20 error:v21];
      v24 = v34;
      if (v23)
      {
        image = [v23 image];
        v26 = [image cgImage] == 0;

        if (!v26)
        {
          *buf = 0;
          image2 = [v23 image];
          cgImage = [image2 cgImage];
          if (*buf)
          {
            CFRelease(*buf);
            *buf = 0;
          }

          sub_1001A8658(cgImage, buf);

          if (*buf)
          {
            v18 = CFRetain(*buf);
          }

          else
          {
            v18 = 0;
          }

          sub_100002CBC(buf);
          goto LABEL_30;
        }

        if (MediaAnalysisLogLevel() >= 3)
        {
          v31 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v31))
          {
            logPrefix2 = [(MADSpotlightImageAssetEntry *)self logPrefix];
            *buf = 138412290;
            *&buf[4] = logPrefix2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[%@][Process] Failed to obtain cgImage from preview image", buf, 0xCu);
          }
        }
      }

      else if (MediaAnalysisLogLevel() >= 3)
      {
        v29 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          logPrefix3 = [(MADSpotlightImageAssetEntry *)self logPrefix];
          *buf = 138412546;
          *&buf[4] = logPrefix3;
          v36 = 2112;
          v37 = v24;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[%@][Process] Failed to obtain blastdoor preview image: %@", buf, 0x16u);
        }
      }

      v18 = 0;
LABEL_30:

      goto LABEL_31;
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v13 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      logPrefix4 = [(MADSpotlightImageAssetEntry *)self logPrefix];
      path2 = [lCopy path];
      rawPixelWidth2 = [v9 rawPixelWidth];
      rawPixelHeight2 = [v9 rawPixelHeight];
      *buf = 138413058;
      *&buf[4] = logPrefix4;
      v36 = 2112;
      v37 = path2;
      v38 = 2048;
      v39 = rawPixelWidth2;
      v40 = 2048;
      v41 = rawPixelHeight2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[%@][Process][%@] Image has invalid or too small dimensions (%ldx%ld)", buf, 0x2Au);
    }
  }

  v18 = 0;
LABEL_31:

  return v18;
}

- (__CVBuffer)decodeImageAtVideoURL:(id)l
{
  lCopy = l;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      logPrefix = [(MADSpotlightImageAssetEntry *)self logPrefix];
      path = [lCopy path];
      *buf = 138412546;
      *&buf[4] = logPrefix;
      *&buf[12] = 2112;
      *&buf[14] = path;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@][Process] Decoding image at video URL: %@", buf, 0x16u);
    }
  }

  v8 = objc_alloc_init(sub_1001A8578());
  v9 = [(MADSpotlightImageAssetEntry *)self _blastdoorMediaMetadata:v8 withURL:lCopy];
  rawPixelWidth = [v9 rawPixelWidth];
  rawPixelHeight = [v9 rawPixelHeight];
  v12 = rawPixelHeight;
  if (rawPixelWidth < 3 || rawPixelHeight <= 2)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        logPrefix2 = [(MADSpotlightImageAssetEntry *)self logPrefix];
        path2 = [lCopy path];
        *buf = 138413058;
        *&buf[4] = logPrefix2;
        *&buf[12] = 2112;
        *&buf[14] = path2;
        *&buf[22] = 2048;
        v31 = rawPixelWidth;
        LOWORD(v32) = 2048;
        *(&v32 + 2) = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[%@][Process][%@] Video keyframe has invalid or too small dimensions (%ldx%ld)", buf, 0x2Au);
      }
    }

    v22 = 0;
  }

  else
  {
    v13 = [(MADSpotlightImageAssetEntryBase *)self targetMajorDimensionForImageWithWidth:rawPixelWidth height:rawPixelHeight andMinPreferredMinorDimension:1210];
    if (rawPixelWidth <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = rawPixelWidth;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3812000000;
    v31 = sub_1001A8ECC;
    *&v32 = sub_1001A8EDC;
    *(&v32 + 1) = &unk_10022ADDD;
    v33 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001A8EE4;
    v27[3] = &unk_100288640;
    v27[4] = self;
    v29 = buf;
    v17 = v16;
    v28 = v17;
    v18 = objc_retainBlock(v27);
    *&v19 = v15;
    LODWORD(v20) = 1.0;
    [v8 generateMoviePreviewForAttachmentWithFileURL:lCopy maxPixelDimension:v18 minThumbnailPxSize:v19 scale:3.0 resultHandler:{3.0, v20}];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v21 = *(*&buf[8] + 48);
    if (v21)
    {
      v22 = CFRetain(v21);
    }

    else
    {
      v22 = 0;
    }

    _Block_object_dispose(buf, 8);
    sub_100002CBC(&v33);
  }

  return v22;
}

- (CSSearchableItemAttributeSet)attributeSet
{
  attributeSet = self->_attributeSet;
  if (attributeSet)
  {
    v3 = attributeSet;
  }

  else
  {
    typeIdentifier = [(MADManagedSpotlightEntry *)self->_asset typeIdentifier];
    v6 = [UTType typeWithIdentifier:typeIdentifier];

    if (v6)
    {
      v7 = [[CSSearchableItemAttributeSet alloc] initWithContentType:v6];
      v8 = [(MADManagedSpotlightEntry *)self->_asset url];
      [(CSSearchableItemAttributeSet *)v7 setContentURL:v8];

      bundleIdentifier = [(MADManagedSpotlightEntry *)self->_asset bundleIdentifier];
      [(CSSearchableItemAttributeSet *)v7 setBundleID:bundleIdentifier];

      if ([(MADSpotlightImageAssetEntry *)self needsSceneProcessing])
      {
        v10 = [NSNumber numberWithInt:[(MADSpotlightImageAssetEntryBase *)self sceneVersion]];
        [(CSSearchableItemAttributeSet *)v7 setPhotosSceneAnalysisVersion:v10];

        sceneClassifications = [(MADSpotlightImageAssetEntryBase *)self sceneClassifications];
        v12 = [PHSearch spotlightSceneClassificationsFromPhotosSceneClassifications:sceneClassifications algorithmVersion:[(MADSpotlightImageAssetEntryBase *)self sceneVersion]];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v14)
        {
          v15 = *v36;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v36 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v35 + 1) + 8 * i);
              [v17 setSceneType:{1, v35}];
              [v17 setMediaType:1];
            }

            v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v14);
        }

        [(CSSearchableItemAttributeSet *)v7 setPhotosSceneClassifications:v13];
        nsfwClassifications = [(MADSpotlightImageAssetEntryBase *)self nsfwClassifications];
        v19 = [PHSearch spotlightContentRatingFromPhotosSceneClassifications:nsfwClassifications algorithmVersion:[(MADSpotlightImageAssetEntryBase *)self sceneVersion]];
        [(CSSearchableItemAttributeSet *)v7 setContentRating:v19];

        [(MADSpotlightImageAssetEntryBase *)self aestheticScore];
        v20 = [NSNumber numberWithFloat:?];
        [(CSSearchableItemAttributeSet *)v7 setAestheticScore:v20];
      }

      if ([(MADSpotlightImageAssetEntry *)self needsOCRProcessing])
      {
        ocrObservation = [(MADSpotlightImageAssetEntryBase *)self ocrObservation];
        v22 = [PHSearch spotlightTextLinesFromDocumentObservation:ocrObservation algorithmVersion:[(MADSpotlightImageAssetEntryBase *)self ocrVersion]];
        [(CSSearchableItemAttributeSet *)v7 setTextContentPieces:v22];

        v23 = [NSNumber numberWithInt:[(MADSpotlightImageAssetEntryBase *)self ocrVersion]];
        [(CSSearchableItemAttributeSet *)v7 setPhotosCharacterRecognitionAnalysisVersion:v23];
      }

      if ([(MADSpotlightImageAssetEntry *)self needsEmbeddingProcessing])
      {
        if ([(MADSpotlightImageAssetEntryBase *)self embeddingVersion]== 9 || [(MADSpotlightImageAssetEntryBase *)self embeddingVersion]== 8 || [(MADSpotlightImageAssetEntryBase *)self embeddingVersion]== 7 || [(MADSpotlightImageAssetEntryBase *)self embeddingVersion]== 5)
        {
          v24 = [_CSEmbedding alloc];
          embeddingVersion = [(MADSpotlightImageAssetEntryBase *)self embeddingVersion];
          embeddings = [(MADSpotlightImageAssetEntryBase *)self embeddings];
          v27 = [v24 initWithFormat:1 dimension:1 version:embeddingVersion vectors:embeddings];
          [(CSSearchableItemAttributeSet *)v7 setPhotoEmbedding:v27];

          v28 = [NSNumber numberWithUnsignedInteger:[(MADSpotlightImageAssetEntryBase *)self embeddingVersion]];
          [(CSSearchableItemAttributeSet *)v7 setMediaEmbeddingVersion:v28];
        }

        else if (MediaAnalysisLogLevel() >= 3)
        {
          v32 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v32))
          {
            logPrefix = [(MADSpotlightImageAssetEntry *)self logPrefix];
            embeddingVersion2 = [(MADSpotlightImageAssetEntryBase *)self embeddingVersion];
            *buf = 138412546;
            v40 = logPrefix;
            v41 = 2048;
            v42 = embeddingVersion2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[%@][Publish] Embedding version: %ld not supported, skip embedding publishing", buf, 0x16u);
          }
        }
      }

      v29 = self->_attributeSet;
      self->_attributeSet = v7;
      v30 = v7;

      v3 = self->_attributeSet;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end