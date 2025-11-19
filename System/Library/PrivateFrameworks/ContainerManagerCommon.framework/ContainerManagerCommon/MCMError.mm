@interface MCMError
+ (MCMError)notEntitled;
+ (MCMError)unsupported;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMCMError:(id)a3;
- (MCMError)init;
- (MCMError)initWithErrorType:(unint64_t)a3;
- (MCMError)initWithErrorType:(unint64_t)a3 category:(unint64_t)a4;
- (MCMError)initWithErrorType:(unint64_t)a3 category:(unint64_t)a4 message:(id)a5;
- (MCMError)initWithErrorType:(unint64_t)a3 category:(unint64_t)a4 path:(id)a5 POSIXerrno:(int)a6 message:(id)a7;
- (MCMError)initWithLibsystemError:(container_error_extended_s *)a3;
- (MCMError)initWithNSError:(id)a3 url:(id)a4 defaultErrorType:(unint64_t)a5;
- (NSString)message;
- (NSString)path;
- (container_error_extended_s)libsystemError;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fullDescription;
- (int)POSIXerrno;
- (unint64_t)category;
- (unint64_t)hash;
- (unint64_t)type;
@end

@implementation MCMError

+ (MCMError)notEntitled
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__MCMError_notEntitled__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = a1;
  if (notEntitled_onceToken != -1)
  {
    dispatch_once(&notEntitled_onceToken, v5);
  }

  v2 = notEntitled__notEntitled;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __23__MCMError_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __23__MCMError_description__block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) type];
  v6 = [*(a1 + 32) category];
  v7 = [*(a1 + 32) POSIXerrno];
  if (a2)
  {
    v8 = [*(a1 + 32) path];
  }

  else
  {
    v8 = @"~~";
  }

  v9 = [*(a1 + 32) message];
  v10 = v9;
  v11 = &stru_1F5A5B2B8;
  if (v9)
  {
    v11 = v9;
  }

  v12 = [v4 stringWithFormat:@"(%llu|%llu|%d|[%@]%@)", v5, v6, v7, v8, v11];

  if (a2)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (unint64_t)type
{
  result = self->_type;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)category
{
  result = self->_category;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)POSIXerrno
{
  result = self->_POSIXerrno;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)path
{
  result = self->_path;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)message
{
  result = self->_message;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 24) = self->_category;
    v7 = [(NSString *)self->_path copyWithZone:a3];
    v8 = *(v6 + 32);
    *(v6 + 32) = v7;

    *(v6 + 8) = self->_POSIXerrno;
    objc_storeStrong((v6 + 40), self->_message);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self == v4;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCMError *)self isEqualToMCMError:v4];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToMCMError:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  path = self->_path;
  if (!path)
  {
    goto LABEL_14;
  }

  if (!v4[4])
  {
    LOBYTE(path) = 0;
    goto LABEL_7;
  }

  LOBYTE(path) = [(NSString *)path isEqualToString:?];
  if (!self->_path)
  {
LABEL_14:
    if (!v4[4])
    {
      LOBYTE(path) = 1;
    }
  }

LABEL_7:
  if (self->_type == v4[2] && self->_category == v4[3])
  {
    v6 = (self->_POSIXerrno == *(v4 + 2)) & path;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)hash
{
  v7 = *MEMORY[0x1E69E9840];
  type = self->_type;
  category = self->_category;
  v4 = [(NSString *)self->_path hash];
  v5 = *MEMORY[0x1E69E9840];
  return category ^ type ^ v4;
}

