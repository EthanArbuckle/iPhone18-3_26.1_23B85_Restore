@interface CKDPCSIdentityWrapper
- (CKDPCSIdentityWrapper)initWithIdentitySet:(_PCSIdentitySetData *)set withPrimaryServiceName:(id)name;
- (NSString)identityString;
- (void)dealloc;
@end

@implementation CKDPCSIdentityWrapper

- (NSString)identityString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_identityString)
  {
    v5 = objc_msgSend_primaryServiceName(selfCopy, v3, v4);
    v8 = objc_msgSend_identitySet(selfCopy, v6, v7);
    v9 = CKBasicStringForIdentitySet(v5, v8);
    identityString = selfCopy->_identityString;
    selfCopy->_identityString = v9;
  }

  objc_sync_exit(selfCopy);

  v11 = selfCopy->_identityString;

  return v11;
}

- (CKDPCSIdentityWrapper)initWithIdentitySet:(_PCSIdentitySetData *)set withPrimaryServiceName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = CKDPCSIdentityWrapper;
  v8 = [(CKDPCSIdentityWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_identitySet = set;
    if (set)
    {
      CFRetain(set);
    }

    objc_storeStrong(&v9->_primaryServiceName, name);
  }

  return v9;
}

- (void)dealloc
{
  identitySet = self->_identitySet;
  if (identitySet)
  {
    CFRelease(identitySet);
    self->_identitySet = 0;
  }

  v4.receiver = self;
  v4.super_class = CKDPCSIdentityWrapper;
  [(CKDPCSIdentityWrapper *)&v4 dealloc];
}

@end