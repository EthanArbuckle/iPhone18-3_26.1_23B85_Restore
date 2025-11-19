@interface BWDeferredContainerManagerBase
+ (void)initialize;
- (BWDeferredContainerManagerBase)initWithQueuePriority:(unsigned int)a3;
- (id)manifestForApplicationID:(id)a3 captureRequestIdentifier:(id)a4 err:(int *)a5;
- (id)manifestsForApplicationID:(id)a3 err:(int *)a4;
- (int)deleteContainerForApplicationID:(id)a3 captureRequestIdentifier:(id)a4;
- (void)_containerURLForApplicationID:(uint64_t)a3 captureRequestIdentifier:(int)a4 processingContainer:(char *)a5 exists:(_BYTE *)a6 isDirectory:(void *)a7 resolvedApplicationID:;
- (void)_insertUniqueManifestIntoTimeSortedArray:(uint64_t)a1 manifestArray:;
@end

@implementation BWDeferredContainerManagerBase

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWDeferredContainerManagerBase)initWithQueuePriority:(unsigned int)a3
{
  v6.receiver = self;
  v6.super_class = BWDeferredContainerManagerBase;
  v3 = [(BWDeferredContainerManagerBase *)&v6 init];
  v4 = v3;
  if (v3)
  {
    pthread_rwlock_init(&v3->_lock, 0);
    v4->_timerQueue = FigDispatchQueueCreateWithPriority();
    v4->_deletionQueue = FigDispatchQueueCreateWithPriority();
  }

  return v4;
}

uint64_t __89__BWDeferredContainerManagerBase__insertUniqueManifestIntoTimeSortedArray_manifestArray___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [BWDeferredCaptureContainer timeForManifest:a2 index:0];
  v5 = [BWDeferredCaptureContainer timeForManifest:a3 index:0];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v5)
    {
      v7 = -1;
    }

    else
    {
      v7 = 0;
    }

    if (v4)
    {
      return 1;
    }

    else
    {
      return v7;
    }
  }

  else
  {

    return [v4 compare:v5];
  }
}

- (id)manifestsForApplicationID:(id)a3 err:(int *)a4
{
  if (a4)
  {
    *a4 = -16134;
  }

  return 0;
}

- (id)manifestForApplicationID:(id)a3 captureRequestIdentifier:(id)a4 err:(int *)a5
{
  v14 = 0;
  if (!a3)
  {
    [BWDeferredContainerManagerBase manifestForApplicationID:captureRequestIdentifier:err:];
    v6 = 0;
    goto LABEL_5;
  }

  v6 = a4;
  if (!a4)
  {
    [BWDeferredContainerManagerBase manifestForApplicationID:captureRequestIdentifier:err:];
    goto LABEL_5;
  }

  v13 = 0;
  [(BWDeferredContainerManagerBase *)self _containerURLForApplicationID:a3 captureRequestIdentifier:a4 processingContainer:1 exists:0 isDirectory:0 resolvedApplicationID:&v13];
  v7 = MEMORY[0x1E695DFF8];
  v15[0] = @"/var/mobile/Media/Deferred/CaptureContainers";
  v15[1] = v13;
  v15[2] = v6;
  v12[0] = [objc_msgSend(MEMORY[0x1E695DFF8] fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 3)), "path"}];
  v12[1] = @"manifest.plist";
  v8 = [v7 fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 2)}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v8 error:&v14];
  if ([v6 count])
  {
    v9 = v6;
LABEL_5:
    v10 = 0;
    goto LABEL_10;
  }

  if (v14)
  {
    v10 = [v14 code];
  }

  else
  {
    v10 = -16824;
  }

LABEL_10:
  *a5 = v10;
  return v6;
}

- (int)deleteContainerForApplicationID:(id)a3 captureRequestIdentifier:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      v11 = 0;
      v10 = 0;
      v6 = [(BWDeferredContainerManagerBase *)self _containerURLForApplicationID:a3 captureRequestIdentifier:a4 processingContainer:1 exists:&v10 isDirectory:0 resolvedApplicationID:&v11];
      if (v10 == 1)
      {
        deletionQueue = self->_deletionQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __91__BWDeferredContainerManagerBase_deleteContainerForApplicationID_captureRequestIdentifier___block_invoke;
        block[3] = &unk_1E798FD58;
        block[4] = v11;
        block[5] = a4;
        block[6] = v6;
        dispatch_async(deletionQueue, block);
      }
    }

    else
    {
      [BWDeferredContainerManagerBase deleteContainerForApplicationID:captureRequestIdentifier:];
    }
  }

  else
  {
    [BWDeferredContainerManagerBase deleteContainerForApplicationID:captureRequestIdentifier:];
  }

  return 0;
}

