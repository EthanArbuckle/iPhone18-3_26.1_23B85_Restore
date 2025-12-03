@interface HDOntologyPregnancyTrimesterLactationRatingsProvider
+ (id)pregnancyTrimesterLactationRatingsForConcept:(id)concept;
@end

@implementation HDOntologyPregnancyTrimesterLactationRatingsProvider

+ (id)pregnancyTrimesterLactationRatingsForConcept:(id)concept
{
  v3 = [concept firstAttributeForType:665];
  if (v3)
  {
    v4 = [MEMORY[0x277D107D0] localizedUserDomainConceptPropertyStringForConceptAttribute:v3 locale:@"en_US" propertyType:180000];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end