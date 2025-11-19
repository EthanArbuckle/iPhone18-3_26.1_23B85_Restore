@interface MUCGPDFAnnotationAdaptor
+ (id)newAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)a3 ofPage:(CGPDFPage *)a4;
+ (id)newPlaceholderAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)a3 ofPage:(CGPDFPage *)a4;
+ (id)pdfDictionaryRepresentationOfAKAnnotation:(id)a3 forPage:(CGPDFPage *)a4;
+ (id)supportedAnnotationTypes;
@end

@implementation MUCGPDFAnnotationAdaptor

+ (id)supportedAnnotationTypes
{
  if (supportedAnnotationTypes_onceToken != -1)
  {
    +[MUCGPDFAnnotationAdaptor supportedAnnotationTypes];
  }

  v3 = supportedAnnotationTypes_sSupportedTypes;

  return v3;
}

uint64_t __52__MUCGPDFAnnotationAdaptor_supportedAnnotationTypes__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"Circle", @"Popup", @"Widget", @"FreeText", @"Line", @"Square", @"Stamp", @"Highlight", @"StrikeOut", @"Underline", 0}];
  v1 = supportedAnnotationTypes_sSupportedTypes;
  supportedAnnotationTypes_sSupportedTypes = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)newAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)a3 ofPage:(CGPDFPage *)a4
{
  CGPDFDictionary = CGPDFAnnotationGetCGPDFDictionary();
  Type = CGPDFAnnotationGetType();
  v8 = 0;
  if (Type > 16)
  {
    if (Type <= 19)
    {
      if (Type != 17 && Type != 19)
      {
        return v8;
      }
    }

    else if (Type != 20 && Type != 23)
    {
      if (Type != 25)
      {
        return v8;
      }

      value = 0;
      CGPDFDictionaryGetName(CGPDFDictionary, "FT", &value);
    }
  }

  else if (Type <= 4)
  {
    if (Type != 2 && Type != 4)
    {
      return v8;
    }
  }

  else if (Type != 5 && Type != 7 && Type != 12)
  {
    return v8;
  }

  v9 = objc_opt_self();
  if (!v9)
  {
    return 0;
  }

  v10 = [v9 _concreteAKAnnotationWithCGPDFAnnotation:a3 ofPage:a4];
  v8 = v10;
  if (v10)
  {
    [v10 originalModelBaseScaleFactor];
    if (v11 == 0.0)
    {
      [v8 setOriginalModelBaseScaleFactor:1.0];
    }

    if (![v8 originalExifOrientation])
    {
      [v8 setOriginalExifOrientation:{+[MUPDFUtilities exifOrientationOfPage:](MUPDFUtilities, "exifOrientationOfPage:", a4)}];
    }

    v12 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [MUPDFAnnotationAdaptorHelper migrateAppearanceStreamFromCGPDFAnnotationDict:CGPDFDictionary toAKAnnotation:v8 compensatingForPageRotation:[MUPDFUtilities normalizedRotationAngleOfPage:a4]];
    }
  }

  return v8;
}

+ (id)newPlaceholderAKAnnotationWithCGPDFAnnotation:(CGPDFAnnotation *)a3 ofPage:(CGPDFPage *)a4
{
  v5 = [MUCGPDFStampAnnotationAdaptor _concreteAKAnnotationWithCGPDFAnnotation:"_concreteAKAnnotationWithCGPDFAnnotation:ofPage:" ofPage:?];
  v6 = v5;
  if (v5)
  {
    [v5 originalModelBaseScaleFactor];
    if (v7 == 0.0)
    {
      [v6 setOriginalModelBaseScaleFactor:1.0];
    }

    if (![v6 originalExifOrientation])
    {
      [v6 setOriginalExifOrientation:{+[MUPDFUtilities exifOrientationOfPage:](MUPDFUtilities, "exifOrientationOfPage:", a4)}];
    }

    [MUPDFAnnotationAdaptorHelper migrateAppearanceStreamFromCGPDFAnnotationDict:CGPDFAnnotationGetCGPDFDictionary() toAKAnnotation:v6 compensatingForPageRotation:[MUPDFUtilities normalizedRotationAngleOfPage:a4]];
  }

  return v6;
}

+ (id)pdfDictionaryRepresentationOfAKAnnotation:(id)a3 forPage:(CGPDFPage *)a4
{
  v5 = a3;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = objc_opt_isKindOfClass();

    if ((v9 & 1) == 0)
    {
      v10 = objc_opt_self();
      v11 = objc_opt_isKindOfClass();

      if ((v11 & 1) == 0)
      {
        v12 = objc_opt_self();
        v13 = objc_opt_isKindOfClass();

        if ((v13 & 1) == 0)
        {
          v14 = objc_opt_self();
          v15 = objc_opt_isKindOfClass();

          if ((v15 & 1) == 0)
          {
            v16 = objc_opt_self();
            if (objc_opt_isKindOfClass())
            {
LABEL_20:

              goto LABEL_21;
            }

            v17 = objc_opt_self();
            if (objc_opt_isKindOfClass())
            {
LABEL_19:

              goto LABEL_20;
            }

            v18 = objc_opt_self();
            if (objc_opt_isKindOfClass())
            {
LABEL_18:

              goto LABEL_19;
            }

            v19 = objc_opt_self();
            if (objc_opt_isKindOfClass())
            {
LABEL_17:

              goto LABEL_18;
            }

            v20 = objc_opt_self();
            if (objc_opt_isKindOfClass())
            {
LABEL_16:

              goto LABEL_17;
            }

            v21 = objc_opt_self();
            if (objc_opt_isKindOfClass())
            {
LABEL_15:

              goto LABEL_16;
            }

            v22 = objc_opt_self();
            if (objc_opt_isKindOfClass())
            {

              goto LABEL_15;
            }

            v25 = objc_opt_self();
            v35 = objc_opt_isKindOfClass();

            if ((v35 & 1) == 0)
            {
              v16 = objc_opt_self();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_20;
              }

              v17 = objc_opt_self();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_19;
              }

              v18 = objc_opt_self();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_18;
              }

              v19 = objc_opt_self();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_17;
              }

              v26 = objc_opt_self();
              v27 = objc_opt_isKindOfClass();

              if ((v27 & 1) == 0)
              {
                v28 = objc_opt_self();
                v29 = objc_opt_isKindOfClass();

                if ((v29 & 1) == 0)
                {
                  v30 = objc_opt_self();
                  v31 = objc_opt_isKindOfClass();

                  if ((v31 & 1) == 0)
                  {
                    v32 = objc_opt_self();
                    v33 = objc_opt_isKindOfClass();

                    if ((v33 & 1) == 0)
                    {
                      NSLog(&cfstr_SUnsupportedAn.isa, "+[MUCGPDFAnnotationAdaptor pdfDictionaryRepresentationOfAKAnnotation:forPage:]", v5);
                    }

                    goto LABEL_33;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  v23 = objc_opt_self();
  if (v23)
  {
    v24 = [v23 _concreteDictionaryRepresentationOfAKAnnotation:v5 forPage:a4];
    goto LABEL_34;
  }

LABEL_33:
  v24 = 0;
LABEL_34:

  return v24;
}

@end