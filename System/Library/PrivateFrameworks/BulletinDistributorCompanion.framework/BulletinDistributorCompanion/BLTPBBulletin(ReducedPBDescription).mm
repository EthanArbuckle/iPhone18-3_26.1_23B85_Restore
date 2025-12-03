@interface BLTPBBulletin(ReducedPBDescription)
- (id)description;
@end

@implementation BLTPBBulletin(ReducedPBDescription)

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBBulletin;
  v4 = [(BLTPBBulletin *)&v8 description];
  redact = [(PBCodable *)self redact];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, redact];

  return v6;
}

@end