@interface BWDeferredContainer
+ (BOOL)archiveObjectWithURL:(id)l object:(id)object error:(id *)error;
+ (id)archiveObject:(id)object error:(id *)error;
+ (id)buildArchiveClasses:(id)classes;
+ (id)manifestDictionaryForApplicationIdentifier:(id)identifier captureRequestIdentifier:(id)requestIdentifier photoDescriptors:(id)descriptors;
+ (id)manifestDictionaryForURL:(id)l err:(int *)err;
+ (id)unarchiveObject:(id)object classes:(id)classes error:(id *)error;
+ (id)unarchiveObjectWithURL:(id)l classes:(id)classes error:(id *)error;
+ (int)validateManifestURLSize:(id)size;
+ (void)initialize;
- (BOOL)hasTag:(id)tag;
- (BOOL)valid:(int *)valid;
- (BWDeferredContainer)init;
- (BWDeferredContainer)initWithApplicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l queuePriority:(unsigned int)priority err:(int *)err;
- (BWDeferredContainer)initWithApplicationID:(id)d resolvedSettings:(id)settings unresolvedSettings:(id)unresolvedSettings processingSettings:(id)processingSettings pipelineParameters:(id)parameters intermediates:(id)intermediates photoDescriptors:(id)descriptors;
- (BWStillImageCaptureSettings)captureSettings;
- (BWStillImageProcessingSettings)processingSettings;
- (FigCaptureStillImageSettings)settings;
- (NSArray)intermediates;
- (NSDictionary)manifest;
- (NSString)applicationID;
- (NSString)captureRequestIdentifier;
- (NSString)prettyDescription;
- (id)description;
- (uint64_t)_containerManifestURL;
- (uint64_t)_containerSessionDataURL;
- (uint64_t)_getUUIDBytes:(int)bytes high:;
- (uint64_t)_intermediateArrayURLForTag:(uint64_t)result;
- (uint64_t)_intermediateBufferURLForTag:(int)tag compressionProfile:;
- (uint64_t)_intermediateFolderURL;
- (uint64_t)_intermediateForTag:(uint64_t)result;
- (uint64_t)_pipelineParametersURL;
- (uint64_t)_stillImageCaptureSettingsURL;
- (uint64_t)_stillImageProcessingSettingsURL;
- (uint64_t)_stillImageSettingsURL;
- (uint64_t)_validate;
- (uint64_t)_writeManifest;
- (unsigned)processingType;
- (void)dealloc;
@end

@implementation BWDeferredContainer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
  }

  if (initialize_sContainerDateFormatterToken != -1)
  {
    +[BWDeferredContainer initialize];
  }
}

uint64_t __33__BWDeferredContainer_initialize__block_invoke()
{
  sContainerDateFormatter = objc_alloc_init(MEMORY[0x1E696AC80]);
  v0 = [objc_msgSend(MEMORY[0x1E695DEE8] calendarWithIdentifier:{*MEMORY[0x1E695D850]), "timeZone"}];
  [sContainerDateFormatter setTimeZone:v0];
  v1 = sContainerDateFormatter;
  v2 = [sContainerDateFormatter formatOptions] | 0x800;

  return [v1 setFormatOptions:v2];
}

- (BWDeferredContainer)init
{
  v4.receiver = self;
  v4.super_class = BWDeferredContainer;
  v2 = [(BWDeferredContainer *)&v4 init];
  if (v2)
  {
    v2->_creationTimeNS = FigGetUpTimeNanoseconds();
    v2->_manifestVersion = 8;
  }

  return v2;
}

- (BWDeferredContainer)initWithApplicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l queuePriority:(unsigned int)priority err:(int *)err
{
  v11 = [(BWDeferredContainer *)self init:d];
  v12 = v11;
  if (v11)
  {
    pthread_rwlock_init(&v11->_lock, 0);
    v12->_baseFolderURL = [l copy];
    v12->_applicationID = [d copy];
    v12->_captureRequestIdentifier = [identifier copy];
  }

  if (err)
  {
    *err = 0;
  }

  return v12;
}

