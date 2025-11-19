@interface FCGzipAssetTransformer
+ (id)sharedInstance;
- (BOOL)transformAssetDataFromFilePath:(id)a3 toFilePath:(id)a4 error:(id *)a5;
@end

@implementation FCGzipAssetTransformer

+ (id)sharedInstance
{
  if (qword_1EDB279E8 != -1)
  {
    dispatch_once(&qword_1EDB279E8, &__block_literal_global_173);
  }

  v3 = _MergedGlobals_212;

  return v3;
}

uint64_t __40__FCGzipAssetTransformer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(FCGzipAssetTransformer);
  v1 = _MergedGlobals_212;
  _MergedGlobals_212 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)transformAssetDataFromFilePath:(id)a3 toFilePath:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E695DF48];
  v9 = a4;
  v10 = [v8 inputStreamWithFileAtPath:a3];
  v11 = [MEMORY[0x1E695DFC0] outputStreamToFileAtPath:v9 append:0];

  [v10 open];
  [v11 open];
  v12 = v10;
  v13 = v11;
  if (self)
  {
    v14 = [MEMORY[0x1E695DF88] dataWithLength:0x2000];
    v15 = [MEMORY[0x1E695DF88] dataWithLength:0x2000];
    memset(&v27.avail_in, 0, 104);
    v27.next_in = [v14 bytes];
    v27.next_out = [v15 bytes];
    v27.avail_out = [v15 length];
    if (inflateInit2_(&v27, 47, "1.2.12", 112))
    {
LABEL_3:
      v16 = 0;
    }

    else
    {
      do
      {
        while (1)
        {
          v20 = inflate(&v27, 0);
          if (v20 != -5)
          {
            break;
          }

          if (v27.avail_in)
          {
            v21 = [v15 bytes];
            if ([v13 write:v21 maxLength:{&v27.next_out[-objc_msgSend(v15, "bytes")]}] == -1)
            {
              v26 = v13;
              goto LABEL_26;
            }

            v27.next_out = [v15 bytes];
            LODWORD(v16) = [v15 length];
            p_avail_out = &v27.avail_out;
          }

          else
          {
            v23 = [v12 read:objc_msgSend(v14 maxLength:{"mutableBytes"), objc_msgSend(v14, "length")}];
            if (v23 == -1)
            {
              v26 = v12;
              goto LABEL_26;
            }

            v16 = v23;
            if (!v23)
            {
              goto LABEL_4;
            }

            v27.next_in = [v14 bytes];
            p_avail_out = &v27.avail_in;
          }

          *p_avail_out = v16;
        }
      }

      while (!v20);
      if (v20 != 1)
      {
        goto LABEL_3;
      }

      v24 = [v15 bytes];
      v25 = [v13 write:v24 maxLength:{&v27.next_out[-objc_msgSend(v15, "bytes")]}];
      v26 = v13;
      if (v25 != -1)
      {
        v16 = 0;
        v17 = 1;
        goto LABEL_5;
      }

LABEL_26:
      v16 = [v26 streamError];
    }

LABEL_4:
    v17 = 0;
LABEL_5:
    if (inflateEnd(&v27))
    {
      v17 = 0;
    }

    if (a5)
    {
      v18 = v16;
      *a5 = v16;
    }
  }

  else
  {
    v17 = 0;
  }

  [v12 close];
  [v13 close];

  return v17;
}

@end