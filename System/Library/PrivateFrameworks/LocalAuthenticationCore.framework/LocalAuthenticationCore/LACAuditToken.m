@interface LACAuditToken
+ (id)nullInstance;
- ($115C4C562B26FF47E01F9F4EA65B5887)rawValue;
- (BOOL)isEqual:(id)a3;
- (LACAuditToken)initWithData:(id)a3;
- (LACAuditToken)initWithRawValue:(id *)a3;
- (NSData)data;
- (id)belongsToPlatformBinary:(id *)a3;
- (id)description;
- (id)signingID:(id *)a3;
- (unint64_t)hash;
@end

@implementation LACAuditToken

- (NSData)data
{
  v2 = [MEMORY[0x1E696B098] valueWithBytes:&self->_rawValue objCType:"{?=[8I]}"];
  sizep = 0;
  NSGetSizeAndAlignment([v2 objCType], &sizep, 0);
  v3 = malloc_type_malloc(sizep, 0x14A1BDCDuLL);
  [v2 getValue:v3];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:sizep];
  free(v3);

  return v4;
}

- (LACAuditToken)initWithRawValue:(id *)a3
{
  v6.receiver = self;
  v6.super_class = LACAuditToken;
  result = [(LACAuditToken *)&v6 init];
  if (result)
  {
    v5 = *a3->var0;
    *&result->_rawValue.val[4] = *&a3->var0[4];
    *result->_rawValue.val = v5;
  }

  return result;
}

- (LACAuditToken)initWithData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length] == 32)
  {
    v6 = [MEMORY[0x1E696B098] valueWithBytes:objc_msgSend(v5 objCType:{"bytes"), "{?=[8I]}"}];
    v7 = v6;
    if (v6)
    {
      v11 = 0u;
      v12 = 0u;
      [v6 getValue:&v11];
      v10[0] = v11;
      v10[1] = v12;
      self = [(LACAuditToken *)self initWithRawValue:v10];
      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)nullInstance
{
  v2 = [LACAuditToken alloc];
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v6[0] = v3;
  v6[1] = v3;
  v4 = [(LACAuditToken *)v2 initWithRawValue:v6];

  return v4;
}

- (id)signingID:(id *)a3
{
  if (!self->_signingID)
  {
    v5 = *&self->_rawValue.val[4];
    *v13.val = *self->_rawValue.val;
    *&v13.val[4] = v5;
    v6 = SecTaskCreateWithAuditToken(0, &v13);
    if (v6)
    {
      v7 = v6;
      v8 = SecTaskCopySigningIdentifier(v6, 0);
      signingID = self->_signingID;
      self->_signingID = &v8->isa;

      CFRelease(v7);
    }

    else
    {
      if (a3)
      {
        *a3 = [LACError errorWithCode:-1000 debugDescription:@"Could not obtain signingID from audit token"];
      }

      v10 = LACLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [LACAuditToken signingID:v10];
      }
    }
  }

  v11 = self->_signingID;

  return v11;
}

- (id)belongsToPlatformBinary:(id *)a3
{
  if (!self->_belongsToPlatformBinary)
  {
    v5 = *&self->_rawValue.val[4];
    *v13.val = *self->_rawValue.val;
    *&v13.val[4] = v5;
    v6 = SecTaskCreateWithAuditToken(0, &v13);
    if (v6)
    {
      v7 = v6;
      CodeSignStatus = SecTaskGetCodeSignStatus(v6);
      CFRelease(v7);
      v9 = [MEMORY[0x1E696AD98] numberWithBool:(CodeSignStatus & 0xC000001) == 67108865];
      p_super = &self->_belongsToPlatformBinary->super.super;
      self->_belongsToPlatformBinary = v9;
    }

    else
    {
      if (a3)
      {
        *a3 = [LACError errorWithCode:-1000 debugDescription:@"Could not determine if audit token belongs to platform binary"];
      }

      p_super = LACLogDefault();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [LACAuditToken belongsToPlatformBinary:?];
      }
    }
  }

  belongsToPlatformBinary = self->_belongsToPlatformBinary;

  return belongsToPlatformBinary;
}

- (unint64_t)hash
{
  [(LACAuditToken *)self rawValue];
  v3 = 31 * audit_token_to_pid(&v5);
  [(LACAuditToken *)self rawValue];
  return v3 + audit_token_to_pidversion(&v5) + 961;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = *&self->_rawValue.val[4];
    *v12.val = *self->_rawValue.val;
    *&v12.val[4] = v6;
    v7 = audit_token_to_pid(&v12);
    if (v5)
    {
      [v5 rawValue];
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    if (v7 == audit_token_to_pid(&v12))
    {
      v9 = *&self->_rawValue.val[4];
      *v12.val = *self->_rawValue.val;
      *&v12.val[4] = v9;
      v10 = audit_token_to_pidversion(&v12);
      if (v5)
      {
        [v5 rawValue];
      }

      else
      {
        memset(&v12, 0, sizeof(v12));
      }

      v8 = v10 == audit_token_to_pidversion(&v12);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  v6 = *&self->_rawValue.val[4];
  *atoken.val = *self->_rawValue.val;
  *&atoken.val[4] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:audit_token_to_pid(&atoken)];
  v8 = [v5 stringWithFormat:@"pid: %@", v7];
  v19[0] = v8;
  v9 = MEMORY[0x1E696AEC0];
  v10 = *&self->_rawValue.val[4];
  *atoken.val = *self->_rawValue.val;
  *&atoken.val[4] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithInt:audit_token_to_pidversion(&atoken)];
  v12 = [v9 stringWithFormat:@"pidVersion: %@", v11];
  v19[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)rawValue
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)signingID:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = @"Could not obtain signingID from audit token";
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)belongsToPlatformBinary:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = @"Could not determine if audit token belongs to platform binary";
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end