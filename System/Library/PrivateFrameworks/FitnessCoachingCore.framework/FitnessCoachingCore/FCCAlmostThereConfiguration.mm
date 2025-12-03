@interface FCCAlmostThereConfiguration
- (FCCAlmostThereConfiguration)initWithIdentifier:(id)identifier minimumPercentageComplete:(double)complete goalBufferPercentage:(double)percentage coalescingRules:(id)rules timeOfDayRule:(id)rule goalType:(int64_t)type;
- (FCCAlmostThereConfiguration)initWithProtobuf:(id)protobuf;
- (FCCAlmostThereConfiguration)initWithTransportData:(id)data;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCAlmostThereConfiguration

- (FCCAlmostThereConfiguration)initWithIdentifier:(id)identifier minimumPercentageComplete:(double)complete goalBufferPercentage:(double)percentage coalescingRules:(id)rules timeOfDayRule:(id)rule goalType:(int64_t)type
{
  identifierCopy = identifier;
  rulesCopy = rules;
  ruleCopy = rule;
  v23.receiver = self;
  v23.super_class = FCCAlmostThereConfiguration;
  v17 = [(FCCAlmostThereConfiguration *)&v23 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v17->_minimumPercentageComplete = complete;
    v17->_goalBufferPercentage = percentage;
    v20 = [rulesCopy copy];
    coalescingRules = v17->_coalescingRules;
    v17->_coalescingRules = v20;

    objc_storeStrong(&v17->_timeOfDayRule, rule);
    v17->_goalType = type;
  }

  return v17;
}

- (FCCAlmostThereConfiguration)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  identifier = [protobufCopy identifier];
  [protobufCopy minimumPercentageComplete];
  v7 = v6;
  [protobufCopy goalBufferPercentage];
  v9 = v8;
  if ([protobufCopy coalescingRulesCount])
  {
    v10 = 0;
    v11 = MEMORY[0x277CBEBF8];
    do
    {
      v12 = [FCCCoalescingRule alloc];
      v13 = [protobufCopy coalescingRulesAtIndex:v10];
      data = [v13 data];
      v15 = [(FCCCoalescingRule *)v12 initWithTransportData:data];

      v16 = [v11 arrayByAddingObject:v15];

      ++v10;
      v11 = v16;
    }

    while ([protobufCopy coalescingRulesCount] > v10);
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = [FCCTimeOfDayRule alloc];
  timeOfDayRule = [protobufCopy timeOfDayRule];
  v19 = [(FCCTimeOfDayRule *)v17 initWithProtobuf:timeOfDayRule];

  v20 = -[FCCAlmostThereConfiguration initWithIdentifier:minimumPercentageComplete:goalBufferPercentage:coalescingRules:timeOfDayRule:goalType:](self, "initWithIdentifier:minimumPercentageComplete:goalBufferPercentage:coalescingRules:timeOfDayRule:goalType:", identifier, v16, v19, [protobufCopy goalType], v7, v9);
  return v20;
}

- (id)protobuf
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(FCCAlmostThereConfigurationProtobuf);
  [(FCCAlmostThereConfigurationProtobuf *)v3 setIdentifier:self->_identifier];
  [(FCCAlmostThereConfigurationProtobuf *)v3 setMinimumPercentageComplete:self->_minimumPercentageComplete];
  [(FCCAlmostThereConfigurationProtobuf *)v3 setGoalBufferPercentage:self->_goalBufferPercentage];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_coalescingRules;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        protobuf = [*(*(&v13 + 1) + 8 * i) protobuf];
        [(FCCAlmostThereConfigurationProtobuf *)v3 addCoalescingRules:protobuf];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  protobuf2 = [(FCCTimeOfDayRule *)self->_timeOfDayRule protobuf];
  [(FCCAlmostThereConfigurationProtobuf *)v3 setTimeOfDayRule:protobuf2];

  [(FCCAlmostThereConfigurationProtobuf *)v3 setGoalType:LODWORD(self->_goalType)];
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (FCCAlmostThereConfiguration)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCAlmostThereConfigurationProtobuf alloc] initWithData:dataCopy];

  v6 = [(FCCAlmostThereConfiguration *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  protobuf = [(FCCAlmostThereConfiguration *)self protobuf];
  data = [protobuf data];

  return data;
}

@end