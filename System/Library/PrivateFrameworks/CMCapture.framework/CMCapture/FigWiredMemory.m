@interface FigWiredMemory
+ (void)initialize;
- (FigWiredMemory)initWithLength:(unint64_t)a3;
- (void)dealloc;
@end

@implementation FigWiredMemory

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigWiredMemory)initWithLength:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = FigWiredMemory;
  v4 = [(FigWiredMemory *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v6 = (a3 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    *(v4 + 3) = v6;
    if (vm_allocate(*MEMORY[0x1E69E9A60], v4 + 1, v6, 1694498817) || (bytes = v5->_bytes) == 0)
    {
      FigDebugAssert3();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      ReportMemoryException();

      return 0;
    }

    else
    {
      if (mlock(bytes, v5->_roundedLength))
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        ReportMemoryException();
        v9 = 0;
      }

      else
      {
        v9 = 1;
      }

      v5->_isWired = v9;
      v5->_length = a3;
    }
  }

  return v5;
}

- (void)dealloc
{
  bytes = self->_bytes;
  if (bytes)
  {
    if (self->_isWired && munlock(bytes, self->_roundedLength))
    {
      v17 = 0;
      v16 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (MEMORY[0x1B26F2A20](*MEMORY[0x1E69E9A60], self->_bytes, self->_roundedLength))
    {
      v17 = 0;
      v16 = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v6 = v17;
      if (os_log_type_enabled(v5, v16))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = self->_bytes;
        v12 = 136315394;
        v13 = "[FigWiredMemory dealloc]";
        v14 = 2048;
        v15 = v8;
        v10 = 22;
        v9 = &v12;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v11.receiver = self;
  v11.super_class = FigWiredMemory;
  [(FigWiredMemory *)&v11 dealloc:v9];
}

@end