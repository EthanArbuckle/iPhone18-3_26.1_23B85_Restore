@interface HDSOSManager
- (BOOL)isAllowedToMessageSOSContacts;
- (id)sosContactManager;
- (void)setIsAllowedToMessageSOSContacts;
@end

@implementation HDSOSManager

- (BOOL)isAllowedToMessageSOSContacts
{
  SOSUtilitiesClass_0 = getSOSUtilitiesClass_0();

  return [SOSUtilitiesClass_0 isAllowedToMessageSOSContacts];
}

- (void)setIsAllowedToMessageSOSContacts
{
  SOSUtilitiesClass_0 = getSOSUtilitiesClass_0();

  [SOSUtilitiesClass_0 setAllowedToMessageSOSContacts:1];
}

- (id)sosContactManager
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getSOSContactsManagerClass_softClass;
  v10 = getSOSContactsManagerClass_softClass;
  if (!getSOSContactsManagerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getSOSContactsManagerClass_block_invoke;
    v6[3] = &unk_278616E90;
    v6[4] = &v7;
    __getSOSContactsManagerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);

  return v4;
}

@end