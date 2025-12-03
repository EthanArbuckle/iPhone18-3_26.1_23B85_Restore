@interface CUSPAKEM3
- (CUSPAKEM3)initWithDictionary:(id)dictionary error:(id *)error;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation CUSPAKEM3

- (NSDictionary)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"confirmP";
  confirmPData = self->_confirmPData;
  data = confirmPData;
  if (!confirmPData)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v7[0] = data;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  if (!confirmPData)
  {
  }

  return v4;
}

- (CUSPAKEM3)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = CUSPAKEM3;
  v12 = [(CUSPAKEM3 *)&v24 init];
  if (v12)
  {
    v23 = -6700;
    TypeID = CFDataGetTypeID();
    v19 = CFDictionaryGetTypedValue(dictionaryCopy, @"confirmP", TypeID, &v23);
    if (v19)
    {
      objc_storeStrong(&v12->_confirmPData, v19);
      v20 = v12;
    }

    else if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "get confirmP failed: %d", v14, v15, v16, v17, v18, v23);
      *error = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  else if (error)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "super init failed", v7, v8, v9, v10, v11, v22);
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end