@interface MUPersonalGuideViewModel
- (MUPersonalGuideViewModel)initWithGuideID:(id)a3 title:(id)a4 numberOfPlaces:(unint64_t)a5 image:(id)a6;
@end

@implementation MUPersonalGuideViewModel

- (MUPersonalGuideViewModel)initWithGuideID:(id)a3 title:(id)a4 numberOfPlaces:(unint64_t)a5 image:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = MUPersonalGuideViewModel;
  v14 = [(MUPersonalGuideViewModel *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_guideID, a3);
    objc_storeStrong(&v15->_title, a4);
    v15->_numberOfPlaces = a5;
    objc_storeStrong(&v15->_image, a6);
  }

  return v15;
}

@end