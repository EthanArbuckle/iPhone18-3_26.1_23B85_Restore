@interface NSError(FPFSAdditions)
+ (id)fp_errorForDataProtectionClass:()FPFSAdditions;
+ (id)fp_nonEvictableChildrenErrorWithFD:()FPFSAdditions trashIno:busyIno:;
+ (id)purgeabilityErrorForReason:()FPFSAdditions atURL:;
- (id)fp_protectionClassBehindError;
@end

@implementation NSError(FPFSAdditions)

+ (id)purgeabilityErrorForReason:()FPFSAdditions atURL:
{
  v5 = a4;
  v6 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v7 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error() itemURL:v5 debugDescription:@"Unable to stat(2) item after eviction attempt"];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_13;
      }

      v7 = FPEvictionWithUnsyncedEditsError();
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v7 = FPEvictionOnBusyItemError();
        break;
      case 4:
        v7 = FPEvictionOnItemWithHardlinkError();
        break;
      case 5:
        v7 = FPMissingAllowsEvictingCapabilitiesError();
        break;
      default:
        goto LABEL_13;
    }
  }

  v6 = v7;
LABEL_13:

  return v6;
}

+ (id)fp_nonEvictableChildrenErrorWithFD:()FPFSAdditions trashIno:busyIno:
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x400uLL);
  fpfs_fgetpath();
  v0 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v7 isDirectory:1 relativeToURL:0];
  v6 = objc_opt_new();
  v1 = v6;
  v2 = v0;
  fpfs_fopendir();
  v3 = FPNonEvictableChildrenError();

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)fp_protectionClassBehindError
{
  if (([self fp_isCocoaErrorCode:257] & 1) != 0 || objc_msgSend(self, "fp_isPOSIXErrorCode:", 1))
  {
    userInfo = [self userInfo];
    v3 = [userInfo objectForKeyedSubscript:@"dataProtectionClass"];

    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = v3;
      v4 = v3;
    }

    else
    {
      userInfo2 = [self userInfo];
      v6 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696A998]];

      if (v6)
      {
        v10 = 0;
        v7 = [v6 getResourceValue:&v10 forKey:*MEMORY[0x1E695DAF0] error:0];
        v8 = v10;

        if (v7)
        {
          v3 = v8;
          v4 = v3;
        }

        else
        {
          v4 = 0;
          v3 = v8;
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fp_errorForDataProtectionClass:()FPFSAdditions
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    v10 = @"dataProtectionClass";
    v11 = *MEMORY[0x1E695DAE0];
    v3 = MEMORY[0x1E695DF20];
    v4 = &v11;
    v5 = &v10;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v12 = @"dataProtectionClass";
    v13[0] = *MEMORY[0x1E695DAD8];
    v3 = MEMORY[0x1E695DF20];
    v4 = v13;
    v5 = &v12;
LABEL_5:
    v6 = [v3 dictionaryWithObjects:v4 forKeys:v5 count:1];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end