@interface BWDeferredCaptureContainer
+ (id)captureRequestIdentifierForManifest:(id)a3;
+ (id)timeForManifest:(id)a3 index:(unint64_t)a4;
- (BWDeferredCaptureContainer)initWithApplicationID:(id)a3 captureRequestIdentifier:(id)a4 baseFolderURL:(id)a5 flushBuffersUponCommit:(BOOL)a6 err:(int *)a7;
- (id)copyXPCEncoding:(int *)a3;
- (int)abort;
- (int)commit;
- (int)commitArray:(id)a3 tag:(id)a4;
- (int)commitBuffer:(__CVBuffer *)a3 tag:(id)a4 bufferType:(unint64_t)a5 captureFrameFlags:(unint64_t)a6 compressionProfile:(int)a7 metadataTag:(id)a8 rawThumbnailsBufferTag:(id)a9 rawThumbnailsMetadataTag:(id)a10 mainRawThumbnailBufferTag:(id)a11 mainRawThumbnailMetadataTag:(id)a12 sifrRawThumbnailBufferTag:(id)a13 sifrRawThumbnailMetadataTag:(id)a14 portType:(id)a15;
- (int)commitDictionary:(id)a3 tag:(id)a4;
- (int)commitInference:(id)a3 tag:(id)a4 inferenceAttachmentKey:(id)a5 portType:(id)a6;
- (int)commitInferenceBuffer:(__CVBuffer *)a3 tag:(id)a4 metadataTag:(id)a5 inferenceAttachedMediaKey:(id)a6 compressionProfile:(int)a7 portType:(id)a8;
- (int)commitMetadata:(id)a3 tag:(id)a4 bufferTag:(id)a5;
- (int)commitPhotoDescriptor:(id)a3;
- (int)commitStillImageSettings:(id)a3;
- (int)flush;
- (int)preflush;
- (int)waitForFlushWithTimeoutInSeconds:(int)a3;
- (uint64_t)_addIntermediateObjectToXPCDictionary:(void *)a3 xpcDictionary:;
- (uint64_t)_createFolders;
- (void)dealloc;
@end

@implementation BWDeferredCaptureContainer

+ (id)captureRequestIdentifierForManifest:(id)a3
{
  if (a3)
  {

    return [a3 objectForKeyedSubscript:@"CaptureRequestIdentifier"];
  }

  else
  {
    +[BWDeferredCaptureContainer captureRequestIdentifierForManifest:];
    return 0;
  }
}

- (BWDeferredCaptureContainer)initWithApplicationID:(id)a3 captureRequestIdentifier:(id)a4 baseFolderURL:(id)a5 flushBuffersUponCommit:(BOOL)a6 err:(int *)a7
{
  v13 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [BWDeferredCaptureContainer initWithApplicationID:a4 captureRequestIdentifier:? baseFolderURL:? flushBuffersUponCommit:? err:?];
  }

  v17 = 0;
  v16.receiver = self;
  v16.super_class = BWDeferredCaptureContainer;
  v14 = [(BWDeferredContainer *)&v16 initWithApplicationID:a3 captureRequestIdentifier:a4 baseFolderURL:a5 queuePriority:14 err:&v17];
  if (v14)
  {
    [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker openTransaction:"openTransaction:name:" name:3, a4];
    v14->_flushQueue = FigDispatchQueueCreateWithPriority();
    v14->_flushGroup = dispatch_group_create();
    v14->_flushBuffersUponCommit = a6;
    v14->_committed = 0;
    v14->_preflushed = 0;
    v14->_cacheExpiryTime = -1;
    v14->super._intermediates = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14->super._photoDescriptors = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14->super._pipelineParameters = objc_alloc_init(BWDeferredPipelineParameters);
  }

  if (a7)
  {
    *a7 = v17;
  }

  if (*v13 == 1)
  {
    kdebug_trace();
  }

  return v14;
}

