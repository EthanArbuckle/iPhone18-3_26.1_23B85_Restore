@interface _CUIThemeTextStyleRendition
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
@end

@implementation _CUIThemeTextStyleRendition

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v10.receiver = self;
  v10.super_class = _CUIThemeTextStyleRendition;
  v6 = [(CUIThemeRendition *)&v10 _initWithCSIHeader:a3 version:*&a4];
  v7 = &a3->var0 + 4 * a3->var11.var0 + a3->var10;
  v8 = *(v7 + 45);
  v6[27] = v7 + 180;
  if (v8 != 1398036812)
  {
    [_CUIThemeTextStyleRendition _initWithCSIHeader:a2 version:v6];
  }

  return v6;
}

@end