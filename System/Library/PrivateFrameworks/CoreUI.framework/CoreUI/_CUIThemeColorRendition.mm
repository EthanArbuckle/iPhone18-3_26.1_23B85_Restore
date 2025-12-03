@interface _CUIThemeColorRendition
- (CGColor)cgColor;
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (uint64_t)_colorSpaceWithID:(uint64_t)result;
- (void)dealloc;
@end

@implementation _CUIThemeColorRendition

- (CGColor)cgColor
{
  result = self->_cgColor;
  if (!result)
  {
    v4 = [(_CUIThemeColorRendition *)self _colorSpaceWithID:?];
    csiColor = self->_csiColor;
    var5 = csiColor->var5;
    v7 = (&v11 - ((8 * var5 + 15) & 0xFFFFFFFF0));
    if (var5)
    {
      var6 = csiColor->var6;
      v9 = (&v11 - ((8 * var5 + 15) & 0xFFFFFFFF0));
      do
      {
        v10 = *var6++;
        *v9++ = v10;
        --var5;
      }

      while (var5);
    }

    self->_cgColor = CGColorCreate(v4, v7);
    return self->_cgColor;
  }

  return result;
}

- (void)dealloc
{
  CGColorRelease(self->_cgColor);
  v3.receiver = self;
  v3.super_class = _CUIThemeColorRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v13.receiver = self;
  v13.super_class = _CUIThemeColorRendition;
  v6 = [(CUIThemeRendition *)&v13 _initWithCSIHeader:header version:*&version];
  v7 = &header->var0 + 4 * header->var11.var0 + header->var10;
  v9 = *(v7 + 45);
  v8 = v7 + 180;
  v6[28] = v8;
  v10 = v8;
  if (v9 != 1129270354)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:v6 lineNumber:@"_CUIThemeColorRendition.m" description:25, @"CoreUI: Expecting a kCSIColorSignature but didn't find it"];
    v10 = v6[28];
  }

  if ((*(v10 + 2) & 0x700) == 0x100)
  {
    v11 = &v8[8 * *(v10 + 3)];
    if (*(v11 + 4) != 1129270354)
    {
      [_CUIThemeColorRendition _initWithCSIHeader:a2 version:v6];
    }

    if (*(v11 + 5) == 1)
    {
      v6[29] = [[NSString alloc] initWithBytes:v11 + 28 length:*(v11 + 6) encoding:4];
    }
  }

  return v6;
}

- (uint64_t)_colorSpaceWithID:(uint64_t)result
{
  if (result)
  {
    switch(a2)
    {
      case 2:
        result = _CUIColorSpaceGetGrayGamma2_2();
        break;
      case 3:
        result = _CUIColorSpaceGetDisplayP3();
        break;
      case 4:
        result = _CUIColorSpaceGetExtendedRangeSRGB();
        break;
      case 5:
        result = _CUIColorSpaceGetExtendedLinearSRGB();
        break;
      case 6:
        result = _CUIColorSpaceGetExtendedGray();
        break;
      default:
        result = _CUIColorSpaceGetSRGB();
        break;
    }
  }

  return result;
}

@end