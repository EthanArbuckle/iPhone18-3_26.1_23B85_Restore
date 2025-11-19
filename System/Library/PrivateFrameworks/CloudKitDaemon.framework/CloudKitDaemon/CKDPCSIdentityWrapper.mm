@interface CKDPCSIdentityWrapper
- (CKDPCSIdentityWrapper)initWithIdentitySet:(_PCSIdentitySetData *)a3 withPrimaryServiceName:(id)a4;
- (NSString)identityString;
- (void)dealloc;
@end

@implementation CKDPCSIdentityWrapper

- (NSString)identityString
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_identityString)
  {
    v5 = objc_msgSend_primaryServiceName(v2, v3, v4);
    v8 = objc_msgSend_identitySet(v2, v6, v7);
    v9 = CKBasicStringForIdentitySet(v5, v8);
    identityString = v2->_identityString;
    v2->_identityString = v9;
  }

  objc_sync_exit(v2);

  v11 = v2->_identityString;

  return v11;
}

- (CKDPCSIdentityWrapper)initWithIdentitySet:(_PCSIdentitySetData *)a3 withPrimaryServiceName:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CKDPCSIdentityWrapper;
  v8 = [(CKDPCSIdentityWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_identitySet = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    objc_storeStrong(&v9->_primaryServiceName, a4);
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