@interface MADSpotlightImageAssetEntry
+ (id)entryWithAsset:(id)a3;
- (CSSearchableItemAttributeSet)attributeSet;
- (MADSpotlightImageAssetEntry)initWithAsset:(id)a3;
- (__CVBuffer)decodeImageAtImageURL:(id)a3;
- (__CVBuffer)decodeImageAtVideoURL:(id)a3;
- (id)_blastdoorMediaMetadata:(id)a3 withURL:(id)a4;
- (id)filePath;
- (void)dealloc;
@end

@implementation MADSpotlightImageAssetEntry

- (MADSpotlightImageAssetEntry)initWithAsset:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADSpotlightImageAssetEntry;
  v6 = [(MADSpotlightImageAssetEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, a3);
    v7->_previousStatus = [v5 status];
    v7->_sandboxHandle = -1;
  }

  return v7;
}

+ (id)entryWithAsset:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithAsset:v3];

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
        v8 = [(MADSpotlightImageAssetEntry *)self uniqueIdentifier];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@] Failed to consume sandbox extension", &v9, 0xCu);
      }
    }

    v5 = 0;
  }

  else
  {
    v4 = [(MADManagedSpotlightEntry *)self->_asset url];
    v5 = [v4 path];
  }

  return v5;
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

- (id)_blastdoorMediaMetadata:(id)a3 withURL:(id)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1001A7F48;
  v19 = sub_1001A7F58;
  v20 = 0;
  v6 = a4;
  v7 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A7F60;
  v12[3] = &unk_100288618;
  v13 = dispatch_semaphore_create(0);
  v14 = &v15;
  v12[4] = self;
  v8 = v13;
  v9 = objc_retainBlock(v12);
  [v7 generateMetadataforAttachmentWithfileURL:v6 resultHandler:v9];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (__CVBuffer)decodeImageAtImageURL:(id)a3
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [(MADSpotlightImageAssetEntry *)self logPrefix];
      v7 = [v4 path];
      *buf = 138412546;
      *&buf[4] = v6;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@][Process] Decoding image at image URL: %@", buf, 0x16u);
    }
  }

  v8 = objc_alloc_init(sub_1001A8578());
  v9 = [(MADSpotlightImageAssetEntry *)self _blastdoorMediaMetadata:v8 withURL:v4];
  v10 = [v9 rawPixelWidth];
  v11 = [v9 rawPixelHeight];
  if (v10 >= 3)
  {
    v12 = v11;
    if ([v9 rawPixelHeight] > 2)
    {
      v19 = [(MADSpotlightImageAssetEntryBase *)self targetMajorDimensionForImageWithWidth:v10 height:v12 andMinPreferredMinorDimension:1210];
      if (v10 <= v12)
      {
        v22 = v12;
      }

      else
      {
        v22 = v10;
      }

      if (v19)
      {
        v22 = v19;
      }

      *&v20 = v22;
      v34 = 0;
      LODWORD(v21) = 1.0;
      v23 = [v8 generateImagePreviewForFileURL:v4 maxPixelDimension:&v34 scale:v20 error:v21];
      v24 = v34;
      if (v23)
      {
        v25 = [v23 image];
        v26 = [v25 cgImage] == 0;

        if (!v26)
        {
          *buf = 0;
          v27 = [v23 image];
          v28 = [v27 cgImage];
          if (*buf)
          {
            CFRelease(*buf);
            *buf = 0;
          }

          sub_1001A8658(v28, buf);

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
            v32 = [(MADSpotlightImageAssetEntry *)self logPrefix];
            *buf = 138412290;
            *&buf[4] = v32;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[%@][Process] Failed to obtain cgImage from preview image", buf, 0xCu);
          }
        }
      }

      else if (MediaAnalysisLogLevel() >= 3)
      {
        v29 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          v30 = [(MADSpotlightImageAssetEntry *)self logPrefix];
          *buf = 138412546;
          *&buf[4] = v30;
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
      v14 = [(MADSpotlightImageAssetEntry *)self logPrefix];
      v15 = [v4 path];
      v16 = [v9 rawPixelWidth];
      v17 = [v9 rawPixelHeight];
      *buf = 138413058;
      *&buf[4] = v14;
      v36 = 2112;
      v37 = v15;
      v38 = 2048;
      v39 = v16;
      v40 = 2048;
      v41 = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[%@][Process][%@] Image has invalid or too small dimensions (%ldx%ld)", buf, 0x2Au);
    }
  }

  v18 = 0;
LABEL_31:

  return v18;
}

