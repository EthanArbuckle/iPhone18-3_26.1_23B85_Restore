@interface NTKComplicationPickerBaseViewConfiguration
- (NTKComplicationPickerBaseViewConfiguration)initWithListProvider:(id)a3;
@end

@implementation NTKComplicationPickerBaseViewConfiguration

- (NTKComplicationPickerBaseViewConfiguration)initWithListProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKComplicationPickerBaseViewConfiguration;
  v6 = [(NTKComplicationPickerBaseViewConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listProvider, a3);
  }

  return v7;
}

@end