@interface CNUICoreFamilyMemberContactsModel
- (BOOL)isEqual:(id)a3;
- (CNUICoreFamilyMemberContactsModel)init;
- (CNUICoreFamilyMemberContactsModel)initWithCoder:(id)a3;
- (CNUICoreFamilyMemberContactsModel)initWithItems:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation CNUICoreFamilyMemberContactsModel

- (CNUICoreFamilyMemberContactsModel)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreFamilyMemberContactsModel)initWithItems:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    if (CNGuardOSLog_cn_once_token_0_10 != -1)
    {
      [CNUICoreFamilyMemberContactsModel initWithItems:];
    }

    v6 = CNGuardOSLog_cn_once_object_0_10;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_10, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreFamilyMemberContactsModel initWithItems:v6];
    }
  }

  v11.receiver = self;
  v11.super_class = CNUICoreFamilyMemberContactsModel;
  v7 = [(CNUICoreFamilyMemberContactsModel *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_items, a3);
    v9 = v8;
  }

  return v8;
}

- (CNUICoreFamilyMemberContactsModel)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNUICoreFamilyMemberContactsModel;
  v5 = [(CNUICoreFamilyMemberContactsModel *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_items"];
    v10 = [v9 copy];
    items = v5->_items;
    v5->_items = v10;

    v12 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = -[CNUICoreFamilyMemberContactsModel items](self, "items"), v6 = -[CNUICoreFamilyMemberContactsModel items](v4, "items"), v5 | v6) && ![v5 isEqual:v6])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  v3 = [(CNUICoreFamilyMemberContactsModel *)self items];
  v4 = [v2 arrayHash:v3];

  return v4 + 527;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUICoreFamilyMemberContactsModel *)self items];
  v5 = [v3 appendObject:v4 withName:@"items"];

  v6 = [v3 build];

  return v6;
}

@end