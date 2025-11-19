@interface CSLPRFStingQuickSwitchItem
- (BOOL)isAvailableForQuickSwitch;
- (BOOL)isEqual:(id)a3;
- (CSLPRFStingQuickSwitchItem)initWithCoder:(id)a3;
- (CSLPRFStingQuickSwitchItem)initWithDelegate:(id)a3 settingsItem:(id)a4 availability:(BOOL)a5;
- (CSLPRFStingQuickSwitchItemDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_withLock:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAvailableForQuickSwitch:(BOOL)a3 shouldNotify:(BOOL)a4;
@end

@implementation CSLPRFStingQuickSwitchItem

- (CSLPRFStingQuickSwitchItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(CSLPRFStingQuickSwitchItem *)self actionType];
  if (v4 - 1 > 0x29)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_278744510[v4 - 1];
  }

  v6 = v5;
  [v3 appendString:v6 withName:@"actionType" skipIfEmpty:1];

  v7 = [v3 appendBool:-[CSLPRFStingQuickSwitchItem isAvailableForQuickSwitch](self withName:{"isAvailableForQuickSwitch"), @"available"}];
  v8 = [v3 build];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
    v7 = [(CSLPRFStingQuickSwitchItem *)self actionType];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __38__CSLPRFStingQuickSwitchItem_isEqual___block_invoke;
    v20[3] = &unk_278745608;
    v8 = v5;
    v21 = v8;
    v9 = [v6 appendInteger:v7 counterpart:v20];
    v10 = [(CSLPRFStingQuickSwitchItem *)self isAvailableForQuickSwitch];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __38__CSLPRFStingQuickSwitchItem_isEqual___block_invoke_2;
    v18 = &unk_278745630;
    v19 = v8;
    v11 = v8;
    v12 = [v6 appendBool:v10 counterpart:&v15];
    v13 = [v6 isEqual];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_actionType];
  v5 = [v3 appendBool:self->_availableForQuickSwitch];
  v6 = [v3 hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CSLPRFStingQuickSwitchItem alloc];
  v5 = [(CSLPRFStingQuickSwitchItem *)self delegate];
  v6 = [(CSLPRFStingQuickSwitchItem *)self settingsItem];
  v7 = [(CSLPRFStingQuickSwitchItem *)v4 initWithDelegate:v5 settingsItem:v6 availability:[(CSLPRFStingQuickSwitchItem *)self isAvailableForQuickSwitch]];

  return v7;
}

- (CSLPRFStingQuickSwitchItem)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSLPRFStingQuickSwitchItem;
  v5 = [(CSLPRFStingQuickSwitchItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_actionType = [v4 decodeIntegerForKey:@"actionType"];
    v6->_availableForQuickSwitch = [v4 decodeBoolForKey:@"available"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__CSLPRFStingQuickSwitchItem_encodeWithCoder___block_invoke;
  v6[3] = &unk_2787455E0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CSLPRFStingQuickSwitchItem *)self _withLock:v6];
}

uint64_t __46__CSLPRFStingQuickSwitchItem_encodeWithCoder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) encodeInteger:*(*(a1 + 40) + 40) forKey:@"actionType"];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);

  return [v2 encodeBool:v3 forKey:@"available"];
}

- (void)setAvailableForQuickSwitch:(BOOL)a3 shouldNotify:(BOOL)a4
{
  v4 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CSLPRFStingQuickSwitchItem_setAvailableForQuickSwitch_shouldNotify___block_invoke;
  v8[3] = &unk_2787455B8;
  v9 = a3;
  v8[4] = self;
  v8[5] = &v10;
  [(CSLPRFStingQuickSwitchItem *)self _withLock:v8];
  if (*(v11 + 24) == 1 && v4)
  {
    v7 = [(CSLPRFStingQuickSwitchItem *)self delegate];
    [v7 quickSwitchItemDidChange:self];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __70__CSLPRFStingQuickSwitchItem_setAvailableForQuickSwitch_shouldNotify___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 8) != v2)
  {
    *(v1 + 8) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isAvailableForQuickSwitch
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__CSLPRFStingQuickSwitchItem_isAvailableForQuickSwitch__block_invoke;
  v4[3] = &unk_278745590;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLPRFStingQuickSwitchItem *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (CSLPRFStingQuickSwitchItem)initWithDelegate:(id)a3 settingsItem:(id)a4 availability:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = CSLPRFStingQuickSwitchItem;
  v10 = [(CSLPRFStingQuickSwitchItem *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v10->_delegate, v8);
    objc_storeStrong(&v11->_settingsItem, a4);
    v12 = [v9 actionType];
    v11->_actionType = [v12 integerValue];

    v11->_availableForQuickSwitch = a5;
  }

  return v11;
}

@end