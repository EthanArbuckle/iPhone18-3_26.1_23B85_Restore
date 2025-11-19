@interface BLTPBAppearance(ReducedPBDescription)
- (id)description;
@end

@implementation BLTPBAppearance(ReducedPBDescription)

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBAppearance;
  v4 = [(BLTPBAppearance *)&v8 description];
  v5 = [(PBCodable *)self redact];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end