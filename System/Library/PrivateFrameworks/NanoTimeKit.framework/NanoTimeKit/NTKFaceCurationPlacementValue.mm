@interface NTKFaceCurationPlacementValue
+ (id)placementWithWatchOS12Group:(int64_t)group zOrder:(int64_t)order;
+ (id)placementsWithWatchOS12Group:(int64_t)group zOrder:(int64_t)order;
- (NTKFaceCurationPlacement)placement;
- (NTKFaceCurationPlacementValue)initWithPlacement:(NTKFaceCurationPlacement *)placement;
@end

@implementation NTKFaceCurationPlacementValue

- (NTKFaceCurationPlacementValue)initWithPlacement:(NTKFaceCurationPlacement *)placement
{
  v7.receiver = self;
  v7.super_class = NTKFaceCurationPlacementValue;
  result = [(NTKFaceCurationPlacementValue *)&v7 init];
  if (result)
  {
    v5 = *&placement->group;
    v6 = *&placement->rank.release.minor;
    *&result->_placement.rank.context = *&placement->rank.context;
    *&result->_placement.rank.release.minor = v6;
    *&result->_placement.group = v5;
  }

  return result;
}

+ (id)placementWithWatchOS12Group:(int64_t)group zOrder:(int64_t)order
{
  v8 = 0;
  v7 = NTKFaceCurationReleaseWatchOS_12;
  groupCopy = group;
  v9 = 0;
  orderCopy = order;
  v4 = [[NTKFaceCurationPlacementValue alloc] initWithPlacement:&groupCopy];

  return v4;
}

+ (id)placementsWithWatchOS12Group:(int64_t)group zOrder:(int64_t)order
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [self placementWithWatchOS12Group:group zOrder:order];
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