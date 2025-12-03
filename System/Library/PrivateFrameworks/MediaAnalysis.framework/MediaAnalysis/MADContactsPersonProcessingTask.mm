@interface MADContactsPersonProcessingTask
- (MADContactsPersonProcessingTask)init;
- (int)_analyzeContactWithContactUUID:(id)d assetUUID:(id)iD confirmed:(BOOL)confirmed andCVPixelBuffer:(__CVBuffer *)buffer;
- (int)_processContactWithIdentifier:(id)identifier andImageData:(id)data;
- (int)_processContactWithIdentifier:(id)identifier andPosterArchiveData:(id)data;
- (void)process;
@end

@implementation MADContactsPersonProcessingTask

- (MADContactsPersonProcessingTask)init
{
  v22.receiver = self;
  v22.super_class = MADContactsPersonProcessingTask;
  v2 = [(MADProcessingTask *)&v22 init];
  if (v2)
  {
    v3 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
    photoLibrary = v2->_photoLibrary;
    v2->_photoLibrary = v3;

    v5 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v2->_photoLibrary];
    context = v2->_context;
    v2->_context = v5;

    vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)v2->_photoLibrary vcp_visionCacheStorageDirectoryURL];
    v21 = 0;
    v8 = [[VUWGallery alloc] initWithClient:3 path:vcp_visionCacheStorageDirectoryURL error:&v21];
    v9 = v21;
    gallery = v2->_gallery;
    v2->_gallery = v8;

    v11 = v2->_gallery;
    if (v11)
    {
      v12 = [(VUWGallery *)v11 assetsFor:1];
      v13 = [NSSet setWithArray:v12];
      vuKnownAssets = v2->_vuKnownAssets;
      v2->_vuKnownAssets = v13;

      v15 = +[NSMutableSet set];
      clientAssets = v2->_clientAssets;
      v2->_clientAssets = v15;

      v17 = v2;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v18 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          *buf = 138412290;
          v24 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "Failed to create VUWGallery instance - %@", buf, 0xCu);
        }
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = v17;

  return v19;
}

- (int)_analyzeContactWithContactUUID:(id)d assetUUID:(id)iD confirmed:(BOOL)confirmed andCVPixelBuffer:(__CVBuffer *)buffer
{
  dCopy = d;
  iDCopy = iD;
  v12 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  v13 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v12];
  v14 = [[VCPFaceAnalyzer alloc] initWithContext:v13];
  v34 = 0;
  code = [v14 quickAnalyzeCVPixelBuffer:buffer results:&v34];
  v16 = v34;
  v17 = v16;
  if (!code)
  {
    v18 = [v16 objectForKeyedSubscript:MediaAnalysisFaceResultsKey];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v19 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = [v18 count];
        *buf = 138412546;
        v36 = @"[ContactIngestion][FaceProcessing]";
        v37 = 2048;
        v38 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Detected %lu faces from pixel buffer", buf, 0x16u);
      }
    }

    if ([v18 count] == 1)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10018C140;
      v28[3] = &unk_100288010;
      v29 = v18;
      v30 = @"[ContactIngestion][FaceProcessing]";
      v31 = iDCopy;
      v32 = dCopy;
      confirmedCopy = confirmed;
      v21 = objc_retainBlock(v28);
      gallery = self->_gallery;
      v27 = 0;
      v23 = [(VUWGallery *)gallery mutateAndReturnError:&v27 handler:v21];
      v24 = v27;
      if (v23)
      {
        code = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v25 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v25))
          {
            *buf = 138412546;
            v36 = @"[ContactIngestion][FaceProcessing]";
            v37 = 2112;
            v38 = v24;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Failed to tag observations from Gallery - %@", buf, 0x16u);
          }
        }

        code = [v24 code];
      }
    }

    else
    {
      code = 0;
    }
  }

  return code;
}

