@interface MUPDFAnnotationAdaptorHelper
+ (BOOL)_shouldUseAKAnnotation:(id)a3 toRepresentCGPDFAnnotation:(CGPDFAnnotation *)a4;
+ (double)_pointSizeFromAppearanceTokens:(id)a3;
+ (id)_colorFromAppearanceTokens:(id)a3;
+ (id)_colorFromPDFArray:(CGPDFArray *)a3;
+ (id)_fontNameFromAppearanceTokens:(id)a3;
+ (id)_getColorFromAppearanceString:(CGPDFString *)a3;
+ (id)_getFontFromAppearanceString:(CGPDFString *)a3 ofPDFPage:(CGPDFPage *)a4;
+ (id)_tokenizeAppearanceString:(id)a3;
+ (id)getFullFieldNameFromAnnotationDictionary:(CGPDFDictionary *)a3;
+ (id)getRGBColorForKey:(const char *)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4;
+ (id)getTextStringForKey:(const char *)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4;
+ (id)newAKAnnotationFromCGPDFAnnotation:(CGPDFAnnotation *)a3;
+ (void)addAKAnnotation:(id)a3 toAnnotationDictionary:(__CFDictionary *)a4;
+ (void)addAppearanceStreamOfAnnotation:(id)a3 forPage:(CGPDFPage *)a4 toDictionary:(id)a5;
+ (void)addBorderStyleOfAnnotation:(id)a3 toDictionary:(id)a4;
+ (void)addBoundsOfAnnotation:(id)a3 forPage:(CGPDFPage *)a4 toDictionary:(id)a5;
+ (void)addContentsStringOfAnnotation:(id)a3 toDictionary:(id)a4;
+ (void)addDefaultAppearanceStreamOfAnnotation:(id)a3 toDictionary:(id)a4;
+ (void)addFlagsOfAnnotation:(id)a3 toDictionary:(id)a4;
+ (void)addModificationDateOfAnnotation:(id)a3 toDictionary:(id)a4;
+ (void)addQuaddingOfAnnotation:(id)a3 toDictionary:(id)a4;
+ (void)addRGBColor:(id)a3 forKey:(id)a4 toDictionary:(id)a5;
+ (void)addString:(id)a3 toDictionary:(id)a4 forKey:(id)a5;
+ (void)addTextOfAnnotation:(id)a3 toDictionary:(id)a4 forKey:(id)a5 canUsePlaceholder:(BOOL)a6;
+ (void)migrateAKFilledAnnotationPropertiesTo:(id)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4 ofPDFPage:(CGPDFPage *)a5;
+ (void)migrateAKRectangularShapeAnnotationPropertiesTo:(id)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4 ofPDFPage:(CGPDFPage *)a5;
+ (void)migrateAKStrokedAnnotationPropertiesTo:(id)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4 ofPDFPage:(CGPDFPage *)a5;
+ (void)migrateAKTextAnnotationPropertiesTo:(id)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4 ofPDFPage:(CGPDFPage *)a5;
+ (void)migrateAppearanceStreamFromCGPDFAnnotationDict:(CGPDFDictionary *)a3 toAKAnnotation:(id)a4 compensatingForPageRotation:(unint64_t)a5;
+ (void)readDefaultAppearanceStringFromPDFDictionary:(CGPDFDictionary *)a3 ofPage:(CGPDFPage *)a4 toDictionary:(id)a5;
+ (void)readQuaddingFromPDFDictionary:(CGPDFDictionary *)a3 toDictionary:(id)a4;
@end

@implementation MUPDFAnnotationAdaptorHelper

