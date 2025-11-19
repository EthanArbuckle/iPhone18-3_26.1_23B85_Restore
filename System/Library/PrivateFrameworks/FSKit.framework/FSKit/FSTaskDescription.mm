@interface FSTaskDescription
- (FSTaskDescription)initWithCoder:(id)a3;
- (FSTaskDescription)initWithID:(id)a3 state:(unsigned __int8)a4 purpose:(id)a5 error:(id)a6 bundleID:(id)a7 extensionID:(id)a8 resource:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSTaskDescription

- (FSTaskDescription)initWithID:(id)a3 state:(unsigned __int8)a4 purpose:(id)a5 error:(id)a6 bundleID:(id)a7 extensionID:(id)a8 resource:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v33.receiver = self;
  v33.super_class = FSTaskDescription;
  v21 = [(FSTaskDescription *)&v33 init];
  if (v21)
  {
    v22 = [v15 copy];
    taskID = v21->_taskID;
    v21->_taskID = v22;

    v21->_taskState = a4;
    objc_storeStrong(&v21->_taskPurpose, a5);
    if (v17)
    {
      v24 = [v17 copy];
    }

    else
    {
      v24 = 0;
    }

    taskErrorState = v21->_taskErrorState;
    v21->_taskErrorState = v24;

    v26 = [v18 copy];
    taskBundleID = v21->_taskBundleID;
    v21->_taskBundleID = v26;

    if (v19)
    {
      v28 = [v19 copy];
    }

    else
    {
      v28 = 0;
    }

    taskExtensionInstanceID = v21->_taskExtensionInstanceID;
    v21->_taskExtensionInstanceID = v28;

    v30 = [v20 makeProxy];
    taskResource = v21->_taskResource;
    v21->_taskResource = v30;

    v21->_terminateExtensionWhenFinished = 0;
  }

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_taskID forKey:@"FSTask.ID"];
  [v8 encodeInt:self->_taskState forKey:@"FSTask.state"];
  [v8 encodeObject:self->_taskBundleID forKey:@"FSTask.bundle"];
  [v8 encodeObject:self->_taskPurpose forKey:@"FSTask.purpose"];
  taskErrorState = self->_taskErrorState;
  if (taskErrorState)
  {
    [v8 encodeObject:taskErrorState forKey:@"FSTask.error"];
  }

  taskExtensionInstanceID = self->_taskExtensionInstanceID;
  if (taskExtensionInstanceID)
  {
    [v8 encodeObject:taskExtensionInstanceID forKey:@"FSTask.ext.ID"];
  }

  taskResource = self->_taskResource;
  v7 = v8;
  if (taskResource)
  {
    [v8 encodeObject:taskResource forKey:@"FSTask.resource"];
    v7 = v8;
  }

  [v7 encodeBool:self->_taskHasCancellationHandler forKey:@"FSTask.canc"];
}

- (FSTaskDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.ID"];
  taskID = self->_taskID;
  self->_taskID = v5;

  self->_taskState = [v4 decodeIntForKey:@"FSTask.state"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.bundle"];
  taskBundleID = self->_taskBundleID;
  self->_taskBundleID = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.purpose"];
  taskPurpose = self->_taskPurpose;
  self->_taskPurpose = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.error"];
  taskErrorState = self->_taskErrorState;
  self->_taskErrorState = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.ext.ID"];
  taskExtensionInstanceID = self->_taskExtensionInstanceID;
  self->_taskExtensionInstanceID = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.resource"];
  taskResource = self->_taskResource;
  self->_taskResource = v15;

  v17 = [v4 decodeBoolForKey:@"FSTask.canc"];
  self->_taskHasCancellationHandler = v17;
  return self;
}

@end