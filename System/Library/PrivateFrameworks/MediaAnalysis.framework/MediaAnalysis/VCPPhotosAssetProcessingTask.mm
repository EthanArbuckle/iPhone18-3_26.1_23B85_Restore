@interface VCPPhotosAssetProcessingTask
+ (id)taskWithProcessingTypes:(unint64_t)types forAssetsWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l withProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
+ (int)removeProcessingStatusForLocalIdentifiers:(id)identifiers taskID:(unint64_t)d photoLibrary:(id)library;
- (BOOL)run:(id *)run;
- (VCPPhotosAssetProcessingTask)initWithProcessingTypes:(unint64_t)types forAssetsWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l withProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
@end

@implementation VCPPhotosAssetProcessingTask

- (VCPPhotosAssetProcessingTask)initWithProcessingTypes:(unint64_t)types forAssetsWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l withProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  identifiersCopy = identifiers;
  lCopy = l;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = VCPPhotosAssetProcessingTask;
  v16 = [(VCPPhotosAssetProcessingTask *)&v21 initWithCompletionHandler:completionHandler];
  v17 = v16;
  if (v16)
  {
    v16->_processingTypes = types;
    objc_storeStrong(&v16->_localIdentifiers, identifiers);
    objc_storeStrong(&v17->_photoLibraryURL, l);
    v18 = objc_retainBlock(handlerCopy);
    progressHandler = v17->_progressHandler;
    v17->_progressHandler = v18;
  }

  return v17;
}

+ (id)taskWithProcessingTypes:(unint64_t)types forAssetsWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l withProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  lCopy = l;
  identifiersCopy = identifiers;
  v15 = [objc_alloc(objc_opt_class()) initWithProcessingTypes:types forAssetsWithLocalIdentifiers:identifiersCopy fromPhotoLibraryWithURL:lCopy withProgressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return v15;
}

+ (int)removeProcessingStatusForLocalIdentifiers:(id)identifiers taskID:(unint64_t)d photoLibrary:(id)library
{
  identifiersCopy = identifiers;
  libraryCopy = library;
  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v10 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 138412546;
        v53 = objc_opt_class();
        v54 = 1024;
        LODWORD(v55) = d;
        v11 = v53;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[%@][MACD] Removing processing status for taskID %d", buf, 0x12u);
      }
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100123BB4;
    v48[3] = &unk_100286D08;
    v49 = identifiersCopy;
    selfCopy = self;
    dCopy = d;
    v47 = 0;
    v12 = [libraryCopy mad_performAnalysisDataStoreChanges:v48 error:&v47];
    v13 = v47;
    v14 = v13;
    if (v12)
    {

      v15 = 0;
LABEL_34:
      code = v15;
      goto LABEL_35;
    }

    code = [v13 code];
    if (MediaAnalysisLogLevel() >= 3)
    {
      v29 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v29))
      {
        v30 = objc_opt_class();
        *buf = 138412546;
        v53 = v30;
        v54 = 1024;
        LODWORD(v55) = d;
        v31 = v30;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[%@][MACD] Failed to remove processing status for taskID %d", buf, 0x12u);
      }
    }
  }

  else
  {
    v16 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
    if (v16)
    {
      v17 = v16;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v18 = identifiersCopy;
      v19 = [v18 countByEnumeratingWithState:&v43 objects:v58 count:16];
      if (v19)
      {
        v20 = v19;
        v41 = libraryCopy;
        v42 = identifiersCopy;
        v21 = *v44;
        v22 = VCPLogToOSLogType[7];
LABEL_10:
        v23 = 0;
        while (1)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v43 + 1) + 8 * v23);
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v22))
          {
            v25 = objc_opt_class();
            *buf = 138412802;
            v53 = v25;
            v54 = 2112;
            v55 = v24;
            v56 = 1024;
            dCopy3 = d;
            v26 = v25;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@][%@] Removing processing status for taskID %d", buf, 0x1Cu);
          }

          v27 = [v17 removeProcessingStatusForLocalIdentifier:v24 andTaskID:{d, v41, v42}];
          if (v27)
          {
            break;
          }

          if (v20 == ++v23)
          {
            v20 = [v18 countByEnumeratingWithState:&v43 objects:v58 count:16];
            if (v20)
            {
              goto LABEL_10;
            }

            v15 = 0;
            goto LABEL_32;
          }
        }

        v15 = v27;
        if (MediaAnalysisLogLevel() < 3)
        {
LABEL_32:
          libraryCopy = v41;
          identifiersCopy = v42;
          goto LABEL_33;
        }

        v32 = VCPLogToOSLogType[3];
        libraryCopy = v41;
        identifiersCopy = v42;
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          v33 = objc_opt_class();
          *buf = 138412802;
          v53 = v33;
          v54 = 2112;
          v55 = v24;
          v56 = 1024;
          dCopy3 = d;
          v34 = v33;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[%@][%@] Failed to remove processing status for taskID %d", buf, 0x1Cu);
        }
      }

      else
      {
        v15 = 0;
      }