- (BWDeferredContainer)initWithApplicationID:(id)d resolvedSettings:(id)settings unresolvedSettings:(id)unresolvedSettings processingSettings:(id)processingSettings pipelineParameters:(id)parameters intermediates:(id)intermediates photoDescriptors:(id)descriptors
{
  v15 = [(BWDeferredContainer *)self init];
  v16 = v15;
  if (v15)
  {
    pthread_rwlock_init(&v15->_lock, 0);
    v16->_baseFolderURL = 0;
    v16->_applicationID = [d copy];
    v16->_captureRequestIdentifier = 0;
    v16->_stillImageCaptureSettings = settings;
    v16->_stillImageSettings = unresolvedSettings;
    v16->_stillImageProcessingSettings = processingSettings;
    v16->_pipelineParameters = parameters;
    v16->_intermediates = [intermediates copy];
    v16->_photoDescriptors = [descriptors copy];
  }

  return v16;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_lock);

  v3.receiver = self;
  v3.super_class = BWDeferredContainer;
  [(BWDeferredContainer *)&v3 dealloc];
}

- (unsigned)processingType
{
  captureType = [(BWStillImageCaptureSettings *)self->_stillImageCaptureSettings captureType];
  if (captureType > 11)
  {
    if (captureType == 13)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    if (captureType == 12)
    {
      return 2;
    }

    else
    {
      return v5;
    }
  }

  else if (captureType == 1)
  {
    if (([(BWStillImageCaptureSettings *)self->_stillImageCaptureSettings captureFlags]& 0x80) != 0)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return captureType == 10;
  }
}

+ (id)archiveObject:(id)object error:(id *)error
{
  v6 = 0;
  if (object)
  {
    result = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:object requiringSecureCoding:1 error:&v6];
    if (result)
    {
      if (!error)
      {
        return result;
      }

      goto LABEL_4;
    }

    [BWDeferredContainer archiveObject:? error:?];
  }

  else
  {
    [BWDeferredContainer archiveObject:? error:?];
  }

  result = 0;
  if (!error)
  {
    return result;
  }

LABEL_4:
  *error = v6;
  return result;
}

+ (int)validateManifestURLSize:(id)size
{
  if (!size)
  {
    +[BWDeferredContainer validateManifestURLSize:];
    return -16134;
  }

  v8 = 0;
  v3 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v3)
  {
    v4 = v8 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    if ([v8 code] == 260)
    {
      v5 = -16131;
    }

    else
    {
      v5 = -16132;
    }

    if (!v3)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return v5;
    }
  }

  if ([v3 fileSize] > 0x100000)
  {
    return -16132;
  }

  return v5;
}

+ (id)manifestDictionaryForApplicationIdentifier:(id)identifier captureRequestIdentifier:(id)requestIdentifier photoDescriptors:(id)descriptors
{
  if (!identifier)
  {
    +[BWDeferredContainer manifestDictionaryForApplicationIdentifier:captureRequestIdentifier:photoDescriptors:];
    return 0;
  }

  if (!requestIdentifier)
  {
    +[BWDeferredContainer manifestDictionaryForApplicationIdentifier:captureRequestIdentifier:photoDescriptors:];
    return 0;
  }

  if (!descriptors)
  {
    +[BWDeferredContainer manifestDictionaryForApplicationIdentifier:captureRequestIdentifier:photoDescriptors:];
    return 0;
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [descriptors countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v27;
    allocator = *MEMORY[0x1E695E480];
    obj = descriptors;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        if (v9)
        {
          [v9 presentationTimeStamp];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v10 = CMTimeCopyAsDictionary(&time, allocator);
        v11 = [sContainerDateFormatter stringFromDate:{objc_msgSend(v9, "time")}];
        v22[0] = @"PhotoIdentifier";
        v23[0] = [v9 photoIdentifier];
        v23[1] = v11;
        v22[1] = @"Time";
        v22[2] = @"TimeZone";
        v23[2] = [objc_msgSend(v9 "timeZone")];
        v23[3] = v10;
        v22[3] = @"PTS";
        v22[4] = @"ProcessingFlags";
        v23[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v9, "processingFlags")}];
        [v19 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, v22, 5)}];
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v7);
  }

  v20[0] = @"ApplicationIdentifier";
  v20[1] = @"CaptureRequestIdentifier";
  v21[0] = identifier;
  v21[1] = requestIdentifier;
  v20[2] = @"Photos";
  v21[2] = v19;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  return v12;
}

