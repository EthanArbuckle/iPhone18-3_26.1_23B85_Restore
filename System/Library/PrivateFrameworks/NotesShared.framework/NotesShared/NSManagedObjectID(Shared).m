@interface NSManagedObjectID(Shared)
- (uint64_t)ic_isAccountType;
- (uint64_t)ic_isAttachmentType;
- (uint64_t)ic_isBaseAttachmentType;
- (uint64_t)ic_isContainerType;
- (uint64_t)ic_isFolderType;
- (uint64_t)ic_isHashtagType;
- (uint64_t)ic_isInlineAttachmentType;
- (uint64_t)ic_isInvitationType;
- (uint64_t)ic_isLegacyAccountType;
- (uint64_t)ic_isLegacyContainerType;
- (uint64_t)ic_isLegacyFolderType;
- (uint64_t)ic_isLegacyNoteType;
- (uint64_t)ic_isLegacyType;
- (uint64_t)ic_isModernAccountProxyType;
- (uint64_t)ic_isModernAccountType;
- (uint64_t)ic_isModernContainerType;
- (uint64_t)ic_isModernFolderType;
- (uint64_t)ic_isModernNoteType;
- (uint64_t)ic_isModernType;
- (uint64_t)ic_isNoteType;
@end

@implementation NSManagedObjectID(Shared)

- (uint64_t)ic_isModernType
{
  v1 = [a1 entity];
  v2 = [v1 managedObjectClassName];
  v3 = [v2 hasPrefix:@"IC"];

  return v3;
}

- (uint64_t)ic_isContainerType
{
  if ([a1 ic_isModernContainerType])
  {
    return 1;
  }

  return [a1 ic_isLegacyContainerType];
}

- (uint64_t)ic_isModernContainerType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isLegacyContainerType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isNoteType
{
  if ([a1 ic_isModernNoteType])
  {
    return 1;
  }

  return [a1 ic_isLegacyNoteType];
}

- (uint64_t)ic_isModernNoteType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isModernFolderType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isModernAccountType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isLegacyNoteType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isLegacyType
{
  v1 = [a1 entity];
  v2 = [v1 managedObjectClassName];
  v3 = [v2 hasPrefix:@"IC"];

  return v3 ^ 1u;
}

- (uint64_t)ic_isModernAccountProxyType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isLegacyAccountType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isAccountType
{
  if ([a1 ic_isModernAccountType])
  {
    return 1;
  }

  return [a1 ic_isLegacyAccountType];
}

- (uint64_t)ic_isLegacyFolderType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isFolderType
{
  if ([a1 ic_isModernFolderType])
  {
    return 1;
  }

  return [a1 ic_isLegacyFolderType];
}

- (uint64_t)ic_isBaseAttachmentType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isAttachmentType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isInlineAttachmentType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isHashtagType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

- (uint64_t)ic_isInvitationType
{
  v2 = objc_opt_class();

  return [a1 ic_isEntityOfClass:v2];
}

@end