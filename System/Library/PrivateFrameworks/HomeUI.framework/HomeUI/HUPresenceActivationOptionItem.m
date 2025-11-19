@interface HUPresenceActivationOptionItem
- (HUPresenceActivationOptionItem)init;
- (HUPresenceActivationOptionItem)initWithEventType:(unint64_t)a3 selectedUsers:(id)a4 activationGranularity:(unint64_t)a5 style:(unint64_t)a6 home:(id)a7;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)_summaryTitle;
@end

@implementation HUPresenceActivationOptionItem

- (HUPresenceActivationOptionItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithEventType_selectedUsers_activationGranularity_style_home_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUPresenceActivationOptionItem.m" lineNumber:16 description:{@"%s is unavailable; use %@ instead", "-[HUPresenceActivationOptionItem init]", v5}];

  return 0;
}

- (HUPresenceActivationOptionItem)initWithEventType:(unint64_t)a3 selectedUsers:(id)a4 activationGranularity:(unint64_t)a5 style:(unint64_t)a6 home:(id)a7
{
  v13 = a4;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = HUPresenceActivationOptionItem;
  v15 = [(HUPresenceActivationOptionItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_eventType = a3;
    objc_storeStrong(&v15->_selectedUsers, a4);
    v16->_activationGranularity = a5;
    v16->_style = a6;
    objc_storeStrong(&v16->_home, a7);
  }

  return v16;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(HUPresenceActivationOptionItem *)self style];
  if (v5 == 1)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUPresenceActivationOptionSingleUserTitle", @"HUPresenceActivationOptionSingleUserTitle", 1);
    v7 = MEMORY[0x277D13E20];
    v8 = MEMORY[0x277D13F60];
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUPresenceActivationOptionItem isSelected](self, "isSelected")}];
    v7 = MEMORY[0x277D13F60];
    v8 = MEMORY[0x277D13FE8];
  }

  [v4 setObject:v6 forKeyedSubscript:*v8];

  v9 = [(HUPresenceActivationOptionItem *)self _summaryTitle];
  [v4 setObject:v9 forKeyedSubscript:*v7];

LABEL_6:
  v10 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v10;
}

- (id)_summaryTitle
{
  v3 = objc_alloc_init(MEMORY[0x277D14978]);
  [v3 setActivationGranularity:{-[HUPresenceActivationOptionItem activationGranularity](self, "activationGranularity")}];
  [v3 setLocationEventType:{-[HUPresenceActivationOptionItem eventType](self, "eventType")}];
  v4 = [(HUPresenceActivationOptionItem *)self selectedUsers];
  [v3 setUsers:v4];

  v5 = objc_alloc(MEMORY[0x277D14980]);
  v6 = [(HUPresenceActivationOptionItem *)self home];
  v7 = [v5 initWithHome:v6];

  [v7 setStyle:1];
  [v7 setNameType:1];
  v8 = [v7 stringForPresenceEventBuilder:v3];

  return v8;
}

@end