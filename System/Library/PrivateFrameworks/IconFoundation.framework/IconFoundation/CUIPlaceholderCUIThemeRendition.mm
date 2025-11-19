@interface CUIPlaceholderCUIThemeRendition
+ (Class)renditionClassForRenditionType:(int64_t)a3 andPixelFormat:(unsigned int)a4;
- ($01BB1521EC52D44A8E7628F5261DCEC8)vectorGlyphAlignmentRectInsets;
- (CGSize)physicalSizeInMeters;
- (CUIPlaceholderCUIThemeRendition)initWithCSIData:(id)a3 forKey:(const _renditionkeytoken *)a4 version:(unsigned int)a5;
- (const)key;
- (id)_initWithCSIData:(id)a3 forKey:(const _renditionkeytoken *)a4 version:(unsigned int)a5;
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (id)description;
- (id)properties;
- (id)utiType;
- (unsigned)subtype;
- (unsigned)valueForTokenIdentifier:(unsigned __int16)a3;
- (void)_initalizeMetadataFromCSIData:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)_initializeCompositingOptionsFromCSIData:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)_initializePropertiesFromCSIData:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)_initializeRenditionKey:(const _renditionkeytoken *)a3;
- (void)_initializeTypeIdentifiersWithLayout:(unsigned __int16)a3;
- (void)_setFlippable:(BOOL)a3;
- (void)dealloc;
- (void)setInternalName:(id)a3;
- (void)setName:(id)a3;
@end

@implementation CUIPlaceholderCUIThemeRendition

- (void)setInternalName:(id)a3
{
  name = self->_name;
  if (name != a3)
  {

    self->_name = a3;
  }
}

- (void)setName:(id)a3
{
  name = self->_name;
  if (name != a3)
  {

    self->_name = a3;
  }
}

+ (Class)renditionClassForRenditionType:(int64_t)a3 andPixelFormat:(unsigned int)a4
{
  if (a3 == 1003)
  {
    return objc_opt_class();
  }

  else
  {
    return 0;
  }
}

- (void)_initializeTypeIdentifiersWithLayout:(unsigned __int16)a3
{
  if ((a3 - 10) <= 2)
  {
    self->_type = 0;
LABEL_10:
    self->_subtype = a3;
    return;
  }

  if ((a3 - 20) <= 2)
  {
    v3 = 1;
LABEL_9:
    self->_type = v3;
    goto LABEL_10;
  }

  if ((a3 - 23) <= 2)
  {
    v3 = 2;
    goto LABEL_9;
  }

  if ((a3 - 30) < 5)
  {
    v3 = 3;
    goto LABEL_9;
  }

  if (a3 == 40)
  {
    self->_type = 5;
    v4 = 40;
    goto LABEL_15;
  }

  if (a3 == 50)
  {
    self->_type = 8;
    v4 = 50;
LABEL_15:
    self->_subtype = v4;
    return;
  }

  self->_type = a3;
}

- (void)_initializeCompositingOptionsFromCSIData:(const _csiheader *)a3 version:(unsigned int)a4
{
  self->_opacity = 1.0;
  self->_blendMode = 0;
  var10 = a3->var10;
  if (var10)
  {
    v7 = (&a3->var11.var1[a3->var11.var0 + 1] + var10);
    v8 = &a3->var11.var1[a3->var11.var0 + 1];
    do
    {
      v9 = v8[1];
      if (*v8 == 1004)
      {
        [(CUIPlaceholderCUIThemeRendition *)self setBlendMode:v8[2]];
        [(CUIPlaceholderCUIThemeRendition *)self setOpacity:*(v8 + 3)];
      }

      if (a4 <= 0x34E && *v8 == 1019)
      {
        v9 = 12;
      }

      v8 = (v8 + v9 + 8);
    }

    while (v8 < v7);
  }
}

