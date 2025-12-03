@interface MCMPOSIXUser
+ (BOOL)_isRoleUserWithUID:(unsigned int)d homeDirectoryURL:(id)l;
+ (MCMPOSIXUser)posixUserWithName:(id)name;
+ (id)_posixUserWithPWD:(container_pwd_s *)d;
+ (id)_posixUserWithUID:(unsigned int)d name:(id)name useUID:(BOOL)iD;
+ (id)currentPOSIXUser;
+ (id)nobody;
+ (id)root;
+ (void)flush;
- (BOOL)hasUseableHomeDirectory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPOSIXUser:(id)user;
- (BOOL)isRoleUser;
- (BOOL)isRoot;
- (MCMPOSIXUser)initWithUID:(unsigned int)d primaryGID:(unsigned int)iD homeDirectoryURL:(id)l unvalidatedHomeDirectoryURL:(id)rL name:(id)name roleUser:(BOOL)user;
- (NSString)name;
- (NSURL)homeDirectoryURL;
- (NSURL)unvalidatedHomeDirectoryURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fullDescription;
- (unint64_t)hash;
- (unsigned)UID;
- (unsigned)primaryGID;
@end

@implementation MCMPOSIXUser

- (BOOL)isRoleUser
{
  result = self->_roleUser;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)UID
{
  result = self->_UID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)homeDirectoryURL
{
  result = self->_homeDirectoryURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)primaryGID
{
  result = self->_primaryGID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)hasUseableHomeDirectory
{
  result = self->_useableHomeDirectory;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isRoot
{
  result = self->_root;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)name
{
  result = self->_name;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)unvalidatedHomeDirectoryURL
{
  result = self->_unvalidatedHomeDirectoryURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)initWithUID:(unsigned int)d primaryGID:(unsigned int)iD homeDirectoryURL:(id)l unvalidatedHomeDirectoryURL:(id)rL name:(id)name roleUser:(BOOL)user
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = MCMPOSIXUser;
  v18 = [(MCMPOSIXUser *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_UID = d;
    v18->_primaryGID = iD;
    objc_storeStrong(&v18->_homeDirectoryURL, l);
    objc_storeStrong(&v19->_unvalidatedHomeDirectoryURL, rL);
    objc_storeStrong(&v19->_name, name);
    v19->_root = d == 0;
    v19->_roleUser = user;
    if (rLCopy)
    {
      path = [rLCopy path];
      if ([path hasPrefix:@"/var/empty"])
      {
        v19->_useableHomeDirectory = 0;
      }

      else
      {
        path2 = [rLCopy path];
        if ([path2 hasPrefix:@"/private/var/empty"])
        {
          v19->_useableHomeDirectory = 0;
        }

        else
        {
          path3 = [rLCopy path];
          v19->_useableHomeDirectory = [path3 hasPrefix:@"/System/Volumes/Data/private/var/empty"] ^ 1;
        }
      }
    }

    else
    {
      v19->_useableHomeDirectory = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 12) = self->_UID;
    *(v5 + 16) = self->_primaryGID;
    v7 = [(NSString *)self->_name copyWithZone:zone];
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;

    v9 = [(NSURL *)self->_homeDirectoryURL copyWithZone:zone];
    v10 = *(v6 + 24);
    *(v6 + 24) = v9;

    *(v6 + 8) = self->_root;
    *(v6 + 9) = self->_roleUser;
    *(v6 + 10) = self->_useableHomeDirectory;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = self == equalCopy;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCMPOSIXUser *)self isEqualToPOSIXUser:equalCopy];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToPOSIXUser:(id)user
{
  result = self->_UID == *(user + 3);
  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)hash
{
  result = self->_UID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)fullDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__MCMPOSIXUser_fullDescription__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __31__MCMPOSIXUser_fullDescription__block_invoke(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *(a1 + 32);
  v9 = [v8 UID];
  v10 = [*(a1 + 32) primaryGID];
  v11 = *(a1 + 32);
  if (a2)
  {
    v12 = [v11 homeDirectoryURL];
    v13 = [v12 path];
    v14 = [*(a1 + 32) name];
    v15 = [v13 stringByRedactingHomeContent:v14];
    v16 = [v4 stringWithFormat:@"<%@: %p UID = %u, primaryGID = %u, name = [%@], homeDirectoryURL = [%@]>", v7, v8, v9, v10, @"~~", v15];;
  }

  else
  {
    v12 = [v11 name];
    v13 = [*(a1 + 32) homeDirectoryURL];
    v14 = [v13 path];
    v16 = [v4 stringWithFormat:@"<%@: %p UID = %u, primaryGID = %u, name = [%@], homeDirectoryURL = [%@]>", v7, v8, v9, v10, v12, v14];;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__MCMPOSIXUser_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __27__MCMPOSIXUser_description__block_invoke(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) UID];
  v6 = [*(a1 + 32) primaryGID];
  v7 = *(a1 + 32);
  if (a2)
  {
    v8 = [v7 homeDirectoryURL];
    v9 = [v8 path];
    v10 = [*(a1 + 32) name];
    v11 = [v9 stringByRedactingHomeContent:v10];
    v12 = [v4 stringWithFormat:@"(%u|%u|%@|%@)", v5, v6, @"~~", v11];
  }

  else
  {
    v8 = [v7 name];
    v9 = [*(a1 + 32) homeDirectoryURL];
    v10 = [v9 path];
    v12 = [v4 stringWithFormat:@"(%u|%u|%@|%@)", v5, v6, v8, v10];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (BOOL)_isRoleUserWithUID:(unsigned int)d homeDirectoryURL:(id)l
{
  result = d < 0x1F5;
  v5 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __48__MCMPOSIXUser__getCachedUID_flush_onCacheMiss___block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  _getCachedUID_flush_onCacheMiss__cache = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_posixUserWithPWD:(container_pwd_s *)d
{
  v29 = *MEMORY[0x1E69E9840];
  bzero(v28, 0x401uLL);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:d->var3];
  var2 = d->var2;
  if (!var2)
  {
    v7 = 0;
    v14 = 0;
    v15 = 1;
LABEL_12:
    v17 = [[self alloc] initWithUID:d->var0 primaryGID:d->var1 homeDirectoryURL:v14 unvalidatedHomeDirectoryURL:v7 name:v5 roleUser:v15];
    goto LABEL_13;
  }

  v7 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:var2 isDirectory:1 relativeToURL:0];
  v8 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:d->var2];
  v9 = [v8 stringByRedactingHomeContent:v5];

  v10 = d->var2;
  if (!container_realpath())
  {
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
      v22 = [v21 stringByRedactingHomeContent:v5];
      v24 = 138543618;
      v25 = v9;
      v26 = 2114;
      v27 = v22;
      _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "container_realpath([%{public}@]) → [%{public}@]", &v24, 0x16u);
    }

    v14 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v28 isDirectory:1 relativeToURL:0];
    goto LABEL_11;
  }

  v11 = *__error();
  v12 = container_log_handle_for_category();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v11 == 2)
  {
    if (v13)
    {
      v24 = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "User home directory at [%{public}@] does not exist", &v24, 0xCu);
    }

    v14 = 0;
