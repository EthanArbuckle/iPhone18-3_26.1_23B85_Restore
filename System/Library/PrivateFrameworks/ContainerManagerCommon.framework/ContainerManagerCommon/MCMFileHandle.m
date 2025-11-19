@interface MCMFileHandle
+ (int64_t)compareDataProtectionClassTarget:(id)a3 withExisting:(id)a4;
- (BOOL)checkAppContainerProtection:(BOOL *)a3 error:(id *)a4;
- (BOOL)expectOpenWithError:(id *)a3;
- (BOOL)invalid;
- (BOOL)isOpen;
- (BOOL)openLazily;
- (BOOL)openWithError:(id *)a3;
- (BOOL)registerAppContainerForProtectionWithError:(id *)a3;
- (BOOL)removeXattr:(id)a3 error:(id *)a4;
- (BOOL)setXattr:(id)a3 valueAsNumber:(id)a4 error:(id *)a5;
- (BOOL)setXattr:(id)a3 valueAsString:(id)a4 error:(id *)a5;
- (BOOL)setXattr:(id)a3 valueAsUUID:(id)a4 error:(id *)a5;
- (BOOL)withOpenFileDoBlock:(id)a3;
- (MCMFileHandle)initWithPath:(id)a3 relativeToFileHandle:(id)a4 direction:(unint64_t)a5 symlinks:(unint64_t)a6 createMode:(unsigned __int16)a7 createDPClass:(id)a8 openLazily:(BOOL)a9;
- (MCMFileHandle_Private)relativeToFileHandle;
- (NSError)openError;
- (NSNumber)createDPClass;
- (NSString)description;
- (NSString)path;
- (id)copyValueAsNumberFromXattr:(id)a3 error:(id *)a4;
- (id)copyValueAsStringFromXattr:(id)a3 maxLength:(unint64_t)a4 error:(id *)a5;
- (id)copyValueAsUUIDFromXattr:(id)a3 error:(id *)a4;
- (int)_computeFlags;
- (int)_openAbsolute;
- (int)_openRelative;
- (int)fd;
- (int)flags;
- (unint64_t)direction;
- (unint64_t)symlinks;
- (unsigned)_computeMode;
- (unsigned)createMode;
- (void)close;
- (void)dealloc;
- (void)setFd:(int)a3;
- (void)setInvalid:(BOOL)a3;
- (void)setOpen:(BOOL)a3;
- (void)setOpenError:(id)a3;
- (void)setRelativeToFileHandle:(id)a3;
@end

@implementation MCMFileHandle

