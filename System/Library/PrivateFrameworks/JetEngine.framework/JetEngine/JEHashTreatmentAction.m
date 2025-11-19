@interface JEHashTreatmentAction
- (JEHashTreatmentAction)initWithField:(id)a3 configuration:(id)a4 topic:(id)a5;
- (id)hashOf:(id)a3 userId:(id)a4;
- (id)performAction:(id)a3 context:(id)a4;
@end

@implementation JEHashTreatmentAction

- (JEHashTreatmentAction)initWithField:(id)a3 configuration:(id)a4 topic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = JEHashTreatmentAction;
  v11 = [(JETreatmentAction *)&v23 initWithField:v8 configuration:v9];
  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:@"scheme"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v9 objectForKeyedSubscript:@"crossDeviceSync"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 objectForKeyedSubscript:@"namespace"];
    if (!v16)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [MEMORY[0x1E696AAE8] mainBundle];
      v19 = [v18 bundleIdentifier];
      v20 = v19;
      if (!v19)
      {
        v22 = [MEMORY[0x1E696AE30] processInfo];
        v20 = [v22 processName];
      }

      v16 = [v17 stringWithFormat:@"%@.%lx", v20, objc_msgSend(v8, "hash")];
      if (!v19)
      {
      }
    }

    [(JEHashTreatmentAction *)v11 setNamespace:v16];
    [(JEHashTreatmentAction *)v11 setConfiguration:v9];
    [(JEHashTreatmentAction *)v11 setTopic:v10];
    -[JEHashTreatmentAction setCrossDeviceSync:](v11, "setCrossDeviceSync:", [v15 BOOLValue]);
  }

  return v11;
}

- (id)hashOf:(id)a3 userId:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = [(JEHashTreatmentAction *)self namespace];
  v10 = [(JEHashTreatmentAction *)self topic];
  v11 = [MEMORY[0x1E698CA18] keyWithName:@"userID" crossDeviceSync:{-[JEHashTreatmentAction crossDeviceSync](self, "crossDeviceSync")}];
  v12 = [(JEHashTreatmentAction *)self configuration];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __39__JEHashTreatmentAction_hashOf_userId___block_invoke;
  v19[3] = &unk_1E794AC90;
  v21 = &v22;
  v13 = v8;
  v20 = v13;
  [_TtC9JetEngine23JEMetricsSecretMigrator migrateSecretIfNecessaryAndReturnSecretValueWithNamespace:v9 topic:v10 secretKey:v11 configuration:v12 completionHandler:v19];

  v14 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v13, v14);
  if (v23[5])
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@", v6, v23[5], v7];
    v16 = [v15 je_SHA1Base62String];
  }

  else
  {
    v15 = JEMetricsOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = [(JEHashTreatmentAction *)self namespace];
      *buf = 138412290;
      v29 = v17;
      _os_log_impl(&dword_1AB012000, v15, OS_LOG_TYPE_ERROR, "JetEngine: Failed to retrieve secret salt for namespace %@", buf, 0xCu);
    }

    v16 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v16;
}

void __39__JEHashTreatmentAction_hashOf_userId___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)performAction:(id)a3 context:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = JEHashTreatmentAction;
  v7 = [(JETreatmentAction *)&v15 performAction:a3 context:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 stringValue];
LABEL_8:
    v9 = v8;
    v10 = [(JETreatmentContext *)v6 metrics];
    v11 = [v10 objectForKeyedSubscript:@"userId"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(JEHashTreatmentAction *)self hashOf:v9 userId:v12];

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [v7 description];
    goto LABEL_8;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

@end