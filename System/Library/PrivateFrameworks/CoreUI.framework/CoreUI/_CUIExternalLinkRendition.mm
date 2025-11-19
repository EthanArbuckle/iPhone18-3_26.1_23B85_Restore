@interface _CUIExternalLinkRendition
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)dealloc;
@end

@implementation _CUIExternalLinkRendition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIExternalLinkRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v15.receiver = self;
  v15.super_class = _CUIExternalLinkRendition;
  v6 = [(CUIThemeRendition *)&v15 _initWithCSIHeader:a3 version:*&a4];
  v7 = &a3->var0 + 4 * a3->var11.var0 + a3->var10;
  *(v6 + 28) = [[NSMutableSet alloc] initWithCapacity:*(v7 + 47)];
  v9 = *(v7 + 45);
  v8 = v7 + 180;
  if (v9 != 1163414603)
  {
    [_CUIExternalLinkRendition _initWithCSIHeader:a2 version:v6];
  }

  if (*(v8 + 1))
  {
    [_CUIExternalLinkRendition _initWithCSIHeader:a2 version:v6];
  }

  if (*(v8 + 2) != -1)
  {
    v10 = 0;
    v11 = v8 + 12;
    do
    {
      if (*v11 != 1008)
      {
        [_CUIExternalLinkRendition _initWithCSIHeader:a2 version:v6];
      }

      v12 = [[NSString alloc] initWithUTF8String:v11 + 2];
      v13 = v12;
      if (v10)
      {
        [*(v6 + 28) addObject:v12];
      }

      else
      {
        *(v6 + 27) = v12;
      }

      v11 = (v11 + v11[1] + 8);
      ++v10;
    }

    while (v10 < *(v8 + 2) + 1);
  }

  return v6;
}

@end