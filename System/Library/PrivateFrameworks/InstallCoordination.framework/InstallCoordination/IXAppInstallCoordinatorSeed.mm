@interface IXAppInstallCoordinatorSeed
- (IXAppInstallCoordinatorSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXAppInstallCoordinatorSeed

- (IXAppInstallCoordinatorSeed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = IXAppInstallCoordinatorSeed;
  v5 = [(IXAppInstallCoordinatorSeed *)&v20 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creator"];
  *(v5 + 3) = [v8 unsignedLongLongValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creatorEUID"];
  *(v5 + 2) = [v9 unsignedIntegerValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  *(v5 + 4) = [v10 unsignedLongLongValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
  v12 = *(v5 + 5);
  *(v5 + 5) = v11;

  if (!*(v5 + 5))
  {
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    if (v16)
    {
      v17 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v16];
      v18 = *(v5 + 5);
      *(v5 + 5) = v17;

      if (*(v5 + 5))
      {

        goto LABEL_3;
      }

      v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [(IXAppInstallCoordinatorSeed *)v16 initWithCoder:v19];
      }
    }

    else
    {
      v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [(IXAppInstallCoordinatorSeed *)v5 initWithCoder:v19];
      }
    }

    v14 = 0;
    goto LABEL_7;
  }

LABEL_3:
  if ([coderCopy containsValueForKey:@"installationDomain"])
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installationDomain"];
    *(v5 + 6) = [v13 unsignedIntegerValue];
  }

  else
  {
    *(v5 + 6) = 1;
  }

LABEL_6:
  v14 = v5;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(IXAppInstallCoordinatorSeed *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXAppInstallCoordinatorSeed creator](self, "creator")}];
  [coderCopy encodeObject:v6 forKey:@"creator"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IXAppInstallCoordinatorSeed creatorEUID](self, "creatorEUID")}];
  [coderCopy encodeObject:v7 forKey:@"creatorEUID"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXAppInstallCoordinatorSeed intent](self, "intent")}];
  [coderCopy encodeObject:v8 forKey:@"intent"];

  identity = [(IXAppInstallCoordinatorSeed *)self identity];
  [coderCopy encodeObject:identity forKey:@"identity"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXAppInstallCoordinatorSeed installationDomain](self, "installationDomain")}];
  [coderCopy encodeObject:v10 forKey:@"installationDomain"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uniqueIdentifier = [(IXAppInstallCoordinatorSeed *)self uniqueIdentifier];
  [v4 setUniqueIdentifier:uniqueIdentifier];

  [v4 setCreator:{-[IXAppInstallCoordinatorSeed creator](self, "creator")}];
  [v4 setCreatorEUID:{-[IXAppInstallCoordinatorSeed creatorEUID](self, "creatorEUID")}];
  [v4 setIntent:{-[IXAppInstallCoordinatorSeed intent](self, "intent")}];
  identity = [(IXAppInstallCoordinatorSeed *)self identity];
  [v4 setIdentity:identity];

  [v4 setInstallationDomain:{-[IXAppInstallCoordinatorSeed installationDomain](self, "installationDomain")}];
  return v4;
}

- (void)initWithCoder:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 136315650;
  v6 = "[IXAppInstallCoordinatorSeed initWithCoder:]";
  v7 = 2112;
  v8 = a1;
  v9 = 2112;
  v10 = v3;
  _os_log_fault_impl(&dword_1DA47A000, log, OS_LOG_TYPE_FAULT, "%s: Identity was nil when deserializing IXAppInstallCoordinatorSeed for bundle ID %@ with unique identifier %@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[IXAppInstallCoordinatorSeed initWithCoder:]";
  v5 = 2112;
  v6 = a1;
  _os_log_fault_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_FAULT, "%s: Both identity and bundleID were nil for %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end