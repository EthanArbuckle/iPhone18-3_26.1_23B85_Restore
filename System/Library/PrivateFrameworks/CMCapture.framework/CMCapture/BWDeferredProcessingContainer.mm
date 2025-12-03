@interface BWDeferredProcessingContainer
- (BOOL)hasBufferForType:(unint64_t)type portType:(id)portType;
- (BOOL)hasInference:(id)inference portType:(id)type;
- (BOOL)hasInferenceBuffer:(id)buffer portType:(id)type;
- (BWDeferredProcessingContainer)initWithApplicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l openForPeeking:(BOOL)peeking err:(int *)p_info;
- (BWDeferredProcessingContainer)initWithApplicationID:(id)d resolvedSettings:(id)settings unresolvedSettings:(id)unresolvedSettings processingSettings:(id)processingSettings pipelineParameters:(id)parameters intermediates:(id)intermediates photoDescriptors:(id)descriptors;
- (BWDeferredProcessingContainer)initWithXPCEncoding:(id)encoding applicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l err:(int *)err;
- (__CVBuffer)copyBufferForTag:(id)tag err:(int *)err;
- (__CVBuffer)copyBufferForType:(unint64_t)type portType:(id)portType metadata:(id *)metadata err:(int *)err;
- (__CVBuffer)copyInferenceBufferForKey:(id)key portType:(id)type err:(int *)err;
- (id)copyArrayForTag:(id)tag customClasses:(id)classes err:(int *)err;
- (id)copyAttributesForBufferType:(unint64_t)type portType:(id)portType err:(int *)err;
- (id)copyBuffersForType:(unint64_t)type portType:(id)portType metadataArray:(id *)array err:(int *)err;
- (id)copyDictionaryForTag:(id)tag customClasses:(id)classes err:(int *)err;
- (id)copyInferenceForKey:(id)key customClasses:(id)classes portType:(id)type err:(int *)err;
- (id)copyMetadataForBufferTag:(id)tag err:(int *)err;
- (id)copyMetadataForTag:(id)tag err:(int *)err;
- (uint64_t)_buildFolderStatistics;
- (uint64_t)_convertIntermediatesToCurrentCompatibleVersion;
- (uint64_t)_copyObjectForTag:(uint64_t)tag customClasses:(int *)classes err:;
- (uint64_t)hasBufferWithCaptureFrameFlags:(uint64_t)flags portType:;
- (void)abortingProcessingDueToError:(int)error;
- (void)dealloc;
- (void)releaseIntermediates;
@end

@implementation BWDeferredProcessingContainer

uint64_t __113__BWDeferredProcessingContainer_initWithApplicationID_captureRequestIdentifier_baseFolderURL_openForPeeking_err___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringByDeletingPathExtension];
  v4 = [*(a1 + 32) tag];

  return [v4 isEqualToString:v3];
}

