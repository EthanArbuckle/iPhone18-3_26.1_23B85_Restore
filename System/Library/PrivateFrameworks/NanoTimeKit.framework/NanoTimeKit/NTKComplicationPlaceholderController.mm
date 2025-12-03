@interface NTKComplicationPlaceholderController
+ (id)templateForFamily:(int64_t)family complication:(id)complication variant:(id)variant;
@end

@implementation NTKComplicationPlaceholderController

+ (id)templateForFamily:(int64_t)family complication:(id)complication variant:(id)variant
{
  v7 = MEMORY[0x277CBBB10];
  variantCopy = variant;
  complicationCopy = complication;
  v10 = [v7 fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v11 = objc_opt_new();
  [v11 setObject:variantCopy forKeyedSubscript:@"NTKComplicationPlaceholderComplicationVariantKey"];

  appIdentifier = [complicationCopy appIdentifier];

  if (appIdentifier)
  {
    [v11 setObject:appIdentifier forKeyedSubscript:@"NTKComplicationPlaceholderAppIdentifierKey"];
  }

  [v10 setMetadata:v11];
  switch(family)
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