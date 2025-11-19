@interface _CUIThemeMultisizeImageSetRendition
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)dealloc;
@end

@implementation _CUIThemeMultisizeImageSetRendition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeMultisizeImageSetRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v23.receiver = self;
  v23.super_class = _CUIThemeMultisizeImageSetRendition;
  v6 = [(CUIThemeRendition *)&v23 _initWithCSIHeader:a3 version:*&a4];
  var10 = a3->var10;
  var0 = a3->var11.var0;
  v9 = &a3->var0 + 4 * var0 + var10;
  v11 = *(v9 + 45);
  v10 = v9 + 180;
  if (v11 != 1297303891)
  {
    [_CUIThemeMultisizeImageSetRendition _initWithCSIHeader:a2 version:v6];
  }

  v12 = +[NSMutableArray array];
  v13 = [v6 valueForTokenIdentifier:15];
  v14 = [v6 valueForTokenIdentifier:16];
  if (*(v10 + 1))
  {
    if (*(v10 + 2))
    {
      v17 = 0;
      v18 = (&a3->var11.var1[var0 + 6] + var10);
      do
      {
        LODWORD(v15) = *(v18 - 2);
        LODWORD(v16) = *(v18 - 1);
        v19 = *v18;
        v18 += 3;
        [v12 addObject:{-[_CUIMultisizeImageSetSizeAndIndex initWithSize:index:idiom:subtype:]([_CUIMultisizeImageSetSizeAndIndex alloc], "initWithSize:index:idiom:subtype:", v19, v13, v14, v15, v16)}];
        ++v17;
      }

      while (v17 < *(v10 + 2));
    }
  }

  else if (*(v10 + 2))
  {
    v20 = 0;
    v21 = (&a3->var11.var1[var0 + 5] + var10);
    do
    {
      LODWORD(v15) = *(v21 - 1);
      LODWORD(v16) = *v21;
      [v12 addObject:{-[_CUIMultisizeImageSetSizeAndIndex initWithSize:index:idiom:subtype:]([_CUIMultisizeImageSetSizeAndIndex alloc], "initWithSize:index:idiom:subtype:", v20++, v13, v14, v15, v16)}];
      v21 += 2;
    }

    while (v20 < *(v10 + 2));
  }

  v6[27] = [[NSArray alloc] initWithArray:v12];
  return v6;
}

@end