@interface MUCGPDFPopupAnnotationAdaptor
+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page;
+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page;
@end

@implementation MUCGPDFPopupAnnotationAdaptor

+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)annotation ofPage:(CGPDFPage *)page
{
  v4 = [MUPDFAnnotationAdaptorHelper newAKAnnotationFromCGPDFAnnotation:?];
  if (!v4)
  {
    CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
    v4 = objc_opt_new();
    v6 = [MUPDFAnnotationAdaptorHelper getTextStringForKey:"Contents" fromAnnotationDictionary:CGPDFDictionary];
    if (v6)
    {
      [v4 setContents:v6];
    }

    v7 = [MUPDFAnnotationAdaptorHelper getRGBColorForKey:"C" fromAnnotationDictionary:CGPDFDictionary];
    if (v7)
    {
      [v4 setFillColor:v7];
    }

    [v4 setRectangle:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  return v4;
}

+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)annotation forPage:(CGPDFPage *)page
{
  annotationCopy = annotation;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:@"/Annot" forKey:@"/Type"];
  [dictionary setValue:@"/Popup" forKey:@"/Subtype"];
  [MUPDFAnnotationAdaptorHelper addBoundsOfAnnotation:annotationCopy forPage:page toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addModificationDateOfAnnotation:annotationCopy toDictionary:dictionary];
  [MUPDFAnnotationAdaptorHelper addFlagsOfAnnotation:annotationCopy toDictionary:dictionary];
  contents = [annotationCopy contents];
  v8 = [contents length];

  if (v8)
  {
    contents2 = [annotationCopy contents];
    v10 = [contents2 mutableCopy];

    [(__CFString *)v10 replaceOccurrencesOfString:@"/" withString:@"//" options:2 range:0, 1];
  }

  else
  {
    v10 = &stru_286962590;
  }

  [dictionary setObject:v10 forKey:@"/Contents"];
  if (objc_opt_respondsToSelector())
  {
    fillColor = [annotationCopy fillColor];
    [MUPDFAnnotationAdaptorHelper addRGBColor:fillColor forKey:@"/C" toDictionary:dictionary];
  }

  [MUPDFAnnotationAdaptorHelper addTextLabelOfAnnotation:annotationCopy toDictionary:dictionary];
  [dictionary setValue:MEMORY[0x277CBEC38] forKey:@"/Open"];
  [MUPDFAnnotationAdaptorHelper addAKAnnotation:annotationCopy toAnnotationDictionary:dictionary];

  return dictionary;
}

@end