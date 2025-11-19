@interface _CUIThemeTextureRendition
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (id)_texturedImageWithKey:(id)a3;
- (id)provideImageInfoAtLevel:(unint64_t)a3 element:(unint64_t)a4 face:(unint64_t)a5 withBufferAllocator:(id)a6;
- (void)dealloc;
@end

@implementation _CUIThemeTextureRendition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeTextureRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v21.receiver = self;
  v21.super_class = _CUIThemeTextureRendition;
  v6 = [(CUIThemeRendition *)&v21 _initWithCSIHeader:a3 version:*&a4];
  var10 = a3->var10;
  v8 = &a3->var0 + 4 * a3->var11.var0 + var10;
  v10 = *(v8 + 45);
  v9 = v8 + 180;
  if (v10 != 1415074898)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:v6 lineNumber:@"CUIThemeRendition.m" description:2659, @"CoreUI: Expecting a kCSITextureDataSignature but didn't find it"];
    var10 = a3->var10;
  }

  if (var10)
  {
    v11 = &v9[-var10];
    do
    {
      if (*v11 == 1014)
      {
        v12 = *(v11 + 4);
        *(v6 + 28) = *(v11 + 3);
        *(v6 + 232) = v12 != 0;
      }

      v11 += *(v11 + 1) + 8;
    }

    while (v11 < v9);
  }

  v13 = *(v9 + 10);
  v14 = *(v9 + 2);
  v15 = objc_alloc_init(TXRTextureInfo);
  *(v6 + 30) = v15;
  [v15 setDimensions:*&a3->var3];
  [*(v6 + 30) setCubemap:v13 == 5];
  [*(v6 + 30) setPixelFormat:v14];
  [*(v6 + 30) setArrayLength:*(v9 + 4)];
  [*(v6 + 30) setMipmapLevelCount:*(v9 + 11)];
  if (*(v6 + 232) == 1)
  {
    v16 = 2;
  }

  else
  {
    v16 = *(v6 + 28) == 2;
  }

  [*(v6 + 30) setAlphaInfo:v16];
  *(v6 + 31) = [[NSMutableArray alloc] initWithCapacity:*(v9 + 11)];
  if (*(v9 + 11))
  {
    v17 = 0;
    v18 = (v9 + 24);
    do
    {
      memset(v22, 0, 92);
      __memcpy_chk();
      v19 = [[CUIRenditionKey alloc] initWithKeyList:v22];
      [*(v6 + 31) addObject:v19];

      v18 = (v18 + *v18 + 8);
      ++v17;
    }

    while (v17 < *(v9 + 11));
  }

  return v6;
}

- (id)_texturedImageWithKey:(id)a3
{
  v3 = [objc_loadWeak(&self->_sourceProvider) renditionWithKey:{objc_msgSend(a3, "keyList")}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    _CUILog(4, "CoreUI: tried to find the TextureImageRendition but got back a '%@'", v6, v7, v8, v9, v10, v11, v5);
    return 0;
  }

  return v3;
}

- (id)provideImageInfoAtLevel:(unint64_t)a3 element:(unint64_t)a4 face:(unint64_t)a5 withBufferAllocator:(id)a6
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(_CUIThemeTextureRendition *)self mipLevels:a3];
  result = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (result)
  {
    v12 = result;
    v13 = *v23;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        if ([v15 themeDimension2] == a3)
        {
          v16 = [(_CUIThemeTextureRendition *)self _texturedImageWithKey:v15];
          if (v16)
          {
            v17 = [v16 textureImages];
            if ([v17 count] >= a5)
            {
              v18 = [v17 objectAtIndex:a5];
              v19 = [a6 newBufferWithLength:v18[3] * *(v18 + 9)];
              if (v19)
              {
                v20 = v19;
                [CSITextureHelper expandIntoBuffer:v18 error:v19];
                v21 = objc_alloc_init(TXRImageInfo);
                [v21 setOffset:0];
                [v21 setBuffer:v20];
                [v21 setBytesPerRow:v18[3]];
                [v21 setBytesPerImage:*(v18 + 10)];
                [v21 setError:0];

                return v21;
              }
            }
          }
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      result = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v12 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

@end