- (void)dealloc
{
  [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker closeTransaction:"closeTransaction:", 3];

  dispatch_release(self->_flushQueue);
  dispatch_release(self->_flushGroup);
  v3.receiver = self;
  v3.super_class = BWDeferredCaptureContainer;
  [(BWDeferredContainer *)&v3 dealloc];
}

- (id)copyXPCEncoding:(int *)a3
{
  pthread_rwlock_rdlock(&self->super._lock);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    [BWDeferredCaptureContainer copyXPCEncoding:];
LABEL_24:
    v9 = 0;
LABEL_27:
    pthread_rwlock_unlock(&self->super._lock);

    v20 = -16133;
LABEL_17:
    xpc_release(v5);
    v5 = 0;
    goto LABEL_18;
  }

  v6 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  if (!v6)
  {
    [BWDeferredCaptureContainer copyXPCEncoding:];
    goto LABEL_24;
  }

  v7 = v6;
  [v6 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLong:", self->super._manifestVersion), @"Version"}];
  [v7 encodeObject:self->super._applicationID forKey:@"ApplicationID"];
  [v7 encodeObject:self->_commitTime forKey:@"CommitTime"];
  [v7 encodeObject:self->super._baseFolderURL forKey:@"BaseFolder"];
  [v7 encodeObject:self->super._captureRequestIdentifier forKey:@"CaptureRequestIdentifier"];
  [v7 encodeObject:self->super._stillImageCaptureSettings forKey:@"StillImageCaptureSettings"];
  [v7 encodeObject:self->super._stillImageSettings forKey:@"StillImageSettings"];
  stillImageProcessingSettings = self->super._stillImageProcessingSettings;
  if (stillImageProcessingSettings)
  {
    [v7 encodeObject:stillImageProcessingSettings forKey:@"StillImageProcessingSettings"];
  }

  [v7 encodeObject:self->super._intermediates forKey:@"Intermediates"];
  [v7 encodeObject:self->super._photoDescriptors forKey:@"PhotoDescriptors"];
  [v7 finishEncoding];
  v9 = [objc_msgSend(v7 "encodedData")];

  v10 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v10)
  {
    [BWDeferredCaptureContainer copyXPCEncoding:];
    goto LABEL_27;
  }

  v11 = v10;
  xpc_dictionary_set_value(v5, "Container", v10);
  xpc_release(v11);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (!v12)
  {
    [BWDeferredCaptureContainer copyXPCEncoding:];
    goto LABEL_27;
  }

  v13 = v12;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  intermediates = self->super._intermediates;
  v15 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(intermediates);
        }

        v19 = [(BWDeferredCaptureContainer *)self _addIntermediateObjectToXPCDictionary:v13 xpcDictionary:?];
        if (v19)
        {
          v20 = v19;
          [BWDeferredCaptureContainer copyXPCEncoding:];
          goto LABEL_16;
        }
      }

      v16 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  xpc_dictionary_set_value(v5, "IntermediateObjects", v13);
  v20 = 0;
LABEL_16:
  pthread_rwlock_unlock(&self->super._lock);
  xpc_release(v13);

  if (v20)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (a3)
  {
    *a3 = v20;
  }

  return v5;
}

- (int)commitStillImageSettings:(id)a3
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (![a3 captureSettings])
  {
    [BWDeferredCaptureContainer commitStillImageSettings:];
LABEL_14:
    v6 = -16134;
    goto LABEL_8;
  }

  if (![a3 requestedSettings])
  {
    [BWDeferredCaptureContainer commitStillImageSettings:];
    goto LABEL_14;
  }

  if (![a3 processingSettings])
  {
    [BWDeferredCaptureContainer commitStillImageSettings:];
    goto LABEL_14;
  }

  if (self->_committed)
  {
    [BWDeferredCaptureContainer commitStillImageSettings:];
    v6 = -16135;
  }

  else
  {
    self->super._stillImageCaptureSettings = [a3 captureSettings];
    self->super._stillImageSettings = [objc_msgSend(a3 "requestedSettings")];
    self->super._stillImageProcessingSettings = [a3 processingSettings];
    pthread_rwlock_unlock(&self->super._lock);
    v6 = 0;
  }