- (__CVBuffer)decodeImageAtVideoURL:(id)a3
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [(MADSpotlightImageAssetEntry *)self logPrefix];
      v7 = [v4 path];
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@][Process] Decoding image at video URL: %@", buf, 0x16u);
    }
  }

  v8 = objc_alloc_init(sub_1001A8578());
  v9 = [(MADSpotlightImageAssetEntry *)self _blastdoorMediaMetadata:v8 withURL:v4];
  v10 = [v9 rawPixelWidth];
  v11 = [v9 rawPixelHeight];
  v12 = v11;
  if (v10 < 3 || v11 <= 2)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        v24 = [(MADSpotlightImageAssetEntry *)self logPrefix];
        v25 = [v4 path];
        *buf = 138413058;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        *&buf[22] = 2048;
        v31 = v10;
        LOWORD(v32) = 2048;
        *(&v32 + 2) = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[%@][Process][%@] Video keyframe has invalid or too small dimensions (%ldx%ld)", buf, 0x2Au);
      }
    }

    v22 = 0;
  }

  else
  {
    v13 = [(MADSpotlightImageAssetEntryBase *)self targetMajorDimensionForImageWithWidth:v10 height:v11 andMinPreferredMinorDimension:1210];
    if (v10 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
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
    [v8 generateMoviePreviewForAttachmentWithFileURL:v4 maxPixelDimension:v18 minThumbnailPxSize:v19 scale:3.0 resultHandler:{3.0, v20}];
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
    v5 = [(MADManagedSpotlightEntry *)self->_asset typeIdentifier];
    v6 = [UTType typeWithIdentifier:v5];

    if (v6)
    {
      v7 = [[CSSearchableItemAttributeSet alloc] initWithContentType:v6];
      v8 = [(MADManagedSpotlightEntry *)self->_asset url];
      [(CSSearchableItemAttributeSet *)v7 setContentURL:v8];

      v9 = [(MADManagedSpotlightEntry *)self->_asset bundleIdentifier];
      [(CSSearchableItemAttributeSet *)v7 setBundleID:v9];

      if ([(MADSpotlightImageAssetEntry *)self needsSceneProcessing])
      {
        v10 = [NSNumber numberWithInt:[(MADSpotlightImageAssetEntryBase *)self sceneVersion]];
        [(CSSearchableItemAttributeSet *)v7 setPhotosSceneAnalysisVersion:v10];

        v11 = [(MADSpotlightImageAssetEntryBase *)self sceneClassifications];
        v12 = [PHSearch spotlightSceneClassificationsFromPhotosSceneClassifications:v11 algorithmVersion:[(MADSpotlightImageAssetEntryBase *)self sceneVersion]];

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
        v18 = [(MADSpotlightImageAssetEntryBase *)self nsfwClassifications];
        v19 = [PHSearch spotlightContentRatingFromPhotosSceneClassifications:v18 algorithmVersion:[(MADSpotlightImageAssetEntryBase *)self sceneVersion]];
        [(CSSearchableItemAttributeSet *)v7 setContentRating:v19];

        [(MADSpotlightImageAssetEntryBase *)self aestheticScore];
        v20 = [NSNumber numberWithFloat:?];
        [(CSSearchableItemAttributeSet *)v7 setAestheticScore:v20];
      }

      if ([(MADSpotlightImageAssetEntry *)self needsOCRProcessing])
      {
        v21 = [(MADSpotlightImageAssetEntryBase *)self ocrObservation];
        v22 = [PHSearch spotlightTextLinesFromDocumentObservation:v21 algorithmVersion:[(MADSpotlightImageAssetEntryBase *)self ocrVersion]];
        [(CSSearchableItemAttributeSet *)v7 setTextContentPieces:v22];

        v23 = [NSNumber numberWithInt:[(MADSpotlightImageAssetEntryBase *)self ocrVersion]];
        [(CSSearchableItemAttributeSet *)v7 setPhotosCharacterRecognitionAnalysisVersion:v23];
      }

      if ([(MADSpotlightImageAssetEntry *)self needsEmbeddingProcessing])
      {
        if ([(MADSpotlightImageAssetEntryBase *)self embeddingVersion]== 9 || [(MADSpotlightImageAssetEntryBase *)self embeddingVersion]== 8 || [(MADSpotlightImageAssetEntryBase *)self embeddingVersion]== 7 || [(MADSpotlightImageAssetEntryBase *)self embeddingVersion]== 5)
        {
          v24 = [_CSEmbedding alloc];
          v25 = [(MADSpotlightImageAssetEntryBase *)self embeddingVersion];
          v26 = [(MADSpotlightImageAssetEntryBase *)self embeddings];
          v27 = [v24 initWithFormat:1 dimension:1 version:v25 vectors:v26];
          [(CSSearchableItemAttributeSet *)v7 setPhotoEmbedding:v27];

          v28 = [NSNumber numberWithUnsignedInteger:[(MADSpotlightImageAssetEntryBase *)self embeddingVersion]];
          [(CSSearchableItemAttributeSet *)v7 setMediaEmbeddingVersion:v28];
        }

        else if (MediaAnalysisLogLevel() >= 3)
        {
          v32 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v32))
          {
            v33 = [(MADSpotlightImageAssetEntry *)self logPrefix];
            v34 = [(MADSpotlightImageAssetEntryBase *)self embeddingVersion];
            *buf = 138412546;
            v40 = v33;
            v41 = 2048;
            v42 = v34;
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