- (int)_processContactWithIdentifier:(id)identifier andImageData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v8 = [[NSUUID alloc] initWithUUIDString:identifierCopy];
  if (v8)
  {
    v27[1] = 0;
    v9 = vdupq_n_s64([identifierCopy hash]);
    v27[0] = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(vandq_s8(v9, xmmword_10024CD40), xmmword_10024CD70), vshlq_u64(vandq_s8(v9, xmmword_10024CD50), xmmword_10024CD60)), vuzp1q_s32(vshlq_u64(vandq_s8(v9, xmmword_10024CD20), xmmword_10024CD90), vshlq_u64(vandq_s8(v9, xmmword_10024CD30), xmmword_10024CD80))));
    v10 = [[NSUUID alloc] initWithUUIDBytes:v27];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v11 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        *buf = 138412546;
        v22 = @"[ContactIngestion][Avatar]";
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Receiving asset %@", buf, 0x16u);
      }
    }

    if (v10)
    {
      [(NSMutableSet *)self->_clientAssets addObject:v10];
      if ([(NSSet *)self->_vuKnownAssets containsObject:v10])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v12 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v12))
          {
            *buf = 138412546;
            v22 = @"[ContactIngestion][Avatar]";
            v23 = 2112;
            v24 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Gallery already indexes contact data (asset) %@; ignoring", buf, 0x16u);
          }
        }

        v13 = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v16 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v16))
          {
            *buf = 138412802;
            v22 = @"[ContactIngestion][Avatar]";
            v23 = 2112;
            v24 = identifierCopy;
            v25 = 2112;
            v26 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Processing contact %@ with avatar data %@ ... ", buf, 0x20u);
          }
        }

        v17 = +[VCPImageManager sharedImageManager];
        v20 = [v17 pixelBufferWithFormat:875704422 andMaxDimension:0 fromData:dataCopy withUniformTypeIdentifier:UTTypeJPEG flushCache:1 orientation:0];

        v13 = [(MADContactsPersonProcessingTask *)self _analyzeContactWithContactUUID:v8 assetUUID:v10 confirmed:0 andCVPixelBuffer:v20];
        if (!v13 && MediaAnalysisLogLevel() >= 7)
        {
          v18 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v18))
          {
            *buf = 138412546;
            v22 = @"[ContactIngestion][Avatar]";
            v23 = 2112;
            v24 = identifierCopy;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Finished processing contact %@ with avatar data", buf, 0x16u);
          }
        }

        sub_100002CBC(&v20);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v15 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          *buf = 138412546;
          v22 = @"[ContactIngestion][Avatar]";
          v23 = 2112;
          v24 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Invalid asset identifier %@", buf, 0x16u);
        }
      }

      v13 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 138412546;
        v22 = @"[ContactIngestion][Avatar]";
        v23 = 2112;
        v24 = identifierCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Invalid contact identifier %@", buf, 0x16u);
      }
    }

    v13 = -18;
  }

  return v13;
}

