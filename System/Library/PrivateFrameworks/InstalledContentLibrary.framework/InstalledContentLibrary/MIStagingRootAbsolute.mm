@interface MIStagingRootAbsolute
- (BOOL)isEqual:(id)equal;
- (MIStagingRootAbsolute)initWithCoder:(id)coder;
- (MIStagingRootAbsolute)initWithStagingSubsystem:(unint64_t)subsystem contentType:(unint64_t)type;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolveRootWithError:(id *)error;
- (void)_runWithLock:(id)lock;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIStagingRootAbsolute

- (MIStagingRootAbsolute)initWithStagingSubsystem:(unint64_t)subsystem contentType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = MIStagingRootAbsolute;
  result = [(MIStagingRootAbsolute *)&v7 init];
  if (result)
  {
    result->_stagingSubsystem = subsystem;
    result->_stagingContentType = type;
    result->_extensionHandle = -1;
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (MIStagingRootAbsolute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MIStagingRootAbsolute;
  v5 = [(MIStagingRootAbsolute *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingContentType"];
    v5->_stagingContentType = [v6 unsignedLongLongValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingSubsystem"];
    v5->_stagingSubsystem = [v7 unsignedLongLongValue];
  }

  v8 = MIDeDuplicateStagingRoot(v5);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      stagingSubsystem = [(MIStagingRootAbsolute *)v5 stagingSubsystem];
      v8 = 0;
      if (stagingSubsystem == [(MIStagingRootAbsolute *)self stagingSubsystem])
      {
        stagingContentType = [(MIStagingRootAbsolute *)v5 stagingContentType];
        if (stagingContentType == [(MIStagingRootAbsolute *)self stagingContentType])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MIStringForStagingContentType([(MIStagingRootAbsolute *)self stagingContentType]);
  v5 = MIStringForStagingSubsystem([(MIStagingRootAbsolute *)self stagingSubsystem]);
  v6 = [v3 stringWithFormat:@"(%@-%@)", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  stagingSubsystem = [(MIStagingRootAbsolute *)self stagingSubsystem];
  stagingContentType = [(MIStagingRootAbsolute *)self stagingContentType];

  return [v4 initWithStagingSubsystem:stagingSubsystem contentType:stagingContentType];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[MIStagingRootAbsolute stagingSubsystem](self, "stagingSubsystem")}];
  [coderCopy encodeObject:v6 forKey:@"stagingSubsystem"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIStagingRootAbsolute stagingContentType](self, "stagingContentType")}];
  [coderCopy encodeObject:v7 forKey:@"stagingContentType"];
}

- (void)_runWithLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)resolveRootWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MIStagingRootAbsolute_resolveRootWithError___block_invoke;
  v7[3] = &unk_1E7AE1848;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = &v14;
  [(MIStagingRootAbsolute *)self _runWithLock:v7];
  v4 = v15[5];
  if (error && !v4)
  {
    *error = v9[5];
    v4 = v15[5];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __46__MIStagingRootAbsolute_resolveRootWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stagingContentType];
  if (v2 == 2)
  {
    v4 = +[ICLHelperServiceClient sharedInstance];
    v22 = 0;
    v9 = [*(a1 + 32) stagingSubsystem];
    v21 = 0;
    v6 = &v22;
    v7 = &v21;
    v8 = [v4 stagingURLWithSandboxExtension:&v22 forUserContentWithinSubsystem:v9 error:&v21];
  }

  else
  {
    if (v2 != 1)
    {
      v12 = _CreateAndLogError("[MIStagingRootAbsolute resolveRootWithError:]_block_invoke", 159, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to resolve staging root for unknown staging content type", v3, v19);
      v11 = 0;
      goto LABEL_9;
    }

    v4 = +[ICLHelperServiceClient sharedInstance];
    v24 = 0;
    v5 = [*(a1 + 32) stagingSubsystem];
    v23 = 0;
    v6 = &v24;
    v7 = &v23;
    v8 = [v4 stagingURLWithSandboxExtension:&v24 forSystemContentWithinSubsystem:v5 error:&v23];
  }

  v10 = v8;
  v11 = *v6;
  v12 = *v7;

  if (!v10)
  {
LABEL_9:
    v18 = *(*(a1 + 40) + 8);
    v15 = v12;
    v10 = *(v18 + 40);
    *(v18 + 40) = v15;
    goto LABEL_11;
  }

  v20 = v12;
  v13 = MIConsumeSandboxExtension(v11, &v20);
  v14 = v20;
  v15 = v20;

  if (v13 < 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14);
  }

  else
  {
    [*(a1 + 32) setExtensionHandle:v13];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v10;
    v10 = v10;
  }

LABEL_11:
}

- (void)dealloc
{
  MIReleaseSandboxExtensionHandle(&self->_extensionHandle, self);
  v3.receiver = self;
  v3.super_class = MIStagingRootAbsolute;
  [(MIStagingRootAbsolute *)&v3 dealloc];
}

@end