+ (void)migrateAppearanceStreamFromCGPDFAnnotationDict:(CGPDFDictionary *)a3 toAKAnnotation:(id)a4 compensatingForPageRotation:(unint64_t)a5
{
  v6 = a4;
  v7 = _MUReadAppearanceStreams_cachedValue;
  if (_MUReadAppearanceStreams_cachedValue == -2)
  {
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [v8 objectForKey:@"MUReadAppearanceStreams"];

    if (v9)
    {
      v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      _MUReadAppearanceStreams_cachedValue = [v10 BOOLForKey:@"MUReadAppearanceStreams"];

      if (_MUReadAppearanceStreams_cachedValue)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      NSLog(&stru_286963370.isa, @"MUReadAppearanceStreams", v11);
    }

    else
    {
      _MUReadAppearanceStreams_cachedValue = 1;
    }

    v7 = _MUReadAppearanceStreams_cachedValue;
  }

  if (v7)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (a3)
    {
      if ((isKindOfClass & 1) == 0)
      {
        v35.a = 0.0;
        value.a = 0.0;
        CGPDFDictionaryGetDictionary(a3, "AP", &value);
        if (*&value.a)
        {
          CGPDFDictionaryGetObject(*&value.a, "N", &v35);
          if (*&v35.a)
          {
            t2.a = 0.0;
            CGPDFObjectGetValue(*&v35.a, kCGPDFObjectTypeStream, &t2);
            if (*&t2.a || (dict.a = 0.0, CGPDFObjectGetValue(*&v35.a, kCGPDFObjectTypeDictionary, &dict), *&dict.a) && (*&info.a = *&dict.a, CGPDFDictionaryApplyFunction(*&dict.a, _getStreams, &info), *&info.b))
            {
              v13 = CGPDFFormCreate();
              if (v13)
              {
                memset(&info, 0, sizeof(info));
                CGPDFFormGetMatrix();
                CGPDFFormGetBBox();
                v35 = info;
                v38 = CGRectApplyAffineTransform(v37, &v35);
                x = v38.origin.x;
                y = v38.origin.y;
                width = v38.size.width;
                height = v38.size.height;
                MidX = CGRectGetMidX(v38);
                v39.origin.x = x;
                v39.origin.y = y;
                v39.size.width = width;
                v39.size.height = height;
                MidY = CGRectGetMidY(v39);
                v40.origin.x = x;
                v40.origin.y = y;
                v40.size.width = width;
                v40.size.height = height;
                if (CGRectGetWidth(v40) <= 0.0 || (v41.origin.x = x, v41.origin.y = y, v41.size.width = width, v41.size.height = height, CGRectGetHeight(v41) <= 0.0))
                {
                  [v6 setAppearanceOverride:&__block_literal_global_1];
                }

                else
                {
                  [v6 drawingBounds];
                  v20 = v42.origin.x;
                  v21 = v42.origin.y;
                  v22 = v42.size.width;
                  v23 = v42.size.height;
                  v24 = CGRectGetMidX(v42);
                  v43.origin.x = v20;
                  v43.origin.y = v21;
                  v43.size.width = v22;
                  v43.size.height = v23;
                  v25 = CGRectGetMidY(v43);
                  v26 = *(MEMORY[0x277CBF2C0] + 16);
                  *&v35.a = *MEMORY[0x277CBF2C0];
                  *&v35.c = v26;
                  *&v35.tx = *(MEMORY[0x277CBF2C0] + 32);
                  *&value.c = v26;
                  *&value.tx = *&v35.tx;
                  t2 = info;
                  *&value.a = *&v35.a;
                  CGAffineTransformConcat(&v35, &value, &t2);
                  CGAffineTransformMakeTranslation(&t2, -MidX, -MidY);
                  dict = v35;
                  CGAffineTransformConcat(&value, &dict, &t2);
                  v35 = value;
                  CGAffineTransformMakeTranslation(&t2, v24, v25);
                  dict = v35;
                  CGAffineTransformConcat(&value, &dict, &t2);
                  v35 = value;
                  v27 = [[MUCGPDFFormWrapper alloc] initWithForm:v13];
                  v29[0] = MEMORY[0x277D85DD0];
                  v29[1] = 3221225472;
                  v31 = v35;
                  v29[2] = __122__MUPDFAnnotationAdaptorHelper_migrateAppearanceStreamFromCGPDFAnnotationDict_toAKAnnotation_compensatingForPageRotation___block_invoke_2;
                  v29[3] = &unk_27986E8C8;
                  v30 = v27;
                  v28 = v27;
                  [v6 setAppearanceOverride:v29];
                }
              }
            }
          }
        }
      }
    }
  }
}

void __122__MUPDFAnnotationAdaptorHelper_migrateAppearanceStreamFromCGPDFAnnotationDict_toAKAnnotation_compensatingForPageRotation___block_invoke_2(uint64_t a1, CGContextRef c)
{
  CGContextSaveGState(c);
  v4 = *(a1 + 56);
  *&v5.a = *(a1 + 40);
  *&v5.c = v4;
  *&v5.tx = *(a1 + 72);
  CGContextConcatCTM(c, &v5);
  [*(a1 + 32) pdfForm];
  CGPDFFormGetStream();
  CGPDFFormGetResources();
  if (CGPDFDrawingContextCreateWithStream())
  {
    CGPDFDrawingContextDraw();
    CGPDFDrawingContextRelease();
  }

  CGContextRestoreGState(c);
}

+ (void)migrateAKStrokedAnnotationPropertiesTo:(id)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4 ofPDFPage:(CGPDFPage *)a5
{
  v7 = a3;
  value = 0;
  if (CGPDFDictionaryGetDictionary(a4, "BS", &value))
  {
    v10 = 0;
    v11 = 0.0;
    if (CGPDFDictionaryGetNumber(value, "W", &v11))
    {
      [v7 setStrokeWidth:v11];
    }

    if (CGPDFDictionaryGetName(value, "S", &v10))
    {
      v8 = *v10 == 68 && v10[1] == 0;
      [v7 setDashed:v8];
    }
  }

  v11 = 0.0;
  if (CGPDFDictionaryGetArray(a4, "C", &v11))
  {
    v9 = [a1 _colorFromPDFArray:*&v11];
    [v7 setStrokeColor:v9];
  }
}

+ (void)migrateAKFilledAnnotationPropertiesTo:(id)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4 ofPDFPage:(CGPDFPage *)a5
{
  v7 = a3;
  value = 0;
  if (CGPDFDictionaryGetArray(a4, "IC", &value))
  {
    v8 = [a1 _colorFromPDFArray:value];
    [v7 setFillColor:v8];
  }
}

