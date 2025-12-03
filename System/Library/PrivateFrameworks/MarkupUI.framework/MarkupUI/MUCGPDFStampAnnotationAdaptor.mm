@interface MUCGPDFStampAnnotationAdaptor
+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page;
+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page;
@end

@implementation MUCGPDFStampAnnotationAdaptor

+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page
{
  v5 = [MUPDFAnnotationAdaptorHelper newAKAnnotationFromCGPDFAnnotation:?];
  if (!v5)
  {
    CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
    v5 = objc_opt_new();
    [MUPDFAnnotationAdaptorHelper migrateAKRectangularShapeAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:page];
    [v5 setShouldUsePlaceholderText:0];
    [v5 setEditsDisableAppearanceOverride:0];
  }

  return v5;
}

+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page
{
  v5 = MEMORY[0x277CBEB38];
  annotationCopy = annotation;
  dictionary = [v5 dictionary];
  [dictionary setObject:@"/Annot" forKey:@"/Type"];
  [dictionary setObject:@"/Stamp" forKey:@"/Subtype"];
  [MUPDFAnnotationAdaptorHelper addBoundsOfAnnotation:annotationCopy forPage:page toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addModificationDateOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addFlagsOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addContentsStringOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addTextLabelOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addAppearanceStreamOfAnnotation:annotationCopy forPage:page toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addAKAnnotation:annotationCopy toAnnotationDictionary:dictionary];

  return dictionary;
}

@end