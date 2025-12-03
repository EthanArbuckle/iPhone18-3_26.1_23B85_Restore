@interface FCForYouGroupConfiguration
- (id)copyWithGroupPosition:(unint64_t)position precedingGroupsCount:(unint64_t)count precedingGroupsCountForFirstGroup:(unint64_t)group;
- (int64_t)compareGroupPosition:(id)position;
@end

@implementation FCForYouGroupConfiguration

- (int64_t)compareGroupPosition:(id)position
{
  v4 = MEMORY[0x1E696AD98];
  positionCopy = position;
  v6 = [v4 numberWithUnsignedInteger:{-[FCForYouGroupConfiguration groupPosition](self, "groupPosition")}];
  v7 = MEMORY[0x1E696AD98];
  groupPosition = [positionCopy groupPosition];

  v9 = [v7 numberWithUnsignedInteger:groupPosition];
  v10 = [v6 compare:v9];

  return v10;
}

- (id)copyWithGroupPosition:(unint64_t)position precedingGroupsCount:(unint64_t)count precedingGroupsCountForFirstGroup:(unint64_t)group
{
  v9 = objc_alloc_init(FCForYouGroupConfiguration);
  identifier = [(FCForYouGroupConfiguration *)self identifier];
  [(FCForYouGroupConfiguration *)v9 setIdentifier:identifier];

  [(FCForYouGroupConfiguration *)v9 setGroupType:[(FCForYouGroupConfiguration *)self groupType]];
  [(FCForYouGroupConfiguration *)v9 setGroupPosition:position];
  [(FCForYouGroupConfiguration *)v9 setPrecedingGroupsCount:count];
  [(FCForYouGroupConfiguration *)v9 setPrecedingGroupsCountForFirstGroup:group];
  [(FCForYouGroupConfiguration *)v9 setAllowsNativeAds:[(FCForYouGroupConfiguration *)self allowsNativeAds]];
  return v9;
}

@end