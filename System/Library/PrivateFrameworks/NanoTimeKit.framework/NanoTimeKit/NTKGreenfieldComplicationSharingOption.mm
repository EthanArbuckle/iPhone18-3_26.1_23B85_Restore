@interface NTKGreenfieldComplicationSharingOption
+ (id)optionWithName:(id)a3 uniqueIdentifier:(id)a4 optionType:(unint64_t)a5;
@end

@implementation NTKGreenfieldComplicationSharingOption

+ (id)optionWithName:(id)a3 uniqueIdentifier:(id)a4 optionType:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(NTKGreenfieldComplicationSharingOption);
  v10 = [v8 copy];

  name = v9->_name;
  v9->_name = v10;

  v12 = [v7 copy];
  uniqueIdentifier = v9->_uniqueIdentifier;
  v9->_uniqueIdentifier = v12;

  v9->_optionType = a5;

  return v9;
}

@end