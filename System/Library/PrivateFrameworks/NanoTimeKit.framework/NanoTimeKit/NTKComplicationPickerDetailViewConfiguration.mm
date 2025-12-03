@interface NTKComplicationPickerDetailViewConfiguration
- (NTKComplicationPickerDetailViewConfiguration)initWithDetailListProvider:(id)provider title:(id)title;
@end

@implementation NTKComplicationPickerDetailViewConfiguration

- (NTKComplicationPickerDetailViewConfiguration)initWithDetailListProvider:(id)provider title:(id)title
{
  titleCopy = title;
  v11.receiver = self;
  v11.super_class = NTKComplicationPickerDetailViewConfiguration;
  v7 = [(NTKComplicationPickerBaseViewConfiguration *)&v11 initWithListProvider:provider];
  if (v7)
  {
    v8 = [titleCopy copy];
    title = v7->_title;
    v7->_title = v8;
  }

  return v7;
}

@end