@interface MKClusterAnnotation(MSDSetupUI)
- (BOOL)isInCloseProximity;
- (uint64_t)isSameCoordinate;
@end

@implementation MKClusterAnnotation(MSDSetupUI)

- (uint64_t)isSameCoordinate
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  memberAnnotations = [self memberAnnotations];
  v2 = [memberAnnotations countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(memberAnnotations);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_16;
        }

        storeInfo = [v7 storeInfo];
        storeLocation = [storeInfo storeLocation];

        if (!storeLocation)
        {
          goto LABEL_15;
        }

        if (!v4)
        {
          v4 = storeLocation;
        }

        [v4 coordinate];
        v11 = v10;
        [storeLocation coordinate];
        if (v11 != v12 || ([v4 coordinate], v14 = v13, objc_msgSend(storeLocation, "coordinate"), v14 != v15))
        {
LABEL_15:

LABEL_16:
          v16 = 0;
          goto LABEL_18;
        }
      }

      v3 = [memberAnnotations countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v4 = 0;
    v16 = 1;
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)isInCloseProximity
{
  memberAnnotations = [self memberAnnotations];
  v3 = [memberAnnotations count];

  if (v3 >= 2)
  {
    v5 = 0;
    v4 = 0;
    v6 = v3 - 1;
    for (i = 1; ; ++i)
    {
      memberAnnotations2 = [self memberAnnotations];
      v9 = [memberAnnotations2 objectAtIndex:v5];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v4;
        v20 = v9;
        storeInfo = [v9 storeInfo];
        storeLocation = [storeInfo storeLocation];

        if (storeLocation)
        {
          for (j = i; v3 > j; ++j)
          {
            memberAnnotations3 = [self memberAnnotations];
            v14 = [memberAnnotations3 objectAtIndex:j];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              storeInfo2 = [v14 storeInfo];
              storeLocation2 = [storeInfo2 storeLocation];

              if (storeLocation2)
              {
                [storeLocation distanceFromLocation:storeLocation2];
                if (v17 > 3220.0)
                {

                  return v19;
                }
              }
            }
          }
        }

        v6 = v3 - 1;
        v9 = v20;
      }

      v4 = v6 <= ++v5;
      if (v5 == v6)
      {
        return v4;
      }
    }
  }

  return 1;
}

@end