@interface PBProgTag
+ (const)textFormatInfoForProgTagName:(const unsigned __int16 *)a3;
+ (id)binaryTagDataWithName:(const unsigned __int16 *)a3 inProgTags:(id)a4;
+ (id)binaryTagDataWithName:(const unsigned __int16 *)a3 inProgTagsParent:(id)a4;
+ (id)ensureBinaryTagDataWithName:(const unsigned __int16 *)a3 inProgTags:(id)a4;
+ (id)ensureBinaryTagDataWithName:(const unsigned __int16 *)a3 inProgTagsParent:(id)a4;
+ (id)readBulletStyleFromClientData:(id)a3;
+ (id)readMacCharStyleFromClientData:(id)a3;
+ (void)readBulletImagesFromContainerParent:(id)a3 state:(id)a4;
+ (void)readBulletImagesFromDocumentList:(id)a3 state:(id)a4;
+ (void)readBulletStylesFromDocumentList:(id)a3 state:(id)a4;
+ (void)readBulletStylesFromMainMaster:(id)a3 state:(id)a4;
+ (void)readClientData:(id)a3 state:(id)a4;
+ (void)readDocumentList:(id)a3 state:(id)a4;
+ (void)readHyperlinkScreenTipsFromDocumentList:(id)a3 state:(id)a4;
+ (void)readMacCharStylesFromDocumentList:(id)a3 state:(id)a4;
@end

@implementation PBProgTag

+ (const)textFormatInfoForProgTagName:(const unsigned __int16 *)a3
{
  v4 = &+[PBProgTag textFormatInfoForProgTagName:]::infoArray;
  v5 = 4;
  while (_ChWcscmp(a3, v4->var0))
  {
    ++v4;
    if (!--v5)
    {
      return 0;
    }
  }

  return v4;
}

+ (void)readBulletStylesFromMainMaster:(id)a3 state:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [a1 binaryTagDataWithName:L"___PPT9" inProgTagsParent:v16];
  v8 = [v7 childCount];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [v7 childAt:i];
      v11 = [v10 eshObject];
      if ((*(*v11 + 16))(v11) == 4013)
      {
        v12 = [v10 eshObject];
        if (v12)
        {
          if (v13)
          {
            v14 = v13;
            Instance = EshRecord::getInstance(v13);
            if (Instance <= 8)
            {
              *([v6 currentSourceMasterStyleInfoOfType:Instance] + 8) = v14;
            }
          }
        }
      }
    }
  }
}

+ (void)readDocumentList:(id)a3 state:(id)a4
{
  v7 = a3;
  v6 = a4;
  [a1 readBulletStylesFromDocumentList:v7 state:v6];
  [a1 readBulletImagesFromDocumentList:v7 state:v6];
  [a1 readMacCharStylesFromDocumentList:v7 state:v6];
  [a1 readHyperlinkScreenTipsFromDocumentList:v7 state:v6];
}

+ (void)readClientData:(id)a3 state:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 readBulletStyleFromClientData:v9];
  v8 = [a1 readMacCharStyleFromClientData:v9];
  [v6 setCurrentBulletStyle:v7 macCharStyle:v8];
}

+ (void)readBulletImagesFromContainerParent:(id)a3 state:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = [v13 firstChildOfType:2040];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 childCount];
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = [v6 childAt:i];
          v10 = [v9 eshObject];
          if ((*(*v10 + 16))(v10) == 2041)
            v11 = {;
            v12 = [v5 tgtPresentation];
            [v12 addBulletBlip:v11];
          }
        }
      }
    }
  }
}

+ (id)binaryTagDataWithName:(const unsigned __int16 *)a3 inProgTagsParent:(id)a4
{
  v6 = [a4 firstChildOfType:5000];
  if (v6)
  {
    v7 = [a1 binaryTagDataWithName:a3 inProgTags:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)binaryTagDataWithName:(const unsigned __int16 *)a3 inProgTags:(id)a4
{
  v5 = a4;
  v6 = [v5 childCount];
  if (v6)
  {
    for (i = 0; v6 != i; ++i)
    {
      objc_opt_class();
      v8 = [v5 childAt:i];
      v9 = [v8 eshObject];
      if ((*(*v9 + 16))(v9) == 5002)
      {
        v10 = [v8 firstChildOfType:4026];
        v11 = v10;
        if (v10)
        {
          if (CsString::operator==(v12 + 48, a3))
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

+ (id)ensureBinaryTagDataWithName:(const unsigned __int16 *)a3 inProgTagsParent:(id)a4
{
  v6 = a4;
  v7 = [v6 firstChildOfType:5000];
  if (!v7)
  {
    v7 = [v6 addPptContainerChildOfType:5000];
  }

  v8 = [a1 ensureBinaryTagDataWithName:a3 inProgTags:v7];

  return v8;
}

+ (id)ensureBinaryTagDataWithName:(const unsigned __int16 *)a3 inProgTags:(id)a4
{
  v6 = a4;
  v7 = [a1 binaryTagDataWithName:a3 inProgTags:v6];
  if (!v7)
  {
    [v6 addPptContainerChildOfType:5002];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  return v7;
}

+ (void)readBulletStylesFromDocumentList:(id)a3 state:(id)a4
{
  v10 = a4;
  v6 = [a1 binaryTagDataWithName:L"___PPT9" inProgTagsParent:a3];
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
        [v10 setPlaceholderBulletStyles:v9];
      }
    }
  }
}

+ (void)readBulletImagesFromDocumentList:(id)a3 state:(id)a4
{
  v7 = a4;
  v6 = [a1 binaryTagDataWithName:L"___PPT9" inProgTagsParent:a3];
  if (v6)
  {
    [a1 readBulletImagesFromContainerParent:v6 state:v7];
  }
}

+ (void)readHyperlinkScreenTipsFromDocumentList:(id)a3 state:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [a1 binaryTagDataWithName:L"___PPT9" inProgTagsParent:v23];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 childCount];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = [v8 childAt:i];
        v12 = [v11 eshObject];
        if ((*(*v12 + 16))(v12) == 4068)
        {
          v13 = [v11 firstChildOfType:4051];
          v14 = [v13 eshObject];

          if (v14)
          {
            if (v15)
            {
              v16 = v15[12];
              v17 = [v11 firstChildOfType:4026];
              v18 = [v17 eshObject];

              if (v18)
              {
                if (v19)
                {
                  v20 = v19;
                  if (v19[16])
                  {
                    v21 = [v6 hyperlinkInfoWithId:v16 createIfAbsent:1];
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

+ (id)readBulletStyleFromClientData:(id)a3
{
  v3 = [a1 binaryTagDataWithName:L"___PPT9" inProgTagsParent:a3];
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

+ (void)readMacCharStylesFromDocumentList:(id)a3 state:(id)a4
{
  v10 = a4;
  v6 = [a1 binaryTagDataWithName:"_" inProgTagsParent:a3];
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
        [v10 setPlaceholderMacCharStyles:v9];
      }
    }
  }
}

+ (id)readMacCharStyleFromClientData:(id)a3
{
  v3 = [a1 binaryTagDataWithName:"_" inProgTagsParent:a3];
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