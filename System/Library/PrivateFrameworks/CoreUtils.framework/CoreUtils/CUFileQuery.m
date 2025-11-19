@interface CUFileQuery
- (CUFileQuery)initWithDictionary:(id)a3 error:(id *)a4;
- (void)encodeWithDictionary:(id)a3;
@end

@implementation CUFileQuery

- (void)encodeWithDictionary:(id)a3
{
  path = self->_path;
  if (path)
  {
    [a3 setObject:path forKeyedSubscript:@"path"];
  }
}

- (CUFileQuery)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = [(CUFileQuery *)self init];
  if (v12)
  {
    TypeID = CFStringGetTypeID();
    v14 = CFDictionaryGetTypedValue(v6, @"path", TypeID, 0);
    if (v14)
    {
      objc_storeStrong(&v12->_path, v14);
    }

    v15 = v12;
  }

  else if (a4)
  {
    *a4 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Init failed", v7, v8, v9, v10, v11, v17);
  }

  return v12;
}

@end