uint64_t __91__BWDeferredContainerManagerBase_deleteContainerForApplicationID_captureRequestIdentifier___block_invoke(uint64_t a1)
{
  if (dword_1EB58E460)
  {
    LODWORD(v8) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *type = 66565;
  v8 = 0;
  fsctl([objc_msgSend(*(a1 + 48) path], 0xC0084A44uLL, type, 0);
  result = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v8)
  {
    if (dword_1EB58E460)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

- (void)_containerURLForApplicationID:(uint64_t)a3 captureRequestIdentifier:(int)a4 processingContainer:(char *)a5 exists:(_BYTE *)a6 isDirectory:(void *)a7 resolvedApplicationID:
{
  if (!a1)
  {
    return 0;
  }

  v12 = a2;
  v32 = @"/var/mobile/Media/Deferred/CaptureContainers";
  v33 = a2;
  v34 = a3;
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v32, 3)}];
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v42[0] = 0;
  if ([v14 fileExistsAtPath:objc_msgSend(v13 isDirectory:{"path"), v42}])
  {
    v15 = 1;
LABEL_24:
    v23 = [v12 copy];
    goto LABEL_25;
  }

  if ([v12 isEqualToString:0x1F216ED50])
  {
    if (!a4)
    {
      goto LABEL_23;
    }
  }

  else if (![v12 isEqualToString:0x1F2185190] || (a4 & 1) == 0)
  {
    v28 = a4;
    v29 = v12;
    v30 = a5;
    v31 = a7;
    goto LABEL_21;
  }

  v28 = a4;
  v29 = v12;
  v30 = a5;
  v31 = a7;
  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Media/Deferred/CaptureContainers"];
  v18 = [v16 enumeratorAtURL:v17 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:5 errorHandler:0];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v12 = [*(*(&v38 + 1) + 8 * i) lastPathComponent];
        if (([v12 isEqualToString:0x1F216ED50] & 1) == 0)
        {
          v32 = @"/var/mobile/Media/Deferred/CaptureContainers";
          v33 = v12;
          v34 = a3;
          v13 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v32, 3)}];
          if ([v14 fileExistsAtPath:objc_msgSend(v13 isDirectory:{"path"), v42}])
          {
            v15 = 1;
            a5 = v30;
            goto LABEL_24;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v38 objects:v37 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
  a5 = v30;
  a7 = v31;
  v12 = v29;
  if ((v28 & 1) == 0)
  {
LABEL_23:
    v32 = @"/var/mobile/Media/Deferred/CaptureContainers";
    v33 = v12;
    v34 = a3;
    v13 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v32, 3)}];
    v15 = 0;
    goto LABEL_24;
  }

  v15 = 0;
  v23 = 0;
LABEL_25:
  if (dword_1EB58E460)
  {
    v36 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = v36;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_21();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    *a5 = v15;
  }

  if (a6)
  {
    *a6 = v42[0];
  }

  if (a7)
  {
    *a7 = v23;
  }

  return v13;
}

- (void)_insertUniqueManifestIntoTimeSortedArray:(uint64_t)a1 manifestArray:
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_10();
    v3 = v1;
    if (v1 && (v4 = v2) != 0 && ((v5 = [v2 indexOfObject:v1 inSortedRange:0 options:objc_msgSend(v2 usingComparator:{"count"), 1280, &__block_literal_global_59}], v5 >= objc_msgSend(v4, "count")) || !objc_msgSend(+[BWDeferredCaptureContainer captureRequestIdentifierForManifest:](BWDeferredCaptureContainer, "captureRequestIdentifierForManifest:", v3), "isEqualToString:", +[BWDeferredCaptureContainer captureRequestIdentifierForManifest:](BWDeferredCaptureContainer, "captureRequestIdentifierForManifest:", objc_msgSend(v4, "objectAtIndexedSubscript:", v5)))))
    {
      [v4 insertObject:v3 atIndex:v5];
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_24_12();
  }
}

@end