@interface PKPassTileState
+ (id)_createWithType:(int64_t)a3;
+ (id)createResolvedStateWithType:(int64_t)a3;
+ (void)_createForDictionary:(uint64_t)a3 withTileType:(int)a4 isRoot:;
- (BOOL)_setUpWithDictionary:(id)a3;
- (BOOL)isEqualToUnresolvedState:(id)a3;
- (PKPassTileState)initWithCoder:(id)a3;
- (PKPassTileStateCheckIn)stateTypeCheckIn;
- (PKPassTileStateDefault)stateTypeDefault;
- (PKPassTileStateDefaultV2)stateTypeDefaultV2;
- (PKPassTileStateForeignView)stateTypeForeignView;
- (PKPassTileStateGroup)stateTypeGroup;
- (PKPassTileStatePaymentOfferSelector)stateTypePaymentOfferSelector;
- (PKPaymentPassAction)action;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createResolvedStateWithBundle:(id)a3 privateBundle:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setActions:(id)a3;
@end

@implementation PKPassTileState

+ (void)_createForDictionary:(uint64_t)a3 withTileType:(int)a4 isRoot:
{
  v6 = a2;
  objc_opt_self();
  if (!v6)
  {
    goto LABEL_10;
  }

  v17 = 0;
  if ([PKPassTileMetadata isGroupType:a3])
  {
    v17 = 3;
    goto LABEL_5;
  }

  v7 = [v6 PKStringForKey:@"type"];
  v8 = PKPassTileStateTypeFromString(v7, &v17);

  if (!v8)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v9 = [PKPassTileState _createWithType:?];
  if (v9 && (+[PKPassTileStateMetadata _createForType:dictionary:](PKPassTileStateMetadata, "_createForType:dictionary:", a3, v6), v10 = objc_claimAutoreleasedReturnValue(), v11 = v9[4], v9[4] = v10, v11, [v9 _setUpWithDictionary:v6]))
  {
    if (a4)
    {
      v12 = [v6 PKDictionaryForKey:@"actionState"];
      v13 = [PKPassTileState _createForDictionary:v12 withTileType:a3 isRoot:0];
      v14 = v9[5];
      v9[5] = v13;
    }

    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

LABEL_13:
  return v15;
}

+ (id)_createWithType:(int64_t)a3
{
  if (a3 >= 7 || ((0x6Fu >> a3) & 1) == 0)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = objc_alloc(*off_1E79CA438[a3]);
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v9.receiver = v4;
  v9.super_class = PKPassTileState;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  v7 = v6;
  if (v6)
  {
    *(v6 + 3) = a3;
    *(v6 + 18) = 0;
  }

LABEL_8:

  return v7;
}

+ (id)createResolvedStateWithType:(int64_t)a3
{
  if (a3 >= 7 || ((0x6Fu >> a3) & 1) == 0)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = objc_alloc(*off_1E79CA438[a3]);
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v9.receiver = v4;
  v9.super_class = PKPassTileState;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  v7 = v6;
  if (v6)
  {
    *(v6 + 3) = a3;
    v6[18] = 1;
  }

LABEL_8:

  v7[16] = 1;
  return v7;
}

- (BOOL)_setUpWithDictionary:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 PKNumberForKey:@"enabled"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  self->_enabled = v7;
  self->_selected = [v4 PKBoolForKey:@"selected"];
  v8 = [v4 PKDictionaryForKey:@"icon"];
  if (v8)
  {
    v9 = [PKPassTileImage _createForDictionary:v8];
    icon = self->_icon;
    self->_icon = v9;
  }

  v11 = [v4 PKArrayContaining:objc_opt_class() forKey:@"actions"];
  actionDictionaries = self->_actionDictionaries;
  self->_actionDictionaries = v11;

  if (!self->_actionDictionaries)
  {
    v13 = [v4 PKDictionaryForKey:@"action"];
    v14 = v13;
    if (v13)
    {
      v18[0] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v16 = self->_actionDictionaries;
      self->_actionDictionaries = v15;
    }
  }

  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PKPassTileState _createWithType:self->_type];
  objc_storeStrong(v4 + 4, self->_metadata);
  *(v4 + 16) = self->_enabled;
  *(v4 + 17) = self->_selected;
  objc_storeStrong(v4 + 5, self->_actionState);
  objc_storeStrong(v4 + 6, self->_icon);
  objc_storeStrong(v4 + 1, self->_actions);
  objc_storeStrong(v4 + 7, self->_actionDictionaries);
  *(v4 + 18) = self->_resolved;
  return v4;
}

