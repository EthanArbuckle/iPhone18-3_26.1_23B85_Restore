@interface HFScheduleTypeItem
+ (unint64_t)sortOrderForType:(unint64_t)type;
- (HFScheduleTypeItem)initWithScheduleType:(unint64_t)type scheduleBuilder:(id)builder;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFScheduleTypeItem

- (HFScheduleTypeItem)initWithScheduleType:(unint64_t)type scheduleBuilder:(id)builder
{
  builderCopy = builder;
  v11.receiver = self;
  v11.super_class = HFScheduleTypeItem;
  v8 = [(HFScheduleTypeItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_scheduleBuilder, builder);
    v9->_selected = [builderCopy estimatedScheduleType] == type;
  }

  return v9;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4 = [HFScheduleTypeItem sortOrderForType:[(HFScheduleTypeItem *)self type]];
  v15[0] = @"title";
  v5 = [HFScheduleUtilities localizedStringFromScheduleType:[(HFScheduleTypeItem *)self type]];
  v16[0] = v5;
  v15[1] = @"HFResultDisplayAccessibilityIDKey";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Home.Schedule.Type.%lu", self->_type];
  v16[1] = v6;
  v15[2] = @"selected";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFScheduleTypeItem isSelected](self, "isSelected")}];
  v16[2] = v7;
  v15[3] = @"manualSortKey";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v15[4] = @"shouldDisableForNonAdminUsers";
  v16[3] = v8;
  v16[4] = MEMORY[0x277CBEC28];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v10 = MEMORY[0x277D2C900];
  v11 = [HFItemUpdateOutcome outcomeWithResults:v9];
  v12 = [v10 futureWithResult:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (unint64_t)sortOrderForType:(unint64_t)type
{
  typeCopy = type;
  if (type >= 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:typeCopy];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFScheduleTypeItemProvider.m" lineNumber:53 description:{@"Unknown schedule type [%@]", v7}];

    return 0;
  }

  return typeCopy;
}

@end