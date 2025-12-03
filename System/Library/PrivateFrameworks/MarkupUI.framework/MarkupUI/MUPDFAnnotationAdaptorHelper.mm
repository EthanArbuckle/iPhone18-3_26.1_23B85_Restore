@interface MUPDFAnnotationAdaptorHelper
+ (BOOL)_shouldUseAKAnnotation:(id)annotation toRepresentCGPDFAnnotation:(CGPDFAnnotation *)fAnnotation;
+ (double)_pointSizeFromAppearanceTokens:(id)tokens;
+ (id)_colorFromAppearanceTokens:(id)tokens;
+ (id)_colorFromPDFArray:(CGPDFArray *)array;
+ (id)_fontNameFromAppearanceTokens:(id)tokens;
+ (id)_getColorFromAppearanceString:(CGPDFString *)string;
+ (id)_getFontFromAppearanceString:(CGPDFString *)string ofPDFPage:(CGPDFPage *)page;
+ (id)_tokenizeAppearanceString:(id)string;
+ (id)getFullFieldNameFromAnnotationDictionary:(CGPDFDictionary *)dictionary;
+ (id)getRGBColorForKey:(const char *)key fromAnnotationDictionary:(CGPDFDictionary *)dictionary;
+ (id)getTextStringForKey:(const char *)key fromAnnotationDictionary:(CGPDFDictionary *)dictionary;
+ (id)newAKAnnotationFromCGPDFAnnotation:(CGPDFAnnotation *)annotation;
+ (void)addAKAnnotation:(id)annotation toAnnotationDictionary:(__CFDictionary *)dictionary;
+ (void)addAppearanceStreamOfAnnotation:(id)annotation forPage:(CGPDFPage *)page toDictionary:(id)dictionary;
+ (void)addBorderStyleOfAnnotation:(id)annotation toDictionary:(id)dictionary;
+ (void)addBoundsOfAnnotation:(id)annotation forPage:(CGPDFPage *)page toDictionary:(id)dictionary;
+ (void)addContentsStringOfAnnotation:(id)annotation toDictionary:(id)dictionary;
+ (void)addDefaultAppearanceStreamOfAnnotation:(id)annotation toDictionary:(id)dictionary;
+ (void)addFlagsOfAnnotation:(id)annotation toDictionary:(id)dictionary;
+ (void)addModificationDateOfAnnotation:(id)annotation toDictionary:(id)dictionary;
+ (void)addQuaddingOfAnnotation:(id)annotation toDictionary:(id)dictionary;
+ (void)addRGBColor:(id)color forKey:(id)key toDictionary:(id)dictionary;
+ (void)addString:(id)string toDictionary:(id)dictionary forKey:(id)key;
+ (void)addTextOfAnnotation:(id)annotation toDictionary:(id)dictionary forKey:(id)key canUsePlaceholder:(BOOL)placeholder;
+ (void)migrateAKFilledAnnotationPropertiesTo:(id)to fromAnnotationDictionary:(CGPDFDictionary *)dictionary ofPDFPage:(CGPDFPage *)page;
+ (void)migrateAKRectangularShapeAnnotationPropertiesTo:(id)to fromAnnotationDictionary:(CGPDFDictionary *)dictionary ofPDFPage:(CGPDFPage *)page;
+ (void)migrateAKStrokedAnnotationPropertiesTo:(id)to fromAnnotationDictionary:(CGPDFDictionary *)dictionary ofPDFPage:(CGPDFPage *)page;
+ (void)migrateAKTextAnnotationPropertiesTo:(id)to fromAnnotationDictionary:(CGPDFDictionary *)dictionary ofPDFPage:(CGPDFPage *)page;
+ (void)migrateAppearanceStreamFromCGPDFAnnotationDict:(CGPDFDictionary *)dict toAKAnnotation:(id)annotation compensatingForPageRotation:(unint64_t)rotation;
+ (void)readDefaultAppearanceStringFromPDFDictionary:(CGPDFDictionary *)dictionary ofPage:(CGPDFPage *)page toDictionary:(id)toDictionary;
+ (void)readQuaddingFromPDFDictionary:(CGPDFDictionary *)dictionary toDictionary:(id)toDictionary;
@end

@implementation MUPDFAnnotationAdaptorHelper

