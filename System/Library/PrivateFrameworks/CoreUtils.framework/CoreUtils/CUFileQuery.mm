@interface CUFileQuery
- (CUFileQuery)initWithDictionary:(id)dictionary error:(id *)error;
- (void)encodeWithDictionary:(id)dictionary;
@end

@implementation CUFileQuery

- (void)encodeWithDictionary:(id)dictionary
{
  path = self->_path;
  if (path)
  {
    [dictionary setObject:path forKeyedSubscript:@"path"];
  }
}

- (CUFileQuery)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v12 = [(CUFileQuery *)self init];
  if (v12)
  {
    TypeID = CFStringGetTypeID();
    v14 = CFDictionaryGetTypedValue(dictionaryCopy, @"path", TypeID, 0);
    if (v14)
    {
      objc_storeStrong(&v12->_path, v14);
    }

    v15 = v12;
  }

  else if (error)
  {
    *error = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Init failed", v7, v8, v9, v10, v11, v17);
  }

  return v12;
}

@end