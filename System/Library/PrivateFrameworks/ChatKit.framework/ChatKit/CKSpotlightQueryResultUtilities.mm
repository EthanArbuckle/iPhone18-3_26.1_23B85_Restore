@interface CKSpotlightQueryResultUtilities
+ (CLLocationCoordinate2D)coordinateForResult:(id)a3;
+ (id)contactForResult:(id)a3;
+ (id)indexDomainForResult:(id)a3;
+ (id)indexItemTypeForItem:(id)a3;
+ (id)indexItemTypeForResult:(id)a3;
@end

@implementation CKSpotlightQueryResultUtilities

+ (id)contactForResult:(id)a3
{
  v3 = [a3 item];
  v4 = [v3 attributeSet];

  v5 = [v4 isFromMe];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5BD0] me];
    v8 = [v7 cnContact];
  }

  else
  {
    v9 = [v4 authorAddresses];
    v7 = [v9 firstObject];

    if (v7)
    {
      v10 = [MEMORY[0x1E69A7FD0] sharedInstance];
      v8 = [v10 fetchCNContactForHandleWithID:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (CLLocationCoordinate2D)coordinateForResult:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (coordinateForResult___pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    +[CKSpotlightQueryResultUtilities coordinateForResult:];
  }

  if (coordinateForResult___pred_CLLocationCoordinate2DMakeCoreLocation != -1)
  {
    +[CKSpotlightQueryResultUtilities coordinateForResult:];
  }

  v4 = [v3 item];
  v5 = [v4 attributeSet];
  v6 = [v5 contentURL];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6 options:8 error:0];
    v46 = 0;
    v8 = [MEMORY[0x1E695CE30] contactsWithData:v7 error:&v46];
    v9 = v46;
    if ([v8 count])
    {
      v37 = v3;
      v10 = [MEMORY[0x1E695DF70] array];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v11 = [v8 firstObject];
      v12 = [v11 urlAddresses];

      v13 = [v12 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v43;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v43 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v42 + 1) + 8 * i) value];
            [v10 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v14);
      }

      v18 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];

      v3 = v37;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  if (__kCLLocationCoordinate2DInvalid_once_0 != -1)
  {
    +[CKSpotlightQueryResultUtilities coordinateForResult:];
  }

  v20 = *(&__kCLLocationCoordinate2DInvalid___kCLLocationCoordinate2DInvalid_0 + 1);
  v19 = *&__kCLLocationCoordinate2DInvalid___kCLLocationCoordinate2DInvalid_0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = v18;
  v22 = [v21 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v39;
    while (2)
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [MEMORY[0x1E69A80F8] coordinatesFromString:*(*(&v38 + 1) + 8 * j)];
        if ([v26 count] == 2)
        {
          v27 = coordinateForResult___CLLocationCoordinate2DMake;
          v28 = [v26 objectAtIndex:0];
          [v28 doubleValue];
          v30 = v29;
          v31 = [v26 objectAtIndex:1];
          v32 = [v31 doubleValue];
          v19 = v27(v32, v30, v33);
          v20 = v34;

          goto LABEL_30;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  v35 = v19;
  v36 = v20;
  result.longitude = v36;
  result.latitude = v35;
  return result;
}

uint64_t __55__CKSpotlightQueryResultUtilities_coordinateForResult___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  coordinateForResult___CLLocationCoordinate2DIsValid = result;
  return result;
}

void *__55__CKSpotlightQueryResultUtilities_coordinateForResult___block_invoke_2()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DMake", @"CoreLocation");
  coordinateForResult___CLLocationCoordinate2DMake = result;
  return result;
}

+ (id)indexItemTypeForResult:(id)a3
{
  v3 = [a3 item];
  v4 = [objc_opt_class() indexItemTypeForItem:v3];

  return v4;
}

+ (id)indexItemTypeForItem:(id)a3
{
  v3 = [a3 attributeSet];
  v4 = [v3 messageType];

  return v4;
}

+ (id)indexDomainForResult:(id)a3
{
  v3 = [a3 item];
  v4 = [v3 domainIdentifier];

  return v4;
}

@end