- (int)fd
{
  result = self->_fd;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)_computeFlags
{
  v2 = self->_direction - 1;
  if (v2 > 9)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = dword_1DF3BE520[v2];
  }

  symlinks = self->_symlinks;
  v5 = v3 | 0x100;
  if (!symlinks)
  {
    v3 |= 0x20000000u;
  }

  if (symlinks == 1)
  {
    result = v5;
  }

  else
  {
    result = v3;
  }

  v7 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isOpen
{
  result = self->_open;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)openLazily
{
  result = self->_openLazily;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSError)openError
{
  result = self->_openError;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMFileHandle_Private)relativeToFileHandle
{
  result = self->_relativeToFileHandle;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)invalid
{
  result = self->_invalid;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)_openAbsolute
{
  v14 = *MEMORY[0x1E69E9840];
  [(MCMFileHandle *)self _computeMode];
  v3 = [(MCMFileHandle *)self createDPClass];

  v4 = *MEMORY[0x1E69E9988];
  if (v3)
  {
    v5 = *(v4 + 520);
    v6 = [(MCMFileHandle *)self path];
    v7 = [v6 fileSystemRepresentation];
    v8 = [(MCMFileHandle *)self flags];
    v9 = [(MCMFileHandle *)self createDPClass];
    v10 = v5(v7, v8, [v9 intValue], 0);
  }

  else
  {
    v11 = *(v4 + 512);
    v6 = [(MCMFileHandle *)self path];
    v10 = v11([v6 fileSystemRepresentation], -[MCMFileHandle flags](self, "flags"));
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unsigned)_computeMode
{
  if ((self->_flags & 0x200) != 0)
  {
    result = self->_createMode;
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSNumber)createDPClass
{
  result = self->_createDPClass;
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

- (int)flags
{
  result = self->_flags;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(MCMFileHandle *)self close];
  v4.receiver = self;
  v4.super_class = MCMFileHandle;
  [(MCMFileHandle *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)close
{
  v5 = *MEMORY[0x1E69E9840];
  if ([(MCMFileHandle *)self isOpen])
  {
    (*(*MEMORY[0x1E69E9988] + 152))([(MCMFileHandle *)self fd]);
    [(MCMFileHandle *)self setOpen:0];
    v3 = *MEMORY[0x1E69E9840];

    [(MCMFileHandle *)self setInvalid:1];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
  }
}

- (void)setInvalid:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_invalid = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setOpen:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_open = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setOpenError:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_openError = &self->_openError;

  objc_storeStrong(p_openError, a3);
}

- (void)setFd:(int)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_fd = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (unsigned)createMode
{
  result = self->_createMode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)symlinks
{
  result = self->_symlinks;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)direction
{
  result = self->_direction;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setRelativeToFileHandle:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_relativeToFileHandle = &self->_relativeToFileHandle;

  objc_storeStrong(p_relativeToFileHandle, a3);
}

- (int)_openRelative
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [(MCMFileHandle *)self relativeToFileHandle];
  v20[0] = 0;
  v4 = [v3 expectOpenWithError:v20];
  v5 = v20[0];

  if (!v4)
  {
    _os_crash();
    __break(1u);
  }

  [(MCMFileHandle *)self _computeMode];
  v6 = [(MCMFileHandle *)self createDPClass];

  v7 = *MEMORY[0x1E69E9988];
  if (v6)
  {
    v8 = *(v7 + 536);
    v9 = [(MCMFileHandle *)self relativeToFileHandle];
    v10 = [v9 fd];
    v11 = [(MCMFileHandle *)self path];
    v12 = [v11 fileSystemRepresentation];
    v13 = [(MCMFileHandle *)self flags];
    v14 = [(MCMFileHandle *)self createDPClass];
    v15 = v8(v10, v12, v13, [v14 intValue], 0);
  }

  else
  {
    v16 = *(v7 + 528);
    v9 = [(MCMFileHandle *)self relativeToFileHandle];
    v17 = [v9 fd];
    v11 = [(MCMFileHandle *)self path];
    v15 = v16(v17, [v11 fileSystemRepresentation], -[MCMFileHandle flags](self, "flags"));
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (NSString)description
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMFileHandle *)self path];
}

- (BOOL)expectOpenWithError:(id *)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(MCMFileHandle *)self isOpen])
  {
    v5 = 0;
    v6 = 1;
LABEL_8:

    v7 = *MEMORY[0x1E69E9840];
    return v6;
  }

  if ([(MCMFileHandle *)self invalid])
  {
    _os_crash();
    __break(1u);
  }

  else if ([(MCMFileHandle *)self openLazily])
  {
    v9[0] = 0;
    v6 = [(MCMFileHandle *)self openWithError:v9];
    v5 = v9[0];
    if (a3)
    {
      if (!v6)
      {
        v5 = v5;
        v6 = 0;
        *a3 = v5;
      }
    }

    goto LABEL_8;
  }

  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)registerAppContainerForProtectionWithError:(id *)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v5 = [(MCMFileHandle *)self expectOpenWithError:v16];
  v6 = v16[0];
  if (v5)
  {
    v7 = (*(*MEMORY[0x1E69E99A0] + 64))(self->_fd);
    if (v7)
    {
      v8 = v7 == 17;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 1;
      goto LABEL_11;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__MCMFileHandle_registerAppContainerForProtectionWithError___block_invoke;
    v14[3] = &unk_1E86B0618;
    v14[4] = self;
    v15 = v7;
    v10 = __60__MCMFileHandle_registerAppContainerForProtectionWithError___block_invoke(v14);

    v6 = v10;
  }

  if (a3)
  {
    v11 = v6;
    v9 = 0;
    *a3 = v6;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

id __60__MCMFileHandle_registerAppContainerForProtectionWithError___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"sandbox_register_app_container() failed on path [%s]: error = (%d) %s", objc_msgSend(*(*(a1 + 32) + 24), "fileSystemRepresentation"), *(a1 + 40), strerror(*(a1 + 40))];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle registerAppContainerForProtectionWithError:]_block_invoke"];
  v10[0] = v3;
  v10[1] = &unk_1F5A76828;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)checkAppContainerProtection:(BOOL *)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 0;
  v7 = [(MCMFileHandle *)self expectOpenWithError:&v17];
  v8 = v17;
  if (!v7)
  {
    goto LABEL_4;
  }

  v9 = (**MEMORY[0x1E69E99A0])(self->_fd, &v18 + 1, &v18);
  if (v9)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__MCMFileHandle_checkAppContainerProtection_error___block_invoke;
    v15[3] = &unk_1E86B0618;
    v15[4] = self;
    v16 = v9;
    v10 = __51__MCMFileHandle_checkAppContainerProtection_error___block_invoke(v15);

    v8 = v10;
