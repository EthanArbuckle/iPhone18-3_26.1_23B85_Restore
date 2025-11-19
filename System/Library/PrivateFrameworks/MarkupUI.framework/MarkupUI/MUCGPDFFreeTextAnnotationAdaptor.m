@interface MUCGPDFFreeTextAnnotationAdaptor
+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)a3 ofPage:(CGPDFPage *)a4;
+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)a3 forPage:(CGPDFPage *)a4;
@end

@implementation MUCGPDFFreeTextAnnotationAdaptor

+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)a3 ofPage:(CGPDFPage *)a4
{
  v5 = [MUPDFAnnotationAdaptorHelper newAKAnnotationFromCGPDFAnnotation:?];
  if (!v5)
  {
    CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
    v5 = objc_opt_new();
    [v5 setTextIsFixedWidth:1];
    [v5 setTextIsFixedHeight:0];
    [MUPDFAnnotationAdaptorHelper migrateAKStrokedAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:a4];
    [MUPDFAnnotationAdaptorHelper migrateAKFilledAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:a4];
    [MUPDFAnnotationAdaptorHelper migrateAKRectangularShapeAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:a4];
    [MUPDFAnnotationAdaptorHelper migrateAKTextAnnotationPropertiesTo:v5 fromAnnotationDictionary:CGPDFDictionary ofPDFPage:a4];
    value = 0;
    if (CGPDFDictionaryGetDictionary(CGPDFDictionary, "AAPL:AnnotExtras", &value))
    {
      [v5 setStrokeWidth:0.0];
    }

    [v5 setOriginalExifOrientation:{+[MUPDFUtilities exifOrientationOfPage:](MUPDFUtilities, "exifOrientationOfPage:", a4)}];
    [v5 setOriginalModelBaseScaleFactor:1.0];
    [MEMORY[0x277CEA698] adjustAnnotationBoundsToFitText:v5];
    [v5 setOriginalExifOrientation:0];
    [v5 setOriginalModelBaseScaleFactor:0.0];
  }

  return v5;
}

+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)a3 forPage:(CGPDFPage *)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = [v5 dictionary];
  [v7 setValue:@"/Annot" forKey:@"/Type"];
  [v7 setValue:@"/FreeText" forKey:@"/Subtype"];
  [MUPDFAnnotationAdaptorHelper addBoundsOfAnnotation:v6 forPage:a4 toDictionary:v7];
  [MUPDFAnnotationAdaptorHelper addModificationDateOfAnnotation:v6 toDictionary:v7];
  [MUPDFAnnotationAdaptorHelper addFlagsOfAnnotation:v6 toDictionary:v7];
  [MUPDFAnnotationAdaptorHelper addContentsStringOfAnnotation:v6 toDictionary:v7];
  [MUPDFAnnotationAdaptorHelper addDefaultAppearanceStreamOfAnnotation:v6 toDictionary:v7];
  [MUPDFAnnotationAdaptorHelper addBorderStyleOfAnnotation:v6 toDictionary:v7];
  [MUPDFAnnotationAdaptorHelper addQuaddingOfAnnotation:v6 toDictionary:v7];
  [MUPDFAnnotationAdaptorHelper addTextLabelOfAnnotation:v6 toDictionary:v7];
  [MUPDFAnnotationAdaptorHelper addAppearanceStreamOfAnnotation:v6 forPage:a4 toDictionary:v7];
  [MUPDFAnnotationAdaptorHelper addAKAnnotation:v6 toAnnotationDictionary:v7];

  return v7;
}

@end