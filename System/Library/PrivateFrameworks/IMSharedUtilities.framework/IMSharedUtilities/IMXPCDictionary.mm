@interface IMXPCDictionary
- (IMXPCDictionary)initWithDictionary:(id)dictionary key:(const char *)key;
- (id)dictionaryForKey:(const char *)key allowedClasses:(id)classes;
@end

@implementation IMXPCDictionary

- (IMXPCDictionary)initWithDictionary:(id)dictionary key:(const char *)key
{
  dictionaryCopy = dictionary;
  v7 = xpc_dictionary_create(0, 0, 0);
  if (dictionaryCopy)
  {
    v8 = IMCreateXPCObjectFromDictionary();
    xpc_dictionary_set_value(v7, key, v8);
  }

  v11.receiver = self;
  v11.super_class = IMXPCDictionary;
  v9 = [(IMXPCObject *)&v11 initWithXPCObject:v7];

  return v9;
}

- (id)dictionaryForKey:(const char *)key allowedClasses:(id)classes
{
  classesCopy = classes;
  object = [(IMXPCObject *)self object];
  if (object)
  {
    object2 = [(IMXPCObject *)self object];
    v9 = MEMORY[0x1AC5721D0]();
    v10 = MEMORY[0x1E69E9E80];

    if (v9 != v10)
    {
      object = 0;
      goto LABEL_12;
    }

    object3 = [(IMXPCObject *)self object];
    v12 = xpc_dictionary_get_value(object3, key);

    v13 = IMGetXPCDataFromDictionary();
    if (v13)
    {
      object = JWDecodeKeyedCodableObjectWithSecureCodingAllowedClasses();
      if (object)
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
        object = 0;
        goto LABEL_11;
      }

      v14 = _CFXPCCreateCFObjectFromXPCMessage();
    }

    object = v14;
    goto LABEL_11;
  }

LABEL_12:

  return object;
}

@end