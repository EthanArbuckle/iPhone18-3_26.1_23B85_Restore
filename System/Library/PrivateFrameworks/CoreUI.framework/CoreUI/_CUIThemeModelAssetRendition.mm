@interface _CUIThemeModelAssetRendition
- (NSArray)meshKeys;
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (id)initForArchiving:(id)a3 withMeshRenditionKeys:(id)a4;
- (unint64_t)writeToData:(id)a3;
- (void)dealloc;
@end

@implementation _CUIThemeModelAssetRendition

- (id)initForArchiving:(id)a3 withMeshRenditionKeys:(id)a4
{
  v8.receiver = self;
  v8.super_class = _CUIThemeModelAssetRendition;
  v6 = [(_CUIThemeModelAssetRendition *)&v8 init];
  if (v6)
  {
    v6->_asset = a3;
    v6->_meshKeys = [[NSMutableArray alloc] initWithArray:a4];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeModelAssetRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v14.receiver = self;
  v14.super_class = _CUIThemeModelAssetRendition;
  v6 = [(CUIThemeRendition *)&v14 _initWithCSIHeader:a3 version:*&a4];
  if (v6)
  {
    memset(v15, 0, 92);
    v7 = &a3->var0 + 4 * a3->var11.var0 + a3->var10;
    v9 = *(v7 + 45);
    v8 = v7 + 180;
    if (v9 != 1297040449)
    {
      [_CUIThemeModelAssetRendition _initWithCSIHeader:a2 version:v6];
    }

    *(v6 + 28) = [[NSMutableArray alloc] initWithCapacity:*(v8 + 2)];
    if (*(v8 + 1))
    {
      v10 = 0;
      v11 = (v8 + 16);
      do
      {
        __memcpy_chk();
        v12 = [[CUIRenditionKey alloc] initWithKeyList:v15];
        [*(v6 + 28) addObject:v12];

        v11 = (v11 + *v11 + 4);
        ++v10;
      }

      while (v10 < *(v8 + 1));
    }

    *(v6 + 27) = objc_alloc_init(getMDLAssetClass());
  }

  return v6;
}

- (NSArray)meshKeys
{
  v2 = [(NSMutableArray *)self->_meshKeys copy];

  return v2;
}

- (unint64_t)writeToData:(id)a3
{
  v17 = 0;
  v5 = [a3 length];
  v18[0] = 0x14D4F4441;
  v18[1] = [(NSMutableArray *)self->_meshKeys count];
  [a3 appendBytes:v18 length:16];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  meshKeys = self->_meshKeys;
  v7 = [(NSMutableArray *)meshKeys countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(meshKeys);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) keyList];
        v17 = 4 * CUIRenditionKeyTokenCount(v11) + 4;
        [a3 appendBytes:&v17 length:4];
        [a3 appendBytes:v11 length:v17];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)meshKeys countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v8);
  }

  return [a3 length] - v5;
}

@end