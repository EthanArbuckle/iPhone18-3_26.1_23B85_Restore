@interface CUSPAKEM2
- (CUSPAKEM2)initWithDictionary:(id)dictionary error:(id *)error;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation CUSPAKEM2

- (NSDictionary)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"confirmV";
  confirmVData = self->_confirmVData;
  data = confirmVData;
  if (!confirmVData)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v9[1] = @"shareV";
  v10[0] = data;
  shareVData = self->_shareVData;
  data2 = shareVData;
  if (!shareVData)
  {
    data2 = [MEMORY[0x1E695DEF0] data];
  }

  v10[1] = data2;
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

- (CUSPAKEM2)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = CUSPAKEM2;
  v12 = [(CUSPAKEM2 *)&v31 init];
  if (v12)
  {
    v30 = -6700;
    TypeID = CFDataGetTypeID();
    v19 = CFDictionaryGetTypedValue(dictionaryCopy, @"confirmV", TypeID, &v30);
    if (v19)
    {
      objc_storeStrong(&v12->_confirmVData, v19);
      v20 = CFDataGetTypeID();
      v26 = CFDictionaryGetTypedValue(dictionaryCopy, @"shareV", v20, &v30);
      if (v26)
      {
        objc_storeStrong(&v12->_shareVData, v26);
        v27 = v12;
      }

      else if (error)
      {
        NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "get shareV failed: %d", v21, v22, v23, v24, v25, v30);
        *error = v27 = 0;
      }

      else
      {
        v27 = 0;
      }
    }

    else if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "get confirmV failed: %d", v14, v15, v16, v17, v18, v30);
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }
  }

  else if (error)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "super init failed", v7, v8, v9, v10, v11, v29);
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end