LABEL_33:

      code = [v17 commit];
      if (!code)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v35 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v35))
        {
          v36 = objc_opt_class();
          v37 = v36;
          photoLibraryURL = [libraryCopy photoLibraryURL];
          path = [photoLibraryURL path];
          *buf = 138412546;
          v53 = v36;
          v54 = 2112;
          v55 = path;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "[%@] Failed to open Media Analysis for Photo Library (%@)", buf, 0x16u);
        }
      }

      code = -23;
    }
  }

LABEL_35:

  return code;
}

- (BOOL)run:(id *)run
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [(NSArray *)self->_localIdentifiers count];
      photoLibraryURL = self->_photoLibraryURL;
      *buf = 67109378;
      v187 = v6;
      v188 = 2112;
      v189 = photoLibraryURL;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Performing on-demand processing for %d assets from %@", buf, 0x12u);
    }
  }

  v8 = +[VCPPhotoLibraryManager sharedManager];
  v9 = [v8 photoLibraryWithURL:self->_photoLibraryURL];

  if (v9)
  {
    processingTypes = self->_processingTypes;
    v11 = 0.0;
    if (processingTypes)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = self->_processingTypes & 2;
    if ((processingTypes & 2) != 0)
    {
      v12 = v12 + 1.0;
    }

    if ((processingTypes & 4) != 0)
    {
      v12 = v12 + 1.0;
    }

    if ((processingTypes & 8) != 0)
    {
      v12 = v12 + 1.0;
    }

    if ((processingTypes & 0x10) != 0)
    {
      v14 = v12 + 1.0;
    }

    else
    {
      v14 = v12;
    }

    if (processingTypes)
    {
      v15 = objc_autoreleasePoolPush();
      v151[0] = _NSConcreteStackBlock;
      v151[1] = 3221225472;
      v151[2] = sub_100125064;
      v151[3] = &unk_100286D30;
      v151[4] = self;
      *&v151[5] = 0.0 / v14;
      *&v151[6] = v14;
      v16 = objc_retainBlock(v151);
      v17 = objc_opt_class();
      v18 = [v17 removeProcessingStatusForLocalIdentifiers:self->_localIdentifiers taskID:objc_msgSend(objc_opt_class() photoLibrary:{"taskID"), v9}];
      if (v18)
      {
        if (run)
        {
          v19 = v18;
          v182 = NSLocalizedDescriptionKey;
          v20 = [NSString stringWithFormat:@"Failed removing processing status before scene asset processing"];
          v183 = v20;
          v21 = [NSDictionary dictionaryWithObjects:&v183 forKeys:&v182 count:1];
          v22 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v19 userInfo:v21];
          v23 = *run;
          *run = v22;
        }

        v24 = 0;
      }

      else
      {
        v29 = [VCPMADSceneAssetProcessingTask alloc];
        localIdentifiers = self->_localIdentifiers;
        v31 = self->_photoLibraryURL;
        v150[0] = _NSConcreteStackBlock;
        v150[1] = 3221225472;
        v150[2] = sub_100125090;
        v150[3] = &unk_100285F90;
        v150[4] = self;
        v32 = [(VCPMADSceneAssetProcessingTask *)v29 initWithLocalIdentifiers:localIdentifiers fromPhotoLibraryWithURL:v31 cancelBlock:v150 progressHandler:v16 completionHandler:&stru_100286D50];
        v33 = [(VCPMADSceneAssetProcessingTask *)v32 run];
        if (v33 == -128)
        {
          if (run)
          {
            v180 = NSLocalizedDescriptionKey;
            v34 = [NSString stringWithFormat:@"Scene asset processing cancelled"];
            v181 = v34;
            v35 = [NSDictionary dictionaryWithObjects:&v181 forKeys:&v180 count:1];
            v36 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v35];
            v37 = *run;
            *run = v36;
          }

          v24 = 0;
        }

        else
        {
          v38 = v33;
          v24 = v33 == 0;
          if (run && v33)
          {
            v138 = v33;
            v178 = NSLocalizedDescriptionKey;
            v39 = [NSString stringWithFormat:@"Scene asset processing failed"];
            v179 = v39;
            v40 = [NSDictionary dictionaryWithObjects:&v179 forKeys:&v178 count:1];
            v41 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v138 userInfo:v40];
            v42 = *run;
            *run = v41;
          }

          if (v38)
          {
            v11 = 0.0;
          }

          else
          {
            v11 = 1.0;
          }
        }
      }

      objc_autoreleasePoolPop(v15);
      if (!v24)
      {
        goto LABEL_94;
      }

      processingTypes = self->_processingTypes;
      v13 = processingTypes & 2;
    }

    if (v13)
    {
      v43 = objc_autoreleasePoolPush();
      v149[0] = _NSConcreteStackBlock;
      v149[1] = 3221225472;
      v149[2] = sub_10012509C;
      v149[3] = &unk_100286D30;
      v149[4] = self;
      *&v149[5] = v11 * 100.0 / v14;
      *&v149[6] = v14;
      v44 = objc_retainBlock(v149);
      v45 = objc_opt_class();
      v46 = [v45 removeProcessingStatusForLocalIdentifiers:self->_localIdentifiers taskID:objc_msgSend(objc_opt_class() photoLibrary:{"taskID"), v9}];
      if (v46)
      {
        if (run)
        {
          v47 = v46;
          v176 = NSLocalizedDescriptionKey;
          v48 = [NSString stringWithFormat:@"Failed removing processing status before OCR asset processing"];
          v177 = v48;
          v49 = [NSDictionary dictionaryWithObjects:&v177 forKeys:&v176 count:1];
          v50 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v47 userInfo:v49];
          v51 = *run;
          *run = v50;
        }

        v52 = 0;
      }

      else
      {
        v53 = [VCPMADOCRAssetProcessingTask alloc];
        v54 = self->_localIdentifiers;
        v55 = self->_photoLibraryURL;
        v148[0] = _NSConcreteStackBlock;
        v148[1] = 3221225472;
        v148[2] = sub_1001250C8;
        v148[3] = &unk_100285F90;
        v148[4] = self;
        v56 = [(VCPMADPhotoAssetProcessingTask *)v53 initWithLocalIdentifiers:v54 fromPhotoLibraryWithURL:v55 cancelBlock:v148 progressHandler:v44 completionHandler:&stru_100286D70];
        v57 = [(VCPMADOCRAssetProcessingTask *)v56 run];
        if (v57 == -128)
        {
          if (run)
          {
            v174 = NSLocalizedDescriptionKey;
            v58 = [NSString stringWithFormat:@"OCR asset processing cancelled"];
            v175 = v58;
            v59 = [NSDictionary dictionaryWithObjects:&v175 forKeys:&v174 count:1];
            v60 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v59];
            v61 = *run;
            *run = v60;
          }

          v52 = 0;
        }

        else
        {
          v62 = v57;
          v52 = v57 == 0;
          if (run && v57)
          {
            v139 = v57;
            v172 = NSLocalizedDescriptionKey;
            v63 = [NSString stringWithFormat:@"OCR asset processing failed"];
            v173 = v63;
            v64 = [NSDictionary dictionaryWithObjects:&v173 forKeys:&v172 count:1];
            v65 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v139 userInfo:v64];
            v66 = *run;
            *run = v65;
          }

          if (!v62)
          {
            v11 = v11 + 1.0;
          }
        }
      }

      objc_autoreleasePoolPop(v43);
      if (!v52)
      {
        goto LABEL_94;
      }

      processingTypes = self->_processingTypes;
    }

    if ((processingTypes & 4) != 0)
    {
      v67 = objc_autoreleasePoolPush();
      v147[0] = _NSConcreteStackBlock;
      v147[1] = 3221225472;
      v147[2] = sub_1001250D4;
      v147[3] = &unk_100286D30;
      v147[4] = self;
      *&v147[5] = v11 * 100.0 / v14;
      *&v147[6] = v14;
      v68 = objc_retainBlock(v147);
      v69 = objc_opt_class();
      v70 = [v69 removeProcessingStatusForLocalIdentifiers:self->_localIdentifiers taskID:objc_msgSend(objc_opt_class() photoLibrary:{"taskID"), v9}];
      if (v70)
      {
        if (run)
        {
          v71 = v70;
          v170 = NSLocalizedDescriptionKey;
          v72 = [NSString stringWithFormat:@"Failed removing processing status before quick face asset processing"];
          v171 = v72;
          v73 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
          v74 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v71 userInfo:v73];
          v75 = *run;
          *run = v74;
        }

        v76 = 0;
      }

      else
      {
        v77 = [VCPMADQuickFaceIDAssetProcessingTask alloc];
        v78 = self->_localIdentifiers;
        v79 = self->_photoLibraryURL;
        v146[0] = _NSConcreteStackBlock;
        v146[1] = 3221225472;
        v146[2] = sub_100125100;
        v146[3] = &unk_100285F90;
        v146[4] = self;
        v80 = [(VCPMADQuickFaceIDAssetProcessingTask *)v77 initWithLocalIdentifiers:v78 fromPhotoLibraryWithURL:v79 cancelBlock:v146 progressHandler:v68 completionHandler:&stru_100286D90];
        v81 = [(VCPMADQuickFaceIDAssetProcessingTask *)v80 run];
        if (v81 == -128)
        {
          if (run)
          {
            v168 = NSLocalizedDescriptionKey;
            v82 = [NSString stringWithFormat:@"Face asset processing cancelled"];
            v169 = v82;
            v83 = [NSDictionary dictionaryWithObjects:&v169 forKeys:&v168 count:1];
            v84 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v83];
            v85 = *run;
            *run = v84;
          }

          v76 = 0;
        }

        else
        {
          v86 = v81;
          v76 = v81 == 0;
          if (run && v81)
          {
            v140 = v81;
            v166 = NSLocalizedDescriptionKey;
            v87 = [NSString stringWithFormat:@"Face asset processing failed"];
            v167 = v87;
            v88 = [NSDictionary dictionaryWithObjects:&v167 forKeys:&v166 count:1];
            v89 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v140 userInfo:v88];
            v90 = *run;
            *run = v89;
          }

          if (!v86)
          {
            v11 = v11 + 1.0;
          }
        }
      }

      objc_autoreleasePoolPop(v67);
      if (!v76)
      {
        goto LABEL_94;
      }

      processingTypes = self->_processingTypes;
    }

    if ((processingTypes & 8) == 0)
    {
LABEL_84:
      if ((processingTypes & 0x10) == 0)
      {
LABEL_85:
        run = [(VCPPhotosAssetProcessingTask *)self completionHandler];
        (run[2])(run, 0, 0);

        LOBYTE(run) = 1;
        goto LABEL_95;
      }

      v104 = objc_autoreleasePoolPush();
      v143[0] = _NSConcreteStackBlock;
      v143[1] = 3221225472;
      v143[2] = sub_100125140;
      v143[3] = &unk_100286D30;
      v143[4] = self;
      *&v143[5] = v11 * 100.0 / v14;
      *&v143[6] = v14;
      v105 = objc_retainBlock(v143);
      v106 = objc_opt_class();
      v107 = [v106 removeProcessingStatusForLocalIdentifiers:self->_localIdentifiers taskID:objc_msgSend(objc_opt_class() photoLibrary:{"taskID"), v9}];
      if (v107)
      {
        if (run)
        {
          v108 = v107;
          v156 = NSLocalizedDescriptionKey;
          v109 = [NSString stringWithFormat:@"Failed removing processing status before visual search asset processing"];
          v157 = v109;
          v110 = [NSDictionary dictionaryWithObjects:&v157 forKeys:&v156 count:1];
          v111 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v108 userInfo:v110];
          v112 = *run;
          *run = v111;
        }

LABEL_93:

        objc_autoreleasePoolPop(v104);
        goto LABEL_94;
      }

      v113 = [VCPMADVisualSearchAssetProcessingTask alloc];
      v114 = self->_localIdentifiers;
      v115 = self->_photoLibraryURL;
      v142[0] = _NSConcreteStackBlock;
      v142[1] = 3221225472;
      v142[2] = sub_10012516C;
      v142[3] = &unk_100285F90;
      v142[4] = self;
      v116 = [(VCPMADVisualSearchAssetProcessingTask *)v113 initWithLocalIdentifiers:v114 fromPhotoLibraryWithURL:v115 cancelBlock:v142 progressHandler:v105 completionHandler:&stru_100286DB0];
      v117 = [(VCPMADVisualSearchAssetProcessingTask *)v116 run];
      if (v117 == -128)
      {
        if (run)
        {
          v154 = NSLocalizedDescriptionKey;
          v118 = [NSString stringWithFormat:@"VisualSearch asset processing cancelled"];
          v155 = v118;
          v119 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
          v120 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v119];
          v121 = *run;
          *run = v120;
        }

        goto LABEL_93;
      }

      v127 = v117;
      if (run && v117)
      {
        v152 = NSLocalizedDescriptionKey;
        v128 = [NSString stringWithFormat:@"VisualSearch asset processing failed"];
        v153 = v128;
        v129 = [NSDictionary dictionaryWithObjects:&v153 forKeys:&v152 count:1];
        v130 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v127 userInfo:v129];
        v131 = *run;
        *run = v130;
      }

      objc_autoreleasePoolPop(v104);
      if (!v127)
      {
        goto LABEL_85;
      }

