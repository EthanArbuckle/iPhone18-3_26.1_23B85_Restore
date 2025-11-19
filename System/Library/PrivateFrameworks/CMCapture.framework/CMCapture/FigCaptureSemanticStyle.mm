@interface FigCaptureSemanticStyle
+ (FigCaptureSemanticStyle)semanticStyleWithToneBias:(float)a3 warmthBias:(float)a4;
+ (id)identityStyle;
- (BOOL)isEqual:(id)a3;
- (FigCaptureSemanticStyle)initWithCoder:(id)a3;
- (FigCaptureSemanticStyle)initWithXPCEncoding:(id)a3;
- (NSString)description;
- (id)_initWithToneBias:(float)a3 warmthBias:;
- (id)copyXPCEncoding;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FigCaptureSemanticStyle

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_double(v3, "toneBias", self->_toneBias);
  xpc_dictionary_set_double(v3, "warmthBias", self->_warmthBias);
  return v3;
}

+ (FigCaptureSemanticStyle)semanticStyleWithToneBias:(float)a3 warmthBias:(float)a4
{
  v4 = [[FigCaptureSemanticStyle alloc] _initWithToneBias:a3 warmthBias:a4];

  return v4;
}

- (id)_initWithToneBias:(float)a3 warmthBias:
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = FigCaptureSemanticStyle;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = v5;
  if (v5)
  {
    if (fabsf(a2) > 1.0)
    {
      v8 = @"toneBias must be between -1.0 and 1.0";
    }

    else
    {
      if (fabsf(a3) <= 1.0)
      {
        [(FigCaptureSemanticStyle *)v5 _initWithToneBias:a2 warmthBias:a3];
        return v6;
      }

      v8 = @"warmthBias must be between -1.0 and 1.0";
    }

    [FigCaptureSemanticStyle _initWithToneBias:v5 warmthBias:v8];
  }

  return v6;
}

- (FigCaptureSemanticStyle)initWithXPCEncoding:(id)a3
{
  v5 = xpc_dictionary_get_double(a3, "toneBias");
  v6 = xpc_dictionary_get_double(a3, "warmthBias");

  return [(FigCaptureSemanticStyle *)self _initWithToneBias:v5 warmthBias:v6];
}

- (FigCaptureSemanticStyle)initWithCoder:(id)a3
{
  [a3 decodeFloatForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "toneBias")}];
  v6 = v5;
  [a3 decodeFloatForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "warmthBias")}];

  return [(FigCaptureSemanticStyle *)self _initWithToneBias:v6 warmthBias:v7];
}

- (void)encodeWithCoder:(id)a3
{
  toneBias = self->_toneBias;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"toneBias"];
  *&v7 = toneBias;
  [a3 encodeFloat:v6 forKey:v7];
  warmthBias = self->_warmthBias;
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"warmthBias"];
  *&v10 = warmthBias;

  [a3 encodeFloat:v9 forKey:v10];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(FigCaptureSemanticStyle *)self toneBias];
  v6 = v5;
  [a3 toneBias];
  if (v6 != v7)
  {
    return 0;
  }

  [(FigCaptureSemanticStyle *)self warmthBias];
  v10 = v9;
  [a3 warmthBias];
  return v10 == v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureSemanticStyle debugDescription](self, "debugDescription")];
}

+ (id)identityStyle
{
  v2 = [FigCaptureSemanticStyle alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = FigCaptureSemanticStyle;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      *&v2->_toneBias = 0;
      *&v2->_warmthBias = 0;
      v2->_hash = 0;
    }
  }

  return v2;
}

- (float)_initWithToneBias:(float)a3 warmthBias:.cold.2(uint64_t a1, float a2, float a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (a2 < -1.0 || a2 > 0.0)
  {
    v5 = a2 <= 0.0;
    if (a2 > 0.5)
    {
      v5 = 1;
    }

    v4 = 1.3333;
    if (v5)
    {
      v4 = 0.66667;
    }

    v3 = 0.33333;
    if (!v5)
    {
      v3 = 0.0;
    }
  }

  else
  {
    v3 = 0.0;
    v4 = 1.0;
  }

  *(a1 + 12) = v3 + (v4 * a2);
  if (a3 < -1.0 || a3 > -0.5)
  {
    if (a3 <= -0.5 || a3 > 0.0)
    {
      v9 = a3 <= 0.0;
      if (a3 > 0.5)
      {
        v9 = 1;
      }

      v8 = *"333?";
      if (v9)
      {
        v8 = 1.3;
      }

      v7 = -0.3;
      if (!v9)
      {
        v7 = 0.0;
      }
    }

    else
    {
      v7 = 0.0;
      v8 = *"333?";
    }
  }

  else
  {
    v7 = 0.3;
    v8 = 1.3;
  }

  v10 = (a2 * 10000.0);
  *(a1 + 20) = v7 + (v8 * a3);
  result = a3 * 10000.0;
  *(a1 + 24) = (a3 * 10000.0) ^ v10;
  return result;
}

@end