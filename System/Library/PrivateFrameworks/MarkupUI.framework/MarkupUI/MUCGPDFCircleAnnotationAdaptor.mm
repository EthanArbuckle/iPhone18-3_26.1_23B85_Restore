@interface MUCGPDFCircleAnnotationAdaptor
+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page;
+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page;
@end

@implementation MUCGPDFCircleAnnotationAdaptor

+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page
{
  v5 = [MUPDFAnnotationAdaptorHelper newAKAnnotationFromCGPDFAnnotation:?];
  if (!v5)
  {
    CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
    v5 = objc_opt_new();
    [MUPDFAnnotationAdaptorHelper migrateAKStrokedAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
    [MUPDFAnnotationAdaptorHelper migrateAKFilledAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
    [MUPDFAnnotationAdaptorHelper migrateAKRectangularShapeAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
    [MUPDFAnnotationAdaptorHelper migrateAKTextAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
  }

  return v5;
}

+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page
{
  annotationCopy = annotation;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"/Annot" forKey:@"/Type"];
  [dictionary setObject:@"/Circle" forKey:@"/Subtype"];
  [MUPDFAnnotationAdaptorHelper addBoundsOfAnnotation:annotationCopy forPage:page toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addModificationDateOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addFlagsOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addContentsStringOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addBorderStyleOfAnnotation:annotationCopy toDictionary:dictionary];
  if ([annotationCopy conformsToAKStrokedAnnotationProtocol])
  {
    strokeColor = [annotationCopy strokeColor];
    [MUPDFAnnotationAdaptorHelper addRGBColor:strokeColor forKey:@"/C" toDictionary:dictionary];
  }

  [MUPDFAnnotationAdaptorHelper addTextLabelOfAnnotation:annotationCopy toDictionary:dictionary];
  if ([annotationCopy conformsToAKFilledAnnotationProtocol])
  {
    fillColor = [annotationCopy fillColor];
    if (fillColor)
    {
      [MUPDFAnnotationAdaptorHelper addRGBColor:fillColor forKey:@"/IC" toDictionary:dictionary];
    }
  }

  [MUPDFAnnotationAdaptorHelper addAppearanceStreamOfAnnotation:annotationCopy forPage:page toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addAKAnnotation:annotationCopy toAnnotationDictionary:dictionary];

  return dictionary;
}

@end