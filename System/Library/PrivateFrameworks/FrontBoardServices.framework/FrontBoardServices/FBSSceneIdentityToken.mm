@interface FBSSceneIdentityToken
+ (FBSSceneIdentityToken)tokenWithHostEndpoint:(id)a3 workspace:(id)a4 identifier:(id)a5;
+ (FBSSceneIdentityToken)tokenWithHostPID:(int)a3 directEndpointTarget:(id)a4 workspace:(id)a5 identifier:(id)a6;
+ (FBSSceneIdentityToken)tokenWithHostPID:(int)a3 viewServiceSessionIdentifier:(id)a4;
+ (id)pseudoTokenWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FBSSceneIdentityToken)init;
- (FBSSceneIdentityToken)initWithBSXPCCoder:(id)a3;
- (FBSSceneIdentityToken)initWithCoder:(id)a3;
- (FBSSceneIdentityToken)initWithXPCDictionary:(id)a3;
- (id)_initWithHost:(void *)a3 endpoint:(void *)a4 target:(void *)a5 workspace:(void *)a6 identifier:;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation FBSSceneIdentityToken

- (FBSSceneIdentityToken)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBSSceneIdentityToken"];
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
    v15 = @"FBSSceneIdentityToken.m";
    v16 = 1024;
    v17 = 43;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

+ (FBSSceneIdentityToken)tokenWithHostPID:(int)a3 viewServiceSessionIdentifier:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (v4 <= 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:v4 viewServiceSessionIdentifier:a2];
  }

  v7 = v6;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v7)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 viewServiceSessionIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 viewServiceSessionIdentifier:?];
  }

  v8 = [[FBSSceneIdentityToken alloc] _initWithHost:v4 endpoint:0 target:0 workspace:0 identifier:v7];

  return v8;
}

+ (FBSSceneIdentityToken)tokenWithHostEndpoint:(id)a3 workspace:(id)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  NSClassFromString(&cfstr_Bsserviceconne.isa);
  if (!v11)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  v12 = +[FBSWorkspaceServiceSpecification identifier];
  v13 = [v11 service];
  v14 = [v12 isEqualToString:v13];

  if ((v14 & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:v11 workspace:a2 identifier:?];
  }

  v15 = v9;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v15)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  v16 = v10;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostEndpoint:a2 workspace:? identifier:?];
  }

  [(FBSSceneIdentityToken *)v16 tokenWithHostEndpoint:v11 workspace:v15 identifier:&v18];
  return v18;
}

+ (FBSSceneIdentityToken)tokenWithHostPID:(int)a3 directEndpointTarget:(id)a4 workspace:(id)a5 identifier:(id)a6
{
  v8 = *&a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v8 <= 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:v8 directEndpointTarget:a2 workspace:? identifier:?];
  }

  v13 = v12;
  v14 = v10;
  NSClassFromString(&cfstr_Rbsprocessiden.isa);
  if (!v14)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  v15 = v11;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v15)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  v16 = v13;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneIdentityToken tokenWithHostPID:a2 directEndpointTarget:? workspace:? identifier:?];
  }

  [(FBSSceneIdentityToken *)v16 tokenWithHostPID:v8 directEndpointTarget:v14 workspace:v15 identifier:&v18];
  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (self == v4)
  {
    v7 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if (self->_host == v6->_host)
    {
      BSEqualObjects();
    }

    v7 = 0;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_host >= 1)
    {
      xpc_dictionary_set_int64(v4, [@"h" UTF8String], self->_host);
    }

    if (self->_endpoint)
    {
      [@"e" UTF8String];
      BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    }

    target = self->_target;
    if (target)
    {
      [(RBSProcessIdentity *)target bs_secureEncoded];
      objc_claimAutoreleasedReturnValue();
      [@"t" UTF8String];
      BSSerializeDataToXPCDictionaryWithKey();
    }

    if (self->_workspace)
    {
      [@"w" UTF8String];
      BSSerializeStringToXPCDictionaryWithKey();
    }

    [@"i" UTF8String];
    BSSerializeStringToXPCDictionaryWithKey();
  }
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_host >= 1)
  {
    [v4 encodeInt64:? forKey:?];
    v4 = v8;
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    [v8 encodeObject:endpoint forKey:@"e"];
    v4 = v8;
  }

  target = self->_target;
  if (target)
  {
    [v8 encodeObject:target forKey:@"t"];
    v4 = v8;
  }

  workspace = self->_workspace;
  if (workspace)
  {
    [v8 encodeObject:workspace forKey:@"w"];
    v4 = v8;
  }

  [v4 encodeObject:self->_identifier forKey:@"i"];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_host >= 1)
  {
    [v4 encodeInt64:? forKey:?];
    v4 = v8;
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    [v8 encodeObject:endpoint forKey:@"e"];
    v4 = v8;
  }

  target = self->_target;
  if (target)
  {
    [v8 encodeObject:target forKey:@"t"];
    v4 = v8;
  }

  workspace = self->_workspace;
  if (workspace)
  {
    [v8 encodeObject:workspace forKey:@"w"];
    v4 = v8;
  }

  [v4 encodeObject:self->_identifier forKey:@"i"];
}

