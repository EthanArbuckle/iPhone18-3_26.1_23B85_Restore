@interface MUCGPDFLineAnnotationAdaptor
+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page;
+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page;
@end

@implementation MUCGPDFLineAnnotationAdaptor

+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page
{
  v5 = [MUPDFAnnotationAdaptorHelper newAKAnnotationFromCGPDFAnnotation:?];
  if (!v5)
  {
    CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
    v5 = objc_opt_new();
    [MUPDFAnnotationAdaptorHelper migrateAKStrokedAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
    [MUPDFAnnotationAdaptorHelper migrateAKTextAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
    [v5 strokeWidth];
    if (v7 == 0.0)
    {
      [v5 setStrokeWidth:1.0];
    }

    value = 0;
    if (CGPDFDictionaryGetArray(CGPDFDictionary, "L", &value) && CGPDFArrayGetCount(value) == 4)
    {
      v8 = *MEMORY[0x277CBF348];
      v9 = *(MEMORY[0x277CBF348] + 8);
      *&__s1 = 0.0;
      if (CGPDFArrayGetNumber(value, 0, &__s1))
      {
        v10 = __s1;
      }

      else
      {
        *&v10 = v8;
      }

      if (CGPDFArrayGetNumber(value, 1uLL, &__s1))
      {
        v11 = __s1;
      }

      else
      {
        *&v11 = v9;
      }

      if (CGPDFArrayGetNumber(value, 2uLL, &__s1))
      {
        v8 = *&__s1;
      }

      if (CGPDFArrayGetNumber(value, 3uLL, &__s1))
      {
        v9 = *&__s1;
      }

      [v5 setStartPoint:{*&v10, *&v11}];
      [v5 setEndPoint:{v8, v9}];
      [v5 setMidPoint:{(*&v10 + v8) * 0.5, (*&v11 + v9) * 0.5}];
      if (CGPDFDictionaryGetArray(CGPDFDictionary, "LE", &value) && CGPDFArrayGetCount(value) == 2)
      {
        *&__s1 = 0.0;
        v13 = 0;
        if (CGPDFArrayGetName(value, 0, &__s1))
        {
          v12 = __s1;
          if (!strcmp(__s1, "OpenArrow") || !strcmp(v12, "ClosedArrow"))
          {
            v13 = 1;
          }
        }

        if (CGPDFArrayGetName(value, 1uLL, &__s1))
        {
          v15 = __s1;
          if (!strcmp(__s1, "OpenArrow") || !strcmp(v15, "ClosedArrow"))
          {
            v13 |= 2uLL;
          }
        }
      }

      else
      {
        v13 = 0;
      }

      [v5 setArrowHeadStyle:v13];
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page
{
  v34[4] = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = MEMORY[0x277CBEB38];
    v9 = annotationCopy;
    dictionary = [v8 dictionary];
    [dictionary setValue:@"/Annot" forKey:@"/Type"];
    [dictionary setValue:@"/Line" forKey:@"/Subtype"];
    [MUPDFAnnotationAdaptorHelper addBoundsOfAnnotation:v9 forPage:page toDictionary:dictionary];
    [MUPDFAnnotationAdaptorHelper addModificationDateOfAnnotation:v9 toDictionary:dictionary];
    [MUPDFAnnotationAdaptorHelper addFlagsOfAnnotation:v9 toDictionary:dictionary];
    [MUPDFAnnotationAdaptorHelper addContentsStringOfAnnotation:v9 toDictionary:dictionary];
    [v9 startPoint];
    v12 = v11;
    v14 = v13;
    [v9 endPoint];
    v16 = v15;
    v18 = v17;
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    v34[0] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v34[1] = v20;
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v34[2] = v21;
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    v34[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];

    [dictionary setValue:v23 forKey:@"/L"];
    [MUPDFAnnotationAdaptorHelper addBorderStyleOfAnnotation:v9 toDictionary:dictionary];
    strokeColor = [v9 strokeColor];
    [MUPDFAnnotationAdaptorHelper addRGBColor:strokeColor forKey:@"/C" toDictionary:dictionary];

    [MUPDFAnnotationAdaptorHelper addTextLabelOfAnnotation:v9 toDictionary:dictionary];
    strokeColor2 = [v9 strokeColor];
    [MUPDFAnnotationAdaptorHelper addRGBColor:strokeColor2 forKey:@"/IC" toDictionary:dictionary];

    if ([v9 arrowHeadStyle])
    {
      v26 = @"/ClosedArrow";
    }

    else
    {
      v26 = @"/None";
    }

    v27 = v26;
    if (([v9 arrowHeadStyle] & 2) != 0)
    {
      v28 = @"/ClosedArrow";
    }

    else
    {
      v28 = @"/None";
    }

    v33[0] = v27;
    v33[1] = v28;
    v29 = MEMORY[0x277CBEA60];
    v30 = v28;
    v31 = [v29 arrayWithObjects:v33 count:2];
    [dictionary setValue:v31 forKey:@"/LE"];
    [MUPDFAnnotationAdaptorHelper addAppearanceStreamOfAnnotation:v9 forPage:page toDictionary:dictionary];
    [MUPDFAnnotationAdaptorHelper addAKAnnotation:v9 toAnnotationDictionary:dictionary];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

@end