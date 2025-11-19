@interface HKConceptIdentifier(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableOntologyConceptIdentifier)codableRepresentationForSync;
@end

@implementation HKConceptIdentifier(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CCD1D0];
    v5 = v3;
    v6 = [v4 alloc];
    v7 = [v5 identifier];

    v8 = [v6 initWithRawIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HDCodableOntologyConceptIdentifier)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableOntologyConceptIdentifier);
  -[HDCodableOntologyConceptIdentifier setIdentifier:](v2, "setIdentifier:", [a1 rawIdentifier]);

  return v2;
}

@end