+ (void)migrateAKRectangularShapeAnnotationPropertiesTo:(id)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4 ofPDFPage:(CGPDFPage *)a5
{
  v5 = a3;
  if (CGPDFDictionaryGetRect())
  {
    [v5 setRectangle:{0.0, 0.0, 0.0, 0.0}];
  }
}

+ (void)migrateAKTextAnnotationPropertiesTo:(id)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4 ofPDFPage:(CGPDFPage *)a5
{
  v8 = a3;
  value = 0;
  if (CGPDFDictionaryGetName(a4, "Subtype", &value))
  {
    v9 = v8;
    if (!strcmp(value, "Widget"))
    {
      string = 0;
      dict = 0;
      if (!CGPDFDictionaryGetDictionary(a4, "Parent", &dict))
      {
        dict = 0;
      }

      if (CGPDFDictionaryGetString(a4, "V", &string) || dict && CGPDFDictionaryGetString(dict, "V", &string))
      {
        v10 = CGPDFStringCopyTextString(string);
      }

      else
      {
        v10 = 0;
      }

      if (CGPDFDictionaryGetString(a4, "DV", &string) || dict && CGPDFDictionaryGetString(dict, "DV", &string))
      {
        v11 = CGPDFStringCopyTextString(string);
        if (v11)
        {
          [v9 setCustomPlaceholderText:v11];
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = [MEMORY[0x277CBEB38] dictionary];
      [a1 readDefaultAppearanceStringFromPDFDictionary:a4 ofPage:a5 toDictionary:v13];
      [a1 readQuaddingFromPDFDictionary:a4 toDictionary:v13];
      if ([v10 length])
      {
        v14 = [MEMORY[0x277CEA718] newTextStorageOriginalFontSavvyWithString:v10 attributes:v13];
        [v9 setAnnotationText:v14];
      }

      else if (![v11 length])
      {
        [v9 setShouldUsePlaceholderText:0];
      }

      [v9 setTypingAttributes:v13];
    }

    else
    {
      v10 = [a1 getTextStringForKey:"Contents" fromAnnotationDictionary:a4];
      if (![v10 length])
      {
        [v9 setShouldUsePlaceholderText:0];
LABEL_28:

        goto LABEL_29;
      }

      v11 = [MEMORY[0x277CBEB38] dictionary];
      if (!strcmp(value, "FreeText"))
      {
        [a1 readDefaultAppearanceStringFromPDFDictionary:a4 ofPage:a5 toDictionary:v11];
        [a1 readQuaddingFromPDFDictionary:a4 toDictionary:v11];
      }

      v12 = [MEMORY[0x277CEA718] newTextStorageOriginalFontSavvyWithString:v10 attributes:v11];
      [v9 setAnnotationText:v12];
    }

    goto LABEL_28;
  }

  NSLog(&cfstr_SFailedToFindS.isa, "+[MUPDFAnnotationAdaptorHelper migrateAKTextAnnotationPropertiesTo:fromAnnotationDictionary:ofPDFPage:]");
LABEL_29:
}

+ (id)getRGBColorForKey:(const char *)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4
{
  value = 0;
  Array = CGPDFDictionaryGetArray(a4, a3, &value);
  v6 = 0;
  if (Array)
  {
    v6 = [a1 _colorFromPDFArray:value];
  }

  return v6;
}

+ (id)getTextStringForKey:(const char *)a3 fromAnnotationDictionary:(CGPDFDictionary *)a4
{
  value = 0;
  String = CGPDFDictionaryGetString(a4, a3, &value);
  v5 = 0;
  if (String)
  {
    v5 = CGPDFStringCopyTextString(value);
    if (!v5)
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)getFullFieldNameFromAnnotationDictionary:(CGPDFDictionary *)a3
{
  dict = 0;
  value = 0;
  if (CGPDFDictionaryGetString(a3, "T", &value) && (v4 = CGPDFStringCopyTextString(value)) != 0)
  {
    v5 = v4;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v4);
    CFRelease(v5);
  }

  else
  {
    MutableCopy = 0;
  }

  if (!CGPDFDictionaryGetDictionary(a3, "Parent", &dict))
  {
    goto LABEL_23;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = dict;
  v9 = 1;
  while (1)
  {
    v10 = v9;
    if (!CGPDFDictionaryGetString(v8, "T", &value))
    {
      dict = 0;
      goto LABEL_23;
    }

    if (MutableCopy)
    {
      CFStringInsert(MutableCopy, 0, @".");
      v11 = CGPDFStringCopyTextString(value);
      if (!v11)
      {
        goto LABEL_14;
      }

      v12 = v11;
      CFStringInsert(MutableCopy, 0, v11);
      goto LABEL_13;
    }

    v13 = CGPDFStringCopyTextString(value);
    if (v13)
    {
      v12 = v13;
      MutableCopy = CFStringCreateMutableCopy(v7, 0, v13);
LABEL_13:
      CFRelease(v12);
      goto LABEL_14;
    }

    MutableCopy = 0;
LABEL_14:
    if (!CGPDFDictionaryGetDictionary(v8, "Parent", &dict))
    {
      break;
    }

    v8 = dict;
    if (dict)
    {
      v9 = v10 + 1;
      if (v10 < 0x63)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  dict = 0;
LABEL_21:
  if (v10 >= 0x63)
  {
    NSLog(&cfstr_Getfullfieldna.isa);
  }

LABEL_23:
  if (MutableCopy)
  {
    v14 = [MEMORY[0x277CCAB68] stringWithString:MutableCopy];
    CFRelease(MutableCopy);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)readDefaultAppearanceStringFromPDFDictionary:(CGPDFDictionary *)a3 ofPage:(CGPDFPage *)a4 toDictionary:(id)a5
{
  v8 = a5;
  value = 0;
  if (CGPDFDictionaryGetString(a3, "DA", &value))
  {
    v9 = [a1 _getFontFromAppearanceString:value ofPDFPage:a4];
    if (v9)
    {
      [v8 setObject:v9 forKey:*MEMORY[0x277D740A8]];
    }

    v10 = [a1 _getColorFromAppearanceString:value];
    if (v10)
    {
      [v8 setObject:v10 forKey:*MEMORY[0x277D740C0]];
    }
  }
}

+ (void)readQuaddingFromPDFDictionary:(CGPDFDictionary *)a3 toDictionary:(id)a4
{
  v5 = *MEMORY[0x277D74118];
  v6 = a4;
  v7 = [v6 objectForKey:v5];
  if (!v7)
  {
    v7 = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  v8 = [v7 mutableCopy];
  value = 0;
  Integer = CGPDFDictionaryGetInteger(a3, "Q", &value);
  v10 = 0;
  if (Integer)
  {
    if (value == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (value == 2);
    }
  }

  [v8 setAlignment:v10];
  [v6 setObject:v8 forKey:v5];
}

+ (void)addBoundsOfAnnotation:(id)a3 forPage:(CGPDFPage *)a4 toDictionary:(id)a5
{
  v22[4] = *MEMORY[0x277D85DE8];
  v7 = a5;
  [a3 drawingBounds];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  IsInfinite = CGRectIsInfinite(v23);
  if (a4 && IsInfinite)
  {
    BoxRect = CGPDFPageGetBoxRect(a4, kCGPDFMediaBox);
    x = BoxRect.origin.x;
    y = BoxRect.origin.y;
    width = BoxRect.size.width;
    height = BoxRect.size.height;
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MinY = CGRectGetMinY(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxX = CGRectGetMaxX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MaxY = CGRectGetMaxY(v28);
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:MinX];
  v22[0] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:MinY];
  v22[1] = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:MaxX];
  v22[2] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:MaxY];
  v22[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  [v7 setObject:v21 forKey:@"/Rect"];
}

+ (void)addModificationDateOfAnnotation:(id)a3 toDictionary:(id)a4
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a4;
  v6 = [v4 date];
  v7 = [MUPDFUtilities createPDFDateString:v6];

  [v5 setObject:v7 forKey:@"/M"];
}

+ (void)addFlagsOfAnnotation:(id)a3 toDictionary:(id)a4
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a4;
  v6 = [v4 numberWithUnsignedInteger:4];
  [v5 setValue:v6 forKey:@"/F"];
}

+ (void)addContentsStringOfAnnotation:(id)a3 toDictionary:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x277CEA718] actualOrPlaceholderTextOfAnnotation:v11];
    v8 = [v7 string];
  }

  else
  {
    v8 = &stru_286962590;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v11 childAnnotation];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 contents];

        v8 = v10;
      }
    }
  }

  [a1 addString:v8 toDictionary:v6 forKey:@"/Contents"];
}

