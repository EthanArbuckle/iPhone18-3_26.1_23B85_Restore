@interface SFNavigationIntentBuilder
@end

@implementation SFNavigationIntentBuilder

id __66___SFNavigationIntentBuilder_navigationIntentWithOpenURLContexts___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _initializeNavigationIntentWithType:9 value:a2];
  if ([v2 externalURLSourceApplicationIsSpotlight])
  {
    [v2 setProvenance:3];
  }

  return v2;
}

void __84___SFNavigationIntentBuilder_buildNavigationIntentForDropSession_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _navigationIntentWithItems:a2];
  (*(v2 + 16))(v2, v3);
}

void __86___SFNavigationIntentBuilder_buildNavigationIntentForItemProviders_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _navigationIntentWithItems:a2];
  (*(v2 + 16))(v2, v3);
}

id __57___SFNavigationIntentBuilder__navigationIntentWithItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) _navigationIntentForMKMapItem:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) navigationIntentWithBookmark:v3];
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = *(a1 + 32);
    if (isKindOfClass)
    {
      [v10 navigationIntentWithRecentlyClosedTabStateData:v3];
    }

    else
    {
      [v10 navigationIntentWithText:v3];
    }
    v4 = ;
    goto LABEL_5;
  }

  v7 = *(a1 + 32);
  v8 = [v3 safari_originalDataAsString];
  v5 = [v7 navigationIntentWithText:v8];

LABEL_6:

  return v5;
}

@end