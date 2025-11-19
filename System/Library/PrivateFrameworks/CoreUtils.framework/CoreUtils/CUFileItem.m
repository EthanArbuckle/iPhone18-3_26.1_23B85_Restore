@interface CUFileItem
- (CUFileItem)initWithDictionary:(id)a3 error:(id *)a4;
- (void)encodeWithDictionary:(id)a3;
@end

@implementation CUFileItem

- (void)encodeWithDictionary:(id)a3
{
  v9 = a3;
  if (self->_flags)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v9 setObject:v4 forKeyedSubscript:&unk_1F06A2F80];
  }

  name = self->_name;
  if (name)
  {
    [v9 setObject:name forKeyedSubscript:&unk_1F06A2F98];
  }

  if (self->_size)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v9 setObject:v6 forKeyedSubscript:&unk_1F06A2FB0];
  }

  v7 = v9;
  if (self->_type)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v9 setObject:v8 forKeyedSubscript:&unk_1F06A2FC8];

    v7 = v9;
  }
}

- (CUFileItem)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = [(CUFileItem *)self init];
  if (v12)
  {
    v21 = 0;
    Int64Ranged = CFDictionaryGetInt64Ranged(v6, &unk_1F06A2F80, 0, 0xFFFFFFFFLL, &v21);
    if (!v21)
    {
      v12->_flags = Int64Ranged;
    }

    TypeID = CFStringGetTypeID();
    v15 = CFDictionaryGetTypedValue(v6, &unk_1F06A2F98, TypeID, 0);
    if (v15)
    {
      objc_storeStrong(&v12->_name, v15);
    }

    Int64 = CFDictionaryGetInt64(v6, &unk_1F06A2FB0, &v21);
    if (!v21)
    {
      v12->_size = Int64;
    }

    v17 = CFDictionaryGetInt64Ranged(v6, &unk_1F06A2FC8, 0xFFFFFFFF80000000, 0x7FFFFFFFLL, &v21);
    if (!v21)
    {
      v12->_type = v17;
    }

    v18 = v12;
  }

  else if (a4)
  {
    *a4 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Init failed", v7, v8, v9, v10, v11, v20);
  }

  return v12;
}

@end