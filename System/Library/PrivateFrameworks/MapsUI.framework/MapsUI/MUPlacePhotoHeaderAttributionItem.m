@interface MUPlacePhotoHeaderAttributionItem
- (MUPlacePhotoHeaderAttributionItem)initWithDisplayName:(id)a3 visibility:(unint64_t)a4;
@end

@implementation MUPlacePhotoHeaderAttributionItem

- (MUPlacePhotoHeaderAttributionItem)initWithDisplayName:(id)a3 visibility:(unint64_t)a4
{
  v7 = a3;
  if ([v7 length] | a4)
  {
    v12.receiver = self;
    v12.super_class = MUPlacePhotoHeaderAttributionItem;
    v8 = [(MUPlacePhotoHeaderAttributionItem *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_displayName, a3);
      v9->_visibility = a4;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end