- (int)_processContactWithIdentifier:(id)identifier andPosterArchiveData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v8 = [[NSUUID alloc] initWithUUIDString:identifierCopy];
  if (!v8)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_34;
    }

    v28 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v28))
    {
      goto LABEL_34;
    }

    *buf = 138412546;
    *&buf[4] = @"[ContactIngestion][Poster]";
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    v29 = "%@ Invalid contact identifier %@";
    v30 = v28;
    v31 = 22;
    goto LABEL_33;
  }

  if (dataCopy)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v9 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 138412546;
        *&buf[4] = @"[ContactIngestion][Poster]";
        *&buf[12] = 2112;
        *&buf[14] = identifierCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Processing contact %@ with poster archive data ... ", buf, 0x16u);
      }
    }

    v74 = 0;
    v75 = &v74;
    v76 = 0x2050000000;
    v10 = qword_1002B84E0;
    v77 = qword_1002B84E0;
    if (!qword_1002B84E0)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10018ECAC;
      v72 = &unk_100283450;
      v73 = &v74;
      sub_10018ECAC(buf);
      v10 = v75[3];
    }

    v11 = v10;
    _Block_object_dispose(&v74, 8);
    v70 = 0;
    v12 = [v10 unarchiveConfigurationFromData:dataCopy error:&v70];
    v13 = v70;
    if (!v12)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v33 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v33))
        {
          *buf = 138412546;
          *&buf[4] = @"[ContactIngestion][Poster]";
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "%@ Failed to load poster configuration - %@", buf, 0x16u);
        }
      }

      v27 = -18;
      goto LABEL_97;
    }

    providerBundleIdentifier = [v12 providerBundleIdentifier];
    v15 = [providerBundleIdentifier isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];

    if ((v15 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v34 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          providerBundleIdentifier2 = [v12 providerBundleIdentifier];
          *buf = 138412802;
          *&buf[4] = @"[ContactIngestion][Poster]";
          *&buf[12] = 2112;
          *&buf[14] = providerBundleIdentifier2;
          *&buf[22] = 2112;
          v72 = @"com.apple.PhotosUIPrivate.PhotosPosterProvider";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "%@ Unsupported poster bundle identifier %@ (expect %@); skipping", buf, 0x20u);
        }
      }

      v27 = 0;
      goto LABEL_97;
    }

    assetDirectory = [v12 assetDirectory];
    if (!assetDirectory)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v36 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v36))
        {
          *buf = 138412290;
          *&buf[4] = @"[ContactIngestion][Poster]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "%@ Nil posterAssetURL", buf, 0xCu);
        }
      }

      v27 = -18;
      goto LABEL_96;
    }

    v69 = v13;
    v67 = [PFPosterConfiguration loadFromURL:assetDirectory error:&v69];
    v65 = v69;

    if (!v67)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v37 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v37))
        {
          *buf = 138412802;
          *&buf[4] = @"[ContactIngestion][Poster]";
          *&buf[12] = 2112;
          *&buf[14] = assetDirectory;
          *&buf[22] = 2112;
          v72 = v65;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "%@ Failed to load photos poster configuration at %@ - %@", buf, 0x20u);
        }
      }

      v27 = -18;
      goto LABEL_95;
    }

    userInfo = [v67 userInfo];
    v64 = userInfo;
    if (userInfo)
    {
      v18 = [userInfo objectForKeyedSubscript:@"representsDeviceOwner"];
      bOOLValue = [v18 BOOLValue];

      if (MediaAnalysisLogLevel() >= 7)
      {
        v19 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v19))
        {
          v20 = @"NO";
          if (bOOLValue)
          {
            v20 = @"YES";
          }

          *buf = 138412546;
          *&buf[4] = @"[ContactIngestion][Poster]";
          *&buf[12] = 2112;
          *&buf[14] = v20;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ representsDeviceOwner: %@", buf, 0x16u);
        }
      }

      v21 = [v64 objectForKeyedSubscript:@"hashedAssetIdentifier"];
      unsignedIntegerValue = [v21 unsignedIntegerValue];

      v75 = 0;
      v23 = vdupq_n_s64(unsignedIntegerValue);
      v74 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(vandq_s8(v23, xmmword_10024CD40), xmmword_10024CD70), vshlq_u64(vandq_s8(v23, xmmword_10024CD50), xmmword_10024CD60)), vuzp1q_s32(vshlq_u64(vandq_s8(v23, xmmword_10024CD20), xmmword_10024CD90), vshlq_u64(vandq_s8(v23, xmmword_10024CD30), xmmword_10024CD80))));
      v24 = [[NSUUID alloc] initWithUUIDBytes:&v74];
      if (MediaAnalysisLogLevel() >= 7)
      {
        v25 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          *buf = 138412546;
          *&buf[4] = @"[ContactIngestion][Poster]";
          *&buf[12] = 2112;
          *&buf[14] = v24;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Receiving asset %@", buf, 0x16u);
        }
      }

      if (v24)
      {
        [(NSMutableSet *)self->_clientAssets addObject:v24];
        if ([(NSSet *)self->_vuKnownAssets containsObject:v24])
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v26 = VCPLogToOSLogType[7];
            if (os_log_type_enabled(&_os_log_default, v26))
            {
              *buf = 138412546;
              *&buf[4] = @"[ContactIngestion][Poster]";
              *&buf[12] = 2112;
              *&buf[14] = v24;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Gallery already indexes contact data (asset) %@; ignoring", buf, 0x16u);
            }
          }

          v27 = 0;
          goto LABEL_94;
        }

        media = [v67 media];
        if ([media count])
        {
          media2 = [v67 media];
          v45 = [media2 count] > 1;

          if (!v45)
          {
            goto LABEL_66;
          }
        }

        else
        {
        }

        if (MediaAnalysisLogLevel() >= 4)
        {
          v46 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v46))
          {
            media3 = [v67 media];
            v48 = [media3 count];
            *buf = 138412546;
            *&buf[4] = @"[ContactIngestion][Poster]";
            *&buf[12] = 2048;
            *&buf[14] = v48;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "%@ Photos poster configuration has %lu media (expected 1)", buf, 0x16u);
          }
        }