+ (void)migrateAppearanceStreamFromCGPDFAnnotationDict:(CGPDFDictionary *)dict toAKAnnotation:(id)annotation compensatingForPageRotation:(unint64_t)rotation
{
  annotationCopy = annotation;
  v7 = _MUReadAppearanceStreams_cachedValue;
  if (_MUReadAppearanceStreams_cachedValue == -2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults objectForKey:@"MUReadAppearanceStreams"];

    if (v9)
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      _MUReadAppearanceStreams_cachedValue = [standardUserDefaults2 BOOLForKey:@"MUReadAppearanceStreams"];

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
    if (dict)
    {
      if ((isKindOfClass & 1) == 0)
      {
        v35.a = 0.0;
        value.a = 0.0;
        CGPDFDictionaryGetDictionary(dict, "AP", &value);
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
                  [annotationCopy setAppearanceOverride:&__block_literal_global_1];
                }

                else
                {
                  [annotationCopy drawingBounds];
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
                  [annotationCopy setAppearanceOverride:v29];
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

+ (void)migrateAKStrokedAnnotationPropertiesTo:(id)to fromAnnotationDictionary:(CGPDFDictionary *)dictionary ofPDFPage:(CGPDFPage *)page
{
  toCopy = to;
  value = 0;
  if (CGPDFDictionaryGetDictionary(dictionary, "BS", &value))
  {
    v10 = 0;
    v11 = 0.0;
    if (CGPDFDictionaryGetNumber(value, "W", &v11))
    {
      [toCopy setStrokeWidth:v11];
    }

    if (CGPDFDictionaryGetName(value, "S", &v10))
    {
      v8 = *v10 == 68 && v10[1] == 0;
      [toCopy setDashed:v8];
    }
  }

  v11 = 0.0;
  if (CGPDFDictionaryGetArray(dictionary, "C", &v11))
  {
    v9 = [self _colorFromPDFArray:*&v11];
    [toCopy setStrokeColor:v9];
  }
}

+ (void)migrateAKFilledAnnotationPropertiesTo:(id)to fromAnnotationDictionary:(CGPDFDictionary *)dictionary ofPDFPage:(CGPDFPage *)page
{
  toCopy = to;
  value = 0;
  if (CGPDFDictionaryGetArray(dictionary, "IC", &value))
  {
    v8 = [self _colorFromPDFArray:value];
    [toCopy setFillColor:v8];
  }
}

+ (void)migrateAKRectangularShapeAnnotationPropertiesTo:(id)to fromAnnotationDictionary:(CGPDFDictionary *)dictionary ofPDFPage:(CGPDFPage *)page
{
  toCopy = to;
  if (CGPDFDictionaryGetRect())
  {
    [toCopy setRectangle:{0.0, 0.0, 0.0, 0.0}];
  }
}

+ (void)migrateAKTextAnnotationPropertiesTo:(id)to fromAnnotationDictionary:(CGPDFDictionary *)dictionary ofPDFPage:(CGPDFPage *)page
{
  toCopy = to;
  value = 0;
  if (CGPDFDictionaryGetName(dictionary, "Subtype", &value))
  {
    v9 = toCopy;
    if (!strcmp(value, "Widget"))
    {
      string = 0;
      dict = 0;
      if (!CGPDFDictionaryGetDictionary(dictionary, "Parent", &dict))
      {
        dict = 0;
      }

      if (CGPDFDictionaryGetString(dictionary, "V", &string) || dict && CGPDFDictionaryGetString(dict, "V", &string))
      {
        v10 = CGPDFStringCopyTextString(string);
      }

      else
      {
        v10 = 0;
      }

      if (CGPDFDictionaryGetString(dictionary, "DV", &string) || dict && CGPDFDictionaryGetString(dict, "DV", &string))
      {
        dictionary2 = CGPDFStringCopyTextString(string);
        if (dictionary2)
        {
          [v9 setCustomPlaceholderText:dictionary2];
        }
      }

      else
      {
        dictionary2 = 0;
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [self readDefaultAppearanceStringFromPDFDictionary:dictionary ofPage:page toDictionary:dictionary];
      [self readQuaddingFromPDFDictionary:dictionary toDictionary:dictionary];
      if ([v10 length])
      {
        v14 = [MEMORY[0x277CEA718] newTextStorageOriginalFontSavvyWithString:v10 attributes:dictionary];
        [v9 setAnnotationText:v14];
      }

      else if (![dictionary2 length])
      {
        [v9 setShouldUsePlaceholderText:0];
      }

      [v9 setTypingAttributes:dictionary];
    }

    else
    {
      v10 = [self getTextStringForKey:"Contents" fromAnnotationDictionary:dictionary];
      if (![v10 length])
      {
        [v9 setShouldUsePlaceholderText:0];
LABEL_28:

        goto LABEL_29;
      }

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      if (!strcmp(value, "FreeText"))
      {
        [self readDefaultAppearanceStringFromPDFDictionary:dictionary ofPage:page toDictionary:dictionary2];
        [self readQuaddingFromPDFDictionary:dictionary toDictionary:dictionary2];
      }

      v12 = [MEMORY[0x277CEA718] newTextStorageOriginalFontSavvyWithString:v10 attributes:dictionary2];
      [v9 setAnnotationText:v12];
    }

    goto LABEL_28;
  }

  NSLog(&cfstr_SFailedToFindS.isa, "+[MUPDFAnnotationAdaptorHelper migrateAKTextAnnotationPropertiesTo:fromAnnotationDictionary:ofPDFPage:]");
LABEL_29:
}

+ (id)getRGBColorForKey:(const char *)key fromAnnotationDictionary:(CGPDFDictionary *)dictionary
{
  value = 0;
  Array = CGPDFDictionaryGetArray(dictionary, key, &value);
  v6 = 0;
  if (Array)
  {
    v6 = [self _colorFromPDFArray:value];
  }

  return v6;
}

+ (id)getTextStringForKey:(const char *)key fromAnnotationDictionary:(CGPDFDictionary *)dictionary
{
  value = 0;
  String = CGPDFDictionaryGetString(dictionary, key, &value);
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

+ (id)getFullFieldNameFromAnnotationDictionary:(CGPDFDictionary *)dictionary
{
  dict = 0;
  value = 0;
  if (CGPDFDictionaryGetString(dictionary, "T", &value) && (v4 = CGPDFStringCopyTextString(value)) != 0)
  {
    v5 = v4;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v4);
    CFRelease(v5);
  }

  else
  {
    MutableCopy = 0;
  }

  if (!CGPDFDictionaryGetDictionary(dictionary, "Parent", &dict))
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

+ (void)readDefaultAppearanceStringFromPDFDictionary:(CGPDFDictionary *)dictionary ofPage:(CGPDFPage *)page toDictionary:(id)toDictionary
{
  toDictionaryCopy = toDictionary;
  value = 0;
  if (CGPDFDictionaryGetString(dictionary, "DA", &value))
  {
    v9 = [self _getFontFromAppearanceString:value ofPDFPage:page];
    if (v9)
    {
      [toDictionaryCopy setObject:v9 forKey:*MEMORY[0x277D740A8]];
    }

    v10 = [self _getColorFromAppearanceString:value];
    if (v10)
    {
      [toDictionaryCopy setObject:v10 forKey:*MEMORY[0x277D740C0]];
    }
  }
}

+ (void)readQuaddingFromPDFDictionary:(CGPDFDictionary *)dictionary toDictionary:(id)toDictionary
{
  v5 = *MEMORY[0x277D74118];
  toDictionaryCopy = toDictionary;
  defaultParagraphStyle = [toDictionaryCopy objectForKey:v5];
  if (!defaultParagraphStyle)
  {
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  v8 = [defaultParagraphStyle mutableCopy];
  value = 0;
  Integer = CGPDFDictionaryGetInteger(dictionary, "Q", &value);
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
  [toDictionaryCopy setObject:v8 forKey:v5];
}

+ (void)addBoundsOfAnnotation:(id)annotation forPage:(CGPDFPage *)page toDictionary:(id)dictionary
{
  v22[4] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [annotation drawingBounds];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  IsInfinite = CGRectIsInfinite(v23);
  if (page && IsInfinite)
  {
    BoxRect = CGPDFPageGetBoxRect(page, kCGPDFMediaBox);
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

  [dictionaryCopy setObject:v21 forKey:@"/Rect"];
}

+ (void)addModificationDateOfAnnotation:(id)annotation toDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CBEAA8];
  dictionaryCopy = dictionary;
  date = [v4 date];
  v7 = [MUPDFUtilities createPDFDateString:date];

  [dictionaryCopy setObject:v7 forKey:@"/M"];
}

+ (void)addFlagsOfAnnotation:(id)annotation toDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CCABB0];
  dictionaryCopy = dictionary;
  v6 = [v4 numberWithUnsignedInteger:4];
  [dictionaryCopy setValue:v6 forKey:@"/F"];
}

+ (void)addContentsStringOfAnnotation:(id)annotation toDictionary:(id)dictionary
{
  annotationCopy = annotation;
  dictionaryCopy = dictionary;
  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x277CEA718] actualOrPlaceholderTextOfAnnotation:annotationCopy];
    string = [v7 string];
  }

  else
  {
    string = &stru_286962590;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    childAnnotation = [annotationCopy childAnnotation];
    if (childAnnotation)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        contents = [childAnnotation contents];

        string = contents;
      }
    }
  }

  [self addString:string toDictionary:dictionaryCopy forKey:@"/Contents"];
}