- (id)createResolvedStateWithBundle:(id)a3 privateBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKPassTileState %@ attempting double resolution.", objc_opt_class()}];
  }

  v8 = [PKPassTileState _createWithType:self->_type];
  objc_storeStrong(v8 + 4, self->_metadata);
  *(v8 + 16) = self->_enabled;
  *(v8 + 17) = self->_selected;
  v9 = [(PKPassTileState *)self->_actionState createResolvedStateWithBundle:v6 privateBundle:v7];
  v10 = v8[5];
  v8[5] = v9;

  v11 = [(PKPassTileImage *)self->_icon createResolvedImageWithBundle:v6 privateBundle:v7];
  v12 = v8[6];
  v8[6] = v11;

  actionDictionaries = self->_actionDictionaries;
  if (actionDictionaries)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__PKPassTileState_createResolvedStateWithBundle_privateBundle___block_invoke;
    v17[3] = &unk_1E79CA3E0;
    v18 = v6;
    v14 = [(NSArray *)actionDictionaries pk_createArrayBySafelyApplyingBlock:v17];
    v15 = v8[1];
    v8[1] = v14;
  }

  *(v8 + 18) = 1;

  return v8;
}

PKPaymentPassAction *__63__PKPassTileState_createResolvedStateWithBundle_privateBundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKPaymentPassAction alloc] initWithDictionary:v3 bundle:*(a1 + 32)];

  return v4;
}

- (PKPassTileState)initWithCoder:(id)a3
{
  v4 = a3;
  v21 = 0;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = PKPassTileStateTypeFromString(v5, &v21);

  if (v6 & 1) != 0 && v21 <= 6 && ((0x6Fu >> v21) & 1) != 0 && objc_opt_class() && (objc_opt_isKindOfClass())
  {
    if (self && (v7 = v21, v22.receiver = self, v22.super_class = PKPassTileState, (v8 = [(PKPassTileState *)&v22 init]) != 0))
    {
      v9 = v8;
      v8->_type = v7;
      v8->_resolved = 1;
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
      metadata = v9->_metadata;
      v9->_metadata = v10;

      v9->_enabled = [v4 decodeBoolForKey:@"enabled"];
      v9->_selected = [v4 decodeBoolForKey:@"selected"];
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionState"];
      actionState = v9->_actionState;
      v9->_actionState = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
      icon = v9->_icon;
      v9->_icon = v14;

      v16 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];
      actions = v9->_actions;
      v9->_actions = v16;
    }

    else
    {
      v9 = 0;
    }

    self = v9;
    v19 = self;
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassTileState" code:0 userInfo:0];
    [v4 failWithError:v18];

    v19 = 0;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (!self->_resolved)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKPassTileState %@ attempting unresolved XPC transfer.", objc_opt_class()}];
  }

  v4 = PKPassTileStateTypeToString(self->_type);
  [v5 encodeObject:v4 forKey:@"type"];

  [v5 encodeObject:self->_metadata forKey:@"metadata"];
  [v5 encodeBool:self->_enabled forKey:@"enabled"];
  [v5 encodeBool:self->_selected forKey:@"selected"];
  [v5 encodeObject:self->_actionState forKey:@"actionState"];
  [v5 encodeObject:self->_icon forKey:@"icon"];
  [v5 encodeObject:self->_actions forKey:@"actions"];
}

- (BOOL)isEqualToUnresolvedState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[18] & 1) != 0 || self->_resolved || *(v4 + 3) != self->_type)
  {
    goto LABEL_23;
  }

  v6 = *(v4 + 4);
  metadata = self->_metadata;
  if (v6)
  {
    if (!metadata || ([v6 isEqualToUnresolvedMetadata:?] & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (metadata)
  {
    goto LABEL_23;
  }

  if (v5[16] != self->_enabled || v5[17] != self->_selected)
  {
    goto LABEL_23;
  }

  v8 = *(v5 + 6);
  icon = self->_icon;
  if (v8)
  {
    if (!icon || ([v8 isEqualToUnresolvedImage:?] & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (icon)
  {
    goto LABEL_23;
  }

  v10 = *(v5 + 7);
  actionDictionaries = self->_actionDictionaries;
  if (!v10 || !actionDictionaries)
  {
    if (v10 == actionDictionaries)
    {
      goto LABEL_19;
    }

LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  if (([(NSArray *)v10 isEqual:?]& 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v12 = *(v5 + 5);
  actionState = self->_actionState;
  if (v12 && actionState)
  {
    v14 = [(PKPassTileState *)v12 isEqualToUnresolvedState:?];
  }

  else
  {
    v14 = v12 == actionState;
  }

LABEL_24:

  return v14;
}

- (PKPaymentPassAction)action
{
  actions = self->_actions;
  if (actions)
  {
    actions = [actions firstObject];
    v2 = vars8;
  }

  return actions;
}

- (void)setActions:(id)a3
{
  v5 = a3;
  if (self->_resolved)
  {
    v6 = v5;
    objc_storeStrong(&self->_actions, a3);
    v5 = v6;
  }
}

- (PKPassTileStateDefault)stateTypeDefault
{
  if (self->_type)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileStateDefaultV2)stateTypeDefaultV2
{
  if (self->_type != 1)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileStateCheckIn)stateTypeCheckIn
{
  if (self->_type != 2)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileStateGroup)stateTypeGroup
{
  if (self->_type != 3)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileStateForeignView)stateTypeForeignView
{
  if (self->_type != 5)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileStatePaymentOfferSelector)stateTypePaymentOfferSelector
{
  if (self->_type != 6)
  {
    self = 0;
  }

  return self;
}

@end