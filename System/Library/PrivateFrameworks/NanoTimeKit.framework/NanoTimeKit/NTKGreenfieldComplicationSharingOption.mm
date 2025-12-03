@interface NTKGreenfieldComplicationSharingOption
+ (id)optionWithName:(id)name uniqueIdentifier:(id)identifier optionType:(unint64_t)type;
@end

@implementation NTKGreenfieldComplicationSharingOption

+ (id)optionWithName:(id)name uniqueIdentifier:(id)identifier optionType:(unint64_t)type
{
  identifierCopy = identifier;
  nameCopy = name;
  v9 = objc_alloc_init(NTKGreenfieldComplicationSharingOption);
  v10 = [nameCopy copy];

  name = v9->_name;
  v9->_name = v10;

  v12 = [identifierCopy copy];
  uniqueIdentifier = v9->_uniqueIdentifier;
  v9->_uniqueIdentifier = v12;

  v9->_optionType = type;

  return v9;
}

@end