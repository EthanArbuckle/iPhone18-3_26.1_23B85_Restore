@interface NTKComplicationPlaceholderController
+ (id)templateForFamily:(int64_t)a3 complication:(id)a4 variant:(id)a5;
@end

@implementation NTKComplicationPlaceholderController

+ (id)templateForFamily:(int64_t)a3 complication:(id)a4 variant:(id)a5
{
  v7 = MEMORY[0x277CBBB10];
  v8 = a5;
  v9 = a4;
  v10 = [v7 fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v11 = objc_opt_new();
  [v11 setObject:v8 forKeyedSubscript:@"NTKComplicationPlaceholderComplicationVariantKey"];

  v12 = [v9 appIdentifier];

  if (v12)
  {
    [v11 setObject:v12 forKeyedSubscript:@"NTKComplicationPlaceholderAppIdentifierKey"];
  }

  [v10 setMetadata:v11];
  switch(a3)
  {
    case 8:
      v13 = 0x277CBB8B8;
      goto LABEL_9;
    case 11:
      v13 = 0x277CBB9A0;
      goto LABEL_9;
    case 10:
      v13 = 0x277CBB850;
LABEL_9:
      v14 = [*v13 templateWithImageProvider:v10];
      goto LABEL_11;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

@end