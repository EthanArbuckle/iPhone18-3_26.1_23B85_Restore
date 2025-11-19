@interface MUCGPDFPopupAnnotationAdaptor
+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)a3 ofPage:(CGPDFPage *)a4;
+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)a3 forPage:(CGPDFPage *)a4;
@end

@implementation MUCGPDFPopupAnnotationAdaptor

+ (id)_concreteAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)a3 ofPage:(CGPDFPage *)a4
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

+ (id)_concreteDictionaryRepresentationOfAKAnnotation:(id)a3 forPage:(CGPDFPage *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setValue:@"/Annot" forKey:@"/Type"];
  [v6 setValue:@"/Popup" forKey:@"/Subtype"];
  [MUPDFAnnotationAdaptorHelper addBoundsOfAnnotation:v5 forPage:a4 toDictionary:v6];
  [MUPDFAnnotationAdaptorHelper addModificationDateOfAnnotation:v5 toDictionary:v6];
  [MUPDFAnnotationAdaptorHelper addFlagsOfAnnotation:v5 toDictionary:v6];
  v7 = [v5 contents];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v5 contents];
    v10 = [v9 mutableCopy];

    [(__CFString *)v10 replaceOccurrencesOfString:@"/" withString:@"//" options:2 range:0, 1];
  }

  else
  {
    v10 = &stru_286962590;
  }

  [v6 setObject:v10 forKey:@"/Contents"];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v5 fillColor];
    [MUPDFAnnotationAdaptorHelper addRGBColor:v11 forKey:@"/C" toDictionary:v6];
  }

  [MUPDFAnnotationAdaptorHelper addTextLabelOfAnnotation:v5 toDictionary:v6];
  [v6 setValue:MEMORY[0x277CBEC38] forKey:@"/Open"];
  [MUPDFAnnotationAdaptorHelper addAKAnnotation:v5 toAnnotationDictionary:v6];

  return v6;
}

@end