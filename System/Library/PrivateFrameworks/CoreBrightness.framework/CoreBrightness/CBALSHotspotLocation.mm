@interface CBALSHotspotLocation
- (id)description;
@end

@implementation CBALSHotspotLocation

- (id)description
{
  v8 = self;
  v7 = a2;
  v6 = MEMORY[0x1E696AEC0];
  [(CBALSHotspotLocation *)self x];
  v5 = v2;
  [(CBALSHotspotLocation *)v8 y];
  return [v6 stringWithFormat:@"x:%f y:%f", *&v5, v3];
}

@end