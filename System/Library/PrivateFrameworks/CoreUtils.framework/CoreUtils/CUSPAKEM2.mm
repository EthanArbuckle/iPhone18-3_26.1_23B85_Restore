@interface CUSPAKEM2
- (CUSPAKEM2)initWithDictionary:(id)a3 error:(id *)a4;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation CUSPAKEM2

- (NSDictionary)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"confirmV";
  confirmVData = self->_confirmVData;
  v4 = confirmVData;
  if (!confirmVData)
  {
    v4 = [MEMORY[0x1E695DEF0] data];
  }

  v9[1] = @"shareV";
  v10[0] = v4;
  shareVData = self->_shareVData;
  v6 = shareVData;
  if (!shareVData)
  {
    v6 = [MEMORY[0x1E695DEF0] data];
  }

  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (shareVData)
  {
    if (confirmVData)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (confirmVData)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v7;
}

- (CUSPAKEM2)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v31.receiver = self;
  v31.super_class = CUSPAKEM2;
  v12 = [(CUSPAKEM2 *)&v31 init];
  if (v12)
  {
    v30 = -6700;
    TypeID = CFDataGetTypeID();
    v19 = CFDictionaryGetTypedValue(v6, @"confirmV", TypeID, &v30);
    if (v19)
    {
      objc_storeStrong(&v12->_confirmVData, v19);
      v20 = CFDataGetTypeID();
      v26 = CFDictionaryGetTypedValue(v6, @"shareV", v20, &v30);
      if (v26)
      {
        objc_storeStrong(&v12->_shareVData, v26);
        v27 = v12;
      }

      else if (a4)
      {
        NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "get shareV failed: %d", v21, v22, v23, v24, v25, v30);
        *a4 = v27 = 0;
      }

      else
      {
        v27 = 0;
      }
    }

    else if (a4)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "get confirmV failed: %d", v14, v15, v16, v17, v18, v30);
      *a4 = v27 = 0;
    }

    else
    {
      v27 = 0;
    }
  }

  else if (a4)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "super init failed", v7, v8, v9, v10, v11, v29);
    *a4 = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end