@interface DEDaemonHelper
+ (id)generateSandboxExtensionWithDestinationDir:(id)a3 pingTarget:(id)a4;
@end

@implementation DEDaemonHelper

+ (id)generateSandboxExtensionWithDestinationDir:(id)a3 pingTarget:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_semaphore_create(0);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __72__DEDaemonHelper_generateSandboxExtensionWithDestinationDir_pingTarget___block_invoke;
  v39 = &unk_278F63A88;
  v41 = &v42;
  v8 = v7;
  v40 = v8;
  [v6 ping:&v36];
  v9 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = Log_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(DEDaemonHelper *)v10 generateSandboxExtensionWithDestinationDir:v11 pingTarget:v12, v13, v14, v15, v16, v17];
    }

LABEL_4:
    v18 = 0;
    goto LABEL_5;
  }

  if (!*(v43 + 6))
  {
    v10 = Log_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(DEDaemonHelper *)v10 generateSandboxExtensionWithDestinationDir:v29 pingTarget:v30, v31, v32, v33, v34, v35];
    }

    goto LABEL_4;
  }

  v20 = [v5 generateSandboxExtensionForProcess:{v36, v37, v38, v39}];
  v10 = v20;
  if (!v20 || ![v20 length])
  {
    v21 = Log_1();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(DEDaemonHelper *)v21 generateSandboxExtensionWithDestinationDir:v22 pingTarget:v23, v24, v25, v26, v27, v28];
    }

    goto LABEL_4;
  }

  v10 = v10;
  v18 = v10;
LABEL_5:

  _Block_object_dispose(&v42, 8);

  return v18;
}

@end