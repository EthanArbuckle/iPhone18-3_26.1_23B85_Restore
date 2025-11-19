@interface FIUIStateMachineExporter
+ (void)exportWithName:(id)a3 graphDescription:(id)a4;
@end

@implementation FIUIStateMachineExporter

+ (void)exportWithName:(id)a3 graphDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    v7 = dispatch_get_global_queue(17, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__FIUIStateMachineExporter_exportWithName_graphDescription___block_invoke;
    v8[3] = &unk_1E878BFB8;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, v8);
  }
}

void __60__FIUIStateMachineExporter_exportWithName_graphDescription___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = (a1 + 32);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@.dot", *(a1 + 32)];
  v6 = [v3 stringByAppendingPathComponent:v5];

  _HKInitializeLogging();
  v7 = MEMORY[0x1E696B9A8];
  v8 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *v4;
    *buf = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1E5D0F000, v8, OS_LOG_TYPE_DEFAULT, "[%@] Writing finite state machine dot file to: %@", buf, 0x16u);
  }

  v10 = *(a1 + 40);
  v13 = 0;
  [v10 writeToFile:v6 atomically:0 encoding:4 error:&v13];
  v11 = v13;
  if (v11)
  {
    _HKInitializeLogging();
    v12 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      __60__FIUIStateMachineExporter_exportWithName_graphDescription___block_invoke_cold_1(v4, v11, v12);
    }
  }
}

void __60__FIUIStateMachineExporter_exportWithName_graphDescription___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1E5D0F000, log, OS_LOG_TYPE_ERROR, "[%@] Could not write finite state machine dot file with error: %@", &v4, 0x16u);
}

@end