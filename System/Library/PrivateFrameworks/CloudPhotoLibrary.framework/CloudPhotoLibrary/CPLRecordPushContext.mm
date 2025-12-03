@interface CPLRecordPushContext
+ (id)newEmptyPushContext;
+ (id)newPushContextForChange:(id)change overStoredRecord:(id)record initialUpload:(BOOL)upload;
+ (id)pushContextsFromStoredUploadIdentifiers:(id)identifiers;
+ (id)pushContextsFromStoredUploadIdentifiersInCoder:(id)coder key:(id)key;
+ (int64_t)mergingFlags:(int64_t)flags previousFlags:(int64_t)previousFlags changeType:(unint64_t)type;
+ (unint64_t)minimumPriorityForLocalConflictResolution;
- (CPLRecordPushContext)initWithCoder:(id)coder;
- (CPLRecordPushContext)initWithUploadIdentifier:(id)identifier flags:(int64_t)flags priority:(unint64_t)priority;
- (id)copyContextWithPriority:(unint64_t)priority;
- (id)copyContextWithUploadIdentifier:(id)identifier;
- (id)pushContextAddingUploadIdentifier;
- (id)pushContextMergingFlags:(int64_t)flags changeType:(unint64_t)type uploadIdentifier:(id)identifier priority:(unint64_t)priority;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLRecordPushContext

- (id)pushContextMergingFlags:(int64_t)flags changeType:(unint64_t)type uploadIdentifier:(id)identifier priority:(unint64_t)priority
{
  identifierCopy = identifier;
  v11 = [CPLRecordPushContext mergingFlags:self->_flags previousFlags:flags changeType:type];
  if (v11 != self->_flags)
  {
    goto LABEL_5;
  }

  uploadIdentifier = self->_uploadIdentifier;
  if (identifierCopy && uploadIdentifier)
  {
    if (([identifierCopy isEqual:?] & 1) == 0)
    {
LABEL_5:
      selfCopy = [[CPLRecordPushContext alloc] initWithUploadIdentifier:identifierCopy flags:v11 priority:priority];
      goto LABEL_8;
    }
  }

  else if (identifierCopy | uploadIdentifier)
  {
    goto LABEL_5;
  }

  selfCopy = self;
LABEL_8:
  v14 = selfCopy;

  return v14;
}

- (id)pushContextAddingUploadIdentifier
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(CPLRecordPushContext *)self copyContextWithUploadIdentifier:uUIDString];

  return v5;
}

- (id)copyContextWithPriority:(unint64_t)priority
{
  v5 = [CPLRecordPushContext alloc];
  uploadIdentifier = self->_uploadIdentifier;
  flags = self->_flags;

  return [(CPLRecordPushContext *)v5 initWithUploadIdentifier:uploadIdentifier flags:flags priority:priority];
}

- (id)copyContextWithUploadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[CPLRecordPushContext alloc] initWithUploadIdentifier:identifierCopy flags:self->_flags priority:self->_priority];

  return v5;
}

- (CPLRecordPushContext)initWithUploadIdentifier:(id)identifier flags:(int64_t)flags priority:(unint64_t)priority
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = CPLRecordPushContext;
  v9 = [(CPLRecordPushContext *)&v13 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    uploadIdentifier = v9->_uploadIdentifier;
    v9->_uploadIdentifier = v10;

    v9->_flags = flags;
    v9->_priority = priority;
  }

  return v9;
}

- (CPLRecordPushContext)initWithCoder:(id)coder
{
  v4 = initWithCoder__onceToken_5341;
  coderCopy = coder;
  if (v4 != -1)
  {
    dispatch_once(&initWithCoder__onceToken_5341, &__block_literal_global_5342);
  }

  v6 = [coderCopy decodeObjectOfClass:initWithCoder___NSStringClass forKey:@"u"];
  v7 = [coderCopy decodeIntegerForKey:@"f"];
  v8 = [coderCopy decodeIntegerForKey:@"p"];

  v9 = [(CPLRecordPushContext *)self initWithUploadIdentifier:v6 flags:v7 priority:v8];
  return v9;
}

uint64_t __38__CPLRecordPushContext_initWithCoder___block_invoke()
{
  result = objc_opt_class();
  initWithCoder___NSStringClass = result;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  uploadIdentifier = self->_uploadIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uploadIdentifier forKey:@"u"];
  [coderCopy encodeInteger:self->_flags forKey:@"f"];
}

