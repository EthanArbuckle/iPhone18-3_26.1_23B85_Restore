@interface CUSPAKEM3
- (CUSPAKEM3)initWithDictionary:(id)a3 error:(id *)a4;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation CUSPAKEM3

- (NSDictionary)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"confirmP";
  confirmPData = self->_confirmPData;
  v3 = confirmPData;
  if (!confirmPData)
  {
    v3 = [MEMORY[0x1E695DEF0] data];
  }

  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  if (!confirmPData)
  {
  }

  return v4;
}

- (CUSPAKEM3)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = CUSPAKEM3;
  v12 = [(CUSPAKEM3 *)&v24 init];
  if (v12)
  {
    v23 = -6700;
    TypeID = CFDataGetTypeID();
    v19 = CFDictionaryGetTypedValue(v6, @"confirmP", TypeID, &v23);
    if (v19)
    {
      objc_storeStrong(&v12->_confirmPData, v19);
      v20 = v12;
    }

    else if (a4)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "get confirmP failed: %d", v14, v15, v16, v17, v18, v23);
      *a4 = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  else if (a4)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "super init failed", v7, v8, v9, v10, v11, v22);
    *a4 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end