@interface NSURL(IconFoundationAdditions)
- (BOOL)_IF_conformsToUTI:()IconFoundationAdditions;
- (BOOL)_IF_getResourceValue:()IconFoundationAdditions forKey:error:;
- (id)_IF_attributeModifiedDate;
- (id)_IF_contentModifiedDate;
- (id)_IF_extendedAttributeForName:()IconFoundationAdditions;
- (id)_IF_typeIdentifier;
- (id)_IF_volumeURL;
- (uint64_t)_IF_fileSize;
- (uint64_t)_IF_isAliasFile;
- (uint64_t)_IF_isBootVolume;
- (uint64_t)_IF_isDirectory;
- (uint64_t)_IF_isOnBootVolume;
- (uint64_t)_IF_isSymLink;
- (uint64_t)_IF_isVolume;
- (uint64_t)_IF_setExtendedAttribute:()IconFoundationAdditions forName:error:;
- (void)_IF_modifiedDate;
@end

@implementation NSURL(IconFoundationAdditions)

- (id)_IF_extendedAttributeForName:()IconFoundationAdditions
{
  v4 = a3;
  fileSystemRepresentation = [self fileSystemRepresentation];
  fileSystemRepresentation2 = [v4 fileSystemRepresentation];
  if (!fileSystemRepresentation || (v7 = fileSystemRepresentation2) == 0)
  {
    v12 = IFDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(IconFoundationAdditions) *)self _IF_extendedAttributeForName:v4, v12];
    }

    goto LABEL_9;
  }

  v8 = getxattr(fileSystemRepresentation, fileSystemRepresentation2, 0, 0, 0, 0);
  if (v8 < 1)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = malloc_type_malloc(v8, 0x5028CAABuLL);
  if (getxattr(fileSystemRepresentation, v7, v10, v9, 0, 0) != v9)
  {
    [NSURL(IconFoundationAdditions) _IF_extendedAttributeForName:];
  }

  v11 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v10 length:v9 freeWhenDone:1];
LABEL_10:

  return v11;
}

- (uint64_t)_IF_setExtendedAttribute:()IconFoundationAdditions forName:error:
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  fileSystemRepresentation = [self fileSystemRepresentation];
  fileSystemRepresentation2 = [v9 fileSystemRepresentation];
  if (fileSystemRepresentation && fileSystemRepresentation2)
  {
    if (v8)
    {
      if (setxattr(fileSystemRepresentation, fileSystemRepresentation2, [v8 bytes], objc_msgSend(v8, "length"), 0, 0))
      {
LABEL_5:
        v12 = MEMORY[0x1E696ABC0];
        v13 = *MEMORY[0x1E696A798];
        v14 = *__error();
        v15 = *MEMORY[0x1E696A278];
        v30 = *MEMORY[0x1E696A278];
        v16 = MEMORY[0x1E696AEC0];
        v17 = __error();
        v18 = [v16 stringWithFormat:@"Failed to set xattr %@ with name %@ error %s", v8, v9, strerror(*v17), v30];
        v31 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v20 = v12;
        v21 = v13;
        v22 = v14;
        goto LABEL_7;
      }
    }

    else if (removexattr(fileSystemRepresentation, fileSystemRepresentation2, 0))
    {
      goto LABEL_5;
    }

    v25 = 0;
    goto LABEL_15;
  }

  v23 = MEMORY[0x1E696ABC0];
  v24 = *MEMORY[0x1E696A768];
  v15 = *MEMORY[0x1E696A278];
  v32 = *MEMORY[0x1E696A278];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XAttr set on invalid URL %@ or with invalid name %@", self, v9];
  v33[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v20 = v23;
  v21 = v24;
  v22 = -43;
LABEL_7:
  v25 = [v20 errorWithDomain:v21 code:v22 userInfo:v19];

  if (!v25)
  {
LABEL_15:
    v28 = 1;
    goto LABEL_16;
  }

  v26 = IFDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [NSURL(IconFoundationAdditions) _IF_setExtendedAttribute:v25 forName:v15 error:v26];
  }

  if (a5)
  {
    v27 = v25;
    v28 = 0;
    *a5 = v25;
  }

  else
  {
    v28 = 0;
  }

LABEL_16:

  return v28;
}

- (id)_IF_contentModifiedDate
{
  v13 = 0;
  v1 = [self _IF_getResourceValue:&v13 forKey:*MEMORY[0x1E695DA98] error:0];
  v2 = v13;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = IFDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(NSURL(IconFoundationAdditions) *)v3 _IF_contentModifiedDate:v4];
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];

    v2 = distantPast;
  }

  return v2;
}