- (id)_initWithHost:(void *)a3 endpoint:(void *)a4 target:(void *)a5 workspace:(void *)a6 identifier:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!a1)
  {
    goto LABEL_43;
  }

  if (a2 < 1)
  {
    v84 = a1;
    if (a2)
    {
      v70 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_4_1();
      [v71 handleFailureInMethod:a2 object:? file:? lineNumber:? description:?];

      if (v11)
      {
LABEL_18:
        objc_opt_class();
        OUTLINED_FUNCTION_5_3();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_19;
        }
      }
    }

    else if (v11)
    {
      goto LABEL_18;
    }

    v72 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_4_1();
    [v73 handleFailureInMethod:v11 object:? file:? lineNumber:? description:?];

LABEL_19:
    v28 = +[FBSWorkspaceServiceSpecification identifier];
    v29 = [v11 service];
    v30 = [v28 isEqualToString:v29];

    if (v30)
    {
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v74 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_4_1();
      [v75 handleFailureInMethod:v11 object:? file:? lineNumber:? description:?];

      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v76 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_4_1();
    [v77 handleFailureInMethod:v12 object:? file:? lineNumber:? description:?];

LABEL_21:
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v62 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_4_1();
      [v63 handleFailureInMethod:v13 object:? file:? lineNumber:? description:?];
    }

    v86 = a2;
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v64 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_4_1();
      [v65 handleFailureInMethod:v14 object:? file:? lineNumber:? description:?];
    }

    v31 = MEMORY[0x1E696AEC0];
    v21 = [v11 targetDescription];
    v32 = MEMORY[0x1E696AB08];
    v33 = v13;
    v34 = [v32 URLHostAllowedCharacterSet];
    v35 = [v33 stringByAddingPercentEncodingWithAllowedCharacters:v34];

    if ([v35 isEqualToString:v33])
    {
      v36 = v33;
    }

    else
    {
      v36 = v35;
    }

    v37 = v36;

    v38 = MEMORY[0x1E696AB08];
    v39 = v14;
    v40 = [v38 URLHostAllowedCharacterSet];
    a2 = [v39 stringByAddingPercentEncodingWithAllowedCharacters:v40];

    if ([a2 isEqualToString:v39])
    {
      v41 = v39;
    }

    else
    {
      v41 = a2;
    }

    v42 = v41;

    v27 = [v31 stringWithFormat:@"%@/%@:%@", v21, v37, v42];

    a1 = v84;
    LODWORD(a2) = v86;
    goto LABEL_40;
  }

  if (v12)
  {
    if (v11)
    {
      v66 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_3_3();
      [v67 handleFailureInMethod:v11 object:? file:? lineNumber:? description:?];

      if (v13)
      {
LABEL_6:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_7;
        }
      }
    }

    else if (v13)
    {
      goto LABEL_6;
    }

    v68 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_3_3();
    [v69 handleFailureInMethod:v13 object:? file:? lineNumber:? description:?];

LABEL_7:
    v85 = a2;
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v60 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_3_3();
      [v61 handleFailureInMethod:v14 object:? file:? lineNumber:? description:?];
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = MEMORY[0x1E696AB08];
    v17 = v13;
    v18 = [v16 URLHostAllowedCharacterSet];
    v19 = [v17 stringByAddingPercentEncodingWithAllowedCharacters:v18];

    if ([v19 isEqualToString:v17])
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    v21 = v20;

    v22 = MEMORY[0x1E696AB08];
    a2 = v14;
    v23 = [v22 URLHostAllowedCharacterSet];
    v24 = [a2 stringByAddingPercentEncodingWithAllowedCharacters:v23];

    if ([v24 isEqualToString:a2])
    {
      v25 = a2;
    }

    else
    {
      v25 = v24;
    }

    v26 = v25;

    LODWORD(a2) = v85;
    v27 = [v15 stringWithFormat:@"%i->%@/%@:%@", v85, v12, v21, v26];

    goto LABEL_40;
  }

  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_34;
    }

LABEL_54:
    v80 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_3_3();
    [v81 handleFailureInMethod:v13 object:? file:? lineNumber:? description:?];

    if (!v14)
    {
      goto LABEL_55;
    }

    goto LABEL_35;
  }

  v78 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_3();
  [v79 handleFailureInMethod:v11 object:? file:? lineNumber:? description:?];

  if (v13)
  {
    goto LABEL_54;
  }