+ (void)addTextOfAnnotation:(id)a3 toDictionary:(id)a4 forKey:(id)a5 canUsePlaceholder:(BOOL)a6
{
  if (a6)
  {
    v10 = MEMORY[0x277CEA718];
    v11 = a5;
    v12 = a4;
    [v10 actualOrPlaceholderTextOfAnnotation:a3];
  }

  else
  {
    v13 = a5;
    v14 = a4;
    [a3 annotationText];
  }
  v15 = ;
  v16 = [v15 string];

  [a1 addString:v16 toDictionary:a4 forKey:a5];
}

+ (void)addString:(id)a3 toDictionary:(id)a4 forKey:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  if ([v10 length])
  {
    v9 = [v10 mutableCopy];
    [(__CFString *)v9 replaceOccurrencesOfString:@"/" withString:@"//" options:2 range:0, 1];
  }

  else
  {
    v9 = &stru_286962590;
  }

  [v7 setValue:v9 forKey:v8];
}

+ (void)addBorderStyleOfAnnotation:(id)a3 toDictionary:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 conformsToAKStrokedAnnotationProtocol])
  {
    v7 = v5;
    [v7 strokeWidth];
    v9 = v8;
    if (v8 != 1.0 || [v7 isDashed])
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      [v7 strokeWidth];
      if (v11 != 1.0)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
        [v10 setObject:v12 forKey:@"/W"];
      }

      if ([v7 isDashed])
      {
        [v10 setValue:@"/D" forKey:@"/S"];
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9 + 7.0];
        v16[0] = v13;
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:v9 * 3.0 + 4.0];
        v16[1] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
        [v10 setValue:v15 forKey:@"/D"];
      }

      [v6 setValue:v10 forKey:@"/BS"];
    }
  }
}

