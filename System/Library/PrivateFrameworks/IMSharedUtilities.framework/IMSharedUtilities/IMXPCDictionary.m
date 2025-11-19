@interface IMXPCDictionary
- (IMXPCDictionary)initWithDictionary:(id)a3 key:(const char *)a4;
- (id)dictionaryForKey:(const char *)a3 allowedClasses:(id)a4;
@end

@implementation IMXPCDictionary

- (IMXPCDictionary)initWithDictionary:(id)a3 key:(const char *)a4
{
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v8 = IMCreateXPCObjectFromDictionary();
    xpc_dictionary_set_value(v7, a4, v8);
  }

  v11.receiver = self;
  v11.super_class = IMXPCDictionary;
  v9 = [(IMXPCObject *)&v11 initWithXPCObject:v7];

  return v9;
}

- (id)dictionaryForKey:(const char *)a3 allowedClasses:(id)a4
{
  v6 = a4;
  v7 = [(IMXPCObject *)self object];
  if (v7)
  {
    v8 = [(IMXPCObject *)self object];
    v9 = MEMORY[0x1AC5721D0]();
    v10 = MEMORY[0x1E69E9E80];

    if (v9 != v10)
    {
      v7 = 0;
      goto LABEL_12;
    }

    v11 = [(IMXPCObject *)self object];
    v12 = xpc_dictionary_get_value(v11, a3);

    v13 = IMGetXPCDataFromDictionary();
    if (v13)
    {
      v7 = JWDecodeKeyedCodableObjectWithSecureCodingAllowedClasses();
      if (v7)
      {
LABEL_11:

        goto LABEL_12;
      }

      v14 = JWDecodeDictionary();
    }

    else
    {
      if (!v12)
      {
        v7 = 0;
        goto LABEL_11;
      }

      v14 = _CFXPCCreateCFObjectFromXPCMessage();
    }

    v7 = v14;
    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

@end