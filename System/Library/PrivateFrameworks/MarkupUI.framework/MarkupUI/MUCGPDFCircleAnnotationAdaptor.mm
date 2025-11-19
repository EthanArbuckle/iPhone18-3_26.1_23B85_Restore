@interface MUCGPDFCircleAnnotationAdaptor
+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)a3 ofPage:(CGPDFPage *)a4;
+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)a3 forPage:(CGPDFPage *)a4;
@end

@implementation MUCGPDFCircleAnnotationAdaptor

+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)a3 ofPage:(CGPDFPage *)a4
{
  v5 = [MUPDFAnnotationAdaptorHelper newAKAnnotationFromCGPDFAnnotation:?];
  if (!v5)
  {
    CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
    v5 = objc_opt_new();
    [MUPDFAnnotationAdaptorHelper migrateAKStrokedAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:a4];
    [MUPDFAnnotationAdaptorHelper migrateAKFilledAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:a4];
    [MUPDFAnnotationAdaptorHelper migrateAKRectangularShapeAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:a4];
    [MUPDFAnnotationAdaptorHelper migrateAKTextAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:a4];
  }

  return v5;
}

+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)a3 forPage:(CGPDFPage *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:@"/Annot" forKey:@"/Type"];
  [v6 setObject:@"/Circle" forKey:@"/Subtype"];
  [MUPDFAnnotationAdaptorHelper addBoundsOfAnnotation:v5 forPage:a4 toDictionary:v6];
  [MUPDFAnnotationAdaptorHelper addModificationDateOfAnnotation:v5 toDictionary:v6];
  [MUPDFAnnotationAdaptorHelper addFlagsOfAnnotation:v5 toDictionary:v6];
  [MUPDFAnnotationAdaptorHelper addContentsStringOfAnnotation:v5 toDictionary:v6];
  [MUPDFAnnotationAdaptorHelper addBorderStyleOfAnnotation:v5 toDictionary:v6];
  if ([v5 conformsToAKStrokedAnnotationProtocol])
  {
    v7 = [v5 strokeColor];
    [MUPDFAnnotationAdaptorHelper addRGBColor:v7 forKey:@"/C" toDictionary:v6];
  }

  [MUPDFAnnotationAdaptorHelper addTextLabelOfAnnotation:v5 toDictionary:v6];
  if ([v5 conformsToAKFilledAnnotationProtocol])
  {
    v8 = [v5 fillColor];
    if (v8)
    {
      [MUPDFAnnotationAdaptorHelper addRGBColor:v8 forKey:@"/IC" toDictionary:v6];
    }
  }

  [MUPDFAnnotationAdaptorHelper addAppearanceStreamOfAnnotation:v5 forPage:a4 toDictionary:v6];
  [MUPDFAnnotationAdaptorHelper addAKAnnotation:v5 toAnnotationDictionary:v6];

  return v6;
}

@end