+ (void)addRGBColor:(id)a3 forKey:(id)a4 toDictionary:(id)a5
{
  v18[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 1.0;
  v15 = 0.0;
  v9 = [a3 colorUsingSRGBColorSpace];
  [v9 getRed:&v17 green:&v16 blue:&v15 alpha:&v14];
  if (v14 >= 0.5)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    v18[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v18[1] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    v18[2] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    [v8 setValue:v13 forKey:v7];
  }
}

+ (void)addAppearanceStreamOfAnnotation:(id)a3 forPage:(CGPDFPage *)a4 toDictionary:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = _MUWriteAppearanceStreams_cachedValue;
  if (_MUWriteAppearanceStreams_cachedValue == -2)
  {
    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [v10 objectForKey:@"MUWriteAppearanceStreams"];

    if (v11)
    {
      v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      _MUWriteAppearanceStreams_cachedValue = [v12 BOOLForKey:@"MUWriteAppearanceStreams"];

      if (_MUWriteAppearanceStreams_cachedValue)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      NSLog(&stru_286963370.isa, @"MUWriteAppearanceStreams", v13);
    }

    else
    {
      _MUWriteAppearanceStreams_cachedValue = 1;
    }

    v9 = _MUWriteAppearanceStreams_cachedValue;
  }

  if (v9)
  {
    v14 = CGDisplayListCreate();
    if (v14)
    {
      v15 = v14;
      v16 = CGDisplayListContextCreate();
      if (v16)
      {
        v17 = v16;
        [v7 drawingBounds];
        IsInfinite = CGRectIsInfinite(v22);
        if (a4 && IsInfinite)
        {
          CGPDFPageGetBoxRect(a4, kCGPDFMediaBox);
        }

        CGDisplayListSetBoundingBox();
        [MEMORY[0x277CEA698] renderAnnotation:v7 inContext:v17];
        v20 = @"/N";
        v21[0] = v15;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        [v8 setValue:v19 forKey:@"/AP"];

        CGContextRelease(v17);
      }

      CGDisplayListRelease();
    }
  }
}

+ (void)addDefaultAppearanceStreamOfAnnotation:(id)a3 toDictionary:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v31 = xmmword_258229BD8;
  *v32 = unk_258229BE8;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    v10 = 0;
    v11 = 0;
    if (!v26[5])
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v7 = [MEMORY[0x277CEA718] actualOrPlaceholderTextOfAnnotation:v5];
  if (![v7 length])
  {

    goto LABEL_7;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__MUPDFAnnotationAdaptorHelper_addDefaultAppearanceStreamOfAnnotation_toDictionary___block_invoke;
  v18[3] = &unk_27986E8F0;
  v18[4] = &v25;
  v18[5] = &v19;
  [MEMORY[0x277CEA718] enumerateFontAttributesOfAttributedString:v7 usingBlock:v18];
  v8 = [v7 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];

  if (!v26[5])
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_25;
  }

  if (v8)
  {
    v9 = [v8 colorUsingSRGBColorSpace];

    [v9 getRed:&v31 green:&v31 + 8 blue:v32 alpha:&v32[1]];
    v8 = v9;
  }

LABEL_8:
  v12 = *&v31 * 1000.0;
  v13 = round(*&v31 * 1000.0);
  if (*&v31 == *(&v31 + 1) && *&v31 == v32[0])
  {
    if (v13 == v12)
    {
      if (round(*&v31 * 100.0) == *&v31 * 100.0)
      {
        v14 = round(*&v31);
        if (round(*&v31 * 10.0) == *&v31 * 10.0)
        {
          v15 = @"%.0f g";
        }

        else
        {
          v15 = @"%.1f g";
        }
      }

      else
      {
        v14 = round(*&v31);
        v15 = @"%.2f g";
      }
    }

    else
    {
      v14 = round(*&v31);
      v15 = @"%.3f g";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v15, *&v14];
  }

  else
  {
    if (v13 == v12 && round(*(&v31 + 1) * 1000.0) == *(&v31 + 1) * 1000.0 && round(v32[0] * 1000.0) == v32[0] * 1000.0)
    {
      if (round(*&v31 * 100.0) == *&v31 * 100.0 && round(*(&v31 + 1) * 100.0) == *(&v31 + 1) * 100.0 && round(v32[0] * 100.0) == v32[0] * 100.0)
      {
        if (round(*&v31 * 10.0) == *&v31 * 10.0 && round(*(&v31 + 1) * 10.0) == *(&v31 + 1) * 10.0 && round(v32[0] * 10.0) == v32[0] * 10.0)
        {
          v16 = @"%.0f %.0f %.0f rg";
        }

        else
        {
          v16 = @"%.1f %.1f %.1f rg";
        }
      }

      else
      {
        v16 = @"%.2f %.2f %.2f rg";
      }
    }

    else
    {
      v16 = @"%.3f %.3f %.3f rg";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v16, v31, *&v32[0]];
  }

  v10 = v17;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"//%@ %@ Tf %@", v26[5], v20[5], v17];
  [v6 setValue:v11 forKey:@"/DA"];
