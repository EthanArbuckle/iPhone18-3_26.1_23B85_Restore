@interface GDHomeUser
- (BOOL)isAdministratorForHome:(id)a3;
- (GDHomeUser)initWithHMUser:(id)a3;
@end

@implementation GDHomeUser

- (BOOL)isAdministratorForHome:(id)a3
{
  v5 = objc_msgSend_hmHome(a3, a2, a3, v3);
  v8 = objc_msgSend_homeAccessControlForUser_(v5, v6, self->_inner, v7);

  LOBYTE(v5) = objc_msgSend_isAdministrator(v8, v9, v10, v11);
  return v5;
}

- (GDHomeUser)initWithHMUser:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDHomeUser;
  v6 = [(GDHomeUser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inner, a3);
  }

  return v7;
}

@end