- (BOOL)_IF_getResourceValue:()IconFoundationAdditions forKey:error:
{
  v9 = 0;
  error = 0;
  v7 = CFURLCopyResourcePropertyForKey(self, key, &v9, &error);
  if (v7)
  {
    *a3 = v9;
  }

  else if (a5 && error)
  {
    *a5 = error;
  }

  else if (error)
  {
    CFRelease(error);
  }

  return v7 != 0;
}

- (id)_IF_attributeModifiedDate
{
  v13 = 0;
  v1 = [self _IF_getResourceValue:&v13 forKey:*MEMORY[0x1E695DA80] error:0];
  v2 = v13;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = IFDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(NSURL(IconFoundationAdditions) *)v3 _IF_contentModifiedDate:v4];
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];

    v2 = distantPast;
  }

  return v2;
}

- (void)_IF_modifiedDate
{
  _IF_attributeModifiedDate = [self _IF_attributeModifiedDate];
  _IF_contentModifiedDate = [self _IF_contentModifiedDate];
  if ([_IF_contentModifiedDate compare:_IF_attributeModifiedDate] == -1)
  {
    v4 = _IF_attributeModifiedDate;
  }

  else
  {
    v4 = _IF_contentModifiedDate;
  }

  v5 = v4;

  return v4;
}

- (uint64_t)_IF_fileSize
{
  v5 = 0;
  v1 = [self _IF_getResourceValue:&v5 forKey:*MEMORY[0x1E695DB50] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  integerValue = [v2 integerValue];

  return integerValue;
}

- (uint64_t)_IF_isVolume
{
  v5 = 0;
  v1 = [self _IF_getResourceValue:&v5 forKey:*MEMORY[0x1E695DBE8] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)_IF_volumeURL
{
  v4 = 0;
  v1 = [self _IF_getResourceValue:&v4 forKey:*MEMORY[0x1E695DEB0] error:0];
  v2 = v4;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  return v2;
}

- (uint64_t)_IF_isBootVolume
{
  v5 = 0;
  v1 = [self _IF_getResourceValue:&v5 forKey:*MEMORY[0x1E695DDC0] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)_IF_isOnBootVolume
{
  _IF_volumeURL = [self _IF_volumeURL];
  _IF_isBootVolume = [_IF_volumeURL _IF_isBootVolume];

  return _IF_isBootVolume;
}

- (uint64_t)_IF_isSymLink
{
  v5 = 0;
  v1 = [self _IF_getResourceValue:&v5 forKey:*MEMORY[0x1E695DBC8] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)_IF_isAliasFile
{
  v6 = 0;
  v2 = [self _IF_getResourceValue:&v6 forKey:*MEMORY[0x1E695DB68] error:0];
  v3 = v6;
  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v3 = 0;
  }

  if ([v3 BOOLValue])
  {
    v4 = [self _IF_isSymLink] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_IF_typeIdentifier
{
  v5 = 0;
  v1 = [self _IF_getResourceValue:&v5 forKey:*MEMORY[0x1E695DC68] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = *MEMORY[0x1E6963798];

    v2 = v3;
  }

  return v2;
}

- (BOOL)_IF_conformsToUTI:()IconFoundationAdditions
{
  v4 = a3;
  inUTI = 0;
  [self _IF_getResourceValue:&inUTI forKey:*MEMORY[0x1E695DC68] error:0];
  if (inUTI)
  {
    v5 = UTTypeConformsTo(inUTI, v4) != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_IF_isDirectory
{
  v13 = 0;
  v1 = [self _IF_getResourceValue:&v13 forKey:*MEMORY[0x1E695DB78] error:0];
  v2 = v13;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = IFDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(NSURL(IconFoundationAdditions) *)v3 _IF_contentModifiedDate:v4];
    }

    v2 = 0;
  }

  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)_IF_extendedAttributeForName:()IconFoundationAdditions .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B9DEC000, log, OS_LOG_TYPE_ERROR, "XAttr set on invalid URL %@ or with invalid name %@", &v3, 0x16u);
}

- (void)_IF_setExtendedAttribute:()IconFoundationAdditions forName:error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 userInfo];
  v6 = [v5 objectForKeyedSubscript:a2];
  v7 = 138412290;
  v8 = v6;
  _os_log_error_impl(&dword_1B9DEC000, a3, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
}

@end