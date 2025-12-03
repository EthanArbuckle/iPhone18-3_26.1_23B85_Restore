@interface MUCGPDFFreeTextAnnotationAdaptor
+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page;
+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page;
@end

@implementation MUCGPDFFreeTextAnnotationAdaptor

+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page
{
  v5 = [MUPDFAnnotationAdaptorHelper newAKAnnotationFromCGPDFAnnotation:?];
  if (!v5)
  {
    CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
    v5 = objc_opt_new();
    [v5 setTextIsFixedWidth:1];
    [v5 setTextIsFixedHeight:0];
    [MUPDFAnnotationAdaptorHelper migrateAKStrokedAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
    [MUPDFAnnotationAdaptorHelper migrateAKFilledAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
    [MUPDFAnnotationAdaptorHelper migrateAKRectangularShapeAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
    [MUPDFAnnotationAdaptorHelper migrateAKTextAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
    value = 0;
    if (CGPDFDictionaryGetDictionary(CGPDFDictionary, "AAPL:AnnotExtras", &value))
    {
      [v5 setStrokeWidth:0.0];
    }

    [v5 setOriginalExifOrientation:{+[MUPDFUtilities exifOrientationOfPage:](MUPDFUtilities, "exifOrientationOfPage:", page)}];
    [v5 setOriginalModelBaseScaleFactor:1.0];
    [MEMORY[0x277CEA698] adjustAnnotationBoundsToFitText:v5];
    [v5 setOriginalExifOrientation:0];
    [v5 setOriginalModelBaseScaleFactor:0.0];
  }

  return v5;
}

+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page
{
  v5 = MEMORY[0x277CBEB38];
  annotationCopy = annotation;
  dictionary = [v5 dictionary];
  [dictionary setValue:@"/Annot" forKey:@"/Type"];
  [dictionary setValue:@"/FreeText" forKey:@"/Subtype"];
  [MUPDFAnnotationAdaptorHelper addBoundsOfAnnotation:annotationCopy forPage:page toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addModificationDateOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addFlagsOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addContentsStringOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addDefaultAppearanceStreamOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addBorderStyleOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addQuaddingOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addTextLabelOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addAppearanceStreamOfAnnotation:annotationCopy forPage:page toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addAKAnnotation:annotationCopy toAnnotationDictionary:dictionary];

  return dictionary;
}

@end