+ (id)buildArchiveClasses:(id)classes
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];

  return [v11 setByAddingObjectsFromSet:classes];
}

- (NSString)applicationID
{
  v2 = self->_applicationID;

  return v2;
}

- (NSString)captureRequestIdentifier
{
  v2 = self->_captureRequestIdentifier;

  return v2;
}

- (NSDictionary)manifest
{
  pthread_rwlock_rdlock(&self->_lock);
  v3 = [BWDeferredContainer manifestDictionaryForApplicationIdentifier:self->_applicationID captureRequestIdentifier:self->_captureRequestIdentifier photoDescriptors:self->_photoDescriptors];
  pthread_rwlock_unlock(&self->_lock);
  return v3;
}

- (BWStillImageCaptureSettings)captureSettings
{
  pthread_rwlock_rdlock(&self->_lock);
  v3 = self->_stillImageCaptureSettings;
  pthread_rwlock_unlock(&self->_lock);
  return v3;
}

- (FigCaptureStillImageSettings)settings
{
  pthread_rwlock_rdlock(&self->_lock);
  v3 = self->_stillImageSettings;
  pthread_rwlock_unlock(&self->_lock);
  return v3;
}

- (BWStillImageProcessingSettings)processingSettings
{
  pthread_rwlock_rdlock(&self->_lock);
  v3 = self->_stillImageProcessingSettings;
  pthread_rwlock_unlock(&self->_lock);
  return v3;
}

- (NSArray)intermediates
{
  pthread_rwlock_rdlock(&self->_lock);
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_intermediates];
  pthread_rwlock_unlock(&self->_lock);

  return v3;
}

- (NSString)prettyDescription
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = [v2 copy];

  return v3;
}

- (BOOL)hasTag:(id)tag
{
  pthread_rwlock_rdlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  intermediates = self->_intermediates;
  v6 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(intermediates);
        }

        if ([tag isEqualToString:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "tag")}])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  pthread_rwlock_unlock(&self->_lock);
  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p> captureRequestIdentifier:%@ version:%ld\n", objc_opt_class(), self, self->_captureRequestIdentifier, self->_manifestVersion];
  pthread_rwlock_rdlock(&self->_lock);
  v4 = objc_autoreleasePoolPush();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  photoDescriptors = self->_photoDescriptors;
  v6 = [(NSMutableArray *)photoDescriptors countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(photoDescriptors);
        }

        [v3 appendFormat:@"%@\n", *(*(&v22 + 1) + 8 * i)];
      }

      v7 = [(NSMutableArray *)photoDescriptors countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  intermediates = self->_intermediates;
  v11 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(intermediates);
        }

        [v3 appendFormat:@"%@\n", *(*(&v17 + 1) + 8 * j)];
      }

      v12 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v4);
  pthread_rwlock_unlock(&self->_lock);
  return [v3 copy];
}

uint64_t __43__BWDeferredContainer__intermediateForTag___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 tag];

  return [v2 isEqualToString:v3];
}

+ (BOOL)archiveObjectWithURL:(id)l object:(id)object error:(id *)error
{
  v11 = 0;
  if (l)
  {
    v7 = [self archiveObject:object error:&v11];
    if (v7)
    {
      LOBYTE(v7) = [v7 writeToURL:l options:1 error:&v11];
    }

    if (error)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v9 = OUTLINED_FUNCTION_70_3(MEMORY[0x1E696ABC0], v8, *MEMORY[0x1E696A768]);
    LOBYTE(v7) = 0;
    v11 = v9;
    if (error)
    {
LABEL_5:
      *error = v11;
    }
  }

  return v7;
}

+ (id)unarchiveObject:(id)object classes:(id)classes error:(id *)error
{
  objectCopy = object;
  v11 = 0;
  if (object)
  {
    objectCopy = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:object error:&v11];
    if (objectCopy)
    {
      +[FigCaptureCIFilterUnarchiverDelegate sharedInstance];
      [OUTLINED_FUNCTION_8() setDelegate:?];
      v8 = [objectCopy decodeTopLevelObjectOfClasses:classes forKey:*MEMORY[0x1E696A508] error:&v11];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v8 = 0;
    v11 = OUTLINED_FUNCTION_70_3(MEMORY[0x1E696ABC0], v10, *MEMORY[0x1E696A768]);
  }

  if (error)
  {
    *error = v11;
  }

  return v8;
}

