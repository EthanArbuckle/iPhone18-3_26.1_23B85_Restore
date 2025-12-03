@interface CNUIUserActionListModel
+ (id)emptyModel;
- (BOOL)isEmpty;
- (CNUIUserActionListModel)initWithDefaultAction:(id)action actions:(id)actions directoryServiceActions:(id)serviceActions foundOnDeviceActions:(id)deviceActions hasDefaultApp:(BOOL)app;
- (CNUIUserActionListModel)initWithModel:(id)model actions:(id)actions;
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
  defaultAction = [(CNUIUserActionListModel *)self defaultAction];

  if (defaultAction)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E6996530];
  actions = [(CNUIUserActionListModel *)self actions];
  v6 = (*(v4 + 16))(v4, actions);

  if (!v6)
  {
    return 0;
  }

  directoryServiceActions = [(CNUIUserActionListModel *)self directoryServiceActions];
  v8 = (*(v4 + 16))(v4, directoryServiceActions);

  if (!v8)
  {
    return 0;
  }

  foundOnDeviceActions = [(CNUIUserActionListModel *)self foundOnDeviceActions];
  v10 = (*(v4 + 16))(v4, foundOnDeviceActions);

  return v10;
}

uint64_t __37__CNUIUserActionListModel_emptyModel__block_invoke()
{
  v0 = [CNUIUserActionListModel alloc];
  emptyModel_cn_once_object_1 = [(CNUIUserActionListModel *)v0 initWithDefaultAction:0 actions:MEMORY[0x1E695E0F0] directoryServiceActions:MEMORY[0x1E695E0F0] foundOnDeviceActions:MEMORY[0x1E695E0F0] hasDefaultApp:0];

  return MEMORY[0x1EEE66BB8]();
}

- (CNUIUserActionListModel)initWithDefaultAction:(id)action actions:(id)actions directoryServiceActions:(id)serviceActions foundOnDeviceActions:(id)deviceActions hasDefaultApp:(BOOL)app
{
  actionCopy = action;
  actionsCopy = actions;
  serviceActionsCopy = serviceActions;
  deviceActionsCopy = deviceActions;
  v21.receiver = self;
  v21.super_class = CNUIUserActionListModel;
  v17 = [(CNUIUserActionListModel *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_defaultAction, action);
    objc_storeStrong(&v18->_actions, actions);
    objc_storeStrong(&v18->_directoryServiceActions, serviceActions);
    objc_storeStrong(&v18->_foundOnDeviceActions, deviceActions);
    v18->_hasDefaultApp = app;
    v19 = v18;
  }

  return v18;
}

- (CNUIUserActionListModel)initWithModel:(id)model actions:(id)actions
{
  actionsCopy = actions;
  modelCopy = model;
  defaultAction = [modelCopy defaultAction];
  directoryServiceActions = [modelCopy directoryServiceActions];
  foundOnDeviceActions = [modelCopy foundOnDeviceActions];
  hasDefaultApp = [modelCopy hasDefaultApp];

  v12 = [(CNUIUserActionListModel *)self initWithDefaultAction:defaultAction actions:actionsCopy directoryServiceActions:directoryServiceActions foundOnDeviceActions:foundOnDeviceActions hasDefaultApp:hasDefaultApp];
  return v12;
}

- (id)allActions
{
  array = [MEMORY[0x1E695DF70] array];
  actions = [(CNUIUserActionListModel *)self actions];
  [array addObjectsFromArray:actions];

  directoryServiceActions = [(CNUIUserActionListModel *)self directoryServiceActions];
  [array addObjectsFromArray:directoryServiceActions];

  foundOnDeviceActions = [(CNUIUserActionListModel *)self foundOnDeviceActions];
  [array addObjectsFromArray:foundOnDeviceActions];

  v7 = [array copy];

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  defaultAction = [(CNUIUserActionListModel *)self defaultAction];
  v5 = __38__CNUIUserActionListModel_description__block_invoke(defaultAction, defaultAction);
  v6 = [v3 appendName:@"default" object:v5];

  actions = [(CNUIUserActionListModel *)self actions];
  v8 = [actions _cn_map:&__block_literal_global_4_1];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v3 appendName:@"actions" object:v9];

  build = [v3 build];

  return build;
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