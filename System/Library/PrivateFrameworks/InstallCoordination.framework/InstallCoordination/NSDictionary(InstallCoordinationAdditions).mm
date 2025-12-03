@interface NSDictionary(InstallCoordinationAdditions)
+ (id)IX_dictionaryWithContentsOfURL:()InstallCoordinationAdditions options:error:;
- (uint64_t)IX_writeToURL:()InstallCoordinationAdditions format:options:error:;
@end

@implementation NSDictionary(InstallCoordinationAdditions)

+ (id)IX_dictionaryWithContentsOfURL:()InstallCoordinationAdditions options:error:
{
  v15 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:2 error:&v15];
  v8 = v15;
  if (v7)
  {
    v14 = 0;
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:a4 format:0 error:&v14];
    v10 = v14;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v8 = v10;
      v9 = v11;
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];

      v11 = 0;
      if (!a5)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  if (!v11)
  {
    v12 = v8;
    *a5 = v8;
  }

LABEL_10:

  return v11;
}

- (uint64_t)IX_writeToURL:()InstallCoordinationAdditions format:options:error:
{
  v10 = a3;
  v19 = 0;
  v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:self format:a4 options:0 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v18 = v12;
    v14 = [v11 writeToURL:v10 options:a5 error:&v18];
    v15 = v18;

    v13 = v15;
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  if ((v14 & 1) == 0)
  {
    v16 = v13;
    *a6 = v13;
  }

LABEL_7:

  return v14;
}

@end