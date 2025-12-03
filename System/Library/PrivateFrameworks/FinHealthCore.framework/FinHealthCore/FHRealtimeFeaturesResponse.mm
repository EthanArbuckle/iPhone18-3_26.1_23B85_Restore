@interface FHRealtimeFeaturesResponse
- (id)description;
- (id)smartCompoundFeaturesDictionaryForJson;
@end

@implementation FHRealtimeFeaturesResponse

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"timeOfDay: '%lu'; ", self->_timeOfDay];
  [v3 appendFormat:@"transactionDateAtZerothHour: '%lu'; ", self->_transactionDateAtZerothHour];
  [v3 appendFormat:@"isInternationalSpend: '%d'; ", self->_isInternationalSpend];
  [v3 appendFormat:@"isTapToPay: '%d'; ", self->_isTapToPay];
  [v3 appendFormat:@"merchantCategory: '%lu'; ", self->_merchantCategory];
  [v3 appendFormat:@"country: '%@'; ", self->_country];
  [v3 appendFormat:@"merchantDisplayName: '%@'; ", self->_merchantDisplayName];
  [v3 appendFormat:@"mapsMerchantID: '%llu'; ", self->_mapsMerchantID];
  [v3 appendFormat:@"mapsMerchantBrandID: '%llu'; ", self->_mapsMerchantBrandID];
  [v3 appendFormat:@"smartCompoundFeatures: '%@'; ", self->_smartCompoundFeatures];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)smartCompoundFeaturesDictionaryForJson
{
  v53 = *MEMORY[0x277D85DE8];
  v35 = objc_opt_new();
  smartCompoundFeatures = self->_smartCompoundFeatures;
  if (smartCompoundFeatures)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = smartCompoundFeatures;
    v4 = [(NSDictionary *)obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v48;
      v31 = *v48;
      selfCopy = self;
      do
      {
        v8 = 0;
        v9 = v6;
        v33 = v5;
        do
        {
          if (*v48 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v47 + 1) + 8 * v8);

          v10 = [(NSDictionary *)self->_smartCompoundFeatures objectForKey:v6];
          if ([v10 count])
          {
            v41 = objc_opt_new();
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v39 = v10;
            v42 = [v39 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v42)
            {
              v36 = v10;
              v37 = v8;
              v38 = v6;
              v11 = 0;
              v40 = *v44;
              do
              {
                v12 = 0;
                v13 = v11;
                do
                {
                  if (*v44 != v40)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v11 = *(*(&v43 + 1) + 8 * v12);

                  eventIdentifiers = [v11 eventIdentifiers];

                  v15 = MEMORY[0x277CBEAC0];
                  featureLabel = [v11 featureLabel];
                  featureRank = [v11 featureRank];
                  v18 = featureRank;
                  if (eventIdentifiers)
                  {
                    eventIdentifiers2 = [v11 eventIdentifiers];
                    v20 = MEMORY[0x277CCABB0];
                    eventStartDate = [v11 eventStartDate];
                    [eventStartDate timeIntervalSinceReferenceDate];
                    v22 = [v20 numberWithDouble:?];
                    v23 = MEMORY[0x277CCABB0];
                    eventEndDate = [v11 eventEndDate];
                    [eventEndDate timeIntervalSinceReferenceDate];
                    v25 = [v23 numberWithDouble:?];
                    v26 = [v15 dictionaryWithObjectsAndKeys:{featureLabel, @"featureLabel", v18, @"featureRank", eventIdentifiers2, @"featureEventIdentifiers", v22, @"featureEventStartDate", v25, @"featureEventEndDate", 0}];
                    [v41 addObject:v26];
                  }

                  else
                  {
                    eventIdentifiers2 = [v15 dictionaryWithObjectsAndKeys:{featureLabel, @"featureLabel", featureRank, @"featureRank", 0}];
                    [v41 addObject:eventIdentifiers2];
                  }

                  ++v12;
                  v13 = v11;
                }

                while (v42 != v12);
                v42 = [v39 countByEnumeratingWithState:&v43 objects:v51 count:16];
              }

              while (v42);

              v7 = v31;
              self = selfCopy;
              v5 = v33;
              v8 = v37;
              v6 = v38;
              v10 = v36;
            }

            v27 = [MEMORY[0x277CBEA60] arrayWithArray:v41];
            [v35 setObject:v27 forKey:v6];
          }

          ++v8;
          v9 = v6;
        }

        while (v8 != v5);
        v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v5);
    }
  }

  v28 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v35];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

@end