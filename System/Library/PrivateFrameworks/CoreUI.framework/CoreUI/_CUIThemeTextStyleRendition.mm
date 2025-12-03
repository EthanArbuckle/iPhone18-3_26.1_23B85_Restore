@interface _CUIThemeTextStyleRendition
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
@end

@implementation _CUIThemeTextStyleRendition

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v10.receiver = self;
  v10.super_class = _CUIThemeTextStyleRendition;
  v6 = [(CUIThemeRendition *)&v10 _initWithCSIHeader:header version:*&version];
  v7 = &header->var0 + 4 * header->var11.var0 + header->var10;
  v8 = *(v7 + 45);
  v6[27] = v7 + 180;
  if (v8 != 1398036812)
  {
    [_CUIThemeTextStyleRendition _initWithCSIHeader:a2 version:v6];
  }

  return v6;
}

@end