- (void)_initalizeMetadataFromCSIData:(const _csiheader *)a3 version:(unsigned int)a4
{
  var10 = a3->var10;
  if (var10)
  {
    v7 = (&a3->var11.var1[a3->var11.var0 + 1] + var10);
    v8 = &a3->var11.var1[a3->var11.var0 + 1];
    do
    {
      v9 = v8[1];
      if (*v8 == 1015)
      {
        if (!v8[2])
        {
          self->_physicalSizeInMeters = vcvtq_f64_f32(*(v8 + 3));
        }
      }

      else if (*v8 == 1005 && !v8[3])
      {

        self->_utiType = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v8 + 4];
      }

      if (a4 <= 0x34E && *v8 == 1019)
      {
        v9 = 12;
      }

      v8 = (v8 + v9 + 8);
    }

    while (v8 < v7);
  }
}

- (void)_initializePropertiesFromCSIData:(const _csiheader *)a3 version:(unsigned int)a4
{
  var10 = a3->var10;
  if (var10)
  {
    v6 = 0;
    v7 = (&a3->var11.var1[a3->var11.var0 + 1] + var10);
    v8 = &a3->var11.var1[a3->var11.var0 + 1];
    while (1)
    {
      v9 = v8[1];
      if (*v8 != 1016 || v8[2])
      {
        goto LABEL_20;
      }

      v10 = v8 + 7;
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v8 + 7];
      v12 = v8[3];
      v13 = v8[5];
      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:*(v10 + v12)];
        goto LABEL_11;
      }

      if (!v13)
      {
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v10 + v12];
        goto LABEL_11;
      }

      v15 = 0;
LABEL_19:

LABEL_20:
      if (a4 <= 0x34E && *v8 == 1019)
      {
        v9 = 12;
      }

      v8 = (v8 + v9 + 8);
      if (v8 >= v7)
      {
        goto LABEL_26;
      }
    }

    v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:*(v10 + v12)];
LABEL_11:
    v15 = v14;
    if (v11)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      [(NSDictionary *)v6 setObject:v15 forKey:v11];
    }

    goto LABEL_19;
  }

  v6 = 0;
