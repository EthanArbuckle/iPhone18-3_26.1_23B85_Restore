@interface ACXRemoteApplication(CarouselPreferenceServices)
- (id)cslprf_displayName;
@end

@implementation ACXRemoteApplication(CarouselPreferenceServices)

- (id)cslprf_displayName
{
  v2 = *MEMORY[0x277CBED50];
  v3 = *MEMORY[0x277CBEC40];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CBED50], *MEMORY[0x277CBEC40], 0}];
  v5 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v6 = [a1 localizedInfoPlistStringsForKeys:v4 fetchingFirstMatchingLocalizationInList:v5];

  v7 = [v6 objectForKeyedSubscript:v3];

  v8 = v6;
  if (v7)
  {
    v9 = v3;
LABEL_5:
    v11 = [v8 objectForKeyedSubscript:v9];
    goto LABEL_6;
  }

  v10 = [v6 objectForKeyedSubscript:v2];

  if (v10)
  {
    v8 = v6;
    v9 = v2;
    goto LABEL_5;
  }

  v11 = [a1 applicationName];
LABEL_6:
  v12 = v11;

  return v12;
}

@end