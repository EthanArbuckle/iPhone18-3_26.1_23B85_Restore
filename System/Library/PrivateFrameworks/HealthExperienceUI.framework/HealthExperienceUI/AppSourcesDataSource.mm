@interface AppSourcesDataSource
- (void)sourceListDataSourceDidUpdate:(id)update;
@end

@implementation AppSourcesDataSource

- (void)sourceListDataSourceDidUpdate:(id)update
{
  updateCopy = update;

  sub_1BA423660(updateCopy);
}

@end