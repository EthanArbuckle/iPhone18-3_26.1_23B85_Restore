@interface FigCaptureOSStateHandle
+ (void)initialize;
- (id)_initWithTitle:(id)title queue:(id)queue dataProvider:(id)provider dataProviderBlock:(id)block;
- (id)description;
- (os_state_data_s)_osStateData:(os_state_hints_s *)data;
- (void)dealloc;
@end

@implementation FigCaptureOSStateHandle

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (id)_initWithTitle:(id)title queue:(id)queue dataProvider:(id)provider dataProviderBlock:(id)block
{
  if (!(provider | block))
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"A data provider or data provider block is required to create a FigCaptureOSStateHandle." userInfo:0]);
  }

  v17.receiver = self;
  v17.super_class = FigCaptureOSStateHandle;
  v10 = [(FigCaptureOSStateHandle *)&v17 init];
  if (v10)
  {
    v10->_title = title;
    if (queue)
    {
      queueCopy = queue;
    }

    else
    {
      queueCopy = dispatch_get_global_queue(0, 0);
    }

    v10->_queue = queueCopy;
    if (provider)
    {
      v12 = [[FigWeakReference alloc] initWithReferencedObject:provider];
      v13 = 24;
    }

    else
    {
      v12 = [block copy];
      v13 = 32;
    }

    *(&v10->super.isa + v13) = v12;
    objc_initWeak(&location, v10);
    objc_copyWeak(&v15, &location);
    v10->_osStateHandle = os_state_add_handler();
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v10;
}

uint64_t __79__FigCaptureOSStateHandle__initWithTitle_queue_dataProvider_dataProviderBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _osStateData:a2];
}

- (void)dealloc
{
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = FigCaptureOSStateHandle;
  [(FigCaptureOSStateHandle *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureOSStateHandle debugDescription](self, "debugDescription")];
}

- (os_state_data_s)_osStateData:(os_state_hints_s *)data
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [FigCaptureOSStateHandle _osStateData:];
  }

  if (data->var2 != 3)
  {
    return 0;
  }

  dataProviderWeakReference = self->_dataProviderWeakReference;
  if (dataProviderWeakReference)
  {
    v6 = [-[FigWeakReference referencedObject](dataProviderWeakReference "referencedObject")];
  }

  else
  {
    v6 = (*(self->_dataProviderBlock + 2))();
  }

  v7 = v6;
  v40 = objc_autoreleasePoolPush();
  if (getCameraCaptureExcessiveLog_cameraCaptureExcessiveLogOnceToken_1 != -1)
  {
    [FigCaptureOSStateHandle _osStateData:];
  }

  title = self->_title;
  v46 = 134218242;
  selfCopy = self;
  v48 = 2114;
  v49 = title;
  LODWORD(v32) = 22;
  v39 = _os_log_send_and_compose_impl();
  v9 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s ", v39, v32), "length"];
  context = objc_autoreleasePoolPush();
  v10 = malloc_type_malloc(0x2800uLL, 0x5D0CA644uLL);
  selfCopy2 = self;
  if (getCameraCaptureExcessiveLog_cameraCaptureExcessiveLogOnceToken_1 != -1)
  {
    [FigCaptureOSStateHandle _osStateData:];
  }

  v46 = 138543362;
  v41 = v7;
  selfCopy = v7;
  LODWORD(v33) = 12;
  v37 = v10;
  v36 = _os_log_send_and_compose_impl();
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{v36, &v46, v33}];
  v12 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s: ", "<<<< FigCaptureOSStateHandle >>>>", "-[FigCaptureOSStateHandle _osStateData:]"), "length"] + v9;
  if ((v12 + [v11 length]) >= 0x400)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [v11 componentsSeparatedByString:@"\n"];
    v13 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = &stru_1F216A3D0;
      v16 = *v52;
      v43 = v12;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v51 + 1) + 8 * i);
          if (-[__CFString length](v15, "length") && (v19 = -[__CFString length](v15, "length"), v20 = -[__CFString length](v18, "length"), (v12 + v19 + [@"\n..." length] + v20) > 0x3FF))
          {
            if (dword_1ED8446B0)
            {
              LODWORD(v45) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v12 = v43;
            }

            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v18, v34, v35];
          }

          else
          {
            if (![(__CFString *)v15 length])
            {
              v15 = v18;
              continue;
            }

            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v15, @"\n", v18];
          }

          v15 = v21;
        }

        v14 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
      }

      while (v14);
    }
  }

  if (dword_1ED8446B0)
  {
    LODWORD(v45) = 0;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  free(v37);
  if (v36 != v37)
  {
    free(v36);
  }

  objc_autoreleasePoolPop(context);
  free(v39);
  objc_autoreleasePoolPop(v40);
  v45 = 0;
  v24 = [MEMORY[0x1E696AE40] dataWithPropertyList:v41 format:100 options:0 error:&v45];
  if (v45)
  {
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  v26 = v24;
  if ([v24 length] > 0x8000)
  {
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CameraCapture - %@", selfCopy2->_title, v34];
  v31 = [v26 length];
  v28 = malloc_type_calloc(1uLL, v31 + 200, 0x1000040BEF03554uLL);
  [v30 UTF8String];
  __strlcpy_chk();
  v28->var0 = 1;
  v28->var1.var1 = v31;
  [v26 getBytes:v28->var4 length:v31];
  return v28;
}

@end