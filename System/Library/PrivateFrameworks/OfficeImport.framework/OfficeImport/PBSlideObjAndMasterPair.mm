@interface PBSlideObjAndMasterPair
+ (id)createPair:(id)a3 masterId:(int)a4;
@end

@implementation PBSlideObjAndMasterPair

+ (id)createPair:(id)a3 masterId:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = objc_alloc_init(PBSlideObjAndMasterPair);
  [(PBSlideObjAndMasterPair *)v6 setSlide:v5 masterId:v4];

  return v6;
}

@end