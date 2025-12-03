@interface NTKDiagnosticExtensionCompanionExtension
- (id)_archiveDirectory:(id)directory toFile:(id)file;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation NTKDiagnosticExtensionCompanionExtension

- (id)attachmentsForParameters:(id)parameters
{
  v3 = +[NSFileManager defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];
  v7 = [v4 stringByAppendingPathComponent:uUIDString];

  v47 = v3;
  [v3 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
  v42 = +[NSMutableArray array];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = @"/var/mobile/Library/NanoTimeKit/";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Collecting %@", buf, 0xCu);
  }

  v41 = [v7 stringByAppendingPathComponent:@"NanoTimeKit-Companion.zip"];
  v8 = [(NTKDiagnosticExtensionCompanionExtension *)self _archiveDirectory:@"/var/mobile/Library/NanoTimeKit/" toFile:?];
  if (v8)
  {
    [v42 addObject:v8];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = @"/var/mobile/Library/Caches/NanoTimeKit/";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Collecting %@", buf, 0xCu);
  }

  v39 = [v7 stringByAppendingPathComponent:@"Caches-NTK-Companion.zip"];
  v9 = [(NTKDiagnosticExtensionCompanionExtension *)self _archiveDirectory:@"/var/mobile/Library/Caches/NanoTimeKit/" toFile:?];
  if (v9)
  {
    [v42 addObject:v9];
  }

  v40 = v8;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = @"/var/mobile/Library/PhotosFace/PhotosFace.sqlite";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Collecting %@", buf, 0xCu);
  }

  v38 = v9;
  v37 = [v7 stringByAppendingPathComponent:@"/var/mobile/Library/PhotosFace/PhotosFace.sqlite"];
  v10 = [(NTKDiagnosticExtensionCompanionExtension *)self _archiveDirectory:@"/var/mobile/Library/PhotosFace/PhotosFace.sqlite" toFile:?];
  if (v10)
  {
    [v42 addObject:v10];
  }

  v36 = v10;
  v11 = +[NSFileManager defaultManager];
  v12 = [v11 contentsOfDirectoryAtPath:@"/var/mobile/Library/Caches/NanoTimeKit/" error:0];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v12;
  v48 = [obj countByEnumeratingWithState:&v59 objects:v76 count:16];
  if (v48)
  {
    v46 = *v60;
    v44 = v7;
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v60 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v59 + 1) + 8 * i);
        v15 = [@"/var/mobile/Library/Caches/NanoTimeKit/" stringByAppendingPathComponent:v14];
        v52 = [v7 stringByAppendingPathComponent:v14];
        [v47 createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
        v16 = [v47 contentsOfDirectoryAtPath:v15 error:0];
        v17 = v16;
        if (v16)
        {
          v49 = v14;
          v50 = i;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v54 = [v16 countByEnumeratingWithState:&v55 objects:v75 count:16];
          if (v54)
          {
            v53 = *v56;
            v51 = v17;
            do
            {
              for (j = 0; j != v54; j = j + 1)
              {
                if (*v56 != v53)
                {
                  objc_enumerationMutation(v51);
                }

                v19 = *(*(&v55 + 1) + 8 * j);
                v20 = [v15 stringByAppendingPathComponent:v19];
                v21 = [NSData dataWithContentsOfFile:v20];
                lastPathComponent = [v20 lastPathComponent];
                stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

                ImagesFromData = CPBitmapCreateImagesFromData();
                if (ImagesFromData)
                {
                  v25 = ImagesFromData;
                  v26 = [UIImage imageWithCGImage:CFArrayGetValueAtIndex(ImagesFromData, 0)];
                  [NSString stringWithFormat:@"%@.png", stringByDeletingPathExtension];
                  v28 = v27 = v15;
                  v29 = [v52 stringByAppendingPathComponent:v28];

                  v30 = UIImagePNGRepresentation(v26);
                  [v30 writeToFile:v29 atomically:1];

                  v15 = v27;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138413570;
                    v64 = v21;
                    v65 = 2112;
                    v66 = v19;
                    v67 = 2112;
                    v68 = v20;
                    v69 = 2112;
                    v70 = v27;
                    v71 = 2112;
                    v72 = v26;
                    v73 = 2112;
                    v74 = v29;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "fileData:%@ cpbitmapFile:%@ filePath:%@ ntkcacheDir:%@ image:%@ imageFilePath:%@", buf, 0x3Eu);
                  }

                  CFRelease(v25);
                }
              }

              v17 = v51;
              v54 = [v51 countByEnumeratingWithState:&v55 objects:v75 count:16];
            }

            while (v54);
          }

          v31 = [NSString stringWithFormat:@"PNGs-%@-Companion.zip", v49];
          v7 = v44;
          v32 = [v44 stringByAppendingPathComponent:v31];
          v33 = [(NTKDiagnosticExtensionCompanionExtension *)self _archiveDirectory:v52 toFile:v32];

          if (v33)
          {
            [v42 addObject:v33];
          }

          i = v50;
        }
      }

      v48 = [obj countByEnumeratingWithState:&v59 objects:v76 count:16];
    }

    while (v48);
  }

  v34 = [v42 copy];

  return v34;
}

- (id)_archiveDirectory:(id)directory toFile:(id)file
{
  fileCopy = file;
  directoryCopy = directory;
  BOMCopierNew();
  v10 = @"createPKZip";
  v11 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [directoryCopy fileSystemRepresentation];

  [fileCopy fileSystemRepresentation];
  LODWORD(directoryCopy) = BOMCopierCopyWithOptions();
  BOMCopierFree();
  if (directoryCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = [DEAttachmentItem attachmentWithPath:fileCopy];
  }

  return v8;
}

@end