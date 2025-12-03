@interface PBProgTag
+ (const)textFormatInfoForProgTagName:(const unsigned __int16 *)name;
+ (id)binaryTagDataWithName:(const unsigned __int16 *)name inProgTags:(id)tags;
+ (id)binaryTagDataWithName:(const unsigned __int16 *)name inProgTagsParent:(id)parent;
+ (id)ensureBinaryTagDataWithName:(const unsigned __int16 *)name inProgTags:(id)tags;
+ (id)ensureBinaryTagDataWithName:(const unsigned __int16 *)name inProgTagsParent:(id)parent;
+ (id)readBulletStyleFromClientData:(id)data;
+ (id)readMacCharStyleFromClientData:(id)data;
+ (void)readBulletImagesFromContainerParent:(id)parent state:(id)state;
+ (void)readBulletImagesFromDocumentList:(id)list state:(id)state;
+ (void)readBulletStylesFromDocumentList:(id)list state:(id)state;
+ (void)readBulletStylesFromMainMaster:(id)master state:(id)state;
+ (void)readClientData:(id)data state:(id)state;
+ (void)readDocumentList:(id)list state:(id)state;
+ (void)readHyperlinkScreenTipsFromDocumentList:(id)list state:(id)state;
+ (void)readMacCharStylesFromDocumentList:(id)list state:(id)state;
@end

@implementation PBProgTag

+ (const)textFormatInfoForProgTagName:(const unsigned __int16 *)name
{
  v4 = &+[PBProgTag textFormatInfoForProgTagName:]::infoArray;
  v5 = 4;
  while (_ChWcscmp(name, v4->var0))
  {
    ++v4;
    if (!--v5)
    {
      return 0;
    }
  }

  return v4;
}

+ (void)readBulletStylesFromMainMaster:(id)master state:(id)state
{
  masterCopy = master;
  stateCopy = state;
  v7 = [self binaryTagDataWithName:L"___PPT9" inProgTagsParent:masterCopy];
  childCount = [v7 childCount];
  if (childCount)
  {
    for (i = 0; i != childCount; ++i)
    {
      v10 = [v7 childAt:i];
      eshObject = [v10 eshObject];
      if ((*(*eshObject + 16))(eshObject) == 4013)
      {
        eshObject2 = [v10 eshObject];
        if (eshObject2)
        {
          if (v13)
          {
            v14 = v13;
            Instance = EshRecord::getInstance(v13);
            if (Instance <= 8)
            {
              *([stateCopy currentSourceMasterStyleInfoOfType:Instance] + 8) = v14;
            }
          }
        }
      }
    }
  }
}

+ (void)readDocumentList:(id)list state:(id)state
{
  listCopy = list;
  stateCopy = state;
  [self readBulletStylesFromDocumentList:listCopy state:stateCopy];
  [self readBulletImagesFromDocumentList:listCopy state:stateCopy];
  [self readMacCharStylesFromDocumentList:listCopy state:stateCopy];
  [self readHyperlinkScreenTipsFromDocumentList:listCopy state:stateCopy];
}

+ (void)readClientData:(id)data state:(id)state
{
  dataCopy = data;
  stateCopy = state;
  v7 = [self readBulletStyleFromClientData:dataCopy];
  v8 = [self readMacCharStyleFromClientData:dataCopy];
  [stateCopy setCurrentBulletStyle:v7 macCharStyle:v8];
}

+ (void)readBulletImagesFromContainerParent:(id)parent state:(id)state
{
  parentCopy = parent;
  stateCopy = state;
  v6 = [parentCopy firstChildOfType:2040];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      childCount = [v6 childCount];
      if (childCount)
      {
        for (i = 0; i != childCount; ++i)
        {
          v9 = [v6 childAt:i];
          eshObject = [v9 eshObject];
          if ((*(*eshObject + 16))(eshObject) == 2041)
            v11 = {;
            tgtPresentation = [stateCopy tgtPresentation];
            [tgtPresentation addBulletBlip:v11];
          }
        }
      }
    }
  }
}