LABEL_4:
    if (a4)
    {
      v11 = v8;
      v12 = 0;
      *a4 = v8;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_10;
  }

  if (a3)
  {
    *a3 = HIBYTE(v18);
  }

  v12 = 1;
LABEL_10:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

id __51__MCMFileHandle_checkAppContainerProtection_error___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"sandbox_check_protected_app_container() failed on path [%s]: error = %{darwin.errno}d", objc_msgSend(*(*(a1 + 32) + 24), "fileSystemRepresentation"), *(a1 + 40)];
  v9[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle checkAppContainerProtection:error:]_block_invoke"];
  v10[0] = v3;
  v10[1] = &unk_1F5A76810;
  v4 = *MEMORY[0x1E696A578];
  v9[1] = @"SourceFileLine";
  v9[2] = v4;
  v10[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)removeXattr:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19[0] = 0;
  v7 = [(MCMFileHandle *)self expectOpenWithError:v19];
  v8 = v19[0];
  if (!v7)
  {
    goto LABEL_6;
  }

  if (!(*(*MEMORY[0x1E69E9988] + 304))(-[MCMFileHandle fd](self, "fd"), [v6 UTF8String], 0))
  {
    v10 = 1;
    goto LABEL_10;
  }

  v9 = *__error();
  v10 = 1;
  if (v9 && v9 != 93)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__MCMFileHandle_removeXattr_error___block_invoke;
    v15[3] = &unk_1E86B05A0;
    v16 = v6;
    v17 = self;
    v18 = v9;
    v11 = __35__MCMFileHandle_removeXattr_error___block_invoke(v15);

    v8 = v11;
LABEL_6:
    if (a4)
    {
      v12 = v8;
      v10 = 0;
      *a4 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_10:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

id __35__MCMFileHandle_removeXattr_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Could not clear xattr [%@] from [%@]; error = %{darwin.errno}d", v3, v4, *(a1 + 48)];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle removeXattr:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A767F8;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 48) userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)setXattr:(id)a3 valueAsNumber:(id)a4 error:(id *)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a4 stringValue];
  LOBYTE(a5) = [(MCMFileHandle *)self setXattr:v8 valueAsString:v9 error:a5];

  v10 = *MEMORY[0x1E69E9840];
  return a5;
}

- (BOOL)setXattr:(id)a3 valueAsUUID:(id)a4 error:(id *)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a4 UUIDString];
  LOBYTE(a5) = [(MCMFileHandle *)self setXattr:v8 valueAsString:v9 error:a5];

  v10 = *MEMORY[0x1E69E9840];
  return a5;
}

