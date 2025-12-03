@interface CSFSystemStatusMicAttributedTask
- (CSFSystemStatusMicAttributedTask)initWithTaskName:(id)name taskBundleIdentifier:(id)identifier auditToken:(id *)token taskExecutablePath:(id)path activeTask:(id)task;
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
  taskName = [(CSFSystemStatusAttributedTask *)self taskName];
  taskBundleIdentifier = [(CSFSystemStatusAttributedTask *)self taskBundleIdentifier];
  v8 = taskBundleIdentifier;
  if (v3 == 1)
  {
    if (!activeTask)
    {
      [(CSFSystemStatusAttributedTask *)self auditToken];
      v19 = [CSUtils auditTokenToString:v22];
      v18 = [v5 stringWithFormat:@"task-name: %@, task-bundle-identifier: %@, audit-token: %@", taskName, v8, v19];

      goto LABEL_14;
    }

    [(CSFSystemStatusAttributedTask *)self auditToken];
    activeTask4 = [CSUtils auditTokenToString:v22];
    activeTask = [(CSFSystemStatusMicAttributedTask *)self activeTask];
    taskName2 = [activeTask taskName];
    activeTask2 = [(CSFSystemStatusMicAttributedTask *)self activeTask];
    taskBundleIdentifier2 = [activeTask2 taskBundleIdentifier];
    activeTask3 = [(CSFSystemStatusMicAttributedTask *)self activeTask];
    v15 = activeTask3;
    if (activeTask3)
    {
      [activeTask3 auditToken];
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    v20 = [CSUtils auditTokenToString:v22];
    v18 = [v5 stringWithFormat:@"task-name: %@, task-bundle-identifier: %@, audit-token: %@ [active task == task-name: %@, task-bundle-identifier: %@, audit-token: %@]", taskName, v8, activeTask4, taskName2, taskBundleIdentifier2, v20];
  }

  else
  {
    if (!activeTask)
    {
      v18 = [v5 stringWithFormat:@"task-name: %@, task-bundle-identifier: %@", taskName, taskBundleIdentifier];
      goto LABEL_14;
    }

    activeTask4 = [(CSFSystemStatusMicAttributedTask *)self activeTask];
    activeTask = [activeTask4 taskName];
    activeTask5 = [(CSFSystemStatusMicAttributedTask *)self activeTask];
    taskBundleIdentifier3 = [activeTask5 taskBundleIdentifier];
    v18 = [v5 stringWithFormat:@"task-name: %@, task-bundle-identifier: %@ [active task = task-name: %@, task-bundle-identifier: %@]", taskName, v8, activeTask, taskBundleIdentifier3];
  }

LABEL_14:

  return v18;
}

- (CSFSystemStatusMicAttributedTask)initWithTaskName:(id)name taskBundleIdentifier:(id)identifier auditToken:(id *)token taskExecutablePath:(id)path activeTask:(id)task
{
  taskCopy = task;
  v18.receiver = self;
  v18.super_class = CSFSystemStatusMicAttributedTask;
  v13 = *&token->var0[4];
  v17[0] = *token->var0;
  v17[1] = v13;
  v14 = [(CSFSystemStatusAttributedTask *)&v18 initWithTaskName:name taskBundleIdentifier:identifier auditToken:v17 taskExecutablePath:path];
  v15 = v14;
  if (v14)
  {
    [(CSFSystemStatusMicAttributedTask *)v14 setActiveTask:taskCopy];
  }

  return v15;
}

@end