LABEL_26:

  self->_properties = v6;
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v4 = *&a4;
  v13.receiver = self;
  v13.super_class = CUIPlaceholderCUIThemeRendition;
  v6 = [(CUIPlaceholderCUIThemeRendition *)&v13 init];
  v6->_colorSpaceID = *(a3 + 7) & 0xF;
  [(CUIPlaceholderCUIThemeRendition *)v6 _initializeTypeIdentifiersWithLayout:a3->var9.var1];
  v6->_name = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3->var9.var3];
  v7 = *&v6->_renditionFlags & 0xFFFFFFFE | (a3->var2 >> 2) & 1;
  v6->_renditionFlags = v7;
  var2 = a3->var2;
  if ((var2 & 8) != 0)
  {
    v9 = 1;
    goto LABEL_7;
  }

  if ((var2 & 0x10) != 0)
  {
    v9 = 2;
LABEL_7:
    v6->_templateRenderingMode = v9;
    if ((var2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6->_templateRenderingMode = 0;
  if ((var2 & 0x20) != 0)
  {
LABEL_8:
    v7 |= 0x40u;
    v6->_renditionFlags = v7;
    var2 = a3->var2;
  }

LABEL_9:
  if ((var2 & 0x200) != 0)
  {
    v7 |= 0x400u;
    v6->_renditionFlags = v7;
    var2 = a3->var2;
    if ((var2 & 0x40) == 0)
    {
LABEL_11:
      if ((var2 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((var2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  v7 |= 0x80u;
  v6->_renditionFlags = v7;
  var2 = a3->var2;
  if ((var2 & 0x80) == 0)
  {
LABEL_12:
    if ((var2 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_20:
  v7 |= 0x100u;
  v6->_renditionFlags = v7;
  if ((a3->var2 & 0x100) != 0)
  {
LABEL_13:
    v6->_renditionFlags = (v7 | 0x200);
  }

LABEL_14:
  var5 = a3->var5;
  if (var5)
  {
    v11 = (var5 / 100.0);
  }

  else
  {
    v11 = 1;
  }

  v6->_scale = v11;
  [(CUIPlaceholderCUIThemeRendition *)v6 _initializeCompositingOptionsFromCSIData:a3 version:v4];
  [(CUIPlaceholderCUIThemeRendition *)v6 _initalizeMetadataFromCSIData:a3 version:v4];
  [(CUIPlaceholderCUIThemeRendition *)v6 _initializePropertiesFromCSIData:a3 version:v4];
  return v6;
}

- (void)_initializeRenditionKey:(const _renditionkeytoken *)a3
{
  v5 = CUIRenditionKeyTokenCount(a3);
  v6 = v5;
  if (v5 <= 0x15)
  {
    key = self->_key;
  }

  else
  {
    key = malloc_type_calloc(v5 + 1, 4uLL, 0x100004052888210uLL);
    self->_key = key;
  }

  if (!key)
  {
    key = self->_stackKey;
  }

  CUIRenditionKeyCopy(key, a3, (v6 + 1));
}

- (CUIPlaceholderCUIThemeRendition)initWithCSIData:(id)a3 forKey:(const _renditionkeytoken *)a4 version:(unsigned int)a5
{
  v5 = *&a5;
  v9 = [a3 bytes];
  v10 = [objc_opt_class() renditionClassForRenditionType:*(v9 + 36) andPixelFormat:*(v9 + 24)];
  if (v10)
  {
    v11 = [[v10 alloc] _initWithCSIData:a3 forKey:a4 version:v5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_initWithCSIData:(id)a3 forKey:(const _renditionkeytoken *)a4 version:(unsigned int)a5
{
  v5 = *&a5;
  v21.receiver = self;
  v21.super_class = CUIPlaceholderCUIThemeRendition;
  result = [(CUIPlaceholderCUIThemeRendition *)&v21 init];
  if (result)
  {
    v9 = result;
    v10 = CUIRenditionKeyTokenCount(a4);
    v11 = v10;
    if (v10 <= 0x15)
    {
      v12 = v9[12];
    }

    else
    {
      v12 = malloc_type_calloc(v10 + 1, 4uLL, 0x100004052888210uLL);
      v9[12] = v12;
    }

    if (!v12)
    {
      v12 = v9 + 1;
    }

    CUIRenditionKeyCopy(v12, a4, (v11 + 1));
    v13 = [a3 bytes];
    v9[20] = a3;
    if (*v13 == 1129599817)
    {
      return [v9 _initWithCSIHeader:v13 version:v5];
    }

    else
    {
      v14 = [CUIPlaceholderCUIRenditionKey renditionKeyWithKeyList:a4];
      _CUILog(4, "CoreUI: Error while decoding CSIData for key %@", v15, v16, v17, v18, v19, v20, v14);

      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  free(self->_key);

  v3.receiver = self;
  v3.super_class = CUIPlaceholderCUIThemeRendition;
  [(CUIPlaceholderCUIThemeRendition *)&v3 dealloc];
}

- (const)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return self->_stackKey;
  }
}

- (id)utiType
{
  v2 = [(NSString *)self->_utiType copy];

  return v2;
}

- (CGSize)physicalSizeInMeters
{
  width = self->_physicalSizeInMeters.width;
  height = self->_physicalSizeInMeters.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_setFlippable:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_renditionFlags = (*&self->_renditionFlags & 0xFFFFFF7F | v3);
}

- (id)properties
{
  v2 = [(NSDictionary *)self->_properties copy];

  return v2;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIPlaceholderCUIThemeRendition;
  return [-[CUIPlaceholderCUIThemeRendition description](&v3 description)];
}

- (unsigned)subtype
{
  result = self->_subtype;
  if (result)
  {
    return result;
  }

  type = self->_type;
  result = 10;
  if (type <= 2)
  {
    switch(type)
    {
      case 0:
        return result;
      case 1:
        return 20;
      case 2:
        return 23;
    }

    return 0;
  }

  if (type <= 7)
  {
    if (type == 3)
    {
      return 30;
    }

    if (type == 5)
    {
      return 40;
    }

    return 0;
  }

  if (type == 8)
  {
    return 50;
  }

  if (type != 1004)
  {
    return 0;
  }

  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)vectorGlyphAlignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (unsigned)valueForTokenIdentifier:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(CUIPlaceholderCUIThemeRendition *)self key];
  identifier = v4->identifier;
  if (!v4->identifier)
  {
    return 0;
  }

  v6 = v4 + 1;
  while (identifier != v3)
  {
    v7 = v6->identifier;
    ++v6;
    identifier = v7;
    if (!v7)
    {
      return 0;
    }
  }

  return v6[-1].value;
}

@end