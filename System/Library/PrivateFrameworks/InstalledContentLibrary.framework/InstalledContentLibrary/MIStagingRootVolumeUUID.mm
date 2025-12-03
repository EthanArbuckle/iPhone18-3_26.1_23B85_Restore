@interface MIStagingRootVolumeUUID
- (BOOL)isEqual:(id)equal;
- (MIStagingRootVolumeUUID)initWithCoder:(id)coder;
- (MIStagingRootVolumeUUID)initWithVolumeUUID:(id)d stagingSubsystem:(unint64_t)subsystem;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolveRootWithError:(id *)error;
- (unint64_t)hash;
- (void)_runWithLock:(id)lock;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIStagingRootVolumeUUID

- (MIStagingRootVolumeUUID)initWithVolumeUUID:(id)d stagingSubsystem:(unint64_t)subsystem
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = MIStagingRootVolumeUUID;
  v8 = [(MIStagingRootVolumeUUID *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_volumeUUID, d);
    v9->_stagingSubsystem = subsystem;
    v9->_extensionHandle = -1;
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (MIStagingRootVolumeUUID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MIStagingRootVolumeUUID;
  v5 = [(MIStagingRootVolumeUUID *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volumeUUID"];
    volumeUUID = v5->_volumeUUID;
    v5->_volumeUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingSubsystem"];
    v5->_stagingSubsystem = [v8 unsignedLongLongValue];
  }

  v9 = MIDeDuplicateStagingRoot(v5);

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      volumeUUID = [(MIStagingRootVolumeUUID *)v5 volumeUUID];
      volumeUUID2 = [(MIStagingRootVolumeUUID *)self volumeUUID];
      if ([volumeUUID isEqual:volumeUUID2])
      {
        stagingSubsystem = [(MIStagingRootVolumeUUID *)v5 stagingSubsystem];
        stagingSubsystem2 = [(MIStagingRootVolumeUUID *)self stagingSubsystem];

        if (stagingSubsystem == stagingSubsystem2)
        {
          v10 = 1;
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
      }

      v10 = 0;
      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  volumeUUID = [(MIStagingRootVolumeUUID *)self volumeUUID];
  v5 = MIStringForStagingSubsystem([(MIStagingRootVolumeUUID *)self stagingSubsystem]);
  v6 = [v3 stringWithFormat:@"(%@|%@)", volumeUUID, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  volumeUUID = [(MIStagingRootVolumeUUID *)self volumeUUID];
  v6 = [v4 initWithVolumeUUID:volumeUUID stagingSubsystem:{-[MIStagingRootVolumeUUID stagingSubsystem](self, "stagingSubsystem")}];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  volumeUUID = [(MIStagingRootVolumeUUID *)self volumeUUID];
  [coderCopy encodeObject:volumeUUID forKey:@"volumeUUID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIStagingRootVolumeUUID stagingSubsystem](self, "stagingSubsystem")}];
  [coderCopy encodeObject:v6 forKey:@"stagingSubsystem"];
}

- (unint64_t)hash
{
  volumeUUID = [(MIStagingRootVolumeUUID *)self volumeUUID];
  v4 = [volumeUUID hash];
  stagingSubsystem = [(MIStagingRootVolumeUUID *)self stagingSubsystem];

  return stagingSubsystem ^ v4;
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
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MIStagingRootVolumeUUID_resolveRootWithError___block_invoke;
  v7[3] = &unk_1E7AE1848;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = &v14;
  [(MIStagingRootVolumeUUID *)self _runWithLock:v7];
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

void __48__MIStagingRootVolumeUUID_resolveRootWithError___block_invoke(uint64_t a1)
{
  v2 = +[ICLHelperServiceClient sharedInstance];
  v15 = 0;
  v3 = [*(a1 + 32) volumeUUID];
  v4 = [*(a1 + 32) stagingSubsystem];
  v14 = 0;
  v5 = [v2 resolveStagingBaseWithSandboxExtension:&v15 forVolumeUUID:v3 withinStagingSubsystem:v4 error:&v14];
  v6 = v15;
  v7 = v14;

  if (!v5)
  {
    v10 = *(*(a1 + 40) + 8);
    v11 = v7;
LABEL_6:
    v9 = v11;
    goto LABEL_7;
  }

  v13 = v7;
  v8 = MIConsumeSandboxExtension(v6, &v13);
  v9 = v13;

  if (v8 < 0)
  {
    v10 = *(*(a1 + 40) + 8);
    v11 = v9;
    goto LABEL_6;
  }

  [*(a1 + 32) setExtensionHandle:v8];
  v10 = *(*(a1 + 48) + 8);
  v11 = v5;
LABEL_7:
  v12 = *(v10 + 40);
  *(v10 + 40) = v11;
}

- (void)dealloc
{
  MIReleaseSandboxExtensionHandle(&self->_extensionHandle, self);
  v3.receiver = self;
  v3.super_class = MIStagingRootVolumeUUID;
  [(MIStagingRootVolumeUUID *)&v3 dealloc];
}

@end