+ (unint64_t)minimumPriorityForLocalConflictResolution
{
  unsignedIntegerValue = overriddenMinimumPriorityForLocalConflictResolution;
  if (overriddenMinimumPriorityForLocalConflictResolution == -1)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults objectForKey:@"CPLMinimumPriorityForLocalConflictResolution"];

    if (v4)
    {
      unsignedIntegerValue = [v4 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 1000;
    }
  }

  return unsignedIntegerValue;
}

+ (int64_t)mergingFlags:(int64_t)flags previousFlags:(int64_t)previousFlags changeType:(unint64_t)type
{
  result = flags;
  if (type != 1024 && (!type || (type & 0x40) != 0))
  {
    v6 = previousFlags & 3 | flags;
    flagsCopy = flags & 0xFFFFFFFFFFFFFFFCLL;
    if ((previousFlags & 1) == 0)
    {
      flagsCopy = flags;
    }

    if ((flags & 2) != 0)
    {
      v6 = flagsCopy;
    }

    flagsCopy2 = flags & 0xFFFFFFFFFFFFFFFELL;
    if ((previousFlags & 2) == 0)
    {
      flagsCopy2 = flags;
    }

    if (flags)
    {
      v6 = flagsCopy2;
    }

    return v6 | previousFlags & 4;
  }

  return result;
}

+ (id)newPushContextForChange:(id)change overStoredRecord:(id)record initialUpload:(BOOL)upload
{
  changeCopy = change;
  recordCopy = record;
  if ([changeCopy isAssetChange] && objc_msgSend(changeCopy, "hasChangeType:", 64))
  {
    sharingScopeIdentifier = [changeCopy sharingScopeIdentifier];
    if (recordCopy)
    {
      sharingScopeIdentifier2 = [recordCopy sharingScopeIdentifier];
      v10 = sharingScopeIdentifier2;
      if (sharingScopeIdentifier)
      {
        if (sharingScopeIdentifier2 && ([sharingScopeIdentifier isEqual:sharingScopeIdentifier2] & 1) != 0)
        {

          v11 = 0;
        }

        else
        {

          v11 = 1;
        }
      }

      else
      {
        v14 = sharingScopeIdentifier2 != 0;

        v11 = 2 * v14;
      }
    }

    else
    {
      sharingScopeIdentifier3 = [changeCopy sharingScopeIdentifier];

      v11 = sharingScopeIdentifier3 != 0;
    }

    updateSharingContributorUserIdentifiers = [changeCopy updateSharingContributorUserIdentifiers];
    v16 = [updateSharingContributorUserIdentifiers count];

    if (v16)
    {
      v12 = v11 | 4;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = [[CPLRecordPushContext alloc] initWithUploadIdentifier:0 flags:v12 priority:0];

  return v17;
}

+ (id)pushContextsFromStoredUploadIdentifiersInCoder:(id)coder key:(id)key
{
  v5 = pushContextsFromStoredUploadIdentifiersInCoder_key__onceToken;
  keyCopy = key;
  coderCopy = coder;
  if (v5 != -1)
  {
    dispatch_once(&pushContextsFromStoredUploadIdentifiersInCoder_key__onceToken, &__block_literal_global_14);
  }

  v8 = [coderCopy decodeObjectOfClasses:pushContextsFromStoredUploadIdentifiersInCoder_key__uploadIdentifiersClasses forKey:keyCopy];

  v9 = [CPLRecordPushContext pushContextsFromStoredUploadIdentifiers:v8];

  return v9;
}

uint64_t __75__CPLRecordPushContext_pushContextsFromStoredUploadIdentifiersInCoder_key___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = pushContextsFromStoredUploadIdentifiersInCoder_key__uploadIdentifiersClasses;
  pushContextsFromStoredUploadIdentifiersInCoder_key__uploadIdentifiersClasses = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

+ (id)pushContextsFromStoredUploadIdentifiers:(id)identifiers
{
  v3 = [CPLScopedIdentifier scopedIdentifiersFromDictionaryOfUnknownIdentifiers:identifiers];
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__CPLRecordPushContext_pushContextsFromStoredUploadIdentifiers___block_invoke;
    v8[3] = &unk_1E861C148;
    v9 = v4;
    v5 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v8];
    v6 = [v5 copy];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

void __64__CPLRecordPushContext_pushContextsFromStoredUploadIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[CPLRecordPushContext alloc] initWithUploadIdentifier:v5 flags:0 priority:0];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

+ (id)newEmptyPushContext
{
  v2 = [CPLRecordPushContext alloc];

  return [(CPLRecordPushContext *)v2 initWithUploadIdentifier:0 flags:0 priority:0];
}

@end