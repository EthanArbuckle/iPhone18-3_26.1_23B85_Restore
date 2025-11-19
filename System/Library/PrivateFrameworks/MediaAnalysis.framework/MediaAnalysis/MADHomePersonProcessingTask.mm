@interface MADHomePersonProcessingTask
- (MADHomePersonProcessingTask)init;
- (int)_analyzeFaceCropWithPersonUUID:(id)a3 faceCropUUID:(id)a4 confirmed:(BOOL)a5 andCVPixelBuffer:(__CVBuffer *)a6;
- (int)_processFaceCrop:(id)a3;
- (void)_processFacesForHome:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)process;
@end

@implementation MADHomePersonProcessingTask

- (MADHomePersonProcessingTask)init
{
  v24.receiver = self;
  v24.super_class = MADHomePersonProcessingTask;
  v2 = [(MADProcessingTask *)&v24 init];
  if (v2)
  {
    v3 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
    photoLibrary = v2->_photoLibrary;
    v2->_photoLibrary = v3;

    v5 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v2->_photoLibrary];
    context = v2->_context;
    v2->_context = v5;

    v7 = [(PHPhotoLibrary *)v2->_photoLibrary vcp_visionCacheStorageDirectoryURL];
    v23 = 0;
    v8 = [[VUWGallery alloc] initWithClient:2 path:v7 error:&v23];
    v9 = v23;
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

      v17 = dispatch_group_create();
      homeManagerGroup = v2->_homeManagerGroup;
      v2->_homeManagerGroup = v17;

      atomic_store(0, &v2->_homeManagerUpdateReturnedOnTime);
      atomic_store(0, &v2->_homeManagerUpdateTimedOut);
      v19 = v2;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v20 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          *buf = 138412290;
          v26 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "Failed to create VUWGallery - %@", buf, 0xCu);
        }
      }

      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = v19;

  return v21;
}

- (int)_analyzeFaceCropWithPersonUUID:(id)a3 faceCropUUID:(id)a4 confirmed:(BOOL)a5 andCVPixelBuffer:(__CVBuffer *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  v13 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v12];
  v14 = [[VCPFaceAnalyzer alloc] initWithContext:v13];
  v34 = 0;
  v15 = [v14 quickAnalyzeCVPixelBuffer:a6 results:&v34];
  v16 = v34;
  v17 = v16;
  if (!v15)
  {
    v18 = [v16 objectForKeyedSubscript:MediaAnalysisFaceResultsKey];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v19 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = [v18 count];
        *buf = 138412546;
        v36 = @"[HomeIngestion][FaceProcessing]";
        v37 = 2048;
        v38 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Detected %lu faces from pixel buffer", buf, 0x16u);
      }
    }

    if ([v18 count] == 1)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100188AD0;
      v28[3] = &unk_100288010;
      v29 = v18;
      v30 = @"[HomeIngestion][FaceProcessing]";
      v31 = v11;
      v32 = v10;
      v33 = a5;
      v21 = objc_retainBlock(v28);
      gallery = self->_gallery;
      v27 = 0;
      v23 = [(VUWGallery *)gallery mutateAndReturnError:&v27 handler:v21];
      v24 = v27;
      if (v23)
      {
        v15 = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v25 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v25))
          {
            *buf = 138412546;
            v36 = @"[HomeIngestion][FaceProcessing]";
            v37 = 2112;
            v38 = v24;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Failed to tag observations from Gallery - %@", buf, 0x16u);
          }
        }

        v15 = [v24 code];
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (int)_processFaceCrop:(id)a3
{
  v4 = a3;
  v5 = [v4 personUUID];
  if (v5)
  {
    v6 = [v4 UUID];
    if (v6)
    {
      [(NSMutableSet *)self->_clientAssets addObject:v6];
      if ([(NSSet *)self->_vuKnownAssets containsObject:v6])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v7 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v7))
          {
            *buf = 138412546;
            v18 = @"[HomeIngestion][FaceCrop]";
            v19 = 2112;
            v20 = v6;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Gallery already indexes FaceCrop (asset) %@; ignoring", buf, 0x16u);
          }
        }

        v8 = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v11 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v11))
          {
            *buf = 138412802;
            v18 = @"[HomeIngestion][FaceCrop]";
            v19 = 2112;
            v20 = v6;
            v21 = 2112;
            v22 = v5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Processing FaceCrop %@ for person %@ ...", buf, 0x20u);
          }
        }

        v12 = +[VCPImageManager sharedImageManager];
        v13 = [v4 dataRepresentation];
        v16 = [v12 pixelBufferWithFormat:875704422 andMaxDimension:0 fromData:v13 withUniformTypeIdentifier:UTTypeJPEG flushCache:1 orientation:0];

        v8 = -[MADHomePersonProcessingTask _analyzeFaceCropWithPersonUUID:faceCropUUID:confirmed:andCVPixelBuffer:](self, "_analyzeFaceCropWithPersonUUID:faceCropUUID:confirmed:andCVPixelBuffer:", v5, v6, [v4 source] == 2, v16);
        if (!v8 && MediaAnalysisLogLevel() >= 7)
        {
          v14 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v14))
          {
            *buf = 138412802;
            v18 = @"[HomeIngestion][FaceCrop]";
            v19 = 2112;
            v20 = v6;
            v21 = 2112;
            v22 = v5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Finished processing FaceCrop %@ for person %@", buf, 0x20u);
          }
        }

        sub_100002CBC(&v16);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v10 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          *buf = 138412546;
          v18 = @"[HomeIngestion][FaceCrop]";
          v19 = 2112;
          v20 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Invalid asset identifier %@", buf, 0x16u);
        }
      }

      v8 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v9 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 138412546;
        v18 = @"[HomeIngestion][FaceCrop]";
        v19 = 2112;
        v20 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Invalid person identifier %@", buf, 0x16u);
      }
    }

    v8 = -18;
  }

  return v8;
}