+ (id)binaryTagDataWithName:(const unsigned __int16 *)name inProgTagsParent:(id)parent
{
  v6 = [parent firstChildOfType:5000];
  if (v6)
  {
    v7 = [self binaryTagDataWithName:name inProgTags:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)binaryTagDataWithName:(const unsigned __int16 *)name inProgTags:(id)tags
{
  tagsCopy = tags;
  childCount = [tagsCopy childCount];
  if (childCount)
  {
    for (i = 0; childCount != i; ++i)
    {
      objc_opt_class();
      v8 = [tagsCopy childAt:i];
      eshObject = [v8 eshObject];
      if ((*(*eshObject + 16))(eshObject) == 5002)
      {
        v10 = [v8 firstChildOfType:4026];
        v11 = v10;
        if (v10)
        {
          if (CsString::operator==(v12 + 48, name))
          {
            v15 = [v8 firstChildOfType:5003];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v15;
            }

            else
            {
              v13 = 0;
            }

            goto LABEL_9;
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (id)ensureBinaryTagDataWithName:(const unsigned __int16 *)name inProgTagsParent:(id)parent
{
  parentCopy = parent;
  v7 = [parentCopy firstChildOfType:5000];
  if (!v7)
  {
    v7 = [parentCopy addPptContainerChildOfType:5000];
  }

  v8 = [self ensureBinaryTagDataWithName:name inProgTags:v7];

  return v8;
}

+ (id)ensureBinaryTagDataWithName:(const unsigned __int16 *)name inProgTags:(id)tags
{
  tagsCopy = tags;
  v7 = [self binaryTagDataWithName:name inProgTags:tagsCopy];
  if (!v7)
  {
    [tagsCopy addPptContainerChildOfType:5002];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  return v7;
}

+ (void)readBulletStylesFromDocumentList:(id)list state:(id)state
{
  stateCopy = state;
  v6 = [self binaryTagDataWithName:L"___PPT9" inProgTagsParent:list];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 firstChildOfType:4014];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [[PBOutlineBulletDictionary alloc] initFromContainer:v8 objectType:4012];
        [stateCopy setPlaceholderBulletStyles:v9];
      }
    }
  }
}

+ (void)readBulletImagesFromDocumentList:(id)list state:(id)state
{
  stateCopy = state;
  v6 = [self binaryTagDataWithName:L"___PPT9" inProgTagsParent:list];
  if (v6)
  {
    [self readBulletImagesFromContainerParent:v6 state:stateCopy];
  }
}

+ (void)readHyperlinkScreenTipsFromDocumentList:(id)list state:(id)state
{
  listCopy = list;
  stateCopy = state;
  v7 = [self binaryTagDataWithName:L"___PPT9" inProgTagsParent:listCopy];
  v8 = v7;
  if (v7)
  {
    childCount = [v7 childCount];
    if (childCount)
    {
      for (i = 0; i != childCount; ++i)
      {
        v11 = [v8 childAt:i];
        eshObject = [v11 eshObject];
        if ((*(*eshObject + 16))(eshObject) == 4068)
        {
          v13 = [v11 firstChildOfType:4051];
          eshObject2 = [v13 eshObject];

          if (eshObject2)
          {
            if (v15)
            {
              v16 = v15[12];
              v17 = [v11 firstChildOfType:4026];
              eshObject3 = [v17 eshObject];

              if (eshObject3)
              {
                if (v19)
                {
                  v20 = v19;
                  if (v19[16])
                  {
                    v21 = [stateCopy hyperlinkInfoWithId:v16 createIfAbsent:1];
                    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:v20 + 12];
                    [v21 setScreenTip:v22];
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

+ (id)readBulletStyleFromClientData:(id)data
{
  v3 = [self binaryTagDataWithName:L"___PPT9" inProgTagsParent:data];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 firstChildOfType:4012];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)readMacCharStylesFromDocumentList:(id)list state:(id)state
{
  stateCopy = state;
  v6 = [self binaryTagDataWithName:"_" inProgTagsParent:list];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 firstChildOfType:4123];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [[PBOutlineBulletDictionary alloc] initFromContainer:v8 objectType:4121];
        [stateCopy setPlaceholderMacCharStyles:v9];
      }
    }
  }
}

+ (id)readMacCharStyleFromClientData:(id)data
{
  v3 = [self binaryTagDataWithName:"_" inProgTagsParent:data];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 firstChildOfType:4121];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end