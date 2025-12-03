@interface FigCaptureTempFileRemover
- (FigCaptureTempFileRemover)init;
- (void)_removeStaleTempFilesInFolderURL:(id)l;
- (void)_scheduleNextFileRemove;
- (void)dealloc;
@end

@implementation FigCaptureTempFileRemover

- (FigCaptureTempFileRemover)init
{
  v9.receiver = self;
  v9.super_class = FigCaptureTempFileRemover;
  v2 = [(FigCaptureTempFileRemover *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_1AD0464F0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
    *(v3 + 3) = dispatch_queue_create("com.apple.coremedia.tempfileremover", v5);
    *(v3 + 4) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{FigCaptureStateDumpDirectory(), 0}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__FigCaptureTempFileRemover_init__block_invoke;
    v8[3] = &unk_1E798F870;
    v8[4] = v3;
    v6 = [v8 copy];
    *(v3 + 5) = v6;
    dispatch_async(*(v3 + 3), v6);
  }

  return v3;
}

uint64_t __33__FigCaptureTempFileRemover_init__block_invoke(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _removeStaleTempFilesInFolderURL:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", *(*(&v9 + 1) + 8 * i))}];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) _scheduleNextFileRemove];
}

- (void)dealloc
{
  dispatch_sync(self->_queue, &__block_literal_global_8);

  v3.receiver = self;
  v3.super_class = FigCaptureTempFileRemover;
  [(FigCaptureTempFileRemover *)&v3 dealloc];
}

- (void)_scheduleNextFileRemove
{
  v3 = dispatch_time(0, (self->_checkTimeSeconds * 1000000000.0));
  queue = self->_queue;
  fileRemoverBlock = self->_fileRemoverBlock;

  dispatch_after(v3, queue, fileRemoverBlock);
}

- (void)_removeStaleTempFilesInFolderURL:(id)l
{
  v69[0] = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager contentsOfDirectoryAtURL:l includingPropertiesForKeys:objc_msgSend(MEMORY[0x1E695DEC8] options:"array") error:{0, v69}];
  if (!v69[0])
  {
    v7 = v6;
    v8 = [MEMORY[0x1E695DF00] now];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v16 = OUTLINED_FUNCTION_0_18(v8, v9, v10, v11, v12, v13, v14, v15, v35, v37, v39, v41, v42, v44, *v46, *&v46[8], *&v46[16], v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    if (v16)
    {
      v18 = v16;
      v19 = *v66;
      *&v17 = 136315394;
      v40 = v17;
      v43 = v8;
      selfCopy = self;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v66 != v19)
          {
            objc_enumerationMutation(v7);
          }

          v21 = *(*(&v65 + 1) + 8 * i);
          v22 = [defaultManager attributesOfItemAtPath:objc_msgSend(v21 error:{"path", v36, v38), v69}];
          if (!v69[0])
          {
            v22 = [v8 timeIntervalSinceDate:{objc_msgSend(v22, "fileCreationDate")}];
            if (v30 >= self->_staleTimeSeconds)
            {
              v22 = [defaultManager removeItemAtPath:objc_msgSend(v21 error:{"path"), v69}];
              if (v22)
              {
                if (dword_1EB58DD80)
                {
                  HIDWORD(v63) = 0;
                  BYTE3(v63) = 0;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v32 = HIDWORD(v63);
                  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v63)))
                  {
                    v33 = v32;
                  }

                  else
                  {
                    v33 = v32 & 0xFFFFFFFE;
                  }

                  if (v33)
                  {
                    path = [v21 path];
                    *v46 = v40;
                    *&v46[4] = "[FigCaptureTempFileRemover _removeStaleTempFilesInFolderURL:]";
                    *&v46[12] = 2114;
                    *&v46[14] = path;
                    LODWORD(v38) = 22;
                    v36 = v46;
                    _os_log_send_and_compose_impl();
                  }

                  v22 = fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v8 = v43;
                  self = selfCopy;
                }
              }
            }
          }
        }

        v18 = OUTLINED_FUNCTION_0_18(v22, v23, v24, v25, v26, v27, v28, v29, v36, v38, v40, *(&v40 + 1), v43, selfCopy, *v46, *&v46[8], *&v46[16], v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      }

      while (v18);
    }
  }
}

@end