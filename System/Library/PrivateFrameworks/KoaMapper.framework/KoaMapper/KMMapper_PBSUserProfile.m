@interface KMMapper_PBSUserProfile
- (KMMapper_PBSUserProfile)init;
@end

@implementation KMMapper_PBSUserProfile

- (KMMapper_PBSUserProfile)init
{
  v8.receiver = self;
  v8.super_class = KMMapper_PBSUserProfile;
  v2 = [(KMMapper_PBSUserProfile *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = KVAdditionalFieldTypeToNumber();
    alternativeItemIdKey = v2->_alternativeItemIdKey;
    v2->_alternativeItemIdKey = v5;
  }

  return v2;
}

@end