@interface PKAccountWebServiceDailyCashEligibilityResponse
- (PKAccountWebServiceDailyCashEligibilityResponse)initWithData:(id)a3;
@end

@implementation PKAccountWebServiceDailyCashEligibilityResponse

- (PKAccountWebServiceDailyCashEligibilityResponse)initWithData:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = PKAccountWebServiceDailyCashEligibilityResponse;
  v3 = [(PKWebServiceResponse *)&v38 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 PKArrayForKey:@"destinations"];
      v7 = [v5 PKStringForKey:@"localizedTitle"];
      v8 = [v5 PKStringForKey:@"localizedFooter"];
      v9 = [v5 PKStringForKey:@"currentDestination"];
      v32 = PKAccountRewardRedemptionTypeFromString(v9);

      if ([v6 count])
      {
        v28 = v8;
        v30 = v5;
        v31 = v4;
        v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v29 = v6;
        v10 = v6;
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v35;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v34 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [v15 PKStringForKey:@"localizedTitle"];
                v17 = [v15 PKStringForKey:@"localizedSubtitle"];
                v18 = [v15 PKStringForKey:@"destination"];
                v19 = PKAccountRewardRedemptionTypeFromString(v18);

                if (v19)
                {
                  v20 = v16 == 0;
                }

                else
                {
                  v20 = 1;
                }

                if (!v20 && v17 != 0)
                {
                  v22 = [[PKAccountDailyCashDestination alloc] initWithDestination:v19 isCurrent:v19 == v32 localizedTitle:v16 localizedSubtitle:v17];
                  [v33 addObject:v22];
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v12);
        }

        v23 = [PKAccountDailyCashDestinationsSummary alloc];
        v24 = [v33 copy];
        v8 = v28;
        v25 = [(PKAccountDailyCashDestinationsSummary *)v23 initWithDestinations:v24 localizedTitle:v7 localizedFooterText:v28];
        v4 = v31;
        summary = v31->_summary;
        v31->_summary = v25;

        v6 = v29;
        v5 = v30;
      }
    }
  }

  return v4;
}

@end