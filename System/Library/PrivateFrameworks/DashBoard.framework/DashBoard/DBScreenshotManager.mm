@interface DBScreenshotManager
- (DBScreenshotManager)initWithWindowScene:(id)scene;
- (void)saveScreenshotsForDisplayIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation DBScreenshotManager

- (DBScreenshotManager)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = DBScreenshotManager;
  v6 = [(DBScreenshotManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_windowScene, scene);
  }

  return v7;
}

- (void)saveScreenshotsForDisplayIdentifiers:(id)identifiers completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  completionCopy = completion;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [MEMORY[0x277D759A0] screens];
  v44 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v44)
  {

    goto LABEL_35;
  }

  v36 = 0;
  v42 = *v46;
  v39 = *MEMORY[0x277CD2D90];
  v40 = *MEMORY[0x277CD2CC8];
  do
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v46 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v45 + 1) + 8 * i);
      displayIdentity = [v6 displayIdentity];
      if ([identifiersCopy containsObject:displayIdentity])
      {
        v8 = v6;
        v9 = [MEMORY[0x277D75DA0] createIOSurfaceFromScreen:v8];
        if (v9)
        {
          v51 = v40;
          v52 = v39;
          *&buf = &unk_285AA45C8;
          *(&buf + 1) = &unk_285AA45E0;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:&v51 count:2];
          v11 = CGImageCreateFromIOSurface();
          if (v11)
          {
            v12 = MEMORY[0x277D755B8];
            [v8 scale];
            v13 = [v12 imageWithCGImage:v11 scale:0 orientation:?];
            CGImageRelease(v11);
          }

          else
          {
            v13 = 0;
          }

          CFRelease(v9);

          if (v13)
          {
            v15 = [[DBScreenshotFlasher alloc] initWithWindowScene:self->_windowScene];
            whiteColor = [MEMORY[0x277D75348] whiteColor];
            [(DBScreenshotFlasher *)v15 flashColor:whiteColor withCompletion:0];

            v17 = v13;
            v18 = MEMORY[0x277CBEAA8];
            v14 = v17;
            date = [v18 date];
            [date timeIntervalSinceReferenceDate];
            v21 = v20;

            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            temporaryDirectory = [defaultManager temporaryDirectory];
            v24 = MEMORY[0x277CCACA8];
            v25 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
            v26 = [v24 stringWithFormat:@"carplayScreenshot.%@.png", v25];
            v27 = [temporaryDirectory URLByAppendingPathComponent:v26];

            v28 = UIImagePNGRepresentation(v14);

            if (v28)
            {
              if ([v28 writeToURL:v27 atomically:1])
              {
                v29 = v27;
              }

              else
              {
                v29 = 0;
              }
            }

            else
            {
              v29 = 0;
            }

            v30 = v29;

            if (v30)
            {
              *&buf = 0;
              *(&buf + 1) = &buf;
              v58 = 0x3032000000;
              v59 = __Block_byref_object_copy_;
              v60 = __Block_byref_object_dispose_;
              array = [MEMORY[0x277CBEB18] array];
              mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
              v51 = MEMORY[0x277D85DD0];
              v52 = 3221225472;
              v53 = __DBSaveScreenshotToLibrary_block_invoke;
              v54 = &unk_278F016B8;
              v32 = v14;
              v55 = v32;
              p_buf = &buf;
              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = __DBSaveScreenshotToLibrary_block_invoke_255;
              v49[3] = &unk_278F016E0;
              v49[4] = &buf;
              [mEMORY[0x277CD9948] performChanges:&v51 completionHandler:v49];

              _Block_object_dispose(&buf, 8);
              [dictionary setObject:v30 forKeyedSubscript:displayIdentity];
              v36 = 1;
            }

            else
            {
              v33 = DBLogForCategory(0);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_248146000, v33, OS_LOG_TYPE_INFO, "Unable to save temporary screenshot", &buf, 2u);
              }

              v34 = DBLogForCategory(0);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v8;
                _os_log_error_impl(&dword_248146000, v34, OS_LOG_TYPE_ERROR, "Unable to save temporary screenshot for screen %@", &buf, 0xCu);
              }
            }

            goto LABEL_30;
          }
        }

        else
        {
        }

        v14 = DBLogForCategory(0);
        if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_error_impl(&dword_248146000, &v14->super, OS_LOG_TYPE_ERROR, "Failed to capture a screenshot for screen %@", &buf, 0xCu);
        }
      }

      else
      {
        v14 = DBLogForCategory(0);
        if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v6;
          _os_log_impl(&dword_248146000, &v14->super, OS_LOG_TYPE_INFO, "Skipping screenshot for screen %@", &buf, 0xCu);
        }
      }

LABEL_30:
    }

    v44 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  }

  while (v44);

  if (v36)
  {
    AudioServicesPlaySystemSoundWithCompletion(0x454u, 0);
  }

LABEL_35:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, dictionary);
  }
}

@end