- (BWDeferredProcessingContainer)initWithXPCEncoding:(id)encoding applicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l err:(int *)err
{
  v73[0] = 0;
  code = 0;
  v13 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [BWDeferredProcessingContainer initWithXPCEncoding:identifier applicationID:? captureRequestIdentifier:? baseFolderURL:? err:?];
    if (encoding)
    {
LABEL_3:
      v71.receiver = self;
      v71.super_class = BWDeferredProcessingContainer;
      v14 = [(BWDeferredContainer *)&v71 initWithApplicationID:d captureRequestIdentifier:identifier baseFolderURL:l queuePriority:39 err:&code];
      if (v14)
      {
        [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker openTransaction:"openTransaction:name:" name:4, identifier];
        v14->_isRemote = 1;
        value = xpc_dictionary_get_value(encoding, "Container");
        if (!value)
        {
          [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
          goto LABEL_64;
        }

        xdict = xpc_dictionary_get_value(encoding, "IntermediateObjects");
        if (xdict)
        {
          value = _CFXPCCreateCFObjectFromXPCObject();
          if (value)
          {
            v16 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:value error:v73];
            v17 = v16;
            if (v73[0])
            {
              v54 = v16;
              code = -16132;
              v70 = 0;
              v69 = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            }

            else
            {
              v18 = [v16 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"Version" error:v73];
              if (!v18)
              {
LABEL_71:
                v54 = v17;
                code = [v73[0] code];
                v70 = 0;
                v69 = 0;
                v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
                goto LABEL_75;
              }

              longValue = [v18 longValue];
              v14->super._manifestVersion = longValue;
              if (longValue != 8)
              {
                code = -16130;
                goto LABEL_58;
              }

              v20 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"ApplicationID" error:v73];
              applicationID = v14->super._applicationID;
              if (applicationID)
              {
                if ([(NSString *)applicationID isEqualToString:v20])
                {
                  v22 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"CommitTime" error:v73];
                  if (!v22)
                  {
                    goto LABEL_54;
                  }

                  v23 = v22;
                  v24 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"BaseFolder" error:v73];
                  if (!v24)
                  {
                    goto LABEL_54;
                  }

                  if (([(NSURL *)v14->super._baseFolderURL isEqual:v24]& 1) == 0)
                  {
                    [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
                    goto LABEL_58;
                  }

                  v25 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"CaptureRequestIdentifier" error:v73];
                  if (v25)
                  {
                    if ([(NSString *)v14->super._captureRequestIdentifier isEqualToString:v25])
                    {
                      v26 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"StillImageCaptureSettings" error:v73];
                      v14->super._stillImageCaptureSettings = v26;
                      if (v26)
                      {
                        v27 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"StillImageSettings" error:v73];
                        v14->super._stillImageSettings = v27;
                        if (v27)
                        {
                          v28 = [v17 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"StillImageProcessingSettings" error:v73];
                          v14->super._stillImageProcessingSettings = v28;
                          if (v28)
                          {
                            v29 = MEMORY[0x1E695DFD8];
                            v30 = objc_opt_class();
                            v31 = [objc_msgSend(v17 decodeTopLevelObjectOfClasses:objc_msgSend(v29 forKey:"setWithObjects:" error:{v30, objc_opt_class(), 0), @"Intermediates", v73), "mutableCopy"}];
                            v14->super._intermediates = v31;
                            if (v31)
                            {
                              v58 = v23;
                              v32 = MEMORY[0x1E695DFD8];
                              v33 = objc_opt_class();
                              v34 = [objc_msgSend(v17 decodeTopLevelObjectOfClasses:objc_msgSend(v32 forKey:"setWithObjects:" error:{v33, objc_opt_class(), 0), @"PhotoDescriptors", v73), "mutableCopy"}];
                              v14->super._photoDescriptors = v34;
                              if (v34)
                              {
                                v59 = v17;
                                v60 = value;
                                v66 = 0u;
                                v67 = 0u;
                                v64 = 0u;
                                v65 = 0u;
                                v61 = v14;
                                intermediates = v14->super._intermediates;
                                v36 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v64 objects:v63 count:16];
                                if (v36)
                                {
                                  v37 = v36;
                                  v38 = 0;
                                  v39 = *v65;
                                  v40 = *MEMORY[0x1E695E480];
LABEL_24:
                                  v41 = 0;
                                  while (1)
                                  {
                                    if (*v65 != v39)
                                    {
                                      objc_enumerationMutation(intermediates);
                                    }

                                    v42 = *(*(&v64 + 1) + 8 * v41);
                                    v43 = xpc_dictionary_get_value(xdict, [objc_msgSend(v42 "tag")]);
                                    if (!v43)
                                    {
                                      break;
                                    }

                                    v44 = xpc_dictionary_get_value(v43, "Object");
                                    if (!v44)
                                    {
                                      [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
                                      goto LABEL_39;
                                    }

                                    v45 = v44;
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v46 = _CFXPCCreateCFObjectFromXPCObject();
                                      [v42 setArchive:v46];
                                      AllocSize = [v46 length];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        code = -16132;
LABEL_39:
                                        v13 = MEMORY[0x1E695FF58];
                                        v14 = v61;
                                        goto LABEL_40;
                                      }

                                      pixelBufferOut = 0;
                                      v48 = IOSurfaceLookupFromXPCObject(v45);
                                      if (!v48)
                                      {
                                        [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
                                        goto LABEL_39;
                                      }

                                      v49 = v48;
                                      CVPixelBufferCreateWithIOSurface(v40, v48, 0, &pixelBufferOut);
                                      [v42 setBuffer:pixelBufferOut];
                                      AllocSize = IOSurfaceGetAllocSize(v49);
                                      CFRelease(v49);
                                      CFRelease(pixelBufferOut);
                                    }

                                    v38 += AllocSize;
                                    if (v37 == ++v41)
                                    {
                                      v37 = [(NSMutableArray *)intermediates countByEnumeratingWithState:&v64 objects:v63 count:16];
                                      if (v37)
                                      {
                                        goto LABEL_24;
                                      }

                                      goto LABEL_48;
                                    }
                                  }

                                  [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
                                  goto LABEL_39;
                                }

                                v38 = 0;
LABEL_48:
                                v14 = v61;
                                code = [(BWDeferredContainer *)v61 _validate];
                                if (code)
                                {
                                  [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
                                }

                                else
                                {
                                  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
                                  v51 = v50;
                                  [v58 timeIntervalSince1970];
                                  *(v61 + 344) = (v51 - v52);
                                  *(v61 + 336) = v38;
                                  code = 0;
                                }

                                v13 = MEMORY[0x1E695FF58];
LABEL_40:
                                v17 = v59;
                                value = v60;
                              }

                              else
                              {
                                [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
                              }
                            }

                            else
                            {
                              [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
                            }

                            goto LABEL_58;
                          }
                        }
                      }

                      goto LABEL_71;
                    }

                    [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
                  }

                  else
                  {
LABEL_54:
                    code = [v73[0] code];
                  }
                }

                else
                {
                  [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
                }

LABEL_58:

                if (code)
                {

                  v14 = 0;
                }

                if (*v13 == 1)
                {
                  kdebug_trace();
                }

                return v14;
              }

              v54 = v17;
              code = [v73[0] code];
              v70 = 0;
              v69 = 0;
              v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
            }

LABEL_75:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v17 = v54;
            goto LABEL_58;
          }

          [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
LABEL_64:
          v17 = 0;
          goto LABEL_58;
        }

        [BWDeferredProcessingContainer initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:];
      }

      v17 = 0;
      value = 0;
      goto LABEL_58;
    }
  }

  else if (encoding)
  {
    goto LABEL_3;
  }

  if (err)
  {
    *err = -16134;
  }

  if (*v13 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (BWDeferredProcessingContainer)initWithApplicationID:(id)d resolvedSettings:(id)settings unresolvedSettings:(id)unresolvedSettings processingSettings:(id)processingSettings pipelineParameters:(id)parameters intermediates:(id)intermediates photoDescriptors:(id)descriptors
{
  v10.receiver = self;
  v10.super_class = BWDeferredProcessingContainer;
  return [(BWDeferredContainer *)&v10 initWithApplicationID:d resolvedSettings:settings unresolvedSettings:unresolvedSettings processingSettings:processingSettings pipelineParameters:parameters intermediates:intermediates photoDescriptors:descriptors];
}

- (void)dealloc
{
  [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker closeTransaction:"closeTransaction:", 4];

  metadataPrefetchQueue = self->_metadataPrefetchQueue;
  if (metadataPrefetchQueue)
  {
    dispatch_release(metadataPrefetchQueue);
  }

  bufferPrefetchQueue = self->_bufferPrefetchQueue;
  if (bufferPrefetchQueue)
  {
    dispatch_release(bufferPrefetchQueue);
  }

  v5.receiver = self;
  v5.super_class = BWDeferredProcessingContainer;
  [(BWDeferredContainer *)&v5 dealloc];
}

- (__CVBuffer)copyBufferForTag:(id)tag err:(int *)err
{
  v9 = 0;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!tag)
  {
    [BWDeferredProcessingContainer copyBufferForTag:? err:?];
    goto LABEL_8;
  }

  pthread_rwlock_rdlock(&self->super._lock);
  tag = [(BWDeferredContainer *)self _intermediateForTag:tag];
  if (!tag)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    tag = 0;
LABEL_15:
    v9 = -16136;
    goto LABEL_8;
  }

  tag = [tag fetchAndRetain:&v9];
  if (v9)
  {
    [BWDeferredProcessingContainer copyBufferForTag:err:];
  }

LABEL_8:
  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v9;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return tag;
}

- (BOOL)hasBufferForType:(unint64_t)type portType:(id)portType
{
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__BWDeferredProcessingContainer_hasBufferForType_portType___block_invoke;
  v12[3] = &unk_1E7999900;
  v12[4] = portType;
  v12[5] = type;
  v8 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v12];
  v10 = v8 != 0x7FFFFFFFFFFFFFFFLL && (v9 = v8, v8 < [(NSMutableArray *)self->super._intermediates count]) && [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v9]!= 0;
  pthread_rwlock_unlock(&self->super._lock);
  return v10;
}

uint64_t __59__BWDeferredProcessingContainer_hasBufferForType_portType___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = [objc_msgSend(a2 "portType")];
  if (result)
  {
    return [a2 bufferType] == *(a1 + 40);
  }

  return result;
}

uint64_t __73__BWDeferredProcessingContainer_hasBufferWithCaptureFrameFlags_portType___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = [objc_msgSend(a2 "portType")];
  if (result)
  {
    return (*(a1 + 40) & [a2 captureFrameFlags]) != 0;
  }

  return result;
}

- (__CVBuffer)copyBufferForType:(unint64_t)type portType:(id)portType metadata:(id *)metadata err:(int *)err
{
  v20 = 0;
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__BWDeferredProcessingContainer_copyBufferForType_portType_metadata_err___block_invoke;
  v19[3] = &unk_1E7999900;
  v19[4] = portType;
  v19[5] = type;
  v12 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v19];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL || (v13 = v12, v12 >= [(NSMutableArray *)self->super._intermediates count]) || ![(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v13])
  {
    metadataTag = 0;
    v15 = 0;
  }

  else
  {
    v14 = [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v13];
    v15 = [v14 tag];
    metadataTag = [v14 metadataTag];
    if (v15)
    {
      v15 = [(BWDeferredProcessingContainer *)self copyBufferForTag:v15 err:&v20];
    }
  }

  if (v20)
  {
    [BWDeferredProcessingContainer copyBufferForType:portType:metadata:err:];
    v17 = 0;
  }

  else
  {
    v17 = 0;
    if (metadata && metadataTag)
    {
      v17 = [(BWDeferredProcessingContainer *)self copyMetadataForTag:metadataTag err:&v20];
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v20;
  }

  if (metadata)
  {
    *metadata = v17;
  }

  return v15;
}

uint64_t __73__BWDeferredProcessingContainer_copyBufferForType_portType_metadata_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = [objc_msgSend(a2 "portType")];
  if (result)
  {
    return [a2 bufferType] == *(a1 + 40);
  }

  return result;
}