LABEL_66:
        media4 = [v67 media];
        firstObject = [media4 firstObject];

        subpath = [firstObject subpath];
        v62 = [assetDirectory URLByAppendingPathComponent:subpath];

        v68 = v65;
        v51 = [sub_10018DB04() loadCompoundLayerStackFromWallpaperURL:v62 options:1 error:&v68];
        v60 = v68;

        v52 = v51;
        if (!v51)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            v27 = -18;
          }

          else
          {
            v56 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v56))
            {
              *buf = 138412802;
              *&buf[4] = @"[ContactIngestion][Poster]";
              *&buf[12] = 2112;
              *&buf[14] = v62;
              *&buf[22] = 2112;
              v72 = v60;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "%@ Failed to load layer stack at %@ - %@", buf, 0x20u);
            }

            v27 = -18;
            v52 = 0;
          }

          goto LABEL_93;
        }

        portraitLayerStack = [v51 portraitLayerStack];
        v54 = portraitLayerStack;
        if (!portraitLayerStack)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            v27 = -18;
          }

          else
          {
            v57 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v57))
            {
              *buf = 138412290;
              *&buf[4] = @"[ContactIngestion][Poster]";
              _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "%@ Failed to load portraitLayerStack", buf, 0xCu);
            }

            v27 = -18;
            v52 = v51;
          }

          goto LABEL_92;
        }

        backgroundLayer = [portraitLayerStack backgroundLayer];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = -[MADContactsPersonProcessingTask _analyzeContactWithContactUUID:assetUUID:confirmed:andCVPixelBuffer:](self, "_analyzeContactWithContactUUID:assetUUID:confirmed:andCVPixelBuffer:", v8, v24, bOOLValue, [backgroundLayer image]);
          if (v27)
          {
LABEL_91:

LABEL_92:
LABEL_93:

            v65 = v60;
            goto LABEL_94;
          }

          if (MediaAnalysisLogLevel() < 7)
          {
            v27 = 0;
            goto LABEL_91;
          }

          v55 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v55))
          {
            *buf = 138412546;
            *&buf[4] = @"[ContactIngestion][Poster]";
            *&buf[12] = 2112;
            *&buf[14] = identifierCopy;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "%@ Finished processing contact %@ with poster archive data", buf, 0x16u);
          }

          v27 = 0;
        }

        else
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            v27 = -18;
            goto LABEL_91;
          }

          v58 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v58))
          {
            *buf = 138412290;
            *&buf[4] = @"[ContactIngestion][Poster]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, v58, "%@ Expected an image layer from portraitLayerStack", buf, 0xCu);
          }

          v27 = -18;
        }

        v52 = v51;
        goto LABEL_91;
      }

      if (MediaAnalysisLogLevel() < 3 || (v42 = VCPLogToOSLogType[3], !os_log_type_enabled(&_os_log_default, v42)))
      {
LABEL_58:
        v24 = 0;
        v27 = -18;
LABEL_94:

LABEL_95:
        v13 = v65;
LABEL_96:

LABEL_97:
        goto LABEL_98;
      }

      *buf = 138412546;
      *&buf[4] = @"[ContactIngestion][Poster]";
      *&buf[12] = 2112;
      *&buf[14] = 0;
      v39 = "%@ Invalid asset identifier %@";
      v40 = v42;
      v41 = 22;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_58;
      }

      v38 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v38))
      {
        goto LABEL_58;
      }

      *buf = 138412290;
      *&buf[4] = @"[ContactIngestion][Poster]";
      v39 = "%@ Photos poster configuration does not have userInfo";
      v40 = v38;
      v41 = 12;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v40, v39, buf, v41);
    goto LABEL_58;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v32 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v32))
    {
      *buf = 138412290;
      *&buf[4] = @"[ContactIngestion][Poster]";
      v29 = "%@ Nil archived poster data";
      v30 = v32;
      v31 = 12;
LABEL_33:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v30, v29, buf, v31);
    }
  }

