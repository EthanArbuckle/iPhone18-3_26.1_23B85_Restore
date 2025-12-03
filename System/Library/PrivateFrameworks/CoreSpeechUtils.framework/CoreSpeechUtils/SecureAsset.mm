@interface SecureAsset
- (BOOL)containsCategoryWithCategory:(id)category;
- (BOOL)containsKeyWithKey:(id)key category:(id)category;
- (BOOL)getBoolWithKey:(id)key category:(id)category defaultValue:(BOOL)value;
- (SecureAsset)init;
- (SecureAsset)initWithResourcePath:(id)path assetFileName:(id)name assetVersion:(id)version assetHash:(id)hash;
- (float)getFloatWithKey:(id)key category:(id)category defaultValue:(float)value;
- (id)assetPath;
- (id)getConfigDataWithFileName:(id)name prefix:(id)prefix;
- (id)getDataWithFileName:(id)name;
- (id)getDictionaryArrayWithKey:(id)key category:(id)category;
- (id)getDictionaryWithKey:(id)key category:(id)category;
- (id)getMemoryIndexWithKey:(id)key category:(id)category;
- (id)getStringArrayWithKey:(id)key category:(id)category;
- (id)getStringWithCategory:(id)category;
- (id)getStringWithKey:(id)key category:(id)category;
- (id)getStringWithKey:(id)key category:(id)category defaultValue:(id)value;
@end

@implementation SecureAsset

- (SecureAsset)initWithResourcePath:(id)path assetFileName:(id)name assetVersion:(id)version assetHash:(id)hash
{
  v8 = sub_247994C14();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247994BC4();
  v12 = sub_247994E84();
  v14 = v13;
  if (!version)
  {
    v16 = 0;
    if (hash)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    v19 = 0;
    return SecureAsset.init(resourcePath:assetFileName:assetVersion:assetHash:)(v11, v12, v14, version, v16, v17, v19);
  }

  version = sub_247994E84();
  v16 = v15;
  if (!hash)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = sub_247994E84();
  v19 = v18;
  return SecureAsset.init(resourcePath:assetFileName:assetVersion:assetHash:)(v11, v12, v14, version, v16, v17, v19);
}

- (id)assetPath
{
  selfCopy = self;
  SecureAsset.assetPath()();

  v3 = sub_247994E74();

  return v3;
}

- (BOOL)containsKeyWithKey:(id)key category:(id)category
{
  v5 = sub_247994E84();
  v7 = v6;
  v8 = sub_247994E84();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LOBYTE(v8) = SecureAsset.containsKey(key:category:)(v12, v13);

  return v8 & 1;
}

- (BOOL)containsCategoryWithCategory:(id)category
{
  v4 = sub_247994E84();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = SecureAsset.containsCategory(category:)(v8);

  return v4 & 1;
}

- (float)getFloatWithKey:(id)key category:(id)category defaultValue:(float)value
{
  v7 = sub_247994E84();
  v9 = v8;
  v10 = sub_247994E84();
  v12 = v11;
  selfCopy = self;
  v14._countAndFlagsBits = v7;
  v14._object = v9;
  v15._countAndFlagsBits = v10;
  v15._object = v12;
  v16 = SecureAsset.getFloat(key:category:defaultValue:)(v14, v15, value);

  return v16;
}

- (id)getStringWithKey:(id)key category:(id)category
{
  v5 = sub_247994E84();
  v7 = v6;
  v8 = sub_247994E84();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  object = SecureAsset.getString(key:category:)(v12, v13).value._object;

  if (object)
  {
    v15 = sub_247994E74();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getStringWithKey:(id)key category:(id)category defaultValue:(id)value
{
  sub_247994E84();
  sub_247994E84();
  sub_247994E84();
  selfCopy = self;
  v7 = sub_247994E74();
  v8 = sub_247994E74();
  v9 = [(SecureAsset *)selfCopy getStringWithKey:v7 category:v8];

  if (v9)
  {
    sub_247994E84();
  }

  else
  {
  }

  v10 = sub_247994E74();

  return v10;
}

- (id)getStringWithCategory:(id)category
{
  v4 = sub_247994E84();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = SecureAsset.getString(category:)(v8).value._object;

  if (object)
  {
    v10 = sub_247994E74();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)getBoolWithKey:(id)key category:(id)category defaultValue:(BOOL)value
{
  v7 = sub_247994E84();
  v9 = v8;
  v10 = sub_247994E84();
  v12 = v11;
  selfCopy = self;
  v14._countAndFlagsBits = v7;
  v14._object = v9;
  v15._countAndFlagsBits = v10;
  v15._object = v12;
  v16 = SecureAsset.getBool(key:category:defaultValue:)(v14, v15, value);

  return v16;
}

- (id)getStringArrayWithKey:(id)key category:(id)category
{
  v5 = sub_247994E84();
  v7 = v6;
  v8 = sub_247994E84();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v14 = SecureAsset.getStringArray(key:category:)(v12, v13);

  if (v14)
  {
    v15 = sub_247994FA4();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getDictionaryArrayWithKey:(id)key category:(id)category
{
  v5 = sub_247994E84();
  v7 = v6;
  v8 = sub_247994E84();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v14 = SecureAsset.getDictionaryArray(key:category:)(v12, v13);

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59348, &qword_247996930);
    v15 = sub_247994FA4();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getDictionaryWithKey:(id)key category:(id)category
{
  v5 = sub_247994E84();
  v7 = v6;
  v8 = sub_247994E84();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v14 = SecureAsset.getDictionary(key:category:)(v12, v13);

  if (v14)
  {
    v15 = sub_247994E44();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getDataWithFileName:(id)name
{
  if (name)
  {
    v5 = sub_247994E84();
    v7 = v6;
    v8 = *(self + OBJC_IVAR___SecureAsset_assetLoader);
    selfCopy = self;

    resourcePath = [(SecureAsset *)selfCopy resourcePath];
    v11 = sub_247994E84();
    v13 = v12;

    v14 = sub_24798FDA4(v11, v13, v5, v7);
    v16 = v15;

    if (v16 >> 60 == 15)
    {
      v17 = 0;
    }

    else
    {
      v19 = sub_247994C44();
      sub_247978BF0(v14, v16);
      v17 = v19;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)getConfigDataWithFileName:(id)name prefix:(id)prefix
{
  v6 = sub_247994E84();
  v8 = v7;
  if (prefix)
  {
    v9 = sub_247994E84();
    prefix = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  v12 = SecureAsset.getConfigData(fileName:prefix:)(v6, v8, v9, prefix);
  v14 = v13;

  if (v14 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v16 = sub_247994C44();
    sub_247978BF0(v12, v14);
    v15 = v16;
  }

  return v15;
}

- (id)getMemoryIndexWithKey:(id)key category:(id)category
{
  v5 = sub_247994E84();
  v7 = v6;
  v8 = sub_247994E84();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  SecureAsset.getMemoryIndex(key:category:)(v14, v12, v13);
  v16 = v15;

  return v16;
}

- (SecureAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end