LABEL_8:
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v6;
}

uint64_t __52__BWDeferredCaptureContainer_commitPhotoDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 photoIdentifier];
  v4 = [*(a1 + 32) photoIdentifier];

  return [v3 isEqualToString:v4];
}

- (int)commitInference:(id)a3 tag:(id)a4 inferenceAttachmentKey:(id)a5 portType:(id)a6
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  v11 = 0;
  v12 = -16134;
  if (a3 && a4 && a5)
  {
    if (self->_committed)
    {
      v11 = 0;
    }

    else
    {
      if ([a3 conformsToProtocol:&unk_1F224F640])
      {
        v13 = [a3 copy];
      }

      else
      {
        v13 = a3;
      }

      v11 = v13;
      if (![(BWDeferredContainer *)self _intermediateForTag:a4])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [[BWDeferredInferenceArrayIntermediate alloc] initWithArray:v11 tag:a4 inferenceAttachmentKey:a5 portType:a6 URL:[(BWDeferredContainer *)self _intermediateArrayURLForTag:a4]];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Committing a deferred inference for key '%@' of type %@ must be implemented.", a5, objc_opt_class()), 0}];
            objc_exception_throw(v17);
          }

          v14 = [[BWDeferredInferenceDictionaryIntermediate alloc] initWithDictionary:v11 tag:a4 inferenceAttachmentKey:a5 portType:a6 URL:[(BWDeferredContainer *)self _intermediateArrayURLForTag:a4]];
        }

        v15 = v14;
        if (v14)
        {
          [(BWDeferredIntermediate *)v14 setSettingsID:[(FigCaptureStillImageSettings *)self->super._stillImageSettings settingsID]];
          [(NSMutableArray *)self->super._intermediates addObject:v15];
        }

        v12 = 0;
        goto LABEL_18;
      }
    }

    v12 = -16135;
  }

LABEL_18:
  [BWDeferredCaptureContainer commitInference:v12 tag:&self->super._lock inferenceAttachmentKey:v11 portType:?];
  return v12;
}

- (int)commit
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (self->_committed)
  {
    [BWDeferredCaptureContainer commit];
    v4 = -16135;
  }

  else
  {
    self->_committed = 1;
    self->_cacheExpiryTime = dispatch_time(0, 0);
    self->_commitTime = [MEMORY[0x1E695DF00] date];
    v4 = 0;
    self->_commitDurationNS = FigGetUpTimeNanoseconds() - self->super._creationTimeNS;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v4;
}

- (int)abort
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (self->_committed)
  {
    [BWDeferredCaptureContainer abort];
    v6 = -16135;
  }

  else
  {
    self->_committed = 1;
    flushGroup = self->_flushGroup;
    v5 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(flushGroup, v5))
    {
      [BWDeferredCaptureContainer abort];
      v6 = -16138;
    }

    else
    {
      v6 = 0;
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v6;
}

- (int)preflush
{
  if (self->_committed)
  {
    if (self->_preflushed)
    {
      [BWDeferredCaptureContainer preflush];
      v3 = -16135;
    }

    else
    {
      pthread_rwlock_wrlock(&self->super._lock);
      self->_preflushed = 1;
      dispatch_group_enter(self->_flushGroup);
      v3 = 0;
    }
  }

  else
  {
    [BWDeferredCaptureContainer preflush];
    v3 = -16131;
  }

  pthread_rwlock_unlock(&self->super._lock);
  return v3;
}