+ (void)addTextOfAnnotation:(id)annotation toDictionary:(id)dictionary forKey:(id)key canUsePlaceholder:(BOOL)placeholder
{
  if (placeholder)
  {
    v10 = MEMORY[0x277CEA718];
    keyCopy = key;
    dictionaryCopy = dictionary;
    [v10 actualOrPlaceholderTextOfAnnotation:annotation];
  }

  else
  {
    keyCopy2 = key;
    dictionaryCopy2 = dictionary;
    [annotation annotationText];
  }
  v15 = ;
  string = [v15 string];

  [self addString:string toDictionary:dictionary forKey:key];
}

+ (void)addString:(id)string toDictionary:(id)dictionary forKey:(id)key
{
  stringCopy = string;
  dictionaryCopy = dictionary;
  keyCopy = key;
  if ([stringCopy length])
  {
    v9 = [stringCopy mutableCopy];
    [(__CFString *)v9 replaceOccurrencesOfString:@"/" withString:@"//" options:2 range:0, 1];
  }

  else
  {
    v9 = &stru_286962590;
  }

  [dictionaryCopy setValue:v9 forKey:keyCopy];
}

+ (void)addBorderStyleOfAnnotation:(id)annotation toDictionary:(id)dictionary
{
  v16[2] = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  dictionaryCopy = dictionary;
  if ([annotationCopy conformsToAKStrokedAnnotationProtocol])
  {
    v7 = annotationCopy;
    [v7 strokeWidth];
    v9 = v8;
    if (v8 != 1.0 || [v7 isDashed])
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [v7 strokeWidth];
      if (v11 != 1.0)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
        [dictionary setObject:v12 forKey:@"/W"];
      }

      if ([v7 isDashed])
      {
        [dictionary setValue:@"/D" forKey:@"/S"];
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9 + 7.0];
        v16[0] = v13;
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:v9 * 3.0 + 4.0];
        v16[1] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
        [dictionary setValue:v15 forKey:@"/D"];
      }

      [dictionaryCopy setValue:dictionary forKey:@"/BS"];
    }
  }
}

