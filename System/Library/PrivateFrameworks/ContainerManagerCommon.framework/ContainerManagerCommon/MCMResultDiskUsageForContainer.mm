@interface MCMResultDiskUsageForContainer
+ (id)_reportingWorkloop;
- (BOOL)encodeResultOntoReply:(id)a3;
- (MCMResultDiskUsageForContainer)initWithDiskUsageBytes:(unint64_t)a3 descendants:(unint64_t)a4 containerClass:(unint64_t)a5 personaType:(int)a6;
- (int)personaType;
- (unint64_t)_roundToTwoSignificantDigitsWithNumber:(unint64_t)a3;
- (unint64_t)containerClass;
- (unint64_t)descendants;
- (unint64_t)diskUsageBytes;
- (void)_report;
- (void)setContainerClass:(unint64_t)a3;
- (void)setDescendants:(unint64_t)a3;
- (void)setDiskUsageBytes:(unint64_t)a3;
- (void)setPersonaType:(int)a3;
@end

@implementation MCMResultDiskUsageForContainer

- (void)setPersonaType:(int)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_personaType = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (int)personaType
{
  result = self->_personaType;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setContainerClass:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_containerClass = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (unint64_t)containerClass
{
  result = self->_containerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setDescendants:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_descendants = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (unint64_t)descendants
{
  result = self->_descendants;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setDiskUsageBytes:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_diskUsageBytes = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (unint64_t)diskUsageBytes
{
  result = self->_diskUsageBytes;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)_roundToTwoSignificantDigitsWithNumber:(unint64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = log10(a3);
  v5 = __exp10(ceil(v4) + -2.0);
  v6 = *MEMORY[0x1E69E9840];
  return (v5 * floor(v3 / v5 + 0.5));
}

- (void)_report
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(MCMResultDiskUsageForContainer *)self _roundToTwoSignificantDigitsWithNumber:self->_descendants];
  v4 = [(MCMResultDiskUsageForContainer *)self _roundToTwoSignificantDigitsWithNumber:self->_diskUsageBytes];
  personaType = self->_personaType;
  containerClass = self->_containerClass;
  v7 = container_log_handle_for_category();
  v8 = os_signpost_id_make_with_pointer(v7, self);

  v9 = [objc_opt_class() _reportingWorkloop];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__MCMResultDiskUsageForContainer__report__block_invoke;
  v11[3] = &__block_descriptor_68_e5_v8__0l;
  v12 = personaType;
  v11[4] = containerClass;
  v11[5] = v8;
  v11[6] = v3;
  v11[7] = v4;
  dispatch_async(v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __41__MCMResultDiskUsageForContainer__report__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  switch(v2)
  {
    case 7:
      v14 = *(a1 + 64);
      if (v14 == 1)
      {
        v21 = container_log_handle_for_category();
        v5 = v21;
        v6 = *(a1 + 40);
        if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
        {
          goto LABEL_29;
        }

        v22 = *(a1 + 48);
        v23 = *(a1 + 56);
        v28 = 134349312;
        v29 = v22;
        v30 = 2050;
        v31 = v23;
        v9 = "DiskUsage_Managed_appGroup";
        goto LABEL_28;
      }

      if (!v14)
      {
        v15 = container_log_handle_for_category();
        v5 = v15;
        v6 = *(a1 + 40);
        if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v15))
        {
          goto LABEL_29;
        }

        v16 = *(a1 + 48);
        v17 = *(a1 + 56);
        v28 = 134349312;
        v29 = v16;
        v30 = 2050;
        v31 = v17;
        v9 = "DiskUsage_appGroup";
        goto LABEL_28;
      }

      break;
    case 4:
      v10 = *(a1 + 64);
      if (v10 == 1)
      {
        v18 = container_log_handle_for_category();
        v5 = v18;
        v6 = *(a1 + 40);
        if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
        {
          goto LABEL_29;
        }

        v19 = *(a1 + 48);
        v20 = *(a1 + 56);
        v28 = 134349312;
        v29 = v19;
        v30 = 2050;
        v31 = v20;
        v9 = "DiskUsage_Managed_pluginData";
        goto LABEL_28;
      }

      if (!v10)
      {
        v11 = container_log_handle_for_category();
        v5 = v11;
        v6 = *(a1 + 40);
        if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v11))
        {
          goto LABEL_29;
        }

        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        v28 = 134349312;
        v29 = v12;
        v30 = 2050;
        v31 = v13;
        v9 = "DiskUsage_pluginData";
        goto LABEL_28;
      }

      break;
    case 2:
      v3 = *(a1 + 64);
      if (v3 == 1)
      {
        v24 = container_log_handle_for_category();
        v5 = v24;
        v6 = *(a1 + 40);
        if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v24))
        {
          goto LABEL_29;
        }

        v25 = *(a1 + 48);
        v26 = *(a1 + 56);
        v28 = 134349312;
        v29 = v25;
        v30 = 2050;
        v31 = v26;
        v9 = "DiskUsage_Managed_appData";
        goto LABEL_28;
      }

      if (!v3)
      {
        v4 = container_log_handle_for_category();
        v5 = v4;
        v6 = *(a1 + 40);
        if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v4))
        {
          goto LABEL_29;
        }

        v7 = *(a1 + 48);
        v8 = *(a1 + 56);
        v28 = 134349312;
        v29 = v7;
        v30 = 2050;
        v31 = v8;
        v9 = "DiskUsage_appData";
LABEL_28:
        _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v5, OS_SIGNPOST_EVENT, v6, v9, " enableTelemetry=YES  descendants=%{public, signpost.telemetry:number1}llu bytes=%{public, signpost.telemetry:number2}llu", &v28, 0x16u);
LABEL_29:
      }

      break;
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MCMResultDiskUsageForContainer;
  v5 = [(MCMResultBase *)&v9 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];

    if (!v6)
    {
      xpc_dictionary_set_uint64(v4, "ReplyDiskUsage", [(MCMResultDiskUsageForContainer *)self diskUsageBytes]);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMResultDiskUsageForContainer)initWithDiskUsageBytes:(unint64_t)a3 descendants:(unint64_t)a4 containerClass:(unint64_t)a5 personaType:(int)a6
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MCMResultDiskUsageForContainer;
  v10 = [(MCMResultBase *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_diskUsageBytes = a3;
    v10->_descendants = a4;
    v10->_containerClass = a5;
    v10->_personaType = a6;
    [(MCMResultDiskUsageForContainer *)v10 _report];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)_reportingWorkloop
{
  v5 = *MEMORY[0x1E69E9840];
  if (_reportingWorkloop_onceToken != -1)
  {
    dispatch_once(&_reportingWorkloop_onceToken, &__block_literal_global_14728);
  }

  v2 = _reportingWorkloop_workloop;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __52__MCMResultDiskUsageForContainer__reportingWorkloop__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  _reportingWorkloop_workloop = dispatch_workloop_create("com.apple.containermanagerd.disk-usage-reporting");
  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

@end