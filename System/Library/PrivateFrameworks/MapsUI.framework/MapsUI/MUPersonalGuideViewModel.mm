@interface MUPersonalGuideViewModel
- (MUPersonalGuideViewModel)initWithGuideID:(id)d title:(id)title numberOfPlaces:(unint64_t)places image:(id)image;
@end

@implementation MUPersonalGuideViewModel

- (MUPersonalGuideViewModel)initWithGuideID:(id)d title:(id)title numberOfPlaces:(unint64_t)places image:(id)image
{
  dCopy = d;
  titleCopy = title;
  imageCopy = image;
  v17.receiver = self;
  v17.super_class = MUPersonalGuideViewModel;
  v14 = [(MUPersonalGuideViewModel *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_guideID, d);
    objc_storeStrong(&v15->_title, title);
    v15->_numberOfPlaces = places;
    objc_storeStrong(&v15->_image, image);
  }

  return v15;
}

@end