@interface FigCaptureSmartStyle
+ (FigCaptureSmartStyle)styleWithCast:(id)a3 intensity:(float)a4 toneBias:(float)a5 colorBias:(float)a6;
+ (id)createFromDictionary:(id)a3;
+ (id)identityStyle;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIdentity;
- (FigCaptureSmartStyle)initWithCoder:(id)a3;
- (FigCaptureSmartStyle)initWithXPCEncoding:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (float)_initWithCast:(float)a3 intensity:(float)a4 toneBias:(float)a5 colorBias:;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FigCaptureSmartStyle

+ (FigCaptureSmartStyle)styleWithCast:(id)a3 intensity:(float)a4 toneBias:(float)a5 colorBias:(float)a6
{
  v6 = [[FigCaptureSmartStyle alloc] _initWithCast:a3 intensity:a4 toneBias:a5 colorBias:a6];

  return v6;
}

- (float)_initWithCast:(float)a3 intensity:(float)a4 toneBias:(float)a5 colorBias:
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = FigCaptureSmartStyle;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = v9;
  if (v9)
  {
    v11 = @"intensity must be between 0.0 and 1.0";
    if (a3 >= 0.0 && a4 <= 1.0)
    {
      if (a4 < -1.0)
      {
        v11 = @"toneBias must be between -1.0 and 1.0";
      }

      else
      {
        if (fabsf(a5) <= 1.0)
        {
          *(v9 + 1) = [a2 copy];
          v10[4] = a3;
          v10[5] = a4;
          v10[6] = a5;
          *(v10 + 4) = (a4 * 10000.0) ^ (a3 * 10000.0) ^ (a5 * 10000.0);
          return v10;
        }

        v11 = @"colorBias must be between -1.0 and 1.0";
      }
    }

    [FigCaptureSemanticStyle _initWithToneBias:v9 warmthBias:v11];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSmartStyle;
  [(FigCaptureSmartStyle *)&v3 dealloc];
}

- (FigCaptureSmartStyle)initWithXPCEncoding:(id)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(a3, "cast")}];
  v6 = xpc_dictionary_get_double(a3, "intensity");
  v7 = xpc_dictionary_get_double(a3, "toneBias");
  v8 = xpc_dictionary_get_double(a3, "colorBias");

  return [(FigCaptureSmartStyle *)self _initWithCast:v5 intensity:v6 toneBias:v7 colorBias:v8];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cast", [(NSString *)self->_cast UTF8String]);
  xpc_dictionary_set_double(v3, "intensity", self->_intensity);
  xpc_dictionary_set_double(v3, "toneBias", self->_toneBias);
  xpc_dictionary_set_double(v3, "colorBias", self->_colorBias);
  return v3;
}

- (FigCaptureSmartStyle)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "cast")}];
  [a3 decodeFloatForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "intensity")}];
  v7 = v6;
  [a3 decodeFloatForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "toneBias")}];
  v9 = v8;
  [a3 decodeFloatForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "colorBias")}];

  return [(FigCaptureSmartStyle *)self _initWithCast:v5 intensity:v7 toneBias:v9 colorBias:v10];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_cast forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "cast")}];
  intensity = self->_intensity;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"intensity"];
  *&v7 = intensity;
  [a3 encodeFloat:v6 forKey:v7];
  toneBias = self->_toneBias;
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"toneBias"];
  *&v10 = toneBias;
  [a3 encodeFloat:v9 forKey:v10];
  colorBias = self->_colorBias;
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"colorBias"];
  *&v13 = colorBias;

  [a3 encodeFloat:v12 forKey:v13];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_6:
      LOBYTE(v5) = 0;
      return v5;
    }

    v5 = -[NSString isEqualToString:](-[FigCaptureSmartStyle cast](self, "cast"), "isEqualToString:", [a3 cast]);
    if (v5)
    {
      [(FigCaptureSmartStyle *)self intensity];
      v7 = v6;
      [a3 intensity];
      if (v7 != v8)
      {
        goto LABEL_6;
      }

      [(FigCaptureSmartStyle *)self toneBias];
      v10 = v9;
      [a3 toneBias];
      if (v10 != v11)
      {
        goto LABEL_6;
      }

      [(FigCaptureSmartStyle *)self colorBias];
      v13 = v12;
      [a3 colorBias];
      LOBYTE(v5) = v13 == v14;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [FigCaptureSmartStyle alloc];
  v5 = [(FigCaptureSmartStyle *)self cast];
  [(FigCaptureSmartStyle *)self intensity];
  v7 = v6;
  [(FigCaptureSmartStyle *)self toneBias];
  v9 = v8;
  [(FigCaptureSmartStyle *)self colorBias];

  return [(FigCaptureSmartStyle *)v4 _initWithCast:v5 intensity:v7 toneBias:v9 colorBias:v10];
}

- (BOOL)isIdentity
{
  v3 = [(NSString *)self->_cast isEqualToString:FigSmartStyleCastTypeStandard];
  if (v3)
  {
    LOBYTE(v3) = self->_toneBias == 0.0 && self->_colorBias == 0.0;
  }

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v8[0] = -[NSString copy](self->_cast, "copy", [MEMORY[0x1E696AEC0] stringWithUTF8String:"cast"]);
  v7[1] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"intensity"];
  *&v3 = self->_intensity;
  v8[1] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v7[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"toneBias"];
  *&v4 = self->_toneBias;
  v8[2] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v7[3] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"colorBias"];
  *&v5 = self->_colorBias;
  v8[3] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureSmartStyle debugDescription](self, "debugDescription")];
}

+ (id)identityStyle
{
  v2 = [FigCaptureSmartStyle alloc];
  if (v2)
  {
    v3 = FigSmartStyleCastTypeStandard;
    v6.receiver = v2;
    v6.super_class = FigCaptureSmartStyle;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    if (v4)
    {
      v4[1] = [(__CFString *)v3 copy];
      v4[2] = 1065353216;
      *(v4 + 6) = 0;
      v4[4] = 10000;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)createFromDictionary:(id)a3
{
  v4 = OUTLINED_FUNCTION_8_45([MEMORY[0x1E696AEC0] stringWithUTF8String:"cast"]);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_45([MEMORY[0x1E696AEC0] stringWithUTF8String:"intensity"]);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = OUTLINED_FUNCTION_8_45([MEMORY[0x1E696AEC0] stringWithUTF8String:"toneBias"]);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = OUTLINED_FUNCTION_8_45([MEMORY[0x1E696AEC0] stringWithUTF8String:"colorBias"]);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  [v7 floatValue];
  v13 = v12;
  [v9 floatValue];
  v15 = v14;
  [v11 floatValue];
  LODWORD(v16) = LODWORD(v17);
  LODWORD(v17) = v13;
  LODWORD(v18) = v15;

  return [a1 styleWithCast:v5 intensity:v17 toneBias:v18 colorBias:v16];
}

@end