- (id)fullDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__MCMError_fullDescription__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __27__MCMError_fullDescription__block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *(a1 + 32);
  v9 = [v8 type];
  v10 = [*(a1 + 32) category];
  v11 = [*(a1 + 32) POSIXerrno];
  if (a2)
  {
    v12 = [*(a1 + 32) path];
  }

  else
  {
    v12 = @"~~";
  }

  v13 = [*(a1 + 32) message];
  v14 = [v4 stringWithFormat:@"<%@: %p type = %llu, category = %llu, POSIX errno = %d, path = [%@], %@>", v7, v8, v9, v10, v11, v12, v13];;

  if (a2)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (container_error_extended_s)libsystemError
{
  v8 = *MEMORY[0x1E69E9840];
  [(MCMError *)self category];
  [(MCMError *)self type];
  v3 = [(MCMError *)self path];
  [v3 fileSystemRepresentation];
  [(MCMError *)self POSIXerrno];
  v4 = [(MCMError *)self message];
  [v4 UTF8String];
  v5 = container_error_create_with_message();

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMError)initWithNSError:(id)a3 url:(id)a4 defaultErrorType:(unint64_t)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 domain];
    v11 = [v10 isEqual:*MEMORY[0x1E696A798]];

    if (v11)
    {
      v12 = [v9 path];
      v13 = -[MCMError initWithErrorType:category:path:POSIXerrno:](self, "initWithErrorType:category:path:POSIXerrno:", a5, 1, v12, [v8 code]);
LABEL_4:
      self = v13;
LABEL_12:

      v14 = self;
      goto LABEL_13;
    }

    v15 = [v8 domain];
    if ([v15 isEqual:*MEMORY[0x1E696A250]])
    {
      v16 = [v8 code];

      if (v16 == 2048)
      {
        v12 = [v9 path];
        v13 = [(MCMError *)self initWithErrorType:a5 category:5 path:v12 POSIXerrno:100];
        goto LABEL_4;
      }
    }

    else
    {
    }

    v17 = [v8 domain];
    v18 = [v17 isEqual:@"MCMErrorDomain"];

    if (!v18)
    {
      self = [(MCMError *)self initWithErrorType:a5];
      v14 = self;
      goto LABEL_13;
    }

    v19 = [v8 code];
    v12 = [v8 userInfo];
    v20 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
    self = [(MCMError *)self initWithErrorType:v19 category:0 message:v20];

    goto LABEL_12;
  }

  v14 = 0;
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

- (MCMError)initWithErrorType:(unint64_t)a3 category:(unint64_t)a4 path:(id)a5 POSIXerrno:(int)a6 message:(id)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a7;
  if (a3 == 1)
  {
    v17 = 0;
LABEL_7:

    v18 = *MEMORY[0x1E69E9840];
    return v17;
  }

  if (a3)
  {
    v20.receiver = self;
    v20.super_class = MCMError;
    v15 = [(MCMError *)&v20 init];
    v16 = v15;
    if (v15)
    {
      v15->_type = a3;
      v15->_category = a4;
      objc_storeStrong(&v15->_path, a5);
      v16->_POSIXerrno = a6;
      objc_storeStrong(&v16->_message, a7);
    }

    self = v16;
    v17 = self;
    goto LABEL_7;
  }

  result = _os_crash();
  __break(1u);
  return result;
}

- (MCMError)initWithErrorType:(unint64_t)a3 category:(unint64_t)a4 message:(id)a5
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMError *)self initWithErrorType:a3 category:a4 path:0 POSIXerrno:0 message:a5];
}

- (MCMError)initWithErrorType:(unint64_t)a3 category:(unint64_t)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return [(MCMError *)self initWithErrorType:a3 category:a4 path:0 POSIXerrno:0 message:0];
}

- (MCMError)initWithErrorType:(unint64_t)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMError *)self initWithErrorType:a3 category:0 path:0 POSIXerrno:0];
}

- (MCMError)init
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMError *)self initWithErrorType:1 category:0 path:0 POSIXerrno:0];
}

- (MCMError)initWithLibsystemError:(container_error_extended_s *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    type = container_error_get_type();
    category = container_error_get_category();
    posix_errno = container_error_get_posix_errno();
    path = container_error_get_path();
    if (path)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:path];
    }

    else
    {
      v8 = 0;
    }

    message = container_error_get_message();
    if (message)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:message];
    }

    else
    {
      v11 = 0;
    }

    self = [(MCMError *)self initWithErrorType:type category:category path:v8 POSIXerrno:posix_errno message:v11];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (MCMError)unsupported
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__MCMError_unsupported__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = a1;
  if (unsupported_onceToken != -1)
  {
    dispatch_once(&unsupported_onceToken, v5);
  }

  v2 = unsupported__unsupported;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __23__MCMError_unsupported__block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  unsupported__unsupported = [objc_alloc(*(a1 + 32)) initWithErrorType:72 category:3];
  v1 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __23__MCMError_notEntitled__block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  notEntitled__notEntitled = [objc_alloc(*(a1 + 32)) initWithErrorType:55 category:3];
  v1 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

@end