- (BOOL)setXattr:(id)a3 valueAsString:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v25[0] = 0;
  v10 = [(MCMFileHandle *)self expectOpenWithError:v25];
  v11 = v25[0];
  if (v10)
  {
    v12 = [v9 UTF8String];
    v13 = strlen(v12);
    if (!(*(*MEMORY[0x1E69E9988] + 328))(-[MCMFileHandle fd](self, "fd"), [v8 UTF8String], v12, v13, 0, 0) || (v14 = *__error()) == 0)
    {
      v17 = 1;
      goto LABEL_9;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __46__MCMFileHandle_setXattr_valueAsString_error___block_invoke;
    v20[3] = &unk_1E86B05F0;
    v21 = v8;
    v22 = self;
    v23 = v9;
    v24 = v14;
    v15 = __46__MCMFileHandle_setXattr_valueAsString_error___block_invoke(v20);

    v11 = v15;
  }

  if (a5)
  {
    v16 = v11;
    v17 = 0;
    *a5 = v11;
  }

  else
  {
    v17 = 0;
  }

LABEL_9:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

id __46__MCMFileHandle_setXattr_valueAsString_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Could not set xattr [%@] on [%@] to [%@]; error = %{darwin.errno}d", v3, v4, *(a1 + 48), *(a1 + 56)];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle setXattr:valueAsString:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A767E0;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 56) userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)copyValueAsNumberFromXattr:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20[0] = 0;
  v7 = [(MCMFileHandle *)self copyValueAsStringFromXattr:v6 maxLength:20 error:v20];
  v8 = v20[0];
  if (v7)
  {
    __endptr = 0;
    v9 = strtoull([v7 UTF8String], &__endptr, 10);
    if (__endptr && !*__endptr)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __50__MCMFileHandle_copyValueAsNumberFromXattr_error___block_invoke;
      v15[3] = &unk_1E86B05C8;
      v16 = v6;
      v17 = self;
      v18 = v7;
      v10 = __50__MCMFileHandle_copyValueAsNumberFromXattr_error___block_invoke(v15);

      v11 = 0;
      v8 = v10;
      if (!a4)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  if (!v11)
  {
    v12 = v8;
    *a4 = v8;
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

id __50__MCMFileHandle_copyValueAsNumberFromXattr_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Xattr [%@] on [%@] was not a number; value = [%@]", v3, v4, *(a1 + 48)];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle copyValueAsNumberFromXattr:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A767C8;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)copyValueAsUUIDFromXattr:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19[0] = 0;
  v7 = [(MCMFileHandle *)self copyValueAsStringFromXattr:v6 maxLength:36 error:v19];
  v8 = v19[0];
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    if (v9)
    {
      v10 = v9;
      goto LABEL_8;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__MCMFileHandle_copyValueAsUUIDFromXattr_error___block_invoke;
    v15[3] = &unk_1E86B05C8;
    v16 = v6;
    v17 = self;
    v18 = v7;
    v11 = __48__MCMFileHandle_copyValueAsUUIDFromXattr_error___block_invoke(v15);

    v8 = v11;
  }

  if (a4)
  {
    v12 = v8;
    v10 = 0;
    *a4 = v8;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

id __48__MCMFileHandle_copyValueAsUUIDFromXattr_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Xattr [%@] on [%@] was not a UUID; value = [%@]", v3, v4, *(a1 + 48)];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle copyValueAsUUIDFromXattr:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A767B0;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)copyValueAsStringFromXattr:(id)a3 maxLength:(unint64_t)a4 error:(id *)a5
{
  __s[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v24 = 0;
  __s[0] = 0;
  v9 = [(MCMFileHandle *)self expectOpenWithError:&v24];
  v10 = v24;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_12;
  }

  if (a4 + 1 > 1)
  {
    v11 = a4 + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = malloc_type_calloc(v11, 1uLL, 0x100004077774924uLL);
  __s[0] = v12;
  if (!v12)
  {
LABEL_12:
    v14 = 0;
    if (!a5)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v13 = (*(*MEMORY[0x1E69E9988] + 264))(-[MCMFileHandle fd](self, "fd"), [v8 UTF8String], v12, a4, 0, 0);
  if (v13 < 1)
  {
    if (*__error() != 93)
    {
      v18 = *__error();
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __60__MCMFileHandle_copyValueAsStringFromXattr_maxLength_error___block_invoke;
      v20[3] = &unk_1E86B05A0;
      v21 = v8;
      v22 = self;
      v23 = v18;
      v19 = __60__MCMFileHandle_copyValueAsStringFromXattr_maxLength_error___block_invoke(v20);

      v14 = 0;
      v10 = v19;
      if (!a5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v13 < a4)
  {
    v12[v13] = 0;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
  if (a5)
  {
LABEL_13:
    if (!v14)
    {
      v15 = v10;
      *a5 = v10;
    }
  }

LABEL_15:
  if (v12)
  {
    free(v12);
    memset_s(__s, 8uLL, 0, 8uLL);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

id __60__MCMFileHandle_copyValueAsStringFromXattr_maxLength_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Could not read xattr [%@] from [%@]; error = %{darwin.errno}d", v3, v4, *(a1 + 48)];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle copyValueAsStringFromXattr:maxLength:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A76798;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 48) userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __47__MCMFileHandle_setPermissions_andOwner_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not chmod [%@] to [0%o]; error = %{darwin.errno}d", v3, *(a1 + 44), *(a1 + 40)];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle setPermissions:andOwner:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76768;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __47__MCMFileHandle_setPermissions_andOwner_error___block_invoke_26(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not chown [%@] to [%@]; error = %{darwin.errno}d", v3, *(a1 + 40), *(a1 + 48)];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle setPermissions:andOwner:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76780;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 48) userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)withOpenFileDoBlock:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10[0] = 0;
  v5 = [(MCMFileHandle *)self openWithError:v10];
  v6 = v10[0];
  v7 = v5 & v4[2](v4, v6);
  [(MCMFileHandle *)self close];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)openWithError:(id *)a3
{
  v12[5] = *MEMORY[0x1E69E9840];
  if (![(MCMFileHandle *)self isOpen])
  {
    if ([(MCMFileHandle *)self invalid])
    {
      result = _os_crash();
      __break(1u);
      return result;
    }

    v5 = [(MCMFileHandle *)self openError];

    if (!v5)
    {
      v6 = [(MCMFileHandle *)self relativeToFileHandle];

      if (v6)
      {
        v7 = [(MCMFileHandle *)self _openRelative];
      }

      else
      {
        v7 = [(MCMFileHandle *)self _openAbsolute];
      }

      self->_fd = v7;
      if (v7 < 0)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __31__MCMFileHandle_openWithError___block_invoke;
        v12[3] = &unk_1E86B0B98;
        v12[4] = self;
        v8 = __31__MCMFileHandle_openWithError___block_invoke(v12);
        [(MCMFileHandle *)self setOpenError:v8];
      }

      else
      {
        [(MCMFileHandle *)self setOpen:1];
      }
    }
  }

  v9 = [(MCMFileHandle *)self isOpen];
  if (a3)
  {
    if (!v9)
    {
      *a3 = [(MCMFileHandle *)self openError];
    }
  }

  result = [(MCMFileHandle *)self isOpen];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

id __31__MCMFileHandle_openWithError___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Failed to open [%@] with [%@]", v3, *(a1 + 32)];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle openWithError:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76750;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (MCMFileHandle)initWithPath:(id)a3 relativeToFileHandle:(id)a4 direction:(unint64_t)a5 symlinks:(unint64_t)a6 createMode:(unsigned __int16)a7 createDPClass:(id)a8 openLazily:(BOOL)a9
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = MCMFileHandle;
  v19 = [(MCMFileHandle *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_path, a3);
    objc_storeStrong(&v20->_relativeToFileHandle, a4);
    v20->_direction = a5;
    v20->_symlinks = a6;
    v20->_openLazily = a9;
    v20->_fd = -1;
    v20->_invalid = 0;
    openError = v20->_openError;
    v20->_openError = 0;

    v20->_open = 0;
    v22 = [(MCMFileHandle *)v20 _computeFlags];
    createDPClass = v20->_createDPClass;
    v20->_flags = v22;
    v20->_createMode = 0;
    v20->_createDPClass = 0;

    if ((v20->_flags & 0x200) != 0)
    {
      v20->_createMode = a7;
      objc_storeStrong(&v20->_createDPClass, a8);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (int64_t)compareDataProtectionClassTarget:(id)a3 withExisting:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 intValue];
  v7 = [v5 intValue];

  if ((v7 | v6) <= 7 && v6 - 5 >= 2)
  {
    v9 = MCMCompareDataProtectionClassTarget_kDataProtectionClassPrecedence[v7];
    if ((v7 - 5) < 2)
    {
      v9 = 2;
    }

    if (MCMCompareDataProtectionClassTarget_kDataProtectionClassPrecedence[v6] <= v9)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

@end