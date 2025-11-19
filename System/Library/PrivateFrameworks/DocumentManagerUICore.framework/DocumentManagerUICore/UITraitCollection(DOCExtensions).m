@interface UITraitCollection(DOCExtensions)
+ (id)doc_traitsAffectingFonts;
@end

@implementation UITraitCollection(DOCExtensions)

+ (id)doc_traitsAffectingFonts
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

@end