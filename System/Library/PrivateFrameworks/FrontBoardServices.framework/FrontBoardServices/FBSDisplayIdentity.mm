@interface FBSDisplayIdentity
- (BOOL)isEqual:(id)a3;
- (BOOL)isMainRootDisplay;
- (FBSDisplayIdentity)init;
- (FBSDisplayIdentity)initWithCoder:(id)a3;
- (FBSDisplayIdentity)initWithXPCDictionary:(id)a3;
- (FBSDisplayIdentity)rootIdentity;
- (NSString)debugDescription;
- (NSString)description;
- (id)_initWithType:(int64_t)a3 UIKitMainLike:(BOOL)a4 displayID:(unsigned int)a5 connectionType:(int64_t)a6 connectionSeed:(unsigned int)a7 pid:(int)a8 external:(BOOL)a9 uniqueIdentifier:(id)a10 secure:(BOOL)a11 root:(id)a12;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
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
  v3 = [(FBSDisplayIdentity *)self isRootIdentity];
  if (v3)
  {

    LOBYTE(v3) = [(FBSDisplayIdentity *)self isMainDisplay];
  }

  return v3;
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
    v13 = self;
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

- (id)_initWithType:(int64_t)a3 UIKitMainLike:(BOOL)a4 displayID:(unsigned int)a5 connectionType:(int64_t)a6 connectionSeed:(unsigned int)a7 pid:(int)a8 external:(BOOL)a9 uniqueIdentifier:(id)a10 secure:(BOOL)a11 root:(id)a12
{
  v18 = a10;
  v19 = a12;
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
    v23 = 0;
    v21->_displayID = a5;
    v21->_type = a3;
    v21->_connectionType = a6;
    if (a3 && a3 != 7)
    {
      v23 = a7;
    }

    v21->_mainLike = a4;
    v24 = a8 & ~(a8 >> 31);
    if (a3 != 1)
    {
      v24 = 0;
    }

    v21->_connectionSeed = v23;
    v21->_pid = v24;
    v21->_external = a9;
    v25 = [v18 copy];
    uniqueIdentifier = v22->_uniqueIdentifier;
    v22->_uniqueIdentifier = v25;

    v22->_secure = a11;
    objc_storeStrong(&v22->_rootIdentity, a12);
  }

  return v22;
}

- (FBSDisplayIdentity)initWithCoder:(id)a3
{
  v3 = a3;
  if ([v3 containsValueForKey:@"type"])
  {
    v4 = [v3 decodeIntegerForKey:@"type"];
  }

  else
  {
    v4 = -1;
  }

  if (![v3 containsValueForKey:@"connectionType"])
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

  v17 = [v3 decodeIntegerForKey:@"connectionType"];
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v5 = [v3 decodeBoolForKey:@"mainLike"];
  v6 = [v3 decodeInt32ForKey:@"displayID"];
  if (v4 == 7)
  {
    v7 = 0;
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v7 = [v3 decodeInt32ForKey:@"connectionSeed"];
  if (v4 != 1)
  {
    goto LABEL_12;
  }

  v8 = [v3 decodeInt32ForKey:@"pid"];
LABEL_13:
  v9 = [v3 decodeBoolForKey:@"external"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
  v11 = [v3 decodeBoolForKey:@"secure"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"root"];
  LOBYTE(v16) = v11;
  LOBYTE(v15) = v9;
  v13 = [(FBSDisplayIdentity *)self _initWithType:v4 UIKitMainLike:v5 displayID:v6 connectionType:v17 connectionSeed:v7 pid:v8 external:v15 uniqueIdentifier:v10 secure:v16 root:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:self->_type forKey:@"type"];
  [v7 encodeInteger:self->_connectionType forKey:@"connectionType"];
  if (self->_type)
  {
    if (self->_mainLike)
    {
      [v7 encodeBool:1 forKey:@"mainLike"];
    }

    [v7 encodeInt32:self->_displayID forKey:@"displayID"];
    [v7 encodeInt32:self->_connectionSeed forKey:@"connectionSeed"];
    if (self->_type == 1 && self->_pid >= 1)
    {
      [v7 encodeInt32:? forKey:?];
    }
  }

  if (self->_external)
  {
    [v7 encodeBool:1 forKey:@"external"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = v7;
  if (uniqueIdentifier)
  {
    [v7 encodeObject:uniqueIdentifier forKey:@"uniqueID"];
    v5 = v7;
  }

  if (self->_secure)
  {
    [v7 encodeBool:1 forKey:@"secure"];
    v5 = v7;
  }

  rootIdentity = self->_rootIdentity;
  if (rootIdentity)
  {
    [v7 encodeObject:rootIdentity forKey:@"root"];
    v5 = v7;
  }
}

- (FBSDisplayIdentity)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = xpc_dictionary_get_value(v4, [@"type" UTF8String]);
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

    v10 = xpc_dictionary_get_value(v4, [@"connectionType" UTF8String]);
    v11 = v10;
    if (v10 && object_getClass(v10) == v7)
    {
      xpc_int64_get_value(v11);
    }

    if (value)
    {
      xpc_dictionary_get_BOOL(v4, [@"mainLike" UTF8String]);
      xpc_dictionary_get_uint64(v4, [@"displayID" UTF8String]);
      xpc_dictionary_get_uint64(v4, [@"connectionSeed" UTF8String]);
      if (value == 1)
      {
        xpc_dictionary_get_int64(v4, [@"pid" UTF8String]);
      }
    }

    xpc_dictionary_get_BOOL(v4, [@"external" UTF8String]);
    [@"uniqueID" UTF8String];
    BSDeserializeStringFromXPCDictionaryWithKey();
  }

  LOBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  v9 = [(FBSDisplayIdentity *)self _initWithType:-1 UIKitMainLike:0 displayID:0 connectionType:-1 connectionSeed:0 pid:0 external:v13 uniqueIdentifier:0 secure:v14 root:0];

  return v9;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    xdict = v4;
    xpc_dictionary_set_int64(v4, [@"type" UTF8String], self->_type);
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

    v4 = xdict;
    if (self->_rootIdentity)
    {
      [@"root" UTF8String];
      BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_type == v4->_type && self->_mainLike == v4->_mainLike && self->_displayID == v4->_displayID && self->_connectionSeed == v4->_connectionSeed && self->_pid == v4->_pid && self->_external == v4->_external)
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