uint64_t __79__BWDeferredProcessingContainer_copyBuffersForType_portType_metadataArray_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = [objc_msgSend(a2 "portType")];
  if (result)
  {
    return [a2 bufferType] == *(a1 + 40);
  }

  return result;
}

uint64_t __74__BWDeferredProcessingContainer_copyAttributesForBufferType_portType_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [a2 bufferType] != *(a1 + 40))
  {
    return 0;
  }

  v4 = [a2 portType];
  v5 = *(a1 + 32);

  return [v4 isEqualToString:v5];
}

- (id)copyMetadataForBufferTag:(id)tag err:(int *)err
{
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (tag)
  {
    pthread_rwlock_rdlock(&self->super._lock);
    intermediates = self->super._intermediates;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__BWDeferredProcessingContainer_copyMetadataForBufferTag_err___block_invoke;
    v12[3] = &unk_1E7999888;
    v12[4] = tag;
    v9 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v12];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
      tag = 0;
    }

    else
    {
      tag = [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v9];
      v10 = 0;
    }
  }

  else
  {
    [BWDeferredProcessingContainer copyMetadataForBufferTag:err:];
    v10 = -16134;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v10;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return tag;
}

uint64_t __62__BWDeferredProcessingContainer_copyMetadataForBufferTag_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = [a2 bufferTag];

  return [v4 isEqualToString:v5];
}

- (id)copyMetadataForTag:(id)tag err:(int *)err
{
  v12 = 0;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v8 = [(BWDeferredProcessingContainer *)self _copyObjectForTag:tag customClasses:0 err:&v12];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (*v7 == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    v12 = -16132;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = v12;
  if (err)
  {
    *err = v12;
  }

  if (v9)
  {

    return 0;
  }

  return v8;
}

- (BOOL)hasInferenceBuffer:(id)buffer portType:(id)type
{
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__BWDeferredProcessingContainer_hasInferenceBuffer_portType___block_invoke;
  v12[3] = &unk_1E7999928;
  v12[4] = type;
  v12[5] = buffer;
  v8 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v12];
  v10 = v8 != 0x7FFFFFFFFFFFFFFFLL && (v9 = v8, v8 < [(NSMutableArray *)self->super._intermediates count]) && [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v9]!= 0;
  pthread_rwlock_unlock(&self->super._lock);
  return v10;
}

uint64_t __61__BWDeferredProcessingContainer_hasInferenceBuffer_portType___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(a2 "portType")])
  {
    return 0;
  }

  v4 = [a2 inferenceAttachedMediaKey];
  v5 = *(a1 + 40);

  return [v4 isEqual:v5];
}

- (__CVBuffer)copyInferenceBufferForKey:(id)key portType:(id)type err:(int *)err
{
  v15 = 0;
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__BWDeferredProcessingContainer_copyInferenceBufferForKey_portType_err___block_invoke;
  v14[3] = &unk_1E7999928;
  v14[4] = type;
  v14[5] = key;
  v10 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v14];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v10, v10 >= [(NSMutableArray *)self->super._intermediates count]) || ![(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v11])
  {
    v12 = 0;
  }

  else
  {
    v12 = [-[NSMutableArray objectAtIndexedSubscript:](self->super._intermediates objectAtIndexedSubscript:{v11), "fetchAndRetain:", &v15}];
    if (v15)
    {
      [BWDeferredProcessingContainer copyInferenceBufferForKey:portType:err:];
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v15;
  }

  return v12;
}

uint64_t __72__BWDeferredProcessingContainer_copyInferenceBufferForKey_portType_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(a2 "portType")])
  {
    return 0;
  }

  v4 = [a2 inferenceAttachedMediaKey];
  v5 = *(a1 + 40);

  return [v4 isEqual:v5];
}

- (BOOL)hasInference:(id)inference portType:(id)type
{
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__BWDeferredProcessingContainer_hasInference_portType___block_invoke;
  v12[3] = &unk_1E7999928;
  v12[4] = type;
  v12[5] = inference;
  v8 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v12];
  v10 = v8 != 0x7FFFFFFFFFFFFFFFLL && (v9 = v8, v8 < [(NSMutableArray *)self->super._intermediates count]) && [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v9]!= 0;
  pthread_rwlock_unlock(&self->super._lock);
  return v10;
}

uint64_t __55__BWDeferredProcessingContainer_hasInference_portType___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(a2 "portType")])
  {
    return 0;
  }

  v4 = [a2 inferenceAttachmentKey];
  v5 = *(a1 + 40);

  return [v4 isEqual:v5];
}

- (id)copyInferenceForKey:(id)key customClasses:(id)classes portType:(id)type err:(int *)err
{
  v17 = 0;
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__BWDeferredProcessingContainer_copyInferenceForKey_customClasses_portType_err___block_invoke;
  v16[3] = &unk_1E7999928;
  v16[4] = type;
  v16[5] = key;
  v12 = [(NSMutableArray *)intermediates indexOfObjectPassingTest:v16];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL || (v13 = v12, v12 >= [(NSMutableArray *)self->super._intermediates count]) || ![(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v13])
  {
    v14 = 0;
  }

  else
  {
    v14 = [-[NSMutableArray objectAtIndexedSubscript:](self->super._intermediates objectAtIndexedSubscript:{v13), "fetchWithCustomClassesAndRetain:err:", classes, &v17}];
    if (v17)
    {
      [BWDeferredProcessingContainer copyInferenceForKey:customClasses:portType:err:];
    }
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v17;
  }

  return v14;
}

uint64_t __80__BWDeferredProcessingContainer_copyInferenceForKey_customClasses_portType_err___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(a2 "portType")])
  {
    return 0;
  }

  v4 = [a2 inferenceAttachmentKey];
  v5 = *(a1 + 40);

  return [v4 isEqual:v5];
}

- (void)releaseIntermediates
{
  pthread_rwlock_wrlock(&self->super._lock);

  self->super._intermediates = 0;

  pthread_rwlock_unlock(&self->super._lock);
}

- (void)abortingProcessingDueToError:(int)error
{
  if (self->_sessionDictionary)
  {
    [(BWDeferredProcessingContainer *)*&error abortingProcessingDueToError:&v3, self];
  }

  else
  {
    [BWDeferredProcessingContainer abortingProcessingDueToError:];
  }
}

