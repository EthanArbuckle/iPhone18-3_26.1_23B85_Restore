@interface NTKComplicationPickerDetailViewConfiguration
- (NTKComplicationPickerDetailViewConfiguration)initWithDetailListProvider:(id)a3 title:(id)a4;
@end

@implementation NTKComplicationPickerDetailViewConfiguration

- (NTKComplicationPickerDetailViewConfiguration)initWithDetailListProvider:(id)a3 title:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = NTKComplicationPickerDetailViewConfiguration;
  v7 = [(NTKComplicationPickerBaseViewConfiguration *)&v11 initWithListProvider:a3];
  if (v7)
  {
    v8 = [v6 copy];
    title = v7->_title;
    v7->_title = v8;
  }

  return v7;
}

@end