@interface CNUIUserActionListModel
+ (id)emptyModel;
- (BOOL)isEmpty;
- (CNUIUserActionListModel)initWithDefaultAction:(id)a3 actions:(id)a4 directoryServiceActions:(id)a5 foundOnDeviceActions:(id)a6 hasDefaultApp:(BOOL)a7;
- (CNUIUserActionListModel)initWithModel:(id)a3 actions:(id)a4;
- (id)allActions;
- (id)description;
@end

@implementation CNUIUserActionListModel

+ (id)emptyModel
{
  if (emptyModel_cn_once_token_1 != -1)
  {
    +[CNUIUserActionListModel emptyModel];
  }

  v3 = emptyModel_cn_once_object_1;

  return v3;
}

- (BOOL)isEmpty
{
  v3 = [(CNUIUserActionListModel *)self defaultAction];

  if (v3)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E6996530];
  v5 = [(CNUIUserActionListModel *)self actions];
  v6 = (*(v4 + 16))(v4, v5);

  if (!v6)
  {
    return 0;
  }

  v7 = [(CNUIUserActionListModel *)self directoryServiceActions];
  v8 = (*(v4 + 16))(v4, v7);

  if (!v8)
  {
    return 0;
  }

  v9 = [(CNUIUserActionListModel *)self foundOnDeviceActions];
  v10 = (*(v4 + 16))(v4, v9);

  return v10;
}

uint64_t __37__CNUIUserActionListModel_emptyModel__block_invoke()
{
  v0 = [CNUIUserActionListModel alloc];
  emptyModel_cn_once_object_1 = [(CNUIUserActionListModel *)v0 initWithDefaultAction:0 actions:MEMORY[0x1E695E0F0] directoryServiceActions:MEMORY[0x1E695E0F0] foundOnDeviceActions:MEMORY[0x1E695E0F0] hasDefaultApp:0];

  return MEMORY[0x1EEE66BB8]();
}

- (CNUIUserActionListModel)initWithDefaultAction:(id)a3 actions:(id)a4 directoryServiceActions:(id)a5 foundOnDeviceActions:(id)a6 hasDefaultApp:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v21.receiver = self;
  v21.super_class = CNUIUserActionListModel;
  v17 = [(CNUIUserActionListModel *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_defaultAction, a3);
    objc_storeStrong(&v18->_actions, a4);
    objc_storeStrong(&v18->_directoryServiceActions, a5);
    objc_storeStrong(&v18->_foundOnDeviceActions, a6);
    v18->_hasDefaultApp = a7;
    v19 = v18;
  }

  return v18;
}

- (CNUIUserActionListModel)initWithModel:(id)a3 actions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 defaultAction];
  v9 = [v7 directoryServiceActions];
  v10 = [v7 foundOnDeviceActions];
  v11 = [v7 hasDefaultApp];

  v12 = [(CNUIUserActionListModel *)self initWithDefaultAction:v8 actions:v6 directoryServiceActions:v9 foundOnDeviceActions:v10 hasDefaultApp:v11];
  return v12;
}

- (id)allActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CNUIUserActionListModel *)self actions];
  [v3 addObjectsFromArray:v4];

  v5 = [(CNUIUserActionListModel *)self directoryServiceActions];
  [v3 addObjectsFromArray:v5];

  v6 = [(CNUIUserActionListModel *)self foundOnDeviceActions];
  [v3 addObjectsFromArray:v6];

  v7 = [v3 copy];

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUIUserActionListModel *)self defaultAction];
  v5 = __38__CNUIUserActionListModel_description__block_invoke(v4, v4);
  v6 = [v3 appendName:@"default" object:v5];

  v7 = [(CNUIUserActionListModel *)self actions];
  v8 = [v7 _cn_map:&__block_literal_global_4_1];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v3 appendName:@"actions" object:v9];

  v11 = [v3 build];

  return v11;
}

id __38__CNUIUserActionListModel_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v3 targetHandle];
  v5 = [v2 stringWithFormat:@"%@ (%p)", v4, v3];

  return v5;
}

@end