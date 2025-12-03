@interface MUPlacePhotoHeaderAttributionItem
- (MUPlacePhotoHeaderAttributionItem)initWithDisplayName:(id)name visibility:(unint64_t)visibility;
@end

@implementation MUPlacePhotoHeaderAttributionItem

- (MUPlacePhotoHeaderAttributionItem)initWithDisplayName:(id)name visibility:(unint64_t)visibility
{
  nameCopy = name;
  if ([nameCopy length] | visibility)
  {
    v12.receiver = self;
    v12.super_class = MUPlacePhotoHeaderAttributionItem;
    v8 = [(MUPlacePhotoHeaderAttributionItem *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_displayName, name);
      v9->_visibility = visibility;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end