LABEL_34:
  if (!v14)
  {
LABEL_55:
    v82 = [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_3_3();
    [v83 handleFailureInMethod:v14 object:? file:? lineNumber:? description:?];

    goto LABEL_36;
  }

LABEL_35:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_36:
  v43 = MEMORY[0x1E696AEC0];
  v44 = MEMORY[0x1E696AB08];
  v45 = v14;
  v46 = [v44 URLHostAllowedCharacterSet];
  v47 = [v45 stringByAddingPercentEncodingWithAllowedCharacters:v46];

  if ([v47 isEqualToString:v45])
  {
    v48 = v45;
  }

  else
  {
    v48 = v47;
  }

  v21 = v48;

  v27 = [v43 stringWithFormat:@"%i/view-service:%@", a2, v21];
LABEL_40:

  v87.receiver = a1;
  v87.super_class = FBSSceneIdentityToken;
  v49 = objc_msgSendSuper2(&v87, sel_init);
  v50 = v49;
  if (v49)
  {
    v49[12] = a2;
    v51 = [v11 copy];
    v52 = *(v50 + 1);
    *(v50 + 1) = v51;

    v53 = [v12 copy];
    v54 = *(v50 + 2);
    *(v50 + 2) = v53;

    v55 = [v13 copy];
    v56 = *(v50 + 3);
    *(v50 + 3) = v55;

    v57 = [v14 copy];
    v58 = *(v50 + 4);
    *(v50 + 4) = v57;

    objc_storeStrong(v50 + 5, v27);
  }

  a1 = v50;

LABEL_43:
  return a1;
}

+ (id)pseudoTokenWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [FBSSceneIdentityToken alloc];
  v5 = getpid();
  v6 = [(FBSSceneIdentityToken *)v4 _initWithHost:v5 endpoint:0 target:0 workspace:0 identifier:v3];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = MEMORY[0x1E696AB08];
    v10 = *(v6 + 12);
    v11 = v3;
    v12 = [v9 URLHostAllowedCharacterSet];
    v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];

    if ([v13 isEqualToString:v11])
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = v14;

    v16 = [v8 stringWithFormat:@"%i/psuedo:%@", v10, v15];

    v17 = v7[5];
    v7[5] = v16;
  }

  return v7;
}

- (FBSSceneIdentityToken)initWithXPCDictionary:(id)a3
{
  v3 = a3;
  [@"t" UTF8String];
  OUTLINED_FUNCTION_5_3();
  BSDeserializeDataFromXPCDictionaryWithKey();
}

- (FBSSceneIdentityToken)initWithBSXPCCoder:(id)a3
{
  v3 = a3;
  [v3 decodeInt64ForKey:@"h"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"e"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"t"];
  v6 = [v3 decodeStringForKey:@"w"];
  v7 = [v3 decodeStringForKey:@"i"];

  v8 = OUTLINED_FUNCTION_6_0();
  return v8;
}

- (FBSSceneIdentityToken)initWithCoder:(id)a3
{
  v3 = a3;
  [v3 decodeInt64ForKey:@"h"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"e"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"t"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"w"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"i"];

  v8 = OUTLINED_FUNCTION_6_0();
  return v8;
}

+ (void)tokenWithHostPID:(char *)a1 viewServiceSessionIdentifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 viewServiceSessionIdentifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(uint64_t)a1 viewServiceSessionIdentifier:(char *)a2 .cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid host pid : %i"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSServiceConnectionEndpointClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(uint64_t)a1 workspace:(char *)a2 identifier:.cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"endpoint specified the wrong service : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (id)tokenWithHostEndpoint:(void *)a3 workspace:(void *)a4 identifier:.cold.5(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [[FBSSceneIdentityToken alloc] _initWithHost:a2 endpoint:0 target:a3 workspace:a1 identifier:?];
  *a4 = v8;

  return v8;
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostEndpoint:(char *)a1 workspace:identifier:.cold.8(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:RBSProcessIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (id)tokenWithHostPID:(void *)a3 directEndpointTarget:(void *)a4 workspace:(void *)a5 identifier:.cold.4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = [[FBSSceneIdentityToken alloc] _initWithHost:a2 endpoint:0 target:a3 workspace:a4 identifier:a1];
  *a5 = v10;

  return v10;
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(char *)a1 directEndpointTarget:workspace:identifier:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)tokenWithHostPID:(uint64_t)a1 directEndpointTarget:(char *)a2 workspace:identifier:.cold.8(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid host pid : %i"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

@end