- (int)flush
{
  v42[0] = 0;
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_rdlock(&self->super._lock);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (!self->_committed || !self->_preflushed)
  {
    v17 = -16131;
LABEL_27:
    pthread_rwlock_unlock(&self->super._lock);
LABEL_28:
    [+[BWDeferredCaptureContainerManager deleteContainerForApplicationID:v25], "deleteContainerForApplicationID:captureRequestIdentifier:", [(BWStillImageCaptureSettings *)self->super._stillImageCaptureSettings applicationID], self->super._captureRequestIdentifier];
    goto LABEL_29;
  }

  v5 = UpTimeNanoseconds;
  if (dword_1EB58E440)
  {
    v41 = 0;
    v40 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = [(BWDeferredCaptureContainer *)self _createFolders];
  if (v7)
  {
    v17 = v7;
    [BWDeferredCaptureContainer flush];
    goto LABEL_27;
  }

  v8 = [(BWDeferredContainer *)self _writeManifest];
  if (v8)
  {
    v17 = v8;
    [BWDeferredCaptureContainer flush];
    goto LABEL_27;
  }

  if ([BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)self _pipelineParametersURL] object:self->super._pipelineParameters error:v42])
  {
    if ([BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)self _stillImageCaptureSettingsURL] object:self->super._stillImageCaptureSettings error:v42]&& [BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)self _stillImageSettingsURL] object:self->super._stillImageSettings error:v42]&& [BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)self _stillImageProcessingSettingsURL] object:self->super._stillImageProcessingSettings error:v42])
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      intermediates = self->super._intermediates;
      v10 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(intermediates);
            }

            v14 = [*(*(&v28 + 1) + 8 * i) flush];
            if (v14)
            {
              v17 = v14;
              [BWDeferredCaptureContainer flush];
              goto LABEL_27;
            }
          }

          v11 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v28 objects:v27 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      dispatch_group_leave(self->_flushGroup);
      flushGroup = self->_flushGroup;
      v16 = dispatch_time(0, 10000000000);
      if (dispatch_group_wait(flushGroup, v16))
      {
        [BWDeferredCaptureContainer flush];
        v17 = -16138;
      }

      else
      {
        v17 = 0;
      }

      self->_flushDurationNS = FigGetUpTimeNanoseconds() - v5;
    }

    else
    {
      v17 = [v42[0] code];
    }
  }

  else
  {
    v17 = [v42[0] code];
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (v17)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (dword_1EB58E440)
  {
    v41 = 0;
    v40 = OS_LOG_TYPE_DEFAULT;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = v41;
    if (os_log_type_enabled(v18, v40))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v21 = [(BWStillImageCaptureSettings *)self->super._stillImageCaptureSettings settingsID];
      v22 = [(BWStillImageCaptureSettings *)self->super._stillImageCaptureSettings applicationID];
      captureRequestIdentifier = self->super._captureRequestIdentifier;
      v32 = 136315907;
      v33 = "[BWDeferredCaptureContainer flush]";
      v34 = 2048;
      v35 = v21;
      v36 = 2113;
      v37 = v22;
      v38 = 2113;
      v39 = captureRequestIdentifier;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v17;
}

- (int)waitForFlushWithTimeoutInSeconds:(int)a3
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  flushGroup = self->_flushGroup;
  v7 = dispatch_time(0, 1000000000 * a3);
  if (dispatch_group_wait(flushGroup, v7))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = -16138;
  }

  else
  {
    v8 = 0;
  }

  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v8;
}

+ (id)timeForManifest:(id)a3 index:(unint64_t)a4
{
  if (!a3 || (v5 = [a3 objectForKeyedSubscript:@"Photos"]) == 0 || (v6 = objc_msgSend(v5, "objectAtIndexedSubscript:", a4)) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  v7 = v6;
  if (![v6 objectForKeyedSubscript:@"Time"])
  {
    return 0;
  }

  [v7 objectForKeyedSubscript:@"Time"];
  v8 = OUTLINED_FUNCTION_17();

  return [v8 dateFromString:?];
}

- (uint64_t)_addIntermediateObjectToXPCDictionary:(void *)a3 xpcDictionary:
{
  if (result)
  {
    v7 = 0;
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      xpc_dictionary_set_value(a3, [objc_msgSend(a2 "tag")], v5);
      v6 = [a2 archive:&v7];
      if (v6)
      {
        xpc_dictionary_set_value(v5, "Object", v6);
LABEL_5:
        xpc_release(v5);
        return v7;
      }

      OUTLINED_FUNCTION_0();
    }

    else
    {
      OUTLINED_FUNCTION_0();
    }

    FigDebugAssert3();
    v7 = -16133;
    goto LABEL_5;
  }

  return result;
}