- (void)_processFacesForHome:(id)a3
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      if ([v4 isPrimary])
      {
        v6 = &stru_1002890F8;
      }

      else
      {
        v6 = @"non-";
      }

      v7 = [v4 name];
      v8 = [v4 uniqueIdentifier];
      v9 = [v4 personManagerSettings];
      v10 = [v9 isFaceClassificationEnabled];
      v11 = @"dis";
      *buf = 138413314;
      v23 = @"[HomeIngestion][Home]";
      v24 = 2112;
      v25 = v6;
      if (v10)
      {
        v11 = @"en";
      }

      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Processing %@primary home %@ (%@) (faceClassification %@abled) ...", buf, 0x34u);
    }
  }

  v12 = [v4 personManager];
  if (v12)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001898A4;
    v19[3] = &unk_100288060;
    v19[4] = self;
    v20 = @"[HomeIngestion][Home]";
    v13 = dispatch_semaphore_create(0);
    v21 = v13;
    [v12 fetchAllPersonFaceCropsWithCompletion:v19];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    if (MediaAnalysisLogLevel() >= 6)
    {
      v14 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        if ([v4 isPrimary])
        {
          v15 = &stru_1002890F8;
        }

        else
        {
          v15 = @"non-";
        }

        v16 = [v4 name];
        v17 = [v4 uniqueIdentifier];
        *buf = 138413058;
        v23 = @"[HomeIngestion][Home]";
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Processed %@primary home %@ (%@)", buf, 0x2Au);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v18 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v18))
    {
      *buf = 138412290;
      v23 = @"[HomeIngestion][Home]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ No home person manager", buf, 0xCu);
    }
  }
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_homeManagerUpdateTimedOut);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, &self->_homeManagerUpdateReturnedOnTime);
    if (MediaAnalysisLogLevel() >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        v7 = [v4 homes];
        v8 = 134217984;
        v9 = [v7 count];
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[HomeIngestion] Home Manager update returns with %lu homes", &v8, 0xCu);
      }
    }

    dispatch_group_leave(self->_homeManagerGroup);
  }
}