LABEL_11:
    v15 = [self _isRoleUserWithUID:d->var0 homeDirectoryURL:v7];

    goto LABEL_12;
  }

  if (v13)
  {
    v23 = *__error();
    v24 = 138543618;
    v25 = v9;
    v26 = 1026;
    LODWORD(v27) = v23;
    _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "container_realpath([%{public}@]) failed: %{public, darwin.errno}d", &v24, 0x12u);
  }

  v14 = 0;
  v17 = 0;
LABEL_13:
  v18 = v17;

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)_posixUserWithUID:(unsigned int)d name:(id)name useUID:(BOOL)iD
{
  iDCopy = iD;
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__14647;
  v23 = __Block_byref_object_dispose__14648;
  v24 = 0;
  aBlock[5] = self;
  aBlock[6] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MCMPOSIXUser__posixUserWithUID_name_useUID___block_invoke;
  aBlock[3] = &unk_1E86B1150;
  aBlock[4] = &v19;
  v9 = _Block_copy(aBlock);
  if (iDCopy)
  {
    v10 = container_pwd_for_uid();
  }

  else
  {
    v11 = nameCopy;
    [nameCopy UTF8String];
    v10 = container_pwd_for_name();
  }

  if ((v10 & 1) == 0)
  {
    v12 = container_error_copy_unlocalized_description();
    v17 = v12;
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      dCopy = d;
      v27 = 2112;
      v28 = nameCopy;
      v29 = 1026;
      v30 = iDCopy;
      v31 = 2082;
      v32 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Unable to get user (%u/[%@]/%{public}d); error = %{public}s", buf, 0x22u);
    }

    if (v12)
    {
      free(v12);
      memset_s(&v17, 8uLL, 0, 8uLL);
    }
  }

  container_error_free();
  v14 = v20[5];

  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __46__MCMPOSIXUser__posixUserWithUID_name_useUID___block_invoke(uint64_t a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 2);
  v4 = [v3 _posixUserWithPWD:&v9];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (void)flush
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = [self _getCachedUID:0 flush:1 onCacheMiss:0];
  v3 = *MEMORY[0x1E69E9840];
}

+ (id)root
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [self posixUserWithUID:0];
}

+ (id)nobody
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [self posixUserWithUID:4294967294];
}

id __33__MCMPOSIXUser_posixUserWithUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _posixUserWithUID:a2 name:&stru_1F5A5B2B8 useUID:1];
  if (v2)
  {
    v3 = container_log_handle_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v2 fullDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_debug_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEBUG, "Created new POSIX user: %{public}@", &v7, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (MCMPOSIXUser)posixUserWithName:(id)name
{
  v11 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [self _posixUserWithUID:0 name:nameCopy useUID:0];
  if (!v5)
  {
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = nameCopy;
      _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "Could not generate posix user details for user=%{public}@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)currentPOSIXUser
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = geteuid();
  v4 = *MEMORY[0x1E69E9840];

  return [self posixUserWithUID:v3];
}

@end