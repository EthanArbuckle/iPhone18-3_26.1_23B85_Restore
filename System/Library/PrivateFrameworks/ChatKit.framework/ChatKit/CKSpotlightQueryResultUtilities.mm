@interface CKSpotlightQueryResultUtilities
+ (CLLocationCoordinate2D)coordinateForResult:(id)result;
+ (id)contactForResult:(id)result;
+ (id)indexDomainForResult:(id)result;
+ (id)indexItemTypeForItem:(id)item;
+ (id)indexItemTypeForResult:(id)result;
@end

@implementation CKSpotlightQueryResultUtilities

+ (id)contactForResult:(id)result
{
  item = [result item];
  attributeSet = [item attributeSet];

  isFromMe = [attributeSet isFromMe];
  bOOLValue = [isFromMe BOOLValue];

  if (bOOLValue)
  {
    firstObject = [MEMORY[0x1E69A5BD0] me];
    cnContact = [firstObject cnContact];
  }

  else
  {
    authorAddresses = [attributeSet authorAddresses];
    firstObject = [authorAddresses firstObject];

    if (firstObject)
    {
      mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
      cnContact = [mEMORY[0x1E69A7FD0] fetchCNContactForHandleWithID:firstObject];
    }

    else
    {
      cnContact = 0;
    }
  }

  return cnContact;
}

+ (CLLocationCoordinate2D)coordinateForResult:(id)result
{
  v49 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (coordinateForResult___pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    +[CKSpotlightQueryResultUtilities coordinateForResult:];
  }

  if (coordinateForResult___pred_CLLocationCoordinate2DMakeCoreLocation != -1)
  {
    +[CKSpotlightQueryResultUtilities coordinateForResult:];
  }

  item = [resultCopy item];
  attributeSet = [item attributeSet];
  contentURL = [attributeSet contentURL];

  if (contentURL)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:contentURL options:8 error:0];
    v46 = 0;
    v8 = [MEMORY[0x1E695CE30] contactsWithData:v7 error:&v46];
    v9 = v46;
    if ([v8 count])
    {
      v37 = resultCopy;
      array = [MEMORY[0x1E695DF70] array];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      firstObject = [v8 firstObject];
      urlAddresses = [firstObject urlAddresses];

      v13 = [urlAddresses countByEnumeratingWithState:&v42 objects:v48 count:16];
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
              objc_enumerationMutation(urlAddresses);
            }

            value = [*(*(&v42 + 1) + 8 * i) value];
            [array addObject:value];
          }

          v14 = [urlAddresses countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v14);
      }

      v18 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

      resultCopy = v37;
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
          doubleValue = [v31 doubleValue];
          v19 = v27(doubleValue, v30, v33);
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

+ (id)indexItemTypeForResult:(id)result
{
  item = [result item];
  v4 = [objc_opt_class() indexItemTypeForItem:item];

  return v4;
}

+ (id)indexItemTypeForItem:(id)item
{
  attributeSet = [item attributeSet];
  messageType = [attributeSet messageType];

  return messageType;
}

+ (id)indexDomainForResult:(id)result
{
  item = [result item];
  domainIdentifier = [item domainIdentifier];

  return domainIdentifier;
}

@end