LABEL_25:

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

void __84__MUPDFAnnotationAdaptorHelper_addDefaultAppearanceStreamOfAnnotation_toDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (v7)
  {
    v16 = v7;
    v8 = [v7 fontName];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = MEMORY[0x277CCACA8];
    [v16 pointSize];
    v13 = [v11 stringWithFormat:@"%.0f", round(v12)];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v7 = v16;
    if (a5)
    {
      *a5 = 1;
    }
  }
}

+ (void)addQuaddingOfAnnotation:(id)a3 toDictionary:(id)a4
{
  v11 = a3;
  v5 = a4;
  if ([v11 conformsToAKTextAnnotationProtocol])
  {
    v6 = [MEMORY[0x277CEA718] actualOrPlaceholderTextOfAnnotation:v11];
    if ([v6 length])
    {
      v7 = [v6 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0];
      v8 = [v7 alignment];
      if (v8)
      {
        if (v8 == 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = 2 * (v8 == 2);
        }

        v10 = [MEMORY[0x277CCABB0] numberWithInt:v9];
        [v5 setValue:v10 forKey:@"/Q"];
      }
    }
  }
}

+ (id)newAKAnnotationFromCGPDFAnnotation:(CGPDFAnnotation *)a3
{
  v5 = _MUReadEmbeddedAKAnnotation_cachedValue;
  if (_MUReadEmbeddedAKAnnotation_cachedValue == -2)
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [v6 objectForKey:@"MUReadEmbeddedAKAnnotation"];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      _MUReadEmbeddedAKAnnotation_cachedValue = [v8 BOOLForKey:@"MUReadEmbeddedAKAnnotation"];

      if (_MUReadEmbeddedAKAnnotation_cachedValue)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      NSLog(&stru_286963370.isa, @"MUReadEmbeddedAKAnnotation", v9);
    }

    else
    {
      _MUReadEmbeddedAKAnnotation_cachedValue = 1;
    }

    v5 = _MUReadEmbeddedAKAnnotation_cachedValue;
  }

  if (v5)
  {
    CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
    if (CGPDFDictionary)
    {
      v11 = objc_autoreleasePoolPush();
      value = 0;
      if (CGPDFDictionaryGetDictionary(CGPDFDictionary, "AAPL:AKExtras", &value) && (string = 0, CGPDFDictionaryGetString(value, "AAPL:AKAnnotationObject", &string)) && (v12 = CGPDFStringCopyTextString(string)) != 0)
      {
        v13 = v12;
        v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v12 options:0];
        CGPDFDictionary = [MEMORY[0x277CEA678] annotationWithData:v14];
        CFRelease(v13);

        objc_autoreleasePoolPop(v11);
        if (CGPDFDictionary && ([a1 _shouldUseAKAnnotation:CGPDFDictionary toRepresentCGPDFAnnotation:a3] & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        objc_autoreleasePoolPop(v11);
        CGPDFDictionary = 0;
      }

      CGPDFDictionary = CGPDFDictionary;
      v15 = CGPDFDictionary;
      goto LABEL_20;
    }

LABEL_16:
    v15 = 0;
LABEL_20:

    return v15;
  }

  return 0;
}

+ (void)addAKAnnotation:(id)a3 toAnnotationDictionary:(__CFDictionary *)a4
{
  v17 = a3;
  v5 = _MUWriteEmbeddedAKAnnotation_cachedValue;
  if (_MUWriteEmbeddedAKAnnotation_cachedValue == -2)
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [v6 objectForKey:@"MUWriteEmbeddedAKAnnotation"];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      _MUWriteEmbeddedAKAnnotation_cachedValue = [v8 BOOLForKey:@"MUWriteEmbeddedAKAnnotation"];

      if (_MUWriteEmbeddedAKAnnotation_cachedValue)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      NSLog(&stru_286963370.isa, @"MUWriteEmbeddedAKAnnotation", v9);
    }

    else
    {
      _MUWriteEmbeddedAKAnnotation_cachedValue = 0;
    }

    v5 = _MUWriteEmbeddedAKAnnotation_cachedValue;
  }

  if (v5)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [v17 dataRepresentation];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 base64EncodedStringWithOptions:0];
      [v11 setObject:v14 forKey:@"/AAPL:AKAnnotationObject"];
      Copy = CFDictionaryCreateCopy(0, a4);
      if (Copy)
      {
        v16 = Copy;
        [v11 setObject:Copy forKey:@"/AAPL:AKPDFAnnotationDictionary"];
      }

      CFDictionarySetValue(a4, @"/AAPL:AKExtras", v11);
    }

    objc_autoreleasePoolPop(v10);
  }
}

