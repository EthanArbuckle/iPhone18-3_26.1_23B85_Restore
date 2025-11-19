@interface NTKFaceCurationPlacementValue
+ (id)placementWithWatchOS12Group:(int64_t)a3 zOrder:(int64_t)a4;
+ (id)placementsWithWatchOS12Group:(int64_t)a3 zOrder:(int64_t)a4;
- (NTKFaceCurationPlacement)placement;
- (NTKFaceCurationPlacementValue)initWithPlacement:(NTKFaceCurationPlacement *)a3;
@end

@implementation NTKFaceCurationPlacementValue

- (NTKFaceCurationPlacementValue)initWithPlacement:(NTKFaceCurationPlacement *)a3
{
  v7.receiver = self;
  v7.super_class = NTKFaceCurationPlacementValue;
  result = [(NTKFaceCurationPlacementValue *)&v7 init];
  if (result)
  {
    v5 = *&a3->group;
    v6 = *&a3->rank.release.minor;
    *&result->_placement.rank.context = *&a3->rank.context;
    *&result->_placement.rank.release.minor = v6;
    *&result->_placement.group = v5;
  }

  return result;
}

+ (id)placementWithWatchOS12Group:(int64_t)a3 zOrder:(int64_t)a4
{
  v8 = 0;
  v7 = NTKFaceCurationReleaseWatchOS_12;
  v6 = a3;
  v9 = 0;
  v10 = a4;
  v4 = [[NTKFaceCurationPlacementValue alloc] initWithPlacement:&v6];

  return v4;
}

+ (id)placementsWithWatchOS12Group:(int64_t)a3 zOrder:(int64_t)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 placementWithWatchOS12Group:a3 zOrder:a4];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

- (NTKFaceCurationPlacement)placement
{
  v3 = *&self->rank.release.patch;
  *&retstr->group = *&self->rank.release.major;
  *&retstr->rank.release.minor = v3;
  *&retstr->rank.context = *&self->rank.zOrder;
  return self;
}

@end