+ (id)unarchiveObjectWithURL:(id)l classes:(id)classes error:(id *)error
{
  v9 = 0;
  if (!l)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v8 = OUTLINED_FUNCTION_70_3(MEMORY[0x1E696ABC0], v7, *MEMORY[0x1E696A768]);
    result = 0;
    v9 = v8;
    if (!error)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:0 error:&v9];
  if (result)
  {
    result = [OUTLINED_FUNCTION_8() unarchiveObject:? classes:? error:?];
  }

  if (error)
  {
LABEL_5:
    *error = v9;
  }

  return result;
}

+ (id)manifestDictionaryForURL:(id)l err:(int *)err
{
  OUTLINED_FUNCTION_58_2();
  v43 = v4;
  v44 = v7;
  v9 = v8;
  v10 = v6;
  v42[0] = 0;
  if (!v6)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v18 = 0;
    code = -16134;
    goto LABEL_10;
  }

  v11 = v5;
  v12 = MEMORY[0x1E696AEC0];
  [v6 path];
  [v12 stringWithFormat:@"%@/%@"];
  v13 = [OUTLINED_FUNCTION_4() fileURLWithPath:?];
  if (!v13)
  {
    OUTLINED_FUNCTION_62();
    v27 = OUTLINED_FUNCTION_26_16();
    OUTLINED_FUNCTION_71_4(v27);
    OUTLINED_FUNCTION_115_0();
    if (v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = v41;
    }

    if (v30)
    {
      [v10 path];
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    goto LABEL_38;
  }

  v14 = v13;
  v15 = [(BWDeferredContainer *)BWDeferredProcessingContainer validateManifestURLSize:v13];
  if (v15)
  {
LABEL_25:
    code = v15;
    v18 = 0;
    goto LABEL_10;
  }

  v16 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v14];
  if (!v16)
  {
    OUTLINED_FUNCTION_62();
    v31 = OUTLINED_FUNCTION_26_16();
    os_log_type_enabled(v31, v40);
    OUTLINED_FUNCTION_39_7();
    if (v29)
    {
      v33 = v32;
    }

    else
    {
      v33 = v41;
    }

    if (v33)
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

LABEL_38:
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v18 = 0;
    goto LABEL_41;
  }

  v17 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v16 error:v42];
  if (!v17)
  {
    OUTLINED_FUNCTION_2_6();
    FigDebugAssert3();
    [v42[0] code];
    v15 = FigSignalErrorAtGM();
    goto LABEL_25;
  }

  v18 = v17;
  v19 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"CaptureRequestIdentifier" error:v42];
  if (!v19)
  {
    code = [v42[0] code];
    OUTLINED_FUNCTION_62();
    v34 = OUTLINED_FUNCTION_26_16();
    if (OUTLINED_FUNCTION_71_4(v34))
    {
      v35 = v41;
    }

    else
    {
      v35 = v41 & 0xFFFFFFFE;
    }

    if (v35)
    {
      [v14 path];
      [v42[0] description];
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

LABEL_39:
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_10;
  }

  v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v19];
  if (v20)
  {
    v21 = v20;
    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    objc_opt_class();
    v24 = [v18 decodeTopLevelObjectOfClasses:objc_msgSend(v22 forKey:"setWithObjects:" error:{v23), @"PhotoDescriptors", v42}];
    if (v24)
    {
      [v11 manifestDictionaryForApplicationIdentifier:objc_msgSend(objc_msgSend(v10 captureRequestIdentifier:"URLByDeletingLastPathComponent") photoDescriptors:{"lastPathComponent"), objc_msgSend(v21, "UUIDString"), v24}];
      code = 0;
      goto LABEL_10;
    }

    code = [v42[0] code];
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_56_12();
    v39 = OUTLINED_FUNCTION_26_16();
    OUTLINED_FUNCTION_71_4(v39);
    OUTLINED_FUNCTION_37_11();
    if (v23)
    {
      [v42[0] description];
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_56_12();
  v36 = OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_71_4(v36);
  OUTLINED_FUNCTION_115_0();
  if (v29)
  {
    v38 = v37;
  }

  else
  {
    v38 = v41;
  }

  if (v38)
  {
    [v14 path];
    OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_41:
  code = -16132;
LABEL_10:

  if (v9)
  {
    *v9 = code;
  }

  OUTLINED_FUNCTION_56();
  return result;
}

- (uint64_t)_validate
{
  if (result)
  {
    v2 = result;
    if (*(result + 240) > 6)
    {
      if (!*(result + 232))
      {
        v7 = OUTLINED_FUNCTION_33_15();
        OUTLINED_FUNCTION_8_5(v7);
        OUTLINED_FUNCTION_39_7();
        if (v5)
        {
          v9 = v8;
        }

        else
        {
          v9 = v1;
        }

        if (v9)
        {
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        goto LABEL_30;
      }

      if (*(result + 248))
      {
        if (*(result + 256))
        {
          if ([*(result + 280) count])
          {
            if ([*(v2 + 288) count])
            {
              return 0;
            }

            v16 = OUTLINED_FUNCTION_8_42();
            v17 = OUTLINED_FUNCTION_19_23(v16);
            if (OUTLINED_FUNCTION_5_2(v17))
            {
              goto LABEL_27;
            }

LABEL_30:
            OUTLINED_FUNCTION_1_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            return 4294951164;
          }

          v14 = OUTLINED_FUNCTION_8_42();
          v15 = OUTLINED_FUNCTION_19_23(v14);
          if (!OUTLINED_FUNCTION_5_2(v15))
          {
            goto LABEL_30;
          }
        }

        else
        {
          v12 = OUTLINED_FUNCTION_8_42();
          v13 = OUTLINED_FUNCTION_19_23(v12);
          if (!OUTLINED_FUNCTION_5_2(v13))
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        v10 = OUTLINED_FUNCTION_8_42();
        v11 = OUTLINED_FUNCTION_19_23(v10);
        if (!OUTLINED_FUNCTION_5_2(v11))
        {
          goto LABEL_30;
        }
      }

LABEL_27:
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
      goto LABEL_30;
    }

    v3 = OUTLINED_FUNCTION_33_15();
    OUTLINED_FUNCTION_8_5(v3);
    OUTLINED_FUNCTION_39_7();
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = v1;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294951166;
  }

  return result;
}

- (BOOL)valid:(int *)valid
{
  pthread_rwlock_rdlock(&self->_lock);
  _validate = [(BWDeferredContainer *)self _validate];
  pthread_rwlock_unlock(&self->_lock);
  if (valid)
  {
    *valid = _validate;
  }

  return _validate == 0;
}

- (uint64_t)_getUUIDBytes:(int)bytes high:
{
  if (!self)
  {
    return 0;
  }

  v9[0] = 0;
  v9[1] = 0;
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a2];
  v5 = v4;
  if (v4)
  {
    [v4 getUUIDBytes:v9];
    v6 = 1;
    if (!bytes)
    {
      v6 = 0;
    }

    v7 = v9[v6];
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_intermediateForTag:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 280);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__BWDeferredContainer__intermediateForTag___block_invoke;
    v6[3] = &unk_1E7999888;
    v6[4] = a2;
    [v3 indexOfObjectPassingTest:v6];
    OUTLINED_FUNCTION_79();
    if (v5)
    {
      return 0;
    }

    else
    {
      return [*(v2 + 280) objectAtIndexedSubscript:v4];
    }
  }

  return result;
}

- (uint64_t)_writeManifest
{
  if (!self)
  {
    return 0;
  }

  v7 = 0;
  v2 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  if (v2)
  {
    pthread_rwlock_rdlock((self + 16));
    [v2 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLong:", *(self + 240)), @"Version"}];
    [v2 encodeObject:*(self + 232) forKey:@"CaptureRequestIdentifier"];
    [v2 encodeObject:*(self + 280) forKey:@"Intermediates"];
    [v2 encodeObject:*(self + 288) forKey:@"PhotoDescriptors"];
    pthread_rwlock_unlock((self + 16));
    [v2 finishEncoding];
    encodedData = [v2 encodedData];
    v4 = MEMORY[0x1E695DFF8];
    v8[0] = [*(self + 216) path];
    v8[1] = @"manifest.plist";
    if (([encodedData writeToURL:objc_msgSend(v4 options:"fileURLWithPathComponents:" error:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 2)), 1, &v7}] & 1) == 0)
    {
      OUTLINED_FUNCTION_2_6();
      FigDebugAssert3();
      [v7 code];
      FigSignalErrorAtGM();
    }

    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v5 = 4294951163;
  }

  return v5;
}

- (uint64_t)_containerManifestURL
{
  if (result)
  {
    path = [*(result + 216) path];
    OUTLINED_FUNCTION_43_14(MEMORY[0x1E695DEC8], v2, path, @"manifest.plist");
    return [OUTLINED_FUNCTION_17() fileURLWithPathComponents:?];
  }

  return result;
}

- (uint64_t)_containerSessionDataURL
{
  if (result)
  {
    path = [*(result + 216) path];
    OUTLINED_FUNCTION_43_14(MEMORY[0x1E695DEC8], v2, path, @"session.plist");
    return [OUTLINED_FUNCTION_17() fileURLWithPathComponents:?];
  }

  return result;
}

- (uint64_t)_pipelineParametersURL
{
  if (result)
  {
    path = [*(result + 216) path];
    OUTLINED_FUNCTION_43_14(MEMORY[0x1E695DEC8], v2, path, @"BWDeferredPipelineParameters.plist");
    return [OUTLINED_FUNCTION_17() fileURLWithPathComponents:?];
  }

  return result;
}

- (uint64_t)_stillImageCaptureSettingsURL
{
  if (result)
  {
    path = [*(result + 216) path];
    OUTLINED_FUNCTION_43_14(MEMORY[0x1E695DEC8], v2, path, @"BWStillImageCaptureSettings.plist");
    return [OUTLINED_FUNCTION_17() fileURLWithPathComponents:?];
  }

  return result;
}

- (uint64_t)_stillImageSettingsURL
{
  if (result)
  {
    path = [*(result + 216) path];
    OUTLINED_FUNCTION_43_14(MEMORY[0x1E695DEC8], v2, path, @"FigCaptureStillImageSettings.plist");
    return [OUTLINED_FUNCTION_17() fileURLWithPathComponents:?];
  }

  return result;
}

- (uint64_t)_stillImageProcessingSettingsURL
{
  if (result)
  {
    path = [*(result + 216) path];
    OUTLINED_FUNCTION_43_14(MEMORY[0x1E695DEC8], v2, path, @"BWStillImageProcessingSettings.plist");
    return [OUTLINED_FUNCTION_17() fileURLWithPathComponents:?];
  }

  return result;
}

- (uint64_t)_intermediateFolderURL
{
  if (result)
  {
    path = [*(result + 216) path];
    OUTLINED_FUNCTION_43_14(MEMORY[0x1E695DEC8], v2, path, @"Intermediates");
    return [OUTLINED_FUNCTION_17() fileURLWithPathComponents:?];
  }

  return result;
}

- (uint64_t)_intermediateArrayURLForTag:(uint64_t)result
{
  if (result)
  {
    [*(result + 216) path];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a2, @"plist"];
    OUTLINED_FUNCTION_72_4(MEMORY[0x1E695DEC8], v3, v4, v5, v6);
    return [OUTLINED_FUNCTION_4() fileURLWithPathComponents:?];
  }

  return result;
}

- (uint64_t)_intermediateBufferURLForTag:(int)tag compressionProfile:
{
  if (result)
  {
    v3 = result;
    if (tag == 1)
    {
      v4 = @"heif";
    }

    else
    {
      if (tag != 2)
      {
        return 0;
      }

      v4 = @"jpeg";
    }

    result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a2, v4];
    if (result)
    {
      [*(v3 + 216) path];
      OUTLINED_FUNCTION_72_4(MEMORY[0x1E695DEC8], v5, v6, v7, v8);
      return [OUTLINED_FUNCTION_8() fileURLWithPathComponents:?];
    }
  }

  return result;
}

+ (uint64_t)archiveObject:(id *)a1 error:.cold.1(id *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  [*a1 code];
  return FigSignalErrorAtGM();
}

+ (uint64_t)archiveObject:(uint64_t *)a1 error:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  result = OUTLINED_FUNCTION_70_3(MEMORY[0x1E696ABC0], v2, *MEMORY[0x1E696A768]);
  *a1 = result;
  return result;
}

@end