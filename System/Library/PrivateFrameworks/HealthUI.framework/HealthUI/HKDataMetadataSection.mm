@interface HKDataMetadataSection
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
@end

@implementation HKDataMetadataSection

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];

  return v4;
}

@end