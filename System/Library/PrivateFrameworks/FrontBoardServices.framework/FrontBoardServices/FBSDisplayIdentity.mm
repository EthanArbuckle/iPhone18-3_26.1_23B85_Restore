@interface FBSDisplayIdentity
- (BOOL)isEqual:(id)equal;
- (BOOL)isMainRootDisplay;
- (FBSDisplayIdentity)init;
- (FBSDisplayIdentity)initWithCoder:(id)coder;
- (FBSDisplayIdentity)initWithXPCDictionary:(id)dictionary;
- (FBSDisplayIdentity)rootIdentity;
- (NSString)debugDescription;
- (NSString)description;
- (id)_initWithType:(int64_t)type UIKitMainLike:(BOOL)like displayID:(unsigned int)d connectionType:(int64_t)connectionType connectionSeed:(unsigned int)seed pid:(int)pid external:(BOOL)external uniqueIdentifier:(id)self0 secure:(BOOL)self1 root:(id)self2;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation FBSDisplayIdentity

- (unint64_t)hash
{
  type = self->_type;
  v4 = self->_secure + 67 * type;
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    v4 = [(NSString *)uniqueIdentifier hash]+ 67 * v4;
    type = self->_type;
  }

  if (type)
  {
    v4 = self->_connectionSeed + 67 * (self->_displayID + 67 * v4);
    if (type == 1)
    {
      return self->_pid + 67 * v4;
    }
  }

  return v4;
}

- (BOOL)isMainRootDisplay
{
  isRootIdentity = [(FBSDisplayIdentity *)self isRootIdentity];
  if (isRootIdentity)
  {

    LOBYTE(isRootIdentity) = [(FBSDisplayIdentity *)self isMainDisplay];
  }

  return isRootIdentity;
}

