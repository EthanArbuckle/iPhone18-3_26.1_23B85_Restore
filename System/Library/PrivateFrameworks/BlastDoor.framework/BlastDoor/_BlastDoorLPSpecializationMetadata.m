@interface _BlastDoorLPSpecializationMetadata
+ (id)keyPathsForValuesAffecting_dummyPropertyForObservation;
- (_BlastDoorLPSpecializationMetadata)initWithCoder:(id)a3;
@end

@implementation _BlastDoorLPSpecializationMetadata

- (_BlastDoorLPSpecializationMetadata)initWithCoder:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = _BlastDoorLPSpecializationMetadata;
  result = [(_BlastDoorLPSpecializationMetadata *)&v5 init];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)keyPathsForValuesAffecting_dummyPropertyForObservation
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB98]);

  return v2;
}

@end