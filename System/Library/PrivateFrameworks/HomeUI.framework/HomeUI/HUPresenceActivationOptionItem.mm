@interface HUPresenceActivationOptionItem
- (HUPresenceActivationOptionItem)init;
- (HUPresenceActivationOptionItem)initWithEventType:(unint64_t)type selectedUsers:(id)users activationGranularity:(unint64_t)granularity style:(unint64_t)style home:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
- (id)_summaryTitle;
@end

@implementation HUPresenceActivationOptionItem

- (HUPresenceActivationOptionItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithEventType_selectedUsers_activationGranularity_style_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPresenceActivationOptionItem.m" lineNumber:16 description:{@"%s is unavailable; use %@ instead", "-[HUPresenceActivationOptionItem init]", v5}];

  return 0;
}

- (HUPresenceActivationOptionItem)initWithEventType:(unint64_t)type selectedUsers:(id)users activationGranularity:(unint64_t)granularity style:(unint64_t)style home:(id)home
{
  usersCopy = users;
  homeCopy = home;
  v18.receiver = self;
  v18.super_class = HUPresenceActivationOptionItem;
  v15 = [(HUPresenceActivationOptionItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_eventType = type;
    objc_storeStrong(&v15->_selectedUsers, users);
    v16->_activationGranularity = granularity;
    v16->_style = style;
    objc_storeStrong(&v16->_home, home);
  }

  return v16;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_opt_new();
  style = [(HUPresenceActivationOptionItem *)self style];
  if (style == 1)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUPresenceActivationOptionSingleUserTitle", @"HUPresenceActivationOptionSingleUserTitle", 1);
    v7 = MEMORY[0x277D13E20];
    v8 = MEMORY[0x277D13F60];
  }

  else
  {
    if (style)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUPresenceActivationOptionItem isSelected](self, "isSelected")}];
    v7 = MEMORY[0x277D13F60];
    v8 = MEMORY[0x277D13FE8];
  }

  [v4 setObject:v6 forKeyedSubscript:*v8];

  _summaryTitle = [(HUPresenceActivationOptionItem *)self _summaryTitle];
  [v4 setObject:_summaryTitle forKeyedSubscript:*v7];

LABEL_6:
  v10 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v10;
}

- (id)_summaryTitle
{
  v3 = objc_alloc_init(MEMORY[0x277D14978]);
  [v3 setActivationGranularity:{-[HUPresenceActivationOptionItem activationGranularity](self, "activationGranularity")}];
  [v3 setLocationEventType:{-[HUPresenceActivationOptionItem eventType](self, "eventType")}];
  selectedUsers = [(HUPresenceActivationOptionItem *)self selectedUsers];
  [v3 setUsers:selectedUsers];

  v5 = objc_alloc(MEMORY[0x277D14980]);
  home = [(HUPresenceActivationOptionItem *)self home];
  v7 = [v5 initWithHome:home];

  [v7 setStyle:1];
  [v7 setNameType:1];
  v8 = [v7 stringForPresenceEventBuilder:v3];

  return v8;
}

@end