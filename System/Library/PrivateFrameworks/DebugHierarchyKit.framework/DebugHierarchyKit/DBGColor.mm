@interface DBGColor
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withCGColor:(CGColor *)a3 colorName:(id)a4 catalogName:(id)a5;
- (DBGColor)initWithCGColor:(CGColor *)a3 colorName:(id)a4 catalogName:(id)a5;
- (id)JSONCompatibleRepresentation;
- (void)dealloc;
@end

@implementation DBGColor

+ (id)withCGColor:(CGColor *)a3 colorName:(id)a4 catalogName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithCGColor:a3 colorName:v9 catalogName:v8];

  return v10;
}

- (DBGColor)initWithCGColor:(CGColor *)a3 colorName:(id)a4 catalogName:(id)a5
{
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = DBGColor;
  v11 = [(DBGColor *)&v13 init];
  if (v11)
  {
    v11->_CGColor = CGColorRetain(a3);
    objc_storeStrong(&v11->_colorName, a4);
    objc_storeStrong(&v11->_catalogName, a5);
  }

  return v11;
}

- (void)dealloc
{
  CGColorRelease(self->_CGColor);
  v3.receiver = self;
  v3.super_class = DBGColor;
  [(DBGColor *)&v3 dealloc];
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([(__CFString *)v9 isEqualToString:@"color"]& 1) != 0 || [(__CFString *)v9 isEqualToString:@"patternImageColor"]))
  {
    v10 = DBGDecodeValueFromJSONCompatibleValue();
    v11 = 0;
    v12 = v11;
    if (v11)
    {
      if (a5)
      {
        v13 = v11;
        v14 = 0;
        *a5 = v12;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v15 = 0;
      if (v9 && v10)
      {
        if (CFStringCompare(v9, @"color", 0) || (v16 = CFDictionaryGetValue(v10, @"colorSpaceName")) == 0)
        {
          v15 = 0;
        }

        else
        {
          v17 = CGColorSpaceCreateWithName(v16);
          value = 0;
          if (CFDictionaryGetValueIfPresent(v10, @"componentValues", &value))
          {
            Count = CFArrayGetCount(value);
            v19 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(value, i);
                valuePtr = 0.0;
                CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
                v19[i] = valuePtr;
              }
            }

            v15 = CGColorCreate(v17, v19);
            free(v19);
          }

          else
          {
            v15 = 0;
          }

          CGColorSpaceRelease(v17);
        }
      }

      v22 = [(__CFDictionary *)v10 objectForKeyedSubscript:@"colorName"];
      v23 = [(__CFDictionary *)v10 objectForKeyedSubscript:@"catalogName"];
      v14 = [a1 withCGColor:v15 colorName:v22 catalogName:v23];
      CGColorRelease(v15);
    }
  }

  else
  {
    v14 = 0;
    if (!v8 && a5)
    {
      v14 = 0;
      *a5 = 0;
    }
  }

  return v14;
}

- (id)JSONCompatibleRepresentation
{
  if ([(DBGColor *)self CGColor])
  {
    v3 = [(DBGColor *)self CGColor];
    if (v3)
    {
      v4 = v3;
      Mutable = CFDictionaryCreateMutable(0, 20, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      ColorSpace = CGColorGetColorSpace(v4);
      v7 = CGColorSpaceCopyName(ColorSpace);
      NumberOfComponents = CGColorGetNumberOfComponents(v4);
      v9 = NumberOfComponents << 32;
      v10 = NumberOfComponents;
      if (NumberOfComponents << 32)
      {
        v27 = v7;
        v11 = ColorSpace;
        v12 = CFStringCreateMutable(0, 0);
        v13 = v10 - 1;
        if (v10 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10;
        }

        do
        {
          CFStringAppend(v12, @"CGf");
          if (v13)
          {
            CFStringAppend(v12, @", ");
          }

          --v13;
          --v14;
        }

        while (v14);
        ColorSpace = v11;
        v7 = v27;
      }

      else
      {
        v12 = &stru_28750;
      }

      Components = CGColorGetComponents(v4);
      v17 = malloc_type_malloc(v9 >> 29, 0x6004044C4A2DFuLL);
      if (v9)
      {
        v18 = 0;
        if (v10 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v10;
        }

        do
        {
          v17[v18++] = CFNumberCreate(0, kCFNumberCGFloatType, Components++);
        }

        while (v19 != v18);
        v20 = CFArrayCreate(0, v17, v10, &kCFTypeArrayCallBacks);
        v21 = v17;
        do
        {
          v22 = *v21++;
          CFRelease(v22);
          --v19;
        }

        while (v19);
      }

      else
      {
        v20 = CFArrayCreate(0, v17, v10, &kCFTypeArrayCallBacks);
      }

      free(v17);
      CGColorSpaceGetModel(ColorSpace);
      if (v20)
      {
        CFDictionaryAddValue(Mutable, @"componentValues", v20);
      }

      if (v12)
      {
        CFDictionaryAddValue(Mutable, @"componentValuesFormat", v12);
      }

      if (v7)
      {
        CFDictionaryAddValue(Mutable, @"colorSpaceName", v7);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      Mutable = 0;
    }

    v15 = DBGEncodeValueAsJSONCompatibleValue();
    v23 = 0;
    v24 = v23;
    if (v23)
    {
      v25 = [v23 localizedDescription];
      NSLog(&cfstr_SError_0.isa, "[DBGColor(JSONSerialization) JSONCompatibleRepresentation]", v25);

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end