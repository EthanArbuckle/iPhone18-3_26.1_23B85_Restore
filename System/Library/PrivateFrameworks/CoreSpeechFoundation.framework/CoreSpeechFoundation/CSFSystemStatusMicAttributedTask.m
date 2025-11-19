@interface CSFSystemStatusMicAttributedTask
- (CSFSystemStatusMicAttributedTask)initWithTaskName:(id)a3 taskBundleIdentifier:(id)a4 auditToken:(id *)a5 taskExecutablePath:(id)a6 activeTask:(id)a7;
- (id)description;
@end

@implementation CSFSystemStatusMicAttributedTask

- (id)description
{
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  v3 = CSIsInternalBuild_isInternal;
  activeTask = self->_activeTask;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(CSFSystemStatusAttributedTask *)self taskName];
  v7 = [(CSFSystemStatusAttributedTask *)self taskBundleIdentifier];
  v8 = v7;
  if (v3 == 1)
  {
    if (!activeTask)
    {
      [(CSFSystemStatusAttributedTask *)self auditToken];
      v19 = [CSUtils auditTokenToString:v22];
      v18 = [v5 stringWithFormat:@"task-name: %@, task-bundle-identifier: %@, audit-token: %@", v6, v8, v19];

      goto LABEL_14;
    }

    [(CSFSystemStatusAttributedTask *)self auditToken];
    v9 = [CSUtils auditTokenToString:v22];
    v10 = [(CSFSystemStatusMicAttributedTask *)self activeTask];
    v11 = [v10 taskName];
    v12 = [(CSFSystemStatusMicAttributedTask *)self activeTask];
    v13 = [v12 taskBundleIdentifier];
    v14 = [(CSFSystemStatusMicAttributedTask *)self activeTask];
    v15 = v14;
    if (v14)
    {
      [v14 auditToken];
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    v20 = [CSUtils auditTokenToString:v22];
    v18 = [v5 stringWithFormat:@"task-name: %@, task-bundle-identifier: %@, audit-token: %@ [active task == task-name: %@, task-bundle-identifier: %@, audit-token: %@]", v6, v8, v9, v11, v13, v20];
  }

  else
  {
    if (!activeTask)
    {
      v18 = [v5 stringWithFormat:@"task-name: %@, task-bundle-identifier: %@", v6, v7];
      goto LABEL_14;
    }

    v9 = [(CSFSystemStatusMicAttributedTask *)self activeTask];
    v10 = [v9 taskName];
    v16 = [(CSFSystemStatusMicAttributedTask *)self activeTask];
    v17 = [v16 taskBundleIdentifier];
    v18 = [v5 stringWithFormat:@"task-name: %@, task-bundle-identifier: %@ [active task = task-name: %@, task-bundle-identifier: %@]", v6, v8, v10, v17];
  }

LABEL_14:

  return v18;
}

- (CSFSystemStatusMicAttributedTask)initWithTaskName:(id)a3 taskBundleIdentifier:(id)a4 auditToken:(id *)a5 taskExecutablePath:(id)a6 activeTask:(id)a7
{
  v12 = a7;
  v18.receiver = self;
  v18.super_class = CSFSystemStatusMicAttributedTask;
  v13 = *&a5->var0[4];
  v17[0] = *a5->var0;
  v17[1] = v13;
  v14 = [(CSFSystemStatusAttributedTask *)&v18 initWithTaskName:a3 taskBundleIdentifier:a4 auditToken:v17 taskExecutablePath:a6];
  v15 = v14;
  if (v14)
  {
    [(CSFSystemStatusMicAttributedTask *)v14 setActiveTask:v12];
  }

  return v15;
}

@end