LABEL_94:
      LOBYTE(run) = 0;
      goto LABEL_95;
    }

    v91 = objc_autoreleasePoolPush();
    v145[0] = _NSConcreteStackBlock;
    v145[1] = 3221225472;
    v145[2] = sub_10012510C;
    v145[3] = &unk_100286D30;
    v145[4] = self;
    *&v145[5] = v11 * 100.0 / v14;
    *&v145[6] = v14;
    v92 = objc_retainBlock(v145);
    v93 = [objc_opt_class() removeProcessingStatusForLocalIdentifiers:self->_localIdentifiers taskID:254 photoLibrary:v9];
    if (v93)
    {
      if (run)
      {
        v94 = NSOSStatusErrorDomain;
        v95 = v93;
        v164 = NSLocalizedDescriptionKey;
        v96 = [NSString stringWithFormat:@"Failed removing processing status before full(LongMovie) asset processing"];
        v165 = v96;
        v97 = &v165;
        v98 = &v164;
LABEL_78:
        v100 = [NSDictionary dictionaryWithObjects:v97 forKeys:v98 count:1];
        v101 = [NSError errorWithDomain:v94 code:v95 userInfo:v100];
        v102 = *run;
        *run = v101;

        goto LABEL_79;
      }
    }

    else
    {
      v99 = [objc_opt_class() removeProcessingStatusForLocalIdentifiers:self->_localIdentifiers taskID:1 photoLibrary:v9];
      if (!v99)
      {
        v96 = [VCPMADFullAssetProcessingTask taskWithPhotoLibrary:v9 localIdentifiers:self->_localIdentifiers];
        v144[0] = _NSConcreteStackBlock;
        v144[1] = 3221225472;
        v144[2] = sub_100125138;
        v144[3] = &unk_100285F90;
        v144[4] = self;
        [v96 setCancel:v144];
        [v96 setProgressHandler:v92];
        [v96 start];
        if ([v96 error] != -128)
        {
          error = [v96 error];
          v133 = error;
          v103 = error == 0;
          if (run && error)
          {
            v141 = error;
            v158 = NSLocalizedDescriptionKey;
            v134 = [NSString stringWithFormat:@"Full asset processing failed"];
            v159 = v134;
            v135 = [NSDictionary dictionaryWithObjects:&v159 forKeys:&v158 count:1];
            v136 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v141 userInfo:v135];
            v137 = *run;
            *run = v136;
          }

          if (!v133)
          {
            v11 = v11 + 1.0;
          }

          goto LABEL_80;
        }

        if (run)
        {
          v160 = NSLocalizedDescriptionKey;
          v123 = [NSString stringWithFormat:@"Full asset processing cancelled"];
          v161 = v123;
          v124 = [NSDictionary dictionaryWithObjects:&v161 forKeys:&v160 count:1];
          v125 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v124];
          v126 = *run;
          *run = v125;
        }

LABEL_79:
        v103 = 0;
LABEL_80:

LABEL_82:
        objc_autoreleasePoolPop(v91);
        if (!v103)
        {
          goto LABEL_94;
        }

        processingTypes = self->_processingTypes;
        goto LABEL_84;
      }

      if (run)
      {
        v94 = NSOSStatusErrorDomain;
        v95 = v99;
        v162 = NSLocalizedDescriptionKey;
        v96 = [NSString stringWithFormat:@"Failed removing processing status before full asset processing"];
        v163 = v96;
        v97 = &v163;
        v98 = &v162;
        goto LABEL_78;
      }
    }

    v103 = 0;
    goto LABEL_82;
  }

  if (run)
  {
    v184 = NSLocalizedDescriptionKey;
    v25 = [NSString stringWithFormat:@"Failed to open specified Photo Library (%@)", self->_photoLibraryURL];
    v185 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v185 forKeys:&v184 count:1];
    v27 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v26];
    v28 = *run;
    *run = v27;

    goto LABEL_94;
  }

LABEL_95:

  return run;
}

@end