LABEL_34:
  v27 = -18;
LABEL_98:

  return v27;
}

- (void)process
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *buf = 138412290;
      v71 = @"[ContactIngestion]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Start processing ...", buf, 0xCu);
    }
  }

  v51 = objc_alloc_init(CNContactStoreConfiguration);
  [v51 setIncludeSharedPhotoContacts:0];
  v50 = [[CNContactStore alloc] initWithConfiguration:v51];
  v3 = [CNContactFetchRequest alloc];
  v83[0] = CNContactIdentifierKey;
  v83[1] = CNContactGivenNameKey;
  v83[2] = CNContactFamilyNameKey;
  v83[3] = CNContactEmailAddressesKey;
  v83[4] = CNContactPhoneNumbersKey;
  v83[5] = CNContactWallpaperKey;
  v83[6] = CNContactSharedPhotoDisplayPreferenceKey;
  v83[7] = CNContactThumbnailImageDataKey;
  v4 = [NSArray arrayWithObjects:v83 count:8];
  v49 = [v3 initWithKeysToFetch:v4];

  +[NSMutableArray array];
  v69 = 0;
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_10018E71C;
  v5 = v67[3] = &unk_1002880B0;
  v68 = v5;
  [v50 enumerateContactsWithFetchRequest:v49 error:&v69 usingBlock:{v67, v5}];
  v48 = v69;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
  if (v6)
  {
    v7 = *v64;
    type = VCPLogToOSLogType[7];
LABEL_6:
    v8 = 0;
    while (1)
    {
      if (*v64 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v63 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      cancelBlock = [(MADProcessingTask *)self cancelBlock];
      if (cancelBlock && ([(MADProcessingTask *)self cancelBlock], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12[2](), v12, cancelBlock, (v13 & 1) != 0))
      {
        v14 = 1;
      }

      else
      {
        v15 = +[VCPWatchdog sharedWatchdog];
        [v15 pet];

        identifier = [v9 identifier];
        v17 = [identifier substringToIndex:36];

        givenName = [v9 givenName];
        familyName = [v9 familyName];
        wallpaper = [v9 wallpaper];
        posterArchiveData = [wallpaper posterArchiveData];

        thumbnailImageData = [v9 thumbnailImageData];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138413570;
          v23 = @"YES";
          if (posterArchiveData)
          {
            v24 = @"YES";
          }

          else
          {
            v24 = @"NO";
          }

          v71 = @"[ContactIngestion]";
          if (!thumbnailImageData)
          {
            v23 = @"NO";
          }

          v72 = 2112;
          v73 = v17;
          v74 = 2112;
          v75 = givenName;
          v76 = 2112;
          v77 = familyName;
          v78 = 2112;
          v79 = v24;
          v80 = 2112;
          v81 = v23;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Contact: %@ (%@ %@), wallpaper.posterArchiveData: %@, thumbnailImageData: %@", buf, 0x3Eu);
        }

        if (posterArchiveData)
        {
          [(MADContactsPersonProcessingTask *)self _processContactWithIdentifier:v17 andPosterArchiveData:posterArchiveData];
        }

        else if (thumbnailImageData)
        {
          [(MADContactsPersonProcessingTask *)self _processContactWithIdentifier:v17 andImageData:thumbnailImageData];
        }

        v14 = 0;
      }

      objc_autoreleasePoolPop(v10);
      if (v14)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
        if (v6)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  cancelBlock2 = [(MADProcessingTask *)self cancelBlock];
  if (!cancelBlock2 || ([(MADProcessingTask *)self cancelBlock], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26[2](), v26, cancelBlock2, (v27 & 1) == 0))
  {
    v28 = +[VCPWatchdog sharedWatchdog];
    [v28 pet];

    selfCopy2 = self;
    if ([(NSSet *)self->_vuKnownAssets count])
    {
      v30 = [(NSSet *)self->_vuKnownAssets mutableCopy];
      [v30 minusSet:self->_clientAssets];
      if ([v30 count])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v31 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v31))
          {
            v32 = [v30 count];
            *buf = 138412546;
            v71 = @"[ContactIngestion]";
            v72 = 2048;
            v73 = v32;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "%@ %lu deleted asset(s); removing from Gallery ...", buf, 0x16u);
          }
        }

        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_10018E728;
        v60[3] = &unk_100288088;
        v61 = v30;
        v62 = @"[ContactIngestion]";
        v33 = objc_retainBlock(v60);
        gallery = self->_gallery;
        v59 = 0;
        v35 = [(VUWGallery *)gallery mutateAndReturnError:&v59 handler:v33];
        v36 = v59;
        if ((v35 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
        {
          v37 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v37))
          {
            *buf = 138412546;
            v71 = @"[ContactIngestion]";
            v72 = 2112;
            v73 = v36;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "%@ Failed to remove asset(s) from Gallery %@", buf, 0x16u);
          }
        }
      }

      selfCopy2 = self;
    }

    if (([(VUWGallery *)selfCopy2->_gallery ready]& 1) != 0)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v38 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v38))
        {
          *buf = 138412290;
          v71 = @"[ContactIngestion]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "%@ Gallery is ready; skip updating", buf, 0xCu);
        }
      }

      goto LABEL_57;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v39 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v39))
      {
        *buf = 138412290;
        v71 = @"[ContactIngestion]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "%@ Start Gallery update (mode: fast)", buf, 0xCu);
      }
    }

    v40 = selfCopy2->_gallery;
    v55 = 0;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10018EAA0;
    v56[3] = &unk_100286268;
    v57 = @"[ContactIngestion]";
    v58 = selfCopy2;
    v41 = [(VUWGallery *)v40 updateForType:1 mode:1 progressHandler:v56 error:&v55];
    v42 = v55;
    if (v41)
    {
      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_56;
      }

      v43 = VCPLogToOSLogType[7];
      if (!os_log_type_enabled(&_os_log_default, v43))
      {
        goto LABEL_56;
      }

      *buf = 138412290;
      v71 = @"[ContactIngestion]";
      v44 = "%@ Gallery updated!";
      v45 = v43;
      v46 = 12;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_56;
      }

      v47 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v47))
      {
        goto LABEL_56;
      }

      *buf = 138412546;
      v71 = @"[ContactIngestion]";
      v72 = 2112;
      v73 = v42;
      v44 = "%@ Failed to update gallery - %@";
      v45 = v47;
      v46 = 22;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v45, v44, buf, v46);
LABEL_56:
  }

LABEL_57:
}

@end