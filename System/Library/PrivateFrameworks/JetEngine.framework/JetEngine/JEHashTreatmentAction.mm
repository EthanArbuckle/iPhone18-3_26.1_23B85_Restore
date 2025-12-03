@interface JEHashTreatmentAction
- (JEHashTreatmentAction)initWithField:(id)field configuration:(id)configuration topic:(id)topic;
- (id)hashOf:(id)of userId:(id)id;
- (id)performAction:(id)action context:(id)context;
@end

@implementation JEHashTreatmentAction

- (JEHashTreatmentAction)initWithField:(id)field configuration:(id)configuration topic:(id)topic
{
  fieldCopy = field;
  configurationCopy = configuration;
  topicCopy = topic;
  v23.receiver = self;
  v23.super_class = JEHashTreatmentAction;
  v11 = [(JETreatmentAction *)&v23 initWithField:fieldCopy configuration:configurationCopy];
  if (v11)
  {
    v12 = [configurationCopy objectForKeyedSubscript:@"scheme"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [configurationCopy objectForKeyedSubscript:@"crossDeviceSync"];
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
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      processName = bundleIdentifier;
      if (!bundleIdentifier)
      {
        processInfo = [MEMORY[0x1E696AE30] processInfo];
        processName = [processInfo processName];
      }

      v16 = [v17 stringWithFormat:@"%@.%lx", processName, objc_msgSend(fieldCopy, "hash")];
      if (!bundleIdentifier)
      {
      }
    }

    [(JEHashTreatmentAction *)v11 setNamespace:v16];
    [(JEHashTreatmentAction *)v11 setConfiguration:configurationCopy];
    [(JEHashTreatmentAction *)v11 setTopic:topicCopy];
    -[JEHashTreatmentAction setCrossDeviceSync:](v11, "setCrossDeviceSync:", [v15 BOOLValue]);
  }

  return v11;
}

- (id)hashOf:(id)of userId:(id)id
{
  v30 = *MEMORY[0x1E69E9840];
  ofCopy = of;
  idCopy = id;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  namespace = [(JEHashTreatmentAction *)self namespace];
  topic = [(JEHashTreatmentAction *)self topic];
  v11 = [MEMORY[0x1E698CA18] keyWithName:@"userID" crossDeviceSync:{-[JEHashTreatmentAction crossDeviceSync](self, "crossDeviceSync")}];
  configuration = [(JEHashTreatmentAction *)self configuration];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __39__JEHashTreatmentAction_hashOf_userId___block_invoke;
  v19[3] = &unk_1E794AC90;
  v21 = &v22;
  v13 = v8;
  v20 = v13;
  [_TtC9JetEngine23JEMetricsSecretMigrator migrateSecretIfNecessaryAndReturnSecretValueWithNamespace:namespace topic:topic secretKey:v11 configuration:configuration completionHandler:v19];

  v14 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v13, v14);
  if (v23[5])
  {
    idCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@", ofCopy, v23[5], idCopy];
    je_SHA1Base62String = [idCopy je_SHA1Base62String];
  }

  else
  {
    idCopy = JEMetricsOSLog();
    if (os_log_type_enabled(idCopy, OS_LOG_TYPE_ERROR))
    {
      namespace2 = [(JEHashTreatmentAction *)self namespace];
      *buf = 138412290;
      v29 = namespace2;
      _os_log_impl(&dword_1AB012000, idCopy, OS_LOG_TYPE_ERROR, "JetEngine: Failed to retrieve secret salt for namespace %@", buf, 0xCu);
    }

    je_SHA1Base62String = 0;
  }

  _Block_object_dispose(&v22, 8);

  return je_SHA1Base62String;
}

void __39__JEHashTreatmentAction_hashOf_userId___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)performAction:(id)action context:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = JEHashTreatmentAction;
  v7 = [(JETreatmentAction *)&v15 performAction:action context:contextCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v7 stringValue];
LABEL_8:
    v9 = stringValue;
    metrics = [(JETreatmentContext *)contextCopy metrics];
    v11 = [metrics objectForKeyedSubscript:@"userId"];

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
    stringValue = v7;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    stringValue = [v7 description];
    goto LABEL_8;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

@end