@interface NTKComplicationPickerBaseViewConfiguration
- (NTKComplicationPickerBaseViewConfiguration)initWithListProvider:(id)provider;
@end

@implementation NTKComplicationPickerBaseViewConfiguration

- (NTKComplicationPickerBaseViewConfiguration)initWithListProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = NTKComplicationPickerBaseViewConfiguration;
  v6 = [(NTKComplicationPickerBaseViewConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listProvider, provider);
  }

  return v7;
}

@end