+ (void)addRGBColor:(id)color forKey:(id)key toDictionary:(id)dictionary
{
  v18[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dictionaryCopy = dictionary;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 1.0;
  v15 = 0.0;
  colorUsingSRGBColorSpace = [color colorUsingSRGBColorSpace];
  [colorUsingSRGBColorSpace getRed:&v17 green:&v16 blue:&v15 alpha:&v14];
  if (v14 >= 0.5)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    v18[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v18[1] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    v18[2] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    [dictionaryCopy setValue:v13 forKey:keyCopy];
  }
}

+ (void)addAppearanceStreamOfAnnotation:(id)annotation forPage:(CGPDFPage *)page toDictionary:(id)dictionary
{
  v21[1] = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  dictionaryCopy = dictionary;
  v9 = _MUWriteAppearanceStreams_cachedValue;
  if (_MUWriteAppearanceStreams_cachedValue == -2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [standardUserDefaults objectForKey:@"MUWriteAppearanceStreams"];

    if (v11)
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      _MUWriteAppearanceStreams_cachedValue = [standardUserDefaults2 BOOLForKey:@"MUWriteAppearanceStreams"];

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
        [annotationCopy drawingBounds];
        IsInfinite = CGRectIsInfinite(v22);
        if (page && IsInfinite)
        {
          CGPDFPageGetBoxRect(page, kCGPDFMediaBox);
        }

        CGDisplayListSetBoundingBox();
        [MEMORY[0x277CEA698] renderAnnotation:annotationCopy inContext:v17];
        v20 = @"/N";
        v21[0] = v15;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        [dictionaryCopy setValue:v19 forKey:@"/AP"];

        CGContextRelease(v17);
      }

      CGDisplayListRelease();
    }
  }
}

