@interface PBSlideObjAndMasterPair
+ (id)createPair:(id)pair masterId:(int)id;
@end

@implementation PBSlideObjAndMasterPair

+ (id)createPair:(id)pair masterId:(int)id
{
  v4 = *&id;
  pairCopy = pair;
  v6 = objc_alloc_init(PBSlideObjAndMasterPair);
  [(PBSlideObjAndMasterPair *)v6 setSlide:pairCopy masterId:v4];

  return v6;
}

@end