@interface MUCGPDFMarkupAnnotationAdaptor
+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page;
+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page;
@end

@implementation MUCGPDFMarkupAnnotationAdaptor

+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page
{
  v4 = [MUPDFAnnotationAdaptorHelper newAKAnnotationFromCGPDFAnnotation:?];
  if (!v4)
  {
    CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
    v4 = objc_opt_new();
    value = 0;
    if (!CGPDFDictionaryGetName(CGPDFDictionary, "Subtype", &value))
    {
LABEL_15:

      v4 = 0;
      goto LABEL_16;
    }

    v6 = value;
    if (!strcmp(value, "Highlight"))
    {
      v7 = 1;
    }

    else if (!strcmp(v6, "Underline"))
    {
      v7 = 2;
    }

    else if (!strcmp(v6, "StrikeOut"))
    {
      v7 = 3;
    }

    else
    {
      NSLog(&cfstr_SUnexpectedVal.isa, "+[MUCGPDFMarkupAnnotationAdaptor _concreteAKAnnotationWithCGPDFAnnotation:ofPage:]", v6);
      v7 = 0;
    }

    [v4 setStyle:v7];
    v8 = [MUPDFAnnotationAdaptorHelper getRGBColorForKey:"C" fromAnnotationDictionary:CGPDFDictionary];
    if (v8)
    {
      [v4 setColor:v8];
    }

    array = 0;
    if (!CGPDFDictionaryGetArray(CGPDFDictionary, "QuadPoints", &array) || (Count = CGPDFArrayGetCount(array), (Count & 7) != 0))
    {

      goto LABEL_15;
    }

    v11 = Count;
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count >> 3];
    if (v11)
    {
      for (i = 0; i < v11; i += 8)
      {
        v23 = 0.0;
        CGPDFArrayGetNumber(array, i, &v23);
        v14 = v23;
        CGPDFArrayGetNumber(array, i + 1, &v23);
        v15 = v23;
        CGPDFArrayGetNumber(array, i + 2, &v23);
        v16 = v23;
        CGPDFArrayGetNumber(array, i + 3, &v23);
        v17 = v23;
        CGPDFArrayGetNumber(array, i + 4, &v23);
        v18 = v23;
        CGPDFArrayGetNumber(array, i + 5, &v23);
        v19 = v23;
        CGPDFArrayGetNumber(array, i + 6, &v23);
        v20 = v23;
        CGPDFArrayGetNumber(array, i + 7, &v23);
        *v22 = v18;
        *&v22[1] = v19;
        *&v22[2] = v14;
        *&v22[3] = v15;
        *&v22[4] = v16;
        *&v22[5] = v17;
        *&v22[6] = v20;
        *&v22[7] = v23;
        v21 = [MEMORY[0x277CCAE60] valueWithQuadrilateral:v22];
        [v12 addObject:v21];
      }
    }

    [v4 setQuadPoints:v12];
  }

LABEL_16:

  return v4;
}

+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page
{
  v31 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"/Annot" forKey:@"/Type"];
  v7 = [annotationCopy style] - 1;
  if (v7 <= 2)
  {
    [dictionary setObject:off_27986EA90[v7] forKey:@"/Subtype"];
  }

  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  quadPoints = [annotationCopy quadPoints];
  v10 = [quadPoints countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(quadPoints);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if (v14)
        {
          [v14 quadrilateralValue];
        }

        v15 = [MEMORY[0x277CCABB0] numberWithDouble:{0.0, 0}];
        [array addObject:v15];

        v16 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        [array addObject:v16];

        v17 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        [array addObject:v17];

        v18 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        [array addObject:v18];

        v19 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
        [array addObject:v19];

        v20 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        [array addObject:v20];

        v21 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        [array addObject:v21];

        v22 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        [array addObject:v22];
      }

      v11 = [quadPoints countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  [dictionary setObject:array forKey:@"/QuadPoints"];
  [MUPDFAnnotationAdaptorHelper addBoundsOfAnnotation:annotationCopy forPage:page toDictionary:dictionary];
  color = [annotationCopy color];
  [MUPDFAnnotationAdaptorHelper addRGBColor:color forKey:@"/C" toDictionary:dictionary];

  [MUPDFAnnotationAdaptorHelper addModificationDateOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addFlagsOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addContentsStringOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addTextLabelOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addAppearanceStreamOfAnnotation:annotationCopy forPage:page toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addAKAnnotation:annotationCopy toAnnotationDictionary:dictionary];

  return dictionary;
}

@end