- (uint64_t)_createFolders
{
  if (result)
  {
    v1 = result;
    if (*(result + 321))
    {
      return 0;
    }

    [MEMORY[0x1E696AC08] defaultManager];
    v2 = [*(v1 + 216) path];
    if (OUTLINED_FUNCTION_63_11(v2, v3, v2, v4, v5, v6))
    {
      v31[0] = [*(v1 + 216) path];
      v31[1] = @"Intermediates";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      v7 = [objc_msgSend(OUTLINED_FUNCTION_7() "fileURLWithPathComponents:"path"")];
      if (OUTLINED_FUNCTION_63_11(v7, v8, v7, v9, v10, v11))
      {
        result = 0;
        *(v1 + 321) = 1;
        return result;
      }

      OUTLINED_FUNCTION_4_64();
      v20 = FigDebugAssert3();
      OUTLINED_FUNCTION_44_12(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, 0);
    }

    else
    {
      OUTLINED_FUNCTION_4_64();
      v12 = FigDebugAssert3();
      OUTLINED_FUNCTION_44_12(v12, v13, v14, v15, v16, v17, v18, v19, v28, v29, v30, 0);
    }

    return FigSignalErrorAtGM();
  }

  return result;
}

- (int)commitPhotoDescriptor:(id)a3
{
  v6 = [a3 photoIdentifier];
  OUTLINED_FUNCTION_57_10();
  if (v7)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (!v6)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    v18[5] = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_17;
  }

  [a3 presentationTimeStamp];
  if ((v19 & 0x100000000) == 0)
  {
LABEL_17:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v15 = -16134;
    goto LABEL_11;
  }

  if (self->_committed)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  else
  {
    photoDescriptors = self->super._photoDescriptors;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__BWDeferredCaptureContainer_commitPhotoDescriptor___block_invoke;
    v18[3] = &unk_1E79998B0;
    v18[4] = a3;
    [(NSMutableArray *)photoDescriptors indexOfObjectPassingTest:v18];
    OUTLINED_FUNCTION_79();
    if (v7)
    {
      v9 = [a3 processingFlags] & 0xFFFFCFFF;
      v10 = [BWPhotoDescriptor alloc];
      v11 = [OUTLINED_FUNCTION_18_0() photoIdentifier];
      v12 = [a3 time];
      v13 = [a3 timeZone];
      [a3 presentationTimeStamp];
      v14 = [v3 initWithPhotoIdentifier:v11 processingFlags:v9 | 0x2000u time:v12 timeZone:v13 presentationTimeStamp:v17];
      [(NSMutableArray *)self->super._photoDescriptors addObject:v14];

      v15 = 0;
      goto LABEL_11;
    }
  }

  v15 = -16135;
LABEL_11:
  pthread_rwlock_unlock(&self->super._lock);
  OUTLINED_FUNCTION_57_10();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v15;
}

- (int)commitArray:(id)a3 tag:(id)a4
{
  OUTLINED_FUNCTION_39_14();
  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock((v4 + 16));
  v8 = 0;
  v9 = -16134;
  if (v6 && v5)
  {
    if (*(v4 + 322))
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 copy];
      v10 = OUTLINED_FUNCTION_70();
      if (![(BWDeferredContainer *)v10 _intermediateForTag:v11])
      {
        v12 = [BWDeferredArrayIntermediate alloc];
        v13 = OUTLINED_FUNCTION_70();
        [(BWDeferredContainer *)v13 _intermediateArrayURLForTag:v14];
        [OUTLINED_FUNCTION_49_9() initWithArray:? tag:? URL:?];
        OUTLINED_FUNCTION_69_4();
        [OUTLINED_FUNCTION_8() setSettingsID:?];
        OUTLINED_FUNCTION_73_5();

        v9 = 0;
        goto LABEL_9;
      }
    }

    v9 = -16135;
  }

