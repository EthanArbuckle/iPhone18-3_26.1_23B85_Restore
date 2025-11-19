@interface CUSPAKECommon
+ (BOOL)scryptWithPasswordData:(id)a3 outputPtr:(char *)a4 outputLen:(unint64_t)a5 error:(id *)a6;
@end

@implementation CUSPAKECommon

+ (BOOL)scryptWithPasswordData:(id)a3 outputPtr:(char *)a4 outputLen:(unint64_t)a5 error:(id *)a6
{
  v7 = a3;
  v8 = ccscrypt_storage_size();
  v14 = v8;
  if (v8 <= 0)
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960553, "bad scrypt storage size: %lld bytes", v9, v10, v11, v12, v13, v8);
LABEL_11:
    *a6 = v22 = 0;
    goto LABEL_4;
  }

  v15 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (!v15)
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960568, "scrypt storage malloc failed: %lld bytes", v16, v17, v18, v19, v20, v14);
    goto LABEL_11;
  }

  v21 = v15;
  [v7 length];
  [v7 bytes];
  v22 = 1;
  v23 = ccscrypt();
  free(v21);
  if (v23)
  {
    if (a6)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccscrypt failed: %d", v24, v25, v26, v27, v28, v23);
      goto LABEL_11;
    }

LABEL_12:
    v22 = 0;
  }

LABEL_4:

  return v22;
}

@end