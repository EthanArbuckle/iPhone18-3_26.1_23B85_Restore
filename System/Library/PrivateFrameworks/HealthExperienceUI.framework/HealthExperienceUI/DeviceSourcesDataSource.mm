@interface DeviceSourcesDataSource
- (void)sourceListDataSourceDidUpdate:(id)update;
@end

@implementation DeviceSourcesDataSource

- (void)sourceListDataSourceDidUpdate:(id)update
{
  updateCopy = update;

  sub_1BA06A148(updateCopy);
}

@end