- (BWDeferredProcessingContainer)initWithApplicationID:(id)d captureRequestIdentifier:(id)identifier baseFolderURL:(id)l openForPeeking:(BOOL)peeking err:(int *)p_info
{
  v212[0] = 0;
  v211 = 0;
  OUTLINED_FUNCTION_16_2();
  if (v13)
  {
    [(BWDeferredContainer *)self _getUUIDBytes:identifier high:0];
    v14 = OUTLINED_FUNCTION_18_0();
    [(BWDeferredContainer *)v14 _getUUIDBytes:identifier high:1];
    OUTLINED_FUNCTION_38_11();
    kdebug_trace();
  }

  v210.receiver = self;
  v210.super_class = BWDeferredProcessingContainer;
  v15 = [(BWDeferredContainer *)&v210 initWithApplicationID:d captureRequestIdentifier:identifier baseFolderURL:l queuePriority:39 err:v212];
  if (!v15)
  {
    v16 = 0;
    goto LABEL_6;
  }

  [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker openTransaction:"openTransaction:name:" name:4, identifier];
  v15->_metadataPrefetchQueue = FigDispatchQueueCreateWithPriority();
  v15->_bufferPrefetchQueue = FigDispatchQueueCreateWithPriority();
  v212[0] = [(BWDeferredProcessingContainer *)v15 _buildFolderStatistics];
  if (v212[0])
  {
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3();
    goto LABEL_170;
  }

  _containerManifestURL = [(BWDeferredContainer *)v15 _containerManifestURL];
  v212[0] = [(BWDeferredContainer *)BWDeferredProcessingContainer validateManifestURLSize:_containerManifestURL];
  if (v212[0])
  {
LABEL_170:
    v16 = 0;
    goto LABEL_130;
  }

  v209 = 0;
  v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:_containerManifestURL options:0 error:&v209];
  if (!v18)
  {
    OUTLINED_FUNCTION_14_30(-16132);
    v124 = OUTLINED_FUNCTION_24_17();
    OUTLINED_FUNCTION_29_13(v124);
    OUTLINED_FUNCTION_39_7();
    if (v13)
    {
      identifierCopy = v125;
    }

    else
    {
      identifierCopy = identifier;
    }

    if (!identifierCopy)
    {
      goto LABEL_169;
    }

    [v209 description];
    OUTLINED_FUNCTION_35_15(4.8151e-34);
    OUTLINED_FUNCTION_11_36(v127, "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]");
    OUTLINED_FUNCTION_6_55();
    goto LABEL_165;
  }

  obj = v18;
  v19 = +[BWDeferredProcessingContainer maxProcessingCount];
  v20 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:-[BWDeferredContainer _containerSessionDataURL](v15)];
  v148 = p_info;
  if (!v20)
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = &unk_1F2245478;
    goto LABEL_19;
  }

  v21 = v20;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v140 = 0;
  v25 = [v22 setWithObjects:{v23, v24, objc_opt_class()}];
  p_info = BWNodeSampleBufferMessage.info;
  v26 = [BWDeferredContainer unarchiveObject:v21 classes:v25 error:&v211];
  if (!v26)
  {
    v212[0] = [v211 code];
    v208 = 0;
    v207 = OS_LOG_TYPE_DEFAULT;
    v128 = OUTLINED_FUNCTION_24_17();
    OUTLINED_FUNCTION_29_13(v128);
    OUTLINED_FUNCTION_39_7();
    if (v13)
    {
      identifierCopy2 = v129;
    }

    else
    {
      identifierCopy2 = identifier;
    }

    OUTLINED_FUNCTION_9_43();
    if (!identifierCopy2)
    {
      goto LABEL_169;
    }

    [v211 description];
    OUTLINED_FUNCTION_35_15(4.8151e-34);
    OUTLINED_FUNCTION_11_36(v131, "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]");
    OUTLINED_FUNCTION_6_55();
LABEL_165:
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
LABEL_169:
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_170;
  }

  v27 = v26;
  v28 = [v26 objectForKeyedSubscript:@"ProcessingCount"];
  if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    OUTLINED_FUNCTION_14_30(-16140);
    v120 = OUTLINED_FUNCTION_24_17();
    os_log_type_enabled(v120, v207);
    OUTLINED_FUNCTION_115_0();
    if (v13)
    {
      v122 = v121;
    }

    else
    {
      v122 = v208;
    }

    p_info = v148;
    if (v122)
    {
      OUTLINED_FUNCTION_35_15(4.8151e-34);
      *(v123 + 4) = "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]";
      v203 = 2112;
      *(v123 + 14) = v28;
      OUTLINED_FUNCTION_6_55();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    goto LABEL_169;
  }

  if (v19)
  {
    v29 = v19;
    if ([v28 unsignedIntValue] >= v19)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      OUTLINED_FUNCTION_14_30(-16140);
      v132 = OUTLINED_FUNCTION_24_17();
      if (os_log_type_enabled(v132, v207))
      {
        v133 = v208;
      }

      else
      {
        v133 = v208 & 0xFFFFFFFE;
      }

      if (v133)
      {
        captureRequestIdentifier = v15->super._captureRequestIdentifier;
        [v28 unsignedIntValue];
        OUTLINED_FUNCTION_35_15(4.8153e-34);
        *(v135 + 4) = "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]";
        v203 = 2114;
        *(v135 + 14) = captureRequestIdentifier;
        v205 = 1024;
        *v206 = v136;
        *&v206[4] = 1024;
        *(v135 + 30) = v29;
        OUTLINED_FUNCTION_6_55();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_141();
      }

      OUTLINED_FUNCTION_1_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v16 = 0;
      goto LABEL_177;
    }
  }

  v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v27];
