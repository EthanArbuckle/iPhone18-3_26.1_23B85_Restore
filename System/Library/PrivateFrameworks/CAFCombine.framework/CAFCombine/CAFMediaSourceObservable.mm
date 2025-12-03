@interface CAFMediaSourceObservable
- (NSString)description;
- (void)mediaSourceService:(id)service didUpdateCurrentFrequency:(unsigned int)frequency;
- (void)mediaSourceService:(id)service didUpdateDisabled:(BOOL)disabled;
- (void)mediaSourceService:(id)service didUpdateMediaItemImages:(id)images;
- (void)mediaSourceService:(id)service didUpdateMediaItems:(id)items;
- (void)mediaSourceService:(id)service didUpdateMediaSourceSemanticType:(unsigned __int8)type;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFMediaSourceObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFMediaSourceObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)mediaSourceService:(id)service didUpdateCurrentFrequency:(unsigned int)frequency
{
  serviceCopy = service;
  selfCopy = self;
  CAFMediaSourceObservable.mediaSourceService(_:didUpdateCurrentFrequency:)();
}

- (void)mediaSourceService:(id)service didUpdateMediaItems:(id)items
{
  serviceCopy = service;
  itemsCopy = items;
  selfCopy = self;
  CAFMediaSourceObservable.mediaSourceService(_:didUpdateMediaItems:)(selfCopy, items);
}

- (void)mediaSourceService:(id)service didUpdateMediaSourceSemanticType:(unsigned __int8)type
{
  serviceCopy = service;
  selfCopy = self;
  CAFMediaSourceObservable.mediaSourceService(_:didUpdateMediaSourceSemanticType:)();
}

- (void)mediaSourceService:(id)service didUpdateDisabled:(BOOL)disabled
{
  serviceCopy = service;
  selfCopy = self;
  CAFMediaSourceObservable.mediaSourceService(_:didUpdateDisabled:)();
}

- (void)mediaSourceService:(id)service didUpdateMediaItemImages:(id)images
{
  serviceCopy = service;
  imagesCopy = images;
  selfCopy = self;
  CAFMediaSourceObservable.mediaSourceService(_:didUpdateMediaItemImages:)(selfCopy, images);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFMediaSourceObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFMediaSourceObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFMediaSourceObservable.serviceDidFinishGroupUpdate(_:)();
}

@end