+ (void)addDefaultAppearanceStreamOfAnnotation:(id)annotation toDictionary:(id)dictionary
{
  v33 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  dictionaryCopy = dictionary;
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

  v7 = [MEMORY[0x277CEA718] actualOrPlaceholderTextOfAnnotation:annotationCopy];
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
    colorUsingSRGBColorSpace = [v8 colorUsingSRGBColorSpace];

    [colorUsingSRGBColorSpace getRed:&v31 green:&v31 + 8 blue:v32 alpha:&v32[1]];
    v8 = colorUsingSRGBColorSpace;
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
  [dictionaryCopy setValue:v11 forKey:@"/DA"];
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

+ (void)addQuaddingOfAnnotation:(id)annotation toDictionary:(id)dictionary
{
  annotationCopy = annotation;
  dictionaryCopy = dictionary;
  if ([annotationCopy conformsToAKTextAnnotationProtocol])
  {
    v6 = [MEMORY[0x277CEA718] actualOrPlaceholderTextOfAnnotation:annotationCopy];
    if ([v6 length])
    {
      v7 = [v6 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0];
      alignment = [v7 alignment];
      if (alignment)
      {
        if (alignment == 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = 2 * (alignment == 2);
        }

        v10 = [MEMORY[0x277CCABB0] numberWithInt:v9];
        [dictionaryCopy setValue:v10 forKey:@"/Q"];
      }
    }
  }
}

+ (id)newAKAnnotationFromCGPDFAnnotation:(CGPDFAnnotation *)annotation
{
  v5 = _MUReadEmbeddedAKAnnotation_cachedValue;
  if (_MUReadEmbeddedAKAnnotation_cachedValue == -2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [standardUserDefaults objectForKey:@"MUReadEmbeddedAKAnnotation"];

    if (v7)
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      _MUReadEmbeddedAKAnnotation_cachedValue = [standardUserDefaults2 BOOLForKey:@"MUReadEmbeddedAKAnnotation"];

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
        if (CGPDFDictionary && ([self _shouldUseAKAnnotation:CGPDFDictionary toRepresentCGPDFAnnotation:annotation] & 1) == 0)
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

+ (void)addAKAnnotation:(id)annotation toAnnotationDictionary:(__CFDictionary *)dictionary
{
  annotationCopy = annotation;
  v5 = _MUWriteEmbeddedAKAnnotation_cachedValue;
  if (_MUWriteEmbeddedAKAnnotation_cachedValue == -2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [standardUserDefaults objectForKey:@"MUWriteEmbeddedAKAnnotation"];

    if (v7)
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      _MUWriteEmbeddedAKAnnotation_cachedValue = [standardUserDefaults2 BOOLForKey:@"MUWriteEmbeddedAKAnnotation"];

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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dataRepresentation = [annotationCopy dataRepresentation];
    v13 = dataRepresentation;
    if (dataRepresentation)
    {
      v14 = [dataRepresentation base64EncodedStringWithOptions:0];
      [dictionary setObject:v14 forKey:@"/AAPL:AKAnnotationObject"];
      Copy = CFDictionaryCreateCopy(0, dictionary);
      if (Copy)
      {
        v16 = Copy;
        [dictionary setObject:Copy forKey:@"/AAPL:AKPDFAnnotationDictionary"];
      }

      CFDictionarySetValue(dictionary, @"/AAPL:AKExtras", dictionary);
    }

    objc_autoreleasePoolPop(v10);
  }
}

+ (id)_colorFromPDFArray:(CGPDFArray *)array
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = xmmword_258229BF8;
  *v13 = unk_258229C08;
  Count = CGPDFArrayGetCount(array);
  switch(Count)
  {
    case 4uLL:
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF438]);
      CGPDFArrayGetNumber(array, 0, &v12);
      CGPDFArrayGetNumber(array, 1uLL, &v12 + 1);
      CGPDFArrayGetNumber(array, 2uLL, v13);
      v6 = &v13[1];
      arrayCopy3 = array;
      v8 = 3;
      break;
    case 3uLL:
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      CGPDFArrayGetNumber(array, 0, &v12);
      CGPDFArrayGetNumber(array, 1uLL, &v12 + 1);
      v6 = v13;
      arrayCopy3 = array;
      v8 = 2;
      break;
    case 1uLL:
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF448]);
      v6 = &v12;
      arrayCopy3 = array;
      v8 = 0;
      break;
    default:
      goto LABEL_9;
  }

  CGPDFArrayGetNumber(arrayCopy3, v8, v6);
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

