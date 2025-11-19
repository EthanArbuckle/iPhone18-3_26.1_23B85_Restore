@interface FCForYouGroupConfiguration
- (id)copyWithGroupPosition:(unint64_t)a3 precedingGroupsCount:(unint64_t)a4 precedingGroupsCountForFirstGroup:(unint64_t)a5;
- (int64_t)compareGroupPosition:(id)a3;
@end

@implementation FCForYouGroupConfiguration

- (int64_t)compareGroupPosition:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[FCForYouGroupConfiguration groupPosition](self, "groupPosition")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 groupPosition];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (id)copyWithGroupPosition:(unint64_t)a3 precedingGroupsCount:(unint64_t)a4 precedingGroupsCountForFirstGroup:(unint64_t)a5
{
  v9 = objc_alloc_init(FCForYouGroupConfiguration);
  v10 = [(FCForYouGroupConfiguration *)self identifier];
  [(FCForYouGroupConfiguration *)v9 setIdentifier:v10];

  [(FCForYouGroupConfiguration *)v9 setGroupType:[(FCForYouGroupConfiguration *)self groupType]];
  [(FCForYouGroupConfiguration *)v9 setGroupPosition:a3];
  [(FCForYouGroupConfiguration *)v9 setPrecedingGroupsCount:a4];
  [(FCForYouGroupConfiguration *)v9 setPrecedingGroupsCountForFirstGroup:a5];
  [(FCForYouGroupConfiguration *)v9 setAllowsNativeAds:[(FCForYouGroupConfiguration *)self allowsNativeAds]];
  return v9;
}

@end