+ (id)_colorFromPDFArray:(CGPDFArray *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = xmmword_258229BF8;
  *v13 = unk_258229C08;
  Count = CGPDFArrayGetCount(a3);
  switch(Count)
  {
    case 4uLL:
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF438]);
      CGPDFArrayGetNumber(a3, 0, &v12);
      CGPDFArrayGetNumber(a3, 1uLL, &v12 + 1);
      CGPDFArrayGetNumber(a3, 2uLL, v13);
      v6 = &v13[1];
      v7 = a3;
      v8 = 3;
      break;
    case 3uLL:
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      CGPDFArrayGetNumber(a3, 0, &v12);
      CGPDFArrayGetNumber(a3, 1uLL, &v12 + 1);
      v6 = v13;
      v7 = a3;
      v8 = 2;
      break;
    case 1uLL:
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF448]);
      v6 = &v12;
      v7 = a3;
      v8 = 0;
      break;
    default:
      goto LABEL_9;
  }

  CGPDFArrayGetNumber(v7, v8, v6);
  v9 = CGColorCreate(v5, &v12);
  CGColorSpaceRelease(v5);
  if (v9)
  {
    v10 = [MEMORY[0x277D75348] colorWithCGColor:{v9, v12, *v13}];
    CFRelease(v9);
    goto LABEL_10;
  }

LABEL_9:
  v10 = 0;
LABEL_10:

  return v10;
}

+ (id)_getFontFromAppearanceString:(CGPDFString *)a3 ofPDFPage:(CGPDFPage *)a4
{
  v6 = CGPDFStringCopyTextString(a3);
  if (!v6)
  {
    v10 = 0;
    v7 = 0;
    v22 = MEMORY[0x277D74300];
LABEL_35:
    v9 = 12.0;
    goto LABEL_36;
  }

  v7 = [a1 _tokenizeAppearanceString:v6];
  [a1 _pointSizeFromAppearanceTokens:v7];
  v9 = v8;
  v10 = [a1 _fontNameFromAppearanceTokens:v7];
  if (!v10)
  {
    goto LABEL_34;
  }

  value = 0;
  v29 = 0;
  dict = 0;
  Document = CGPDFPageGetDocument(a4);
  Catalog = CGPDFDocumentGetCatalog(Document);
  if (Catalog && CGPDFDictionaryGetDictionary(Catalog, "AcroForm", &value) && CGPDFDictionaryGetDictionary(value, "DR", &dict) && (v26 = 0, CGPDFDictionaryGetDictionary(dict, "Font", &v26)) && CGPDFDictionaryGetObject(v26, [v10 cStringUsingEncoding:1], &v29) && CGPDFFontCreateWithObject())
  {
    Font = CGPDFFontGetFont();
    v14 = CGFontCopyPostScriptName(Font);
    if (v14)
    {
      v15 = v14;
      v16 = [MEMORY[0x277D74300] fontWithName:v14 size:v9];
      if (!v16)
      {
        CGPDFFontGetFontDescriptor();
        Flags = CGPDFFontDescriptorGetFlags();
        v18 = @"Courier";
        if ((Flags & 1) == 0)
        {
          v18 = @"Times";
        }

        v19 = @"Helvetica";
        if (Flags)
        {
          v19 = @"Monaco";
        }

        if ((Flags & 2) != 0)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        v16 = [MEMORY[0x277D74300] fontWithName:v20 size:v9];
      }

      CFRelease(v15);
    }

    else
    {
      v16 = 0;
    }

    CGPDFFontRelease();
    if (v16)
    {
LABEL_33:
      if (v16)
      {
        goto LABEL_38;
      }

LABEL_34:
      v22 = MEMORY[0x277D74300];
      if (v9 <= 0.0)
      {
        goto LABEL_35;
      }

LABEL_36:
      v21 = [v22 fontWithName:@"Helvetica" size:v9];
      goto LABEL_37;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v9 <= 0.0)
  {
    goto LABEL_33;
  }

  v21 = [MEMORY[0x277D74300] fontWithName:v10 size:v9];
  if (!v21)
  {
    if ([v10 isEqualToString:@"Helv"])
    {
      v22 = MEMORY[0x277D74300];
      v23 = @"Helvetica";
    }

    else if ([v10 isEqualToString:@"HeBo"])
    {
      v22 = MEMORY[0x277D74300];
      v23 = @"Helvetica-Bold";
    }

    else if ([v10 isEqualToString:@"Cour"])
    {
      v22 = MEMORY[0x277D74300];
      v23 = @"Courier";
    }

    else
    {
      v24 = [v10 isEqualToString:@"ZaDb"];
      v22 = MEMORY[0x277D74300];
      if (!v24)
      {
        goto LABEL_36;
      }

      v23 = @"ZapfDingbats";
    }

    v16 = [v22 fontWithName:v23 size:v9];
    goto LABEL_33;
  }

LABEL_37:
  v16 = v21;
LABEL_38:

  return v16;
}

+ (id)_getColorFromAppearanceString:(CGPDFString *)a3
{
  v4 = CGPDFStringCopyTextString(a3);
  if (v4)
  {
    v5 = [a1 _tokenizeAppearanceString:v4];
    v6 = [a1 _colorFromAppearanceTokens:v5];
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return v6;
}

+ (id)_tokenizeAppearanceString:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v5 = [v3 length];
  v6 = 0;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if ([v3 characterAtIndex:i] == 32)
      {
        if (i == v6)
        {
          ++v6;
        }

        else
        {
          v8 = [v3 substringWithRange:{v6, i - v6}];
          [v4 addObject:v8];

          v6 = i + 1;
        }
      }
    }
  }

  v9 = [v3 substringWithRange:{v6, v5 - v6}];
  [v4 addObject:v9];

  return v4;
}

