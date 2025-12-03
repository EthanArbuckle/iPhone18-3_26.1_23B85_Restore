@interface GDHMHomeMock
- (id)homeAccessControlForUser:(id)user;
@end

@implementation GDHMHomeMock

- (id)homeAccessControlForUser:(id)user
{
  userCopy = user;
  v8 = objc_msgSend_users(self, v5, v6, v7);
  v12 = objc_msgSend_firstObject(v8, v9, v10, v11);
  v16 = objc_msgSend_uniqueIdentifier(v12, v13, v14, v15);
  v20 = objc_msgSend_uniqueIdentifier(userCopy, v17, v18, v19);

  isEqual = objc_msgSend_isEqual_(v16, v21, v20, v22);
  v24 = [GDHMHomeAccessControlMock alloc];
  IsAdminAnswer = objc_msgSend_initWithIsAdminAnswer_(v24, v25, isEqual, v26);

  return IsAdminAnswer;
}

@end