- (NSString)description
{
  v3 = FBSDisplayTypeDescription(self->_type);
  v4 = v3;
  type = self->_type;
  if (!type)
  {
    if (self->_external)
    {
      v7 = [v3 stringByAppendingString:@"-External"];
      goto LABEL_9;
    }

LABEL_10:
    type = self->_type;
    goto LABEL_11;
  }

  if (self->_mainLike)
  {
    v6 = [v3 stringByAppendingString:@".main"];

    type = self->_type;
    v4 = v6;
  }

  if (type == 1)
  {
    if (self->_pid >= 1)
    {
      v7 = [v4 stringByAppendingFormat:@"(%i)", self->_pid];
LABEL_9:
      v8 = v7;

      v4 = v8;
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:
  if (type)
  {
    v9 = [v4 stringByAppendingFormat:@"[%u-%u]", self->_displayID, self->_connectionSeed];

    v4 = v9;
  }

  if (self->_secure)
  {
    v10 = [v4 stringByAppendingString:@"+Secure"];

    v4 = v10;
  }

  if (self->_uniqueIdentifier)
  {
    v11 = [v4 stringByAppendingFormat:@"+<%@>", self->_uniqueIdentifier];

    v4 = v11;
  }

  return v4;
}

- (FBSDisplayIdentity)rootIdentity
{
  if (self->_rootIdentity)
  {
    self = self->_rootIdentity;
  }

  return self;
}

- (FBSDisplayIdentity)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSDisplay.m";
    v16 = 1024;
    v17 = 29;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithType:(int64_t)type UIKitMainLike:(BOOL)like displayID:(unsigned int)d connectionType:(int64_t)connectionType connectionSeed:(unsigned int)seed pid:(int)pid external:(BOOL)external uniqueIdentifier:(id)self0 secure:(BOOL)self1 root:(id)self2
{
  identifierCopy = identifier;
  rootCopy = root;
  v20 = objc_opt_class();
  if (v20 != objc_opt_class())
  {
    [FBSDisplayIdentity _initWithType:a2 UIKitMainLike:self displayID:? connectionType:? connectionSeed:? pid:? external:? uniqueIdentifier:? secure:? root:?];
  }

  v30.receiver = self;
  v30.super_class = FBSDisplayIdentity;
  v21 = [(FBSDisplayIdentity *)&v30 init];
  v22 = v21;
  if (v21)
  {
    seedCopy = 0;
    v21->_displayID = d;
    v21->_type = type;
    v21->_connectionType = connectionType;
    if (type && type != 7)
    {
      seedCopy = seed;
    }

    v21->_mainLike = like;
    v24 = pid & ~(pid >> 31);
    if (type != 1)
    {
      v24 = 0;
    }

    v21->_connectionSeed = seedCopy;
    v21->_pid = v24;
    v21->_external = external;
    v25 = [identifierCopy copy];
    uniqueIdentifier = v22->_uniqueIdentifier;
    v22->_uniqueIdentifier = v25;

    v22->_secure = secure;
    objc_storeStrong(&v22->_rootIdentity, root);
  }

  return v22;
}

- (FBSDisplayIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"type"])
  {
    v4 = [coderCopy decodeIntegerForKey:@"type"];
  }

  else
  {
    v4 = -1;
  }

  if (![coderCopy containsValueForKey:@"connectionType"])
  {
    v17 = -1;
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    v8 = 0;
    v5 = 1;
    v6 = 1;
    goto LABEL_13;
  }

  v17 = [coderCopy decodeIntegerForKey:@"connectionType"];
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v5 = [coderCopy decodeBoolForKey:@"mainLike"];
  v6 = [coderCopy decodeInt32ForKey:@"displayID"];
  if (v4 == 7)
  {
    v7 = 0;
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v7 = [coderCopy decodeInt32ForKey:@"connectionSeed"];
  if (v4 != 1)
  {
    goto LABEL_12;
  }

  v8 = [coderCopy decodeInt32ForKey:@"pid"];
LABEL_13:
  v9 = [coderCopy decodeBoolForKey:@"external"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
  v11 = [coderCopy decodeBoolForKey:@"secure"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"root"];
  LOBYTE(v16) = v11;
  LOBYTE(v15) = v9;
  v13 = [(FBSDisplayIdentity *)self _initWithType:v4 UIKitMainLike:v5 displayID:v6 connectionType:v17 connectionSeed:v7 pid:v8 external:v15 uniqueIdentifier:v10 secure:v16 root:v12];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_connectionType forKey:@"connectionType"];
  if (self->_type)
  {
    if (self->_mainLike)
    {
      [coderCopy encodeBool:1 forKey:@"mainLike"];
    }

    [coderCopy encodeInt32:self->_displayID forKey:@"displayID"];
    [coderCopy encodeInt32:self->_connectionSeed forKey:@"connectionSeed"];
    if (self->_type == 1 && self->_pid >= 1)
    {
      [coderCopy encodeInt32:? forKey:?];
    }
  }

  if (self->_external)
  {
    [coderCopy encodeBool:1 forKey:@"external"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = coderCopy;
  if (uniqueIdentifier)
  {
    [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueID"];
    v5 = coderCopy;
  }

  if (self->_secure)
  {
    [coderCopy encodeBool:1 forKey:@"secure"];
    v5 = coderCopy;
  }

  rootIdentity = self->_rootIdentity;
  if (rootIdentity)
  {
    [coderCopy encodeObject:rootIdentity forKey:@"root"];
    v5 = coderCopy;
  }
}

- (FBSDisplayIdentity)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v5 = xpc_dictionary_get_value(dictionaryCopy, [@"type" UTF8String]);
    v6 = v5;
    v7 = MEMORY[0x1E69E9EB0];
    if (v5 && object_getClass(v5) == v7)
    {
      value = xpc_int64_get_value(v6);
    }

    else
    {
      value = -1;
    }

    v10 = xpc_dictionary_get_value(dictionaryCopy, [@"connectionType" UTF8String]);
    v11 = v10;
    if (v10 && object_getClass(v10) == v7)
    {
      xpc_int64_get_value(v11);
    }

    if (value)
    {
      xpc_dictionary_get_BOOL(dictionaryCopy, [@"mainLike" UTF8String]);
      xpc_dictionary_get_uint64(dictionaryCopy, [@"displayID" UTF8String]);
      xpc_dictionary_get_uint64(dictionaryCopy, [@"connectionSeed" UTF8String]);
      if (value == 1)
      {
        xpc_dictionary_get_int64(dictionaryCopy, [@"pid" UTF8String]);
      }
    }

    xpc_dictionary_get_BOOL(dictionaryCopy, [@"external" UTF8String]);
    [@"uniqueID" UTF8String];
    BSDeserializeStringFromXPCDictionaryWithKey();
  }

  LOBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  v9 = [(FBSDisplayIdentity *)self _initWithType:-1 UIKitMainLike:0 displayID:0 connectionType:-1 connectionSeed:0 pid:0 external:v13 uniqueIdentifier:0 secure:v14 root:0];

  return v9;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    xdict = dictionaryCopy;
    xpc_dictionary_set_int64(dictionaryCopy, [@"type" UTF8String], self->_type);
    xpc_dictionary_set_int64(xdict, [@"connectionType" UTF8String], self->_connectionType);
    if (self->_type)
    {
      if (self->_mainLike)
      {
        xpc_dictionary_set_BOOL(xdict, [@"mainLike" UTF8String], 1);
      }

      xpc_dictionary_set_uint64(xdict, [@"displayID" UTF8String], self->_displayID);
      xpc_dictionary_set_uint64(xdict, [@"connectionSeed" UTF8String], self->_connectionSeed);
      if (self->_type == 1 && self->_pid >= 1)
      {
        xpc_dictionary_set_int64(xdict, [@"pid" UTF8String], self->_pid);
      }
    }

    if (self->_external)
    {
      xpc_dictionary_set_BOOL(xdict, [@"external" UTF8String], 1);
    }

    if (self->_uniqueIdentifier)
    {
      [@"uniqueID" UTF8String];
      BSSerializeStringToXPCDictionaryWithKey();
    }

    if (self->_secure)
    {
      xpc_dictionary_set_BOOL(xdict, [@"secure" UTF8String], 1);
    }

    dictionaryCopy = xdict;
    if (self->_rootIdentity)
    {
      [@"root" UTF8String];
      BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_type == equalCopy->_type && self->_mainLike == equalCopy->_mainLike && self->_displayID == equalCopy->_displayID && self->_connectionSeed == equalCopy->_connectionSeed && self->_pid == equalCopy->_pid && self->_external == equalCopy->_external)
    {
      BSEqualObjects();
    }

    v5 = 0;
  }

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FBSDisplayIdentity *)self description];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (void)_initWithType:(uint64_t)a1 UIKitMainLike:(uint64_t)a2 displayID:connectionType:connectionSeed:pid:external:uniqueIdentifier:secure:root:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FBSDisplay.m" lineNumber:43 description:@"this class cannot be subclassed"];
}

@end