+ (double)_pointSizeFromAppearanceTokens:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    while (1)
    {
      if (v7)
      {
        v8 = [v3 objectAtIndex:v7];
        v9 = [v8 isEqualToString:@"Tf"];

        if (v9)
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_8;
      }
    }

    v10 = [v3 objectAtIndex:v7 - 1];
    [v10 floatValue];
    v5 = v11;
  }

LABEL_8:

  return v5;
}

+ (id)_fontNameFromAppearanceTokens:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if (v5 >= 2)
      {
        v6 = [v3 objectAtIndex:v5];
        v7 = [v6 isEqualToString:@"Tf"];

        if (v7)
        {
          v8 = [v3 objectAtIndex:v5 - 2];
          v9 = [v8 length];

          if (v9)
          {
            break;
          }
        }
      }

      if (v4 == ++v5)
      {
        v4 = 0;
        goto LABEL_9;
      }
    }

    v10 = [v3 objectAtIndex:v5 - 2];
    v4 = [v10 substringWithRange:{1, v9 - 1}];
  }

LABEL_9:

  return v4;
}

+ (id)_colorFromAppearanceTokens:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (!v4)
  {
LABEL_9:
    v22 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = 0;
  while (v6 < 3)
  {
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (v5 == ++v6)
    {
      goto LABEL_9;
    }
  }

  v7 = [v3 objectAtIndex:v6];
  v8 = [v7 isEqualToString:@"rg"];

  if (v8)
  {
    v13 = MEMORY[0x277D75348];
    v14 = [v3 objectAtIndex:v6 - 3];
    [v14 floatValue];
    v16 = v15;
    v17 = [v3 objectAtIndex:v6 - 2];
    [v17 floatValue];
    v19 = v18;
    v20 = [v3 objectAtIndex:v6 - 1];
    [v20 floatValue];
    v22 = [v13 akColorWithSRGBRed:v16 green:v19 blue:v21 alpha:1.0];

    goto LABEL_11;
  }

LABEL_7:
  v9 = [v3 objectAtIndex:v6];
  v10 = [v9 isEqualToString:@"g"];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = MEMORY[0x277D75348];
  v14 = [v3 objectAtIndex:v6 - 1];
  [v14 floatValue];
  v22 = [v11 akColorWithWhite:v12 alpha:1.0];
LABEL_11:

LABEL_12:

  return v22;
}

+ (BOOL)_shouldUseAKAnnotation:(id)a3 toRepresentCGPDFAnnotation:(CGPDFAnnotation *)a4
{
  v4 = a3;
  if (!CGPDFAnnotationIsVersioned())
  {
    CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
    if (CGPDFDictionary)
    {
      v7 = CGPDFDictionary;
      value = 0;
      if (!CGPDFDictionaryGetDictionary(CGPDFDictionary, "AAPL:AKExtras", &value))
      {
LABEL_11:
        IsPristine = 0;
        goto LABEL_15;
      }

      v29 = 0;
      if (CGPDFDictionaryGetDictionary(value, "AAPL:AKPDFAnnotationDictionary", &v29))
      {
        v8 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:1282 valueOptions:512];
        v9 = _dictionaryForPDFDictionary(v29, v8);
        v10 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:1282 valueOptions:512];
        v11 = _dictionaryForPDFDictionary(v7, v10);
        [v11 removeObjectForKey:@"AAPL:AKExtras"];
        [v11 removeObjectForKey:@"AP"];
        [(__CFString *)v9 removeObjectForKey:@"AP"];
        IsPristine = [v11 isEqualToDictionary:v9];

LABEL_7:
        goto LABEL_15;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = *(MEMORY[0x277CBF3A0] + 16);
        v27 = *MEMORY[0x277CBF3A0];
        v28 = v12;
        if (CGPDFDictionaryGetRect())
        {
          [v4 drawingBounds];
          v25 = v13;
          [v4 drawingBounds];
          v24 = v14;
          [v4 drawingBounds];
          v23 = v15;
          [v4 drawingBounds];
          v16.f64[0] = v25;
          v16.f64[1] = v24;
          v17.f64[1] = v23;
          v18 = vabdq_f64(v28, v17);
          v19 = vdupq_n_s64(0x3F747AE147AE147BuLL);
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v19, vabdq_f64(v27, v16)), vcgeq_f64(v19, v18))))))
          {
            goto LABEL_11;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 annotationText], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "string"), v8 = objc_claimAutoreleasedReturnValue(), v21, !v8))
              {
                v8 = &stru_286962590;
              }

              string = 0;
              v9 = &stru_286962590;
              if (CGPDFDictionaryGetString(v7, "Contents", &string))
              {
                v22 = CGPDFStringCopyTextString(string);
                if (v22)
                {
                  v9 = v22;
                }
              }

              IsPristine = [(__CFString *)v8 isEqualToString:v9];
              goto LABEL_7;
            }
          }
        }
      }
    }

    IsPristine = 1;
    goto LABEL_15;
  }

  IsPristine = CGPDFAnnotationIsPristine();
LABEL_15:

  return IsPristine;
}

@end