+ (id)_getFontFromAppearanceString:(CGPDFString *)string ofPDFPage:(CGPDFPage *)page
{
  v6 = CGPDFStringCopyTextString(string);
  if (!v6)
  {
    v10 = 0;
    v7 = 0;
    v22 = MEMORY[0x277D74300];
LABEL_35:
    v9 = 12.0;
    goto LABEL_36;
  }

  v7 = [self _tokenizeAppearanceString:v6];
  [self _pointSizeFromAppearanceTokens:v7];
  v9 = v8;
  v10 = [self _fontNameFromAppearanceTokens:v7];
  if (!v10)
  {
    goto LABEL_34;
  }

  value = 0;
  v29 = 0;
  dict = 0;
  Document = CGPDFPageGetDocument(page);
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

+ (id)_getColorFromAppearanceString:(CGPDFString *)string
{
  v4 = CGPDFStringCopyTextString(string);
  if (v4)
  {
    v5 = [self _tokenizeAppearanceString:v4];
    v6 = [self _colorFromAppearanceTokens:v5];
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return v6;
}

+ (id)_tokenizeAppearanceString:(id)string
{
  stringCopy = string;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v5 = [stringCopy length];
  v6 = 0;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if ([stringCopy characterAtIndex:i] == 32)
      {
        if (i == v6)
        {
          ++v6;
        }

        else
        {
          v8 = [stringCopy substringWithRange:{v6, i - v6}];
          [v4 addObject:v8];

          v6 = i + 1;
        }
      }
    }
  }

  v9 = [stringCopy substringWithRange:{v6, v5 - v6}];
  [v4 addObject:v9];

  return v4;
}

+ (double)_pointSizeFromAppearanceTokens:(id)tokens
{
  tokensCopy = tokens;
  v4 = [tokensCopy count];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    while (1)
    {
      if (v7)
      {
        v8 = [tokensCopy objectAtIndex:v7];
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

    v10 = [tokensCopy objectAtIndex:v7 - 1];
    [v10 floatValue];
    v5 = v11;
  }

LABEL_8:

  return v5;
}

+ (id)_fontNameFromAppearanceTokens:(id)tokens
{
  tokensCopy = tokens;
  v4 = [tokensCopy count];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if (v5 >= 2)
      {
        v6 = [tokensCopy objectAtIndex:v5];
        v7 = [v6 isEqualToString:@"Tf"];

        if (v7)
        {
          v8 = [tokensCopy objectAtIndex:v5 - 2];
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

    v10 = [tokensCopy objectAtIndex:v5 - 2];
    v4 = [v10 substringWithRange:{1, v9 - 1}];
  }

LABEL_9:

  return v4;
}

+ (id)_colorFromAppearanceTokens:(id)tokens
{
  tokensCopy = tokens;
  v4 = [tokensCopy count];
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

  v7 = [tokensCopy objectAtIndex:v6];
  v8 = [v7 isEqualToString:@"rg"];

  if (v8)
  {
    v13 = MEMORY[0x277D75348];
    v14 = [tokensCopy objectAtIndex:v6 - 3];
    [v14 floatValue];
    v16 = v15;
    v17 = [tokensCopy objectAtIndex:v6 - 2];
    [v17 floatValue];
    v19 = v18;
    v20 = [tokensCopy objectAtIndex:v6 - 1];
    [v20 floatValue];
    v22 = [v13 akColorWithSRGBRed:v16 green:v19 blue:v21 alpha:1.0];

    goto LABEL_11;
  }

LABEL_7:
  v9 = [tokensCopy objectAtIndex:v6];
  v10 = [v9 isEqualToString:@"g"];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = MEMORY[0x277D75348];
  v14 = [tokensCopy objectAtIndex:v6 - 1];
  [v14 floatValue];
  v22 = [v11 akColorWithWhite:v12 alpha:1.0];
LABEL_11:

LABEL_12:

  return v22;
}

+ (BOOL)_shouldUseAKAnnotation:(id)annotation toRepresentCGPDFAnnotation:(CGPDFAnnotation *)fAnnotation
{
  annotationCopy = annotation;
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
          [annotationCopy drawingBounds];
          v25 = v13;
          [annotationCopy drawingBounds];
          v24 = v14;
          [annotationCopy drawingBounds];
          v23 = v15;
          [annotationCopy drawingBounds];
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
              if ((objc_opt_respondsToSelector() & 1) == 0 || ([annotationCopy annotationText], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "string"), v8 = objc_claimAutoreleasedReturnValue(), v21, !v8))
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