LABEL_19:
  v15->_sessionDictionary = v30;
  v15->_processingCount = [v28 longValue];
  v31 = [-[NSMutableDictionary objectForKeyedSubscript:](v15->_sessionDictionary objectForKeyedSubscript:{@"PreviousError", "intValue"}];
  v15->_previousAttemptErrorCode = v31;
  p_info = 0x1E696A000;
  if (!peeking)
  {
    if ([&unk_1F22490F0 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v31)}])
    {
      [(NSMutableDictionary *)v15->_sessionDictionary removeObjectForKey:@"PreviousError"];
      if (dword_1EB58E440)
      {
        v208 = 0;
        v207 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v112 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_12(v112))
        {
          previousAttemptErrorCode = v15->_previousAttemptErrorCode;
          processingCount = v15->_processingCount;
          v201 = 136315906;
          v202 = "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]";
          v203 = 2114;
          identifierCopy4 = identifier;
          v205 = 1024;
          *v206 = previousAttemptErrorCode;
          *&v206[4] = 1024;
          *&v206[6] = processingCount;
          OUTLINED_FUNCTION_6_55();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_34_17();
        p_info = 0x1E696A000;
      }
    }

    else if (([d isEqualToString:0x1F2185190] & 1) == 0)
    {
      ++v15->_processingCount;
    }

    -[NSMutableDictionary setObject:forKeyedSubscript:](v15->_sessionDictionary, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15->_processingCount], @"ProcessingCount");
    if (v15->_previousAttemptErrorCode && dword_1EB58E440)
    {
      v208 = 0;
      v207 = OS_LOG_TYPE_DEFAULT;
      v116 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v117 = os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_12(v117))
      {
        v118 = v15->_previousAttemptErrorCode;
        v119 = v15->_processingCount;
        v201 = 136315906;
        v202 = "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]";
        v203 = 2114;
        identifierCopy4 = identifier;
        v205 = 1024;
        *v206 = v118;
        *&v206[4] = 1024;
        *&v206[6] = v119;
        OUTLINED_FUNCTION_6_55();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_34_17();
    }

    if (![BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)v15 _containerSessionDataURL] object:v15->_sessionDictionary error:&v211])
    {
      OUTLINED_FUNCTION_3_73();
      FigDebugAssert3();
      OUTLINED_FUNCTION_68_5();
      v16 = 0;
      v212[0] = FigSignalErrorAtGM();
LABEL_177:
      OUTLINED_FUNCTION_9_43();
      goto LABEL_130;
    }
  }

  v16 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:obj error:&v211];
  if (!v16)
  {
    OUTLINED_FUNCTION_3_73();
    FigDebugAssert3();
    OUTLINED_FUNCTION_68_5();
    FigSignalErrorAtGM();
    goto LABEL_177;
  }

  [v16 decodeTopLevelObjectOfClass:objc_opt_class() forKey:@"Version" error:&v211];
  OUTLINED_FUNCTION_9_43();
  if (!v32)
  {
    goto LABEL_147;
  }

  longValue = [v32 longValue];
  v15->super._manifestVersion = longValue;
  if (longValue <= 6)
  {
    v212[0] = -16130;
    goto LABEL_130;
  }

  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = [objc_msgSend(v16 decodeTopLevelObjectOfClasses:objc_msgSend(v34 forKey:"setWithObjects:" error:{v35, objc_opt_class(), 0), @"PhotoDescriptors", &v211), "mutableCopy"}];
  v15->super._photoDescriptors = v36;
  if (!v36)
  {
    goto LABEL_147;
  }

  v15->_photoManifest = [[BWPhotoManifest alloc] initWithDescriptors:v15->super._photoDescriptors captureRequestIdentifier:v15->super._captureRequestIdentifier];
  [(BWDeferredContainer *)v15 _stillImageCaptureSettingsURL];
  objc_opt_class();
  v37 = [OUTLINED_FUNCTION_7() setWithObject:?];
  v38 = OUTLINED_FUNCTION_18_20(v37);
  v15->super._stillImageCaptureSettings = v38;
  if (!v38)
  {
    goto LABEL_167;
  }

  [(BWDeferredContainer *)v15 _pipelineParametersURL];
  objc_opt_class();
  v39 = [OUTLINED_FUNCTION_7() setWithObject:?];
  v40 = OUTLINED_FUNCTION_18_20(v39);
  v15->super._pipelineParameters = v40;
  if (!v40)
  {
    v15->super._pipelineParameters = [[BWDeferredPipelineParameters alloc] _initWithLegacyCaptureSettings:?];
    v211 = 0;
  }

  if (([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags]& 0x800) != 0 && ![(BWDeferredPipelineParameters *)v15->super._pipelineParameters depthDataType])
  {
    if ([(BWDeferredPipelineParameters *)v15->super._pipelineParameters pearlModuleType])
    {
      v41 = 3;
    }

    else
    {
      v41 = 8;
    }

    [(BWDeferredPipelineParameters *)v15->super._pipelineParameters setDepthDataType:v41];
  }

  [(BWDeferredContainer *)v15 _stillImageProcessingSettingsURL];
  objc_opt_class();
  v42 = [OUTLINED_FUNCTION_7() setWithObject:?];
  v43 = OUTLINED_FUNCTION_18_20(v42);
  v15->super._stillImageProcessingSettings = v43;
  if (!v43)
  {
    v15->super._stillImageProcessingSettings = [[BWStillImageProcessingSettings alloc] initWithPhotoManifest:v15->_photoManifest processIntelligentDistortionCorrection:[(BWDeferredPipelineParameters *)v15->super._pipelineParameters intelligentDistortionCorrectionEnabled]];
    v211 = 0;
  }

  [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings setDeliverDeferredPhotoProxyImage:0];
  if (([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags]& 0x8000000000) != 0)
  {
    [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings disableAWBReflow];
  }

  if (([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags]& 0x200000000) != 0 && ![(BWDeferredPipelineParameters *)v15->super._pipelineParameters canProcessEnhancedResolution])
  {
    [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings cannotProcessDeepFusionEnhancedResolution];
  }

  [(BWDeferredContainer *)v15 _stillImageSettingsURL];
  LODWORD(v44) = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v45 = [OUTLINED_FUNCTION_7() setWithObject:?];
  v46 = OUTLINED_FUNCTION_18_20(v45);
  v15->super._stillImageSettings = v46;
  deferredPhotoFinalDimensions = [(FigCaptureStillImageSettings *)v46 deferredPhotoFinalDimensions];
  if (deferredPhotoFinalDimensions >= 1 && SHIDWORD(deferredPhotoFinalDimensions) >= 1)
  {
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setOutputWidth:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalWidth]];
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setOutputHeight:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalHeight]];
  }

  deferredPhotoFinalThumbnailDimensions = [(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalThumbnailDimensions];
  if (deferredPhotoFinalThumbnailDimensions >= 1 && SHIDWORD(deferredPhotoFinalThumbnailDimensions) >= 1)
  {
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setThumbnailWidth:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalThumbnailDimensions]];
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setThumbnailHeight:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalThumbnailDimensions]>> 32];
  }

  deferredPhotoFinalRawThumbnailDimensions = [(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalRawThumbnailDimensions];
  if (deferredPhotoFinalRawThumbnailDimensions >= 1 && SHIDWORD(deferredPhotoFinalRawThumbnailDimensions) >= 1)
  {
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setRawThumbnailWidth:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalRawThumbnailDimensions]];
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings setRawThumbnailHeight:[(FigCaptureStillImageSettings *)v15->super._stillImageSettings deferredPhotoFinalRawThumbnailDimensions]>> 32];
  }

  if (!v15->super._stillImageSettings)
  {
LABEL_167:
    OUTLINED_FUNCTION_3_73();
    FigDebugAssert3();
    OUTLINED_FUNCTION_68_5();
    v212[0] = FigSignalErrorAtGM();
    goto LABEL_130;
  }

  v53 = MEMORY[0x1E695DFD8];
  v54 = objc_opt_class();
  v137 = objc_opt_class();
  v55 = [v16 decodeTopLevelObjectOfClasses:objc_msgSend(v53 forKey:"setWithObjects:" error:{v54), @"Intermediates", &v211}];
  if (!v55)
  {
LABEL_147:
    v212[0] = [v211 code];
    goto LABEL_130;
  }

  v56 = v55;
  v145 = v16;
  v57 = objc_alloc(MEMORY[0x1E695DF70]);
  [v56 count];
  v15->super._intermediates = [OUTLINED_FUNCTION_8() initWithCapacity:?];
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v58 = OUTLINED_FUNCTION_66_7();
  if (v58)
  {
    v59 = v58;
    v60 = *v198;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v198 != v60)
        {
          objc_enumerationMutation(v56);
        }

        v44 = *(*(&v197 + 1) + 8 * i);
        [(FigCaptureStillImageSettings *)v15->super._stillImageSettings settingsID];
        [OUTLINED_FUNCTION_7() setSettingsID:?];
        [(NSMutableArray *)v15->super._intermediates addObject:v44];
      }

      v59 = OUTLINED_FUNCTION_66_7();
    }

    while (v59);
  }

  if (v15->super._manifestVersion == 7)
  {
    v212[0] = [(BWDeferredProcessingContainer *)v15 _convertIntermediatesToCurrentCompatibleVersion];
    if (v212[0])
    {
LABEL_124:
      v16 = v145;
      goto LABEL_130;
    }
  }

  _intermediateFolderURL = [(BWDeferredContainer *)v15 _intermediateFolderURL];
  v62 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (!v62)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v212[0] = [v211 code];
    goto LABEL_124;
  }

  v63 = [MEMORY[0x1E695DF70] arrayWithArray:v62];
  [v63 sortUsingSelector:sel_caseInsensitiveCompare_];
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  obja = v15->super._intermediates;
  v64 = [(NSMutableArray *)obja countByEnumeratingWithState:&v193 objects:v192 count:16];
  if (!v64)
  {
    goto LABEL_91;
  }

  v65 = v64;
  v66 = *v194;
  while (2)
  {
    for (j = 0; j != v65; ++j)
    {
      if (*v194 != v66)
      {
        objc_enumerationMutation(obja);
      }

      p_info = *(*(&v193 + 1) + 8 * j);
      v191[0] = MEMORY[0x1E69E9820];
      v191[1] = 3221225472;
      v191[2] = __113__BWDeferredProcessingContainer_initWithApplicationID_captureRequestIdentifier_baseFolderURL_openForPeeking_err___block_invoke;
      v191[3] = &unk_1E79998D8;
      v191[4] = p_info;
      [v63 indexOfObjectPassingTest:v191];
      OUTLINED_FUNCTION_79();
      if (v13)
      {
        OUTLINED_FUNCTION_14_30(-16132);
        v101 = OUTLINED_FUNCTION_24_17();
        OUTLINED_FUNCTION_29_13(v101);
        OUTLINED_FUNCTION_39_7();
        if (v13)
        {
          v103 = v102;
        }

        else
        {
          v103 = v44;
        }

        if (v103)
        {
          [p_info tag];
          OUTLINED_FUNCTION_35_15(4.8151e-34);
          OUTLINED_FUNCTION_11_36(v104, "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]");
          OUTLINED_FUNCTION_6_55();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
        }

        goto LABEL_129;
      }

      v44 = [v63 objectAtIndexedSubscript:v68];
      if (![v44 hasSuffix:@"heif"] || (objc_opt_class(), (OUTLINED_FUNCTION_46_14() & 1) == 0))
      {
        if ([v44 hasSuffix:@"plist"] && (objc_opt_class(), (OUTLINED_FUNCTION_46_14() & 1) != 0) || objc_msgSend(v44, "hasSuffix:", @"plist") && (objc_opt_class(), (OUTLINED_FUNCTION_46_14() & 1) != 0) || objc_msgSend(v44, "hasSuffix:", @"plist") && (objc_opt_class(), (OUTLINED_FUNCTION_46_14() & 1) != 0) || objc_msgSend(v44, "hasSuffix:", @"jpeg") && (objc_opt_class(), (OUTLINED_FUNCTION_46_14() & 1) != 0))
        {
          [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags];
          p_metadataPrefetchQueue = &v15->_metadataPrefetchQueue;
          goto LABEL_87;
        }

        OUTLINED_FUNCTION_14_30(-16132);
        v105 = OUTLINED_FUNCTION_24_17();
        v106 = v208;
        os_log_type_enabled(v105, v207);
        OUTLINED_FUNCTION_115_0();
        if (v13)
        {
          v108 = v107;
        }

        else
        {
          v108 = v106;
        }

        if (v108)
        {
          [p_info tag];
          OUTLINED_FUNCTION_35_15(4.8152e-34);
          OUTLINED_FUNCTION_11_36(v109, "[BWDeferredProcessingContainer initWithApplicationID:captureRequestIdentifier:baseFolderURL:openForPeeking:err:]");
          v205 = v110;
          *v206 = v44;
          OUTLINED_FUNCTION_6_55();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
        }

LABEL_129:
        OUTLINED_FUNCTION_9_43();
        v16 = v145;
        OUTLINED_FUNCTION_1_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_130;
      }

      captureFlags = [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags];
      p_metadataPrefetchQueue = &v15->_bufferPrefetchQueue;
      if ((captureFlags & 0x100000000) != 0)
      {
        v71 = 0;
        goto LABEL_88;
      }

LABEL_87:
      v71 = *p_metadataPrefetchQueue;
LABEL_88:
      v72 = MEMORY[0x1E695DFF8];
      v190[0] = [_intermediateFolderURL path];
      v190[1] = v44;
      v212[0] = [p_info setURL:objc_msgSend(v72 prefetchQueue:{"fileURLWithPathComponents:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v190, 2)), v71}];
      if (v212[0])
      {
        OUTLINED_FUNCTION_9_43();
        goto LABEL_124;
      }
    }

    v65 = [(NSMutableArray *)obja countByEnumeratingWithState:&v193 objects:v192 count:16];
    if (v65)
    {
      continue;
    }

    break;
  }

LABEL_91:
  if (([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags]& 0x800) != 0 && !BWDepthDataTypeSupportsDeferredDepthGeneration([(BWDeferredPipelineParameters *)[(BWDeferredContainer *)v15 pipelineParameters] depthDataType]) && ![(BWDeferredProcessingContainer *)v15 hasBufferForType:2001 portType:[(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings masterPortType]])
  {
    [(FigCaptureStillImageSettings *)v15->super._stillImageSettings cannotProcessDepthPhotos];
    [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings cannotProcessDepthPhotos];
    [(BWStillImageProcessingSettings *)v15->super._stillImageProcessingSettings cannotProcessDepthPhotos];
    [(BWPhotoManifest *)v15->_photoManifest cannotProcessDepthPhotos];
    [(NSMutableArray *)v15->super._photoDescriptors removeAllObjects];
    [(BWPhotoManifest *)v15->_photoManifest photoDescriptors];
    [OUTLINED_FUNCTION_17() addObjectsFromArray:?];
  }

  if ([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureType]== 13 && ([(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags]& 0x100000) != 0)
  {
    [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings masterPortType];
    v73 = OUTLINED_FUNCTION_4();
    v75 = [(BWDeferredProcessingContainer *)v73 hasBufferWithCaptureFrameFlags:v74 portType:?]^ 1;
    [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings masterPortType];
    v76 = OUTLINED_FUNCTION_4();
    v78 = [(BWDeferredProcessingContainer *)v76 hasBufferWithCaptureFrameFlags:v77 portType:?]^ 1;
    if ((v75 & 1) != 0 || v78)
    {
      [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings updateForLearnedFusionMissingEVMinus:v75 missingHDRErrorRecoveryEVZero:v78];
    }
  }

  captureFlags2 = [(BWStillImageCaptureSettings *)v15->super._stillImageCaptureSettings captureFlags];
  p_info = v148;
  if ((captureFlags2 & 0x4000000000) != 0)
  {
    intermediates = v15->super._intermediates;
    v88 = OUTLINED_FUNCTION_61_8(captureFlags2, v80, v81, v82, v83, v84, v85, v86, v137, 0, v140, v142, 352, v145, v146, v148, &v15->_bufferPrefetchQueue, obja, &v15->_metadataPrefetchQueue, _intermediateFolderURL, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, 0);
    if (v88)
    {
      v89 = v88;
      v90 = MEMORY[0];
      do
      {
        for (k = 0; k != v89; ++k)
        {
          if (MEMORY[0] != v90)
          {
            objc_enumerationMutation(intermediates);
          }

          v92 = *(8 * k);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            isKindOfClass = [objc_msgSend(v92 "portType")];
            if ((isKindOfClass & 1) == 0)
            {
              isKindOfClass = [v92 bufferType];
              if (isKindOfClass == 1)
              {
                isKindOfClass = -[BWStillImageCaptureSettings setLearnedNRStereoPhotoFrameFlag:](v15->super._stillImageCaptureSettings, "setLearnedNRStereoPhotoFrameFlag:", [v92 captureFrameFlags] & 0x14);
              }
            }
          }
        }

        v89 = OUTLINED_FUNCTION_61_8(isKindOfClass, v94, v95, v96, v97, v98, v99, v100, v138, v139, v141, v143, v144, v145, v147, v149, v150, objb, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v189);
      }

      while (v89);
    }
  }

  v16 = v145;
LABEL_6:
  v212[0] = [(BWDeferredContainer *)v15 _validate];
  if (v212[0])
  {
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3();
  }

LABEL_130:

  if (p_info)
  {
    *p_info = v212[0];
  }

  OUTLINED_FUNCTION_16_2();
  if (v13)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v15;
}

- (uint64_t)_buildFolderStatistics
{
  if (result)
  {
    v1 = result;
    v25 = 0;
    v2 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if (!v2 || (v3 = v2, [objc_msgSend(MEMORY[0x1E695DF00] "date")], v5 = v4, objc_msgSend(objc_msgSend(v3, "fileCreationDate"), "timeIntervalSince1970"), *(v1 + 344) = (v5 - v6), (v7 = objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), "subpathsOfDirectoryAtPath:error:", objc_msgSend(*(v1 + 216), "path"), &v25)) == 0))
    {
LABEL_13:
      OUTLINED_FUNCTION_4_64();
      v14 = FigDebugAssert3();
      OUTLINED_FUNCTION_44_12(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
      FigSignalErrorAtGM();
      return 0;
    }

    objectEnumerator = [v7 objectEnumerator];
    if (objectEnumerator)
    {
      v9 = objectEnumerator;
      nextObject = [objectEnumerator nextObject];
      if (nextObject)
      {
        nextObject2 = nextObject;
        v12 = 0;
        while (1)
        {
          v13 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
          if (!v13)
          {
            goto LABEL_13;
          }

          v12 += [v13 fileSize];
          nextObject2 = [v9 nextObject];
          if (!nextObject2)
          {
            goto LABEL_11;
          }
        }
      }

      v12 = 0;
LABEL_11:
      result = 0;
      *(v1 + 336) = v12;
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 4294951164;
    }
  }

  return result;
}

- (uint64_t)_convertIntermediatesToCurrentCompatibleVersion
{
  if (result)
  {
    v1 = result;
    v83[0] = 0;
    v71 = [MEMORY[0x1E695DF70] arrayWithArray:*(result + 280)];
    v2 = objc_autoreleasePoolPush();
    v3 = *(v1 + 280);
    isKindOfClass = OUTLINED_FUNCTION_65_6(v2, v4, v5, v6, v7, v8, v9, v10, v46, v48, v2, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
    if (isKindOfClass)
    {
      v19 = isKindOfClass;
      v20 = 0;
      v21 = MEMORY[0];
      v52 = 0x1F219E5F0;
      v54 = 0x1F219E6F0;
      v64 = 0x1F219E9B0;
      p_info = BWNodeSampleBufferMessage.info;
      v68 = 1;
      v70 = 0x1F219E990;
      v62 = 0x1F219E970;
      v58 = 0x1F21AAD30;
      v60 = 0x1F21AABB0;
      v56 = 0x1F219E750;
      v78 = v3;
      v80 = @"PersonSemanticsSkin";
      v74 = v1;
      v76 = MEMORY[0];
      do
      {
        v23 = 0;
        do
        {
          if (MEMORY[0] != v21)
          {
            objc_enumerationMutation(v3);
          }

          if (*(v1 + 240) <= 7)
          {
            v24 = *(8 * v23);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [v24 bufferType] - 1001;
              isKindOfClass = v80;
              switch(v25)
              {
                case 0:
                  goto LABEL_24;
                case 1:
                  isKindOfClass = v56;
                  if (!v56)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_25;
                case 2:
                  isKindOfClass = v58;
LABEL_24:
                  if (isKindOfClass)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_39;
                case 3:
                  isKindOfClass = v60;
                  if (!v60)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_25;
                case 4:
                  v47 = v62;
                  v49 = v68;
                  isKindOfClass = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%d"];
                  v68 = (v68 + 1);
                  p_info = (BWNodeSampleBufferMessage + 32);
                  if (!isKindOfClass)
                  {
                    goto LABEL_39;
                  }

LABEL_25:
                  v36 = [v24 fetchAndRetain:v83];
                  if (v83[0])
                  {
                    goto LABEL_41;
                  }

                  v37 = v36;
                  v38 = [BWDeferredInferenceBufferIntermediate alloc];
                  v39 = [v24 tag];
                  metadataTag = [v24 metadataTag];
                  portType = [v24 portType];
                  compressionProfile = [v24 compressionProfile];
                  v47 = [v24 URL];
                  v43 = metadataTag;
                  v1 = v74;
                  isKindOfClass = [(BWDeferredInferenceBufferIntermediate *)v38 initWithBuffer:v37 tag:v39 metadataTag:v43 inferenceAttachedMediaKey:v80 portType:portType compressionProfile:compressionProfile URL:?];
                  break;
                default:
                  if (v80 >= 2)
                  {
                    goto LABEL_39;
                  }

                  isKindOfClass = [v24 pixelFormat];
                  if (isKindOfClass != 1651519798)
                  {
                    goto LABEL_39;
                  }

                  v28 = [v24 fetchAndRetain:v83];
                  if (v83[0])
                  {
                    goto LABEL_41;
                  }

                  v29 = v28;
                  v66 = objc_alloc((p_info + 471));
                  v30 = [v24 tag];
                  captureFrameFlags = [v24 captureFrameFlags];
                  metadataTag2 = [v24 metadataTag];
                  portType2 = [v24 portType];
                  compressionProfile2 = [v24 compressionProfile];
                  v49 = [v24 URL];
                  LODWORD(v47) = compressionProfile2;
                  v35 = v30;
                  v1 = v74;
                  isKindOfClass = [v66 initWithBuffer:v29 tag:v35 bufferType:37 captureFrameFlags:captureFrameFlags metadataTag:metadataTag2 portType:portType2 compressionProfile:? URL:?];
                  break;
              }

LABEL_36:
              v45 = isKindOfClass;
              if (isKindOfClass)
              {
                [*(v1 + 256) settingsID];
                [OUTLINED_FUNCTION_8() setSettingsID:?];
                [v72 setObject:v45 atIndexedSubscript:v20];
              }

              v21 = v76;
              v3 = v78;
              p_info = (BWNodeSampleBufferMessage + 32);
              goto LABEL_39;
            }

            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_39;
            }

            if ([objc_msgSend(v24 "tag")])
            {
              v26 = MEMORY[0x1E695DFD8];
              v27 = v70;
            }

            else if ([objc_msgSend(v24 "tag")])
            {
              v26 = MEMORY[0x1E695DFD8];
              v27 = v64;
            }

            else if ([objc_msgSend(v24 "tag")])
            {
              v26 = MEMORY[0x1E695DFD8];
              getVNFaceObservationClass();
              v27 = v54;
            }

            else
            {
              isKindOfClass = [objc_msgSend(v24 "tag")];
              if (!isKindOfClass)
              {
                goto LABEL_39;
              }

              v26 = MEMORY[0x1E695DFD8];
              getVNFaceObservationClass();
              v27 = v52;
            }

            isKindOfClass = [v26 setWithObject:objc_opt_class()];
            if (v27)
            {
              v44 = [v24 fetchWithCustomClassesAndRetain:isKindOfClass err:v83];
              if (v83[0])
              {
                goto LABEL_41;
              }

              isKindOfClass = -[BWDeferredInferenceArrayIntermediate initWithArray:tag:inferenceAttachmentKey:portType:URL:]([BWDeferredInferenceArrayIntermediate alloc], "initWithArray:tag:inferenceAttachmentKey:portType:URL:", v44, [v24 tag], v27, 0, objc_msgSend(v24, "URL"));
              goto LABEL_36;
            }
          }

LABEL_39:
          ++v20;
          ++v23;
        }

        while (v19 != v23);
        isKindOfClass = OUTLINED_FUNCTION_65_6(isKindOfClass, v12, v13, v14, v15, v16, v17, v18, v47, v49, context, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82);
        v19 = isKindOfClass;
      }

      while (isKindOfClass);
    }

LABEL_41:
    objc_autoreleasePoolPop(context);
    result = v83[0];
    if (!v83[0])
    {

      *(v1 + 280) = [v72 copy];
      return v83[0];
    }
  }

  return result;
}

- (uint64_t)hasBufferWithCaptureFrameFlags:(uint64_t)flags portType:
{
  if (!self)
  {
    return 0;
  }

  pthread_rwlock_rdlock((self + 16));
  OUTLINED_FUNCTION_33_0();
  v10[1] = 3221225472;
  v10[2] = __73__BWDeferredProcessingContainer_hasBufferWithCaptureFrameFlags_portType___block_invoke;
  v10[3] = &unk_1E7999900;
  v10[4] = flags;
  v10[5] = a2;
  [v6 indexOfObjectPassingTest:v10];
  OUTLINED_FUNCTION_79();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  pthread_rwlock_unlock((self + 16));
  return v8;
}

- (id)copyBuffersForType:(unint64_t)type portType:(id)portType metadataArray:(id *)array err:(int *)err
{
  v84[0] = 0;
  pthread_rwlock_rdlock(&self->super._lock);
  intermediates = self->super._intermediates;
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __79__BWDeferredProcessingContainer_copyBuffersForType_portType_metadataArray_err___block_invoke;
  v83[3] = &unk_1E7999900;
  v83[4] = portType;
  v83[5] = type;
  v13 = [(NSMutableArray *)self->super._intermediates objectsAtIndexes:[(NSMutableArray *)intermediates indexesOfObjectsPassingTest:v83]];
  if ([v13 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = array;
    if (array)
    {
      array = [MEMORY[0x1E695DF70] array];
      v23 = array;
    }

    else
    {
      v23 = 0;
    }

    v24 = OUTLINED_FUNCTION_64_8(array, v15, v16, v17, v18, v19, v20, v21, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, 0);
    if (v24)
    {
      v25 = v24;
      v47 = v6;
      errCopy = err;
      v26 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (MEMORY[0] != v26)
          {
            objc_enumerationMutation(v13);
          }

          v28 = *(8 * i);
          v29 = [v28 tag];
          metadataTag = [v28 metadataTag];
          v38 = metadataTag;
          if (v29)
          {
            v39 = [(BWDeferredProcessingContainer *)self copyBufferForTag:v29 err:v84];
            if (v39)
            {
              [v22 addObject:v39];
            }

            CVPixelBufferRelease(v39);
            if (v84[0])
            {
              goto LABEL_22;
            }
          }

          if (array && v38)
          {
            v40 = [(BWDeferredProcessingContainer *)self copyMetadataForTag:v38 err:v84];
            if (v40)
            {
              [v23 addObject:v40];
            }

            if (v84[0])
            {
LABEL_22:
              OUTLINED_FUNCTION_52_13();
              FigDebugAssert3();
              goto LABEL_23;
            }
          }
        }

        v25 = OUTLINED_FUNCTION_64_8(metadataTag, v31, v32, v33, v34, v35, v36, v37, v43, v45, v47, errCopy, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v82);
        if (v25)
        {
          continue;
        }

        break;
      }

LABEL_23:
      err = errCopy;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v84[0];
  }

  if (array)
  {
    *array = [v23 copy];
  }

  return [v22 copy];
}

- (id)copyAttributesForBufferType:(unint64_t)type portType:(id)portType err:(int *)err
{
  pthread_rwlock_rdlock(&self->super._lock);
  OUTLINED_FUNCTION_33_0();
  v17[1] = 3221225472;
  v17[2] = __74__BWDeferredProcessingContainer_copyAttributesForBufferType_portType_err___block_invoke;
  v17[3] = &unk_1E7999900;
  v17[4] = portType;
  v17[5] = type;
  [v9 indexOfObjectPassingTest:v17];
  OUTLINED_FUNCTION_79();
  if (!v11 && (v14 = v10, [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v10]&& (v15 = [(NSMutableArray *)self->super._intermediates objectAtIndexedSubscript:v14], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    attributes = [v15 attributes];
    v13 = 0;
  }

  else
  {
    attributes = 0;
    v13 = -16136;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (err)
  {
    *err = v13;
  }

  return attributes;
}

- (uint64_t)_copyObjectForTag:(uint64_t)tag customClasses:(int *)classes err:
{
  if (!self)
  {
    return 0;
  }

  v13 = 0;
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_rdlock((self + 16));
  v9 = [(BWDeferredContainer *)self _intermediateForTag:a2];
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 fetchWithCustomClassesAndRetain:tag err:&v13];
  }

  else
  {
    v11 = 0;
    v13 = -16136;
  }

  pthread_rwlock_unlock((self + 16));
  if (classes)
  {
    *classes = v13;
  }

  if (*v8 == 1)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v11;
}

- (id)copyArrayForTag:(id)tag customClasses:(id)classes err:(int *)err
{
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_40_15();
  OUTLINED_FUNCTION_18();
  if (v7)
  {
    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v8 = OUTLINED_FUNCTION_62_8();
  if (!v8)
  {
    OUTLINED_FUNCTION_25_18();
    v10 = OUTLINED_FUNCTION_30_9();
    v11 = OUTLINED_FUNCTION_20_15(v10);
    if (OUTLINED_FUNCTION_12(v11))
    {
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_54_9();
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_56_12();
    v12 = OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_20_15(v12);
    OUTLINED_FUNCTION_37_11();
    if (v6)
    {
      objc_opt_class();
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_54_9();
    }

LABEL_18:
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18();
  if (v7)
  {
    OUTLINED_FUNCTION_58_12(0x6D1u);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

LABEL_9:
  if (v5)
  {
    *v5 = v13;
  }

  if (v13)
  {
  }

  OUTLINED_FUNCTION_56();
  return result;
}

- (id)copyDictionaryForTag:(id)tag customClasses:(id)classes err:(int *)err
{
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_40_15();
  OUTLINED_FUNCTION_18();
  if (v7)
  {
    OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v8 = OUTLINED_FUNCTION_62_8();
  if (!v8)
  {
    OUTLINED_FUNCTION_25_18();
    v10 = OUTLINED_FUNCTION_30_9();
    v11 = OUTLINED_FUNCTION_20_15(v10);
    if (OUTLINED_FUNCTION_12(v11))
    {
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_54_9();
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_56_12();
    v12 = OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_20_15(v12);
    OUTLINED_FUNCTION_37_11();
    if (v6)
    {
      objc_opt_class();
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_54_9();
    }

LABEL_18:
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18();
  if (v7)
  {
    OUTLINED_FUNCTION_58_12(0x6D1u);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

LABEL_9:
  if (v5)
  {
    *v5 = v13;
  }

  if (v13)
  {
  }

  OUTLINED_FUNCTION_56();
  return result;
}

- (uint64_t)initWithXPCEncoding:(uint64_t)a1 applicationID:(uint64_t)a2 captureRequestIdentifier:baseFolderURL:err:.cold.1(uint64_t a1, uint64_t a2)
{
  [(BWDeferredContainer *)a1 _getUUIDBytes:a2 high:0];
  v3 = OUTLINED_FUNCTION_18_0();
  [(BWDeferredContainer *)v3 _getUUIDBytes:a2 high:1];
  OUTLINED_FUNCTION_38_11();

  return kdebug_trace();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.2()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.3()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.4()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.5()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.6()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.7()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.9()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.10()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.11()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.12()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (void)initWithXPCEncoding:applicationID:captureRequestIdentifier:baseFolderURL:err:.cold.13()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_16_30();
}

- (uint64_t)copyBufferForTag:(_DWORD *)a1 err:.cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *a1 = -16134;
  return result;
}

- (uint64_t)abortingProcessingDueToError:(void *)a3 .cold.1(uint64_t a1, id *a2, void *a3, uint64_t a4)
{
  [*a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", a1), @"PreviousError"}];
  *a3 = 0;
  result = [BWDeferredContainer archiveObjectWithURL:[(BWDeferredContainer *)a4 _containerSessionDataURL] object:*a2 error:a3];
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    return FigDebugAssert3();
  }

  return result;
}

@end