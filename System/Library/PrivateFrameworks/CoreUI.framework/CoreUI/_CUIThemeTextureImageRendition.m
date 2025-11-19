@interface _CUIThemeTextureImageRendition
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)dealloc;
@end

@implementation _CUIThemeTextureImageRendition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeTextureImageRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v42.receiver = self;
  v42.super_class = _CUIThemeTextureImageRendition;
  v6 = [(CUIThemeRendition *)&v42 _initWithCSIHeader:a3 version:*&a4];
  v6[27] = [[NSMutableArray alloc] initWithCapacity:a3->var11.var0];
  var10 = a3->var10;
  v8 = &a3->var11.var1[a3->var11.var0];
  v9 = v8 + var10 + 4;
  v10 = 0;
  if (var10)
  {
    v11 = v8 + 1;
    do
    {
      if (*v11 == 1007)
      {
        v10 = v11 + 2;
      }

      else if (*v11 == 1006)
      {
        [v6 setExifOrientation:v11[2]];
      }

      v11 = (v11 + v11[1] + 8);
    }

    while (v11 < v9);
  }

  var6 = a3->var6;
  if (var6 > 1195456543)
  {
    if (var6 == 1195456544)
    {
      goto LABEL_20;
    }

    if (var6 == 1380401751)
    {
      v21 = (*(a3 + 7) & 0xF) - 3;
      if (v21 > 2)
      {
        v22 = &kCGColorSpaceSRGB;
      }

      else
      {
        v22 = qword_1E72514C0[v21];
      }

      DeviceRGB = CGColorSpaceCreateWithName(*v22);
      if (!DeviceRGB)
      {
        _CUILog(1, "Defaulting to sRGB colorspace", v28, v29, v30, v31, v32, v33, v41);
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
      }

      goto LABEL_28;
    }

LABEL_21:
    v23 = +[NSAssertionHandler currentHandler];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [(NSAssertionHandler *)v23 handleFailureInMethod:a2 object:v6 file:@"CUIThemeRendition.m" lineNumber:2907 description:@"CoreUI: [%@ %@] unknown pixel format %d", v25, NSStringFromSelector(a2), a3->var6];
    v26 = 0;
    goto LABEL_29;
  }

  if (var6 == 1095911234)
  {
    v27 = &kCGColorSpaceGenericRGB;
    if ((*(a3 + 7) & 0xF) != 0)
    {
      v27 = &kCGColorSpaceSRGB;
    }

    DeviceRGB = CGColorSpaceCreateWithName(*v27);
    goto LABEL_28;
  }

  if (var6 != 1195454774)
  {
    goto LABEL_21;
  }

  if ((*(a3 + 7) & 0xF) == 6)
  {
    v13 = &kCGColorSpaceExtendedGray;
  }

  else
  {
    v13 = &kCGColorSpaceGenericGrayGamma2_2;
  }

  DeviceRGB = CGColorSpaceCreateWithName(*v13);
  if (DeviceRGB)
  {
    goto LABEL_28;
  }

  _CUILog(1, "Defaulting to Device Gray colorspace", v15, v16, v17, v18, v19, v20, v41);
LABEL_20:
  DeviceRGB = CGColorSpaceCreateDeviceGray();
LABEL_28:
  v26 = DeviceRGB;
LABEL_29:
  if (a3->var11.var0)
  {
    v34 = 0;
    do
    {
      v35 = (v9 + a3->var11.var1[v34]);
      if (!v34)
      {
        var0 = v35->var1.var0;
        v37 = [v6 renditionFlags];
        *v37 = *v37 & 0xFFFFFFFD | (2 * ((var0 >> 1) & 1));
      }

      v38 = objc_alloc_init(CSITextureHelper);
      v38->bmp = v35;
      v38->colorspaceHint = CGColorSpaceRetain(v26);
      if (v10)
      {
        v39 = *v10;
      }

      else
      {
        v39 = 0;
      }

      v38->sourceRowbytes = v39;
      v38->width = a3->var3;
      v38->height = a3->var4;
      v38->pixelFormat = a3->var6;
      [v6[27] addObject:v38];

      ++v34;
    }

    while (v34 < a3->var11.var0);
  }

  CGColorSpaceRelease(v26);
  return v6;
}

@end