- (void)process
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 138412290;
      *&buf[4] = @"[HomeIngestion]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Start processing ...", buf, 0xCu);
    }
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2050000000;
  v4 = qword_1002B84D0;
  v62 = qword_1002B84D0;
  if (!qword_1002B84D0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10018ABC8;
    v65 = &unk_100283450;
    v66 = &v59;
    sub_10018ABC8(buf);
    v4 = v60[3];
  }

  v5 = v4;
  _Block_object_dispose(&v59, 8);
  v46 = [v4 defaultPrivateConfiguration];
  [v46 setOptions:1];
  [v46 setCachePolicy:0];
  [v46 setDiscretionary:1];
  dispatch_group_enter(self->_homeManagerGroup);
  v59 = 0;
  v60 = &v59;
  v61 = 0x2050000000;
  v6 = qword_1002B84D8;
  v62 = qword_1002B84D8;
  if (!qword_1002B84D8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10018AC20;
    v65 = &unk_100283450;
    v66 = &v59;
    sub_10018AC20(buf);
    v6 = v60[3];
  }

  v7 = v6;
  _Block_object_dispose(&v59, 8);
  v45 = [[v6 alloc] initWithConfiguration:v46];
  [v45 setDelegate:self];
  homeManagerGroup = self->_homeManagerGroup;
  v9 = dispatch_time(0, 10000000000);
  dispatch_group_wait(homeManagerGroup, v9);
  v10 = atomic_load(&self->_homeManagerUpdateReturnedOnTime);
  if (v10)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v11 = [v45 homes];
    v12 = [v11 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v12)
    {
      v13 = *v56;
LABEL_11:
      v14 = 0;
      while (1)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v55 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v17 = [(MADProcessingTask *)self cancelBlock];
        if (v17 && ([(MADProcessingTask *)self cancelBlock], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18[2](), v18, v17, (v19 & 1) != 0))
        {
          v20 = 1;
        }

        else
        {
          v21 = +[VCPWatchdog sharedWatchdog];
          [v21 pet];

          [(MADHomePersonProcessingTask *)self _processFacesForHome:v15];
          v20 = 0;
        }

        objc_autoreleasePoolPop(v16);
        if (v20)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v12)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }

    v22 = [(MADProcessingTask *)self cancelBlock];
    if (v22)
    {
      v23 = [(MADProcessingTask *)self cancelBlock];
      v24 = v23[2]();

      if (v24)
      {
        goto LABEL_54;
      }
    }

    v25 = +[VCPWatchdog sharedWatchdog];
    [v25 pet];

    if ([(NSSet *)self->_vuKnownAssets count])
    {
      v26 = [(NSSet *)self->_vuKnownAssets mutableCopy];
      [v26 minusSet:self->_clientAssets];
      if ([v26 count])
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v27 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v27))
          {
            v28 = [v26 count];
            *buf = 138412546;
            *&buf[4] = @"[HomeIngestion]";
            *&buf[12] = 2048;
            *&buf[14] = v28;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ %lu deleted FaceCrop(s); removing from Gallery ...", buf, 0x16u);
          }
        }

        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_10018A630;
        v52[3] = &unk_100288088;
        v53 = v26;
        v54 = @"[HomeIngestion]";
        v29 = objc_retainBlock(v52);
        gallery = self->_gallery;
        v51 = 0;
        v31 = [(VUWGallery *)gallery mutateAndReturnError:&v51 handler:v29];
        v32 = v51;
        if ((v31 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
        {
          v33 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v33))
          {
            *buf = 138412546;
            *&buf[4] = @"[HomeIngestion]";
            *&buf[12] = 2112;
            *&buf[14] = v32;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "%@ Failed to remove FaceCrop(s) from Gallery %@", buf, 0x16u);
          }
        }
      }
    }

    if (([(VUWGallery *)self->_gallery ready]& 1) != 0)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v34 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          *buf = 138412290;
          *&buf[4] = @"[HomeIngestion]";
          v35 = "%@ Gallery is ready; skip updating";
LABEL_41:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v34, v35, buf, 0xCu);
          goto LABEL_54;
        }
      }

      goto LABEL_54;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v36 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v36))
      {
        *buf = 138412290;
        *&buf[4] = @"[HomeIngestion]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "%@ Start Gallery update (mode: fast)", buf, 0xCu);
      }
    }

    v37 = self->_gallery;
    v47 = 0;
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10018A9A8;
    v48[3] = &unk_100286268;
    v49 = @"[HomeIngestion]";
    v50 = self;
    v38 = [(VUWGallery *)v37 updateForType:1 mode:1 progressHandler:v48 error:&v47];
    v39 = v47;
    if (v38)
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_53;
      }

      v40 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v40))
      {
        goto LABEL_53;
      }

      *buf = 138412290;
      *&buf[4] = @"[HomeIngestion]";
      v41 = "%@ Gallery updated!";
      v42 = v40;
      v43 = 12;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_53;
      }

      v44 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v44))
      {
        goto LABEL_53;
      }

      *buf = 138412546;
      *&buf[4] = @"[HomeIngestion]";
      *&buf[12] = 2112;
      *&buf[14] = v39;
      v41 = "%@ Failed to update gallery - %@";
      v42 = v44;
      v43 = 22;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v42, v41, buf, v43);
LABEL_53:

    goto LABEL_54;
  }

  atomic_store(1u, &self->_homeManagerUpdateTimedOut);
  dispatch_group_leave(self->_homeManagerGroup);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v34 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v34))
    {
      *buf = 138412290;
      *&buf[4] = @"[HomeIngestion]";
      v35 = "%@ HomeManager did not return in time; skipping";
      goto LABEL_41;
    }
  }

LABEL_54:
}

@end