LABEL_9:
  pthread_rwlock_unlock((v4 + 16));

  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v9;
}

- (int)commitBuffer:(__CVBuffer *)a3 tag:(id)a4 bufferType:(unint64_t)a5 captureFrameFlags:(unint64_t)a6 compressionProfile:(int)a7 metadataTag:(id)a8 rawThumbnailsBufferTag:(id)a9 rawThumbnailsMetadataTag:(id)a10 mainRawThumbnailBufferTag:(id)a11 mainRawThumbnailMetadataTag:(id)a12 sifrRawThumbnailBufferTag:(id)a13 sifrRawThumbnailMetadataTag:(id)a14 portType:(id)a15
{
  v22 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  v23 = -16134;
  if (a3 && a4)
  {
    if (self->_committed)
    {
      v23 = -16135;
    }

    else
    {
      LODWORD(v27) = a7;
      [[BWDeferredBufferIntermediate alloc] initWithBuffer:a3 tag:a4 bufferType:a5 captureFrameFlags:a6 metadataTag:a8 rawThumbnailsBufferTag:a9 rawThumbnailsMetadataTag:a10 mainRawThumbnailBufferTag:a11 mainRawThumbnailMetadataTag:a12 sifrRawThumbnailBufferTag:a13 sifrRawThumbnailMetadataTag:a14 portType:a15 compressionProfile:v27 URL:[(BWDeferredContainer *)self _intermediateBufferURLForTag:a4 compressionProfile:a7]];
      OUTLINED_FUNCTION_69_4();
      [OUTLINED_FUNCTION_8() setSettingsID:?];
      OUTLINED_FUNCTION_73_5();

      if (self->_flushBuffersUponCommit)
      {
        v23 = [(BWDeferredCaptureContainer *)self _createFolders];
        if (v23)
        {
          FigDebugAssert3();
        }

        else
        {
          flushGroup = self->_flushGroup;
          flushQueue = self->_flushQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __272__BWDeferredCaptureContainer_commitBuffer_tag_bufferType_captureFrameFlags_compressionProfile_metadataTag_rawThumbnailsBufferTag_rawThumbnailsMetadataTag_mainRawThumbnailBufferTag_mainRawThumbnailMetadataTag_sifrRawThumbnailBufferTag_sifrRawThumbnailMetadataTag_portType___block_invoke;
          block[3] = &unk_1E798F870;
          block[4] = a14;
          dispatch_group_async(flushGroup, flushQueue, block);
        }
      }

      else
      {
        v23 = 0;
      }

      v22 = MEMORY[0x1E695FF58];
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v22 == 1)
  {
    OUTLINED_FUNCTION_58_12(0x6CDu);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v23;
}

- (int)commitMetadata:(id)a3 tag:(id)a4 bufferTag:(id)a5
{
  OUTLINED_FUNCTION_57_10();
  if (v9)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  v10 = 0;
  v11 = -16134;
  if (a3 && a4)
  {
    if (self->_committed)
    {
      v10 = 0;
    }

    else
    {
      v10 = [a3 copy];
      if (![(BWDeferredContainer *)self _intermediateForTag:a4])
      {
        [[BWDeferredMetadataIntermediate alloc] initWithMetadata:v10 tag:a4 bufferTag:a5 URL:[(BWDeferredContainer *)self _intermediateArrayURLForTag:a4]];
        OUTLINED_FUNCTION_69_4();
        [OUTLINED_FUNCTION_8() setSettingsID:?];
        OUTLINED_FUNCTION_73_5();

        v11 = 0;
        goto LABEL_9;
      }
    }

    v11 = -16135;
  }

LABEL_9:
  pthread_rwlock_unlock(&self->super._lock);

  OUTLINED_FUNCTION_57_10();
  if (v9)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v11;
}

- (int)commitInferenceBuffer:(__CVBuffer *)a3 tag:(id)a4 metadataTag:(id)a5 inferenceAttachedMediaKey:(id)a6 compressionProfile:(int)a7 portType:(id)a8
{
  v9 = *&a7;
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  v16 = -16134;
  if (a3 && a4 && a6)
  {
    if (self->_committed)
    {
      v16 = -16135;
    }

    else
    {
      v17 = [[BWDeferredInferenceBufferIntermediate alloc] initWithBuffer:a3 tag:a4 metadataTag:a5 inferenceAttachedMediaKey:a6 portType:a8 compressionProfile:v9 URL:[(BWDeferredContainer *)self _intermediateBufferURLForTag:a4 compressionProfile:v9]];
      [(FigCaptureStillImageSettings *)self->super._stillImageSettings settingsID];
      [OUTLINED_FUNCTION_7() setSettingsID:?];
      [(NSMutableArray *)self->super._intermediates addObject:v17];

      if (self->_flushBuffersUponCommit)
      {
        v16 = [(BWDeferredCaptureContainer *)self _createFolders];
        if (v16)
        {
          FigDebugAssert3();
        }

        else
        {
          flushGroup = self->_flushGroup;
          flushQueue = self->_flushQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __122__BWDeferredCaptureContainer_commitInferenceBuffer_tag_metadataTag_inferenceAttachedMediaKey_compressionProfile_portType___block_invoke;
          block[3] = &unk_1E798F870;
          block[4] = v17;
          dispatch_group_async(flushGroup, flushQueue, block);
        }
      }

      else
      {
        v16 = 0;
      }
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_58_12(0x6CDu);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v16;
}

- (int)commitDictionary:(id)a3 tag:(id)a4
{
  OUTLINED_FUNCTION_39_14();
  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock((v4 + 16));
  v8 = 0;
  v9 = -16134;
  if (v6 && v5)
  {
    if (*(v4 + 322))
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 copy];
      v10 = OUTLINED_FUNCTION_70();
      if (![(BWDeferredContainer *)v10 _intermediateForTag:v11])
      {
        v12 = [BWDeferredDictionaryIntermediate alloc];
        v13 = OUTLINED_FUNCTION_70();
        [(BWDeferredContainer *)v13 _intermediateArrayURLForTag:v14];
        [OUTLINED_FUNCTION_49_9() initWithDictionary:? tag:? URL:?];
        OUTLINED_FUNCTION_69_4();
        [OUTLINED_FUNCTION_8() setSettingsID:?];
        OUTLINED_FUNCTION_73_5();

        v9 = 0;
        goto LABEL_9;
      }
    }

    v9 = -16135;
  }

LABEL_9:
  pthread_rwlock_unlock((v4 + 16));

  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v9;
}

- (uint64_t)initWithApplicationID:(uint64_t)a1 captureRequestIdentifier:(uint64_t)a2 baseFolderURL:flushBuffersUponCommit:err:.cold.1(uint64_t a1, uint64_t a2)
{
  [(BWDeferredContainer *)a1 _getUUIDBytes:a2 high:0];
  v3 = OUTLINED_FUNCTION_18_0();
  [(BWDeferredContainer *)v3 _getUUIDBytes:a2 high:1];
  OUTLINED_FUNCTION_28_12();

  return kdebug_trace();
}

- (void)commitInference:(void *)a3 tag:inferenceAttachmentKey:portType:.cold.1(int a1, pthread_rwlock_t *a2, void *a3)
{
  pthread_rwlock_unlock(a2);

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_17_14();

    kdebug_trace();
  }
}

@end