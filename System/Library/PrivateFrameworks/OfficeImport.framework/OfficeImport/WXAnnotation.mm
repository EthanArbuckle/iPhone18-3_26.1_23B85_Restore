@interface WXAnnotation
+ (id)annotationTypeEnumMap;
+ (void)annotationTypeEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 type:(int)a5 state:(id)a6;
@end

@implementation WXAnnotation

+ (id)annotationTypeEnumMap
{
  {
    +[WXAnnotation annotationTypeEnumMap];
  }

  if (+[WXAnnotation annotationTypeEnumMap]::onceToken != -1)
  {
    +[WXAnnotation annotationTypeEnumMap];
  }

  v2 = +[WXAnnotation annotationTypeEnumMap]::sAnnotationTypeEnumMap;

  return v2;
}

void __37__WXAnnotation_annotationTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXAnnotation annotationTypeEnumMap]::sAnnotationTypeStructs count:3 caseSensitive:1];
  v1 = +[WXAnnotation annotationTypeEnumMap]::sAnnotationTypeEnumMap;
  +[WXAnnotation annotationTypeEnumMap]::sAnnotationTypeEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 type:(int)a5 state:(id)a6
{
  v7 = *&a5;
  v55 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a6;
  if ([v10 hasAnnotations])
  {
    v11 = [v10 WXMainNamespace];
    v12 = CXRequiredLongAttribute(a3, v11, "id");

    v13 = [v10 annotationWithId:v12];
    v14 = [v10 xmlAnnotationWithID:v12];
    if (v14)
    {
      v15 = [v9 addAnnotation:v7];
      v16 = v15;
      if (v7 == 2 && v13)
      {
        v17 = [v15 paragraph];
        [v17 removeRun:v16];
      }

      else if (v13)
      {
        [v13 setOtherEndOfRangedAnnotation:v15];
        [v16 setOtherEndOfRangedAnnotation:v13];
        [v16 useDataFromOtherEnd];
      }

      else
      {
        [v10 addAnnotationId:v12 annotation:v15];
        v18 = wmxmlGetAuthorProperty(v14);
        [v16 setOwner:v18];

        v19 = wmxmlGetDateProperty(v14);
        [v16 setDate:v19];

        v20 = [v10 drawingState];
        v40 = [v20 packagePart];

        v21 = [v10 drawingState];
        v22 = [v10 annotationPart];
        [v21 setPackagePart:v22];

        v39 = [v10 isNewSectionRequested];
        [v10 setNewSectionRequested:0];
        v41 = [[WXReadState alloc] initNoStacksWith:v10];
        v23 = [v16 text];
        [WXText readFrom:v14 baseStyle:0 to:v23 state:v41];

        if ([v10 hasAnnotationsExtended])
        {
          [v16 paragraphIds];
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          obj = v50 = 0u;
          v24 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
          if (v24)
          {
            v25 = *v50;
LABEL_11:
            v26 = 0;
            while (1)
            {
              if (*v50 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v49 + 1) + 8 * v26);
              if (![OCXSTValidator isValidValue:v27 simpleType:10])
              {
                break;
              }

              [v10 addAnnotationParaId:objc_msgSend(v27 annotation:{"unsignedIntValue"), v16}];
              if (v24 == ++v26)
              {
                v24 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
                if (v24)
                {
                  goto LABEL_11;
                }

                goto LABEL_17;
              }
            }
          }

          else
          {
LABEL_17:

            v28 = [v10 drawingState];
            v29 = [v10 annotationExtendedPart];
            [v28 setPackagePart:v29];

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v42 = obj;
            v30 = [v42 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v30)
            {
              v31 = *v46;
              while (2)
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v46 != v31)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v33 = [v10 xmlAnnotationExtendedWithParaId:{objc_msgSend(*(*(&v45 + 1) + 8 * i), "unsignedIntValue")}];
                  v34 = v33;
                  if (v33)
                  {
                    [v16 setIsResolved:{CXDefaultBoolAttribute(v33, WXWord2012Namespace, "done", 0)}];
                    v44 = 0;
                    if (CXOptionalUnsignedAttributeFromHex8X(v34, WXWord2012Namespace, "paraIdParent", &v44))
                    {
                      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v44];
                      v36 = [OCXSTValidator isValidValue:v35 simpleType:10];

                      if (v36)
                      {
                        v37 = [v10 annotationWithParaId:v44];
                        [v16 setParent:v37];

                        goto LABEL_29;
                      }
                    }
                  }
                }

                v30 = [v42 countByEnumeratingWithState:&v45 objects:v53 count:16];
                if (v30)
                {
                  continue;
                }

                break;
              }
            }
          }

LABEL_29:
        }

        v38 = [v10 drawingState];
        [v38 setPackagePart:v40];

        [v10 setNewSectionRequested:v39];
      }
    }
  }
}

+ (void)annotationTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_29, 0, &dword_25D297000);
  }
}

@end