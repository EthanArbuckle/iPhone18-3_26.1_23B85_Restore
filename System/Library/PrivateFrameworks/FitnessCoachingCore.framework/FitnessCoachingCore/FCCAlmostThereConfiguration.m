@interface FCCAlmostThereConfiguration
- (FCCAlmostThereConfiguration)initWithIdentifier:(id)a3 minimumPercentageComplete:(double)a4 goalBufferPercentage:(double)a5 coalescingRules:(id)a6 timeOfDayRule:(id)a7 goalType:(int64_t)a8;
- (FCCAlmostThereConfiguration)initWithProtobuf:(id)a3;
- (FCCAlmostThereConfiguration)initWithTransportData:(id)a3;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCAlmostThereConfiguration

- (FCCAlmostThereConfiguration)initWithIdentifier:(id)a3 minimumPercentageComplete:(double)a4 goalBufferPercentage:(double)a5 coalescingRules:(id)a6 timeOfDayRule:(id)a7 goalType:(int64_t)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = FCCAlmostThereConfiguration;
  v17 = [(FCCAlmostThereConfiguration *)&v23 init];
  if (v17)
  {
    v18 = [v14 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v17->_minimumPercentageComplete = a4;
    v17->_goalBufferPercentage = a5;
    v20 = [v15 copy];
    coalescingRules = v17->_coalescingRules;
    v17->_coalescingRules = v20;

    objc_storeStrong(&v17->_timeOfDayRule, a7);
    v17->_goalType = a8;
  }

  return v17;
}

- (FCCAlmostThereConfiguration)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  [v4 minimumPercentageComplete];
  v7 = v6;
  [v4 goalBufferPercentage];
  v9 = v8;
  if ([v4 coalescingRulesCount])
  {
    v10 = 0;
    v11 = MEMORY[0x277CBEBF8];
    do
    {
      v12 = [FCCCoalescingRule alloc];
      v13 = [v4 coalescingRulesAtIndex:v10];
      v14 = [v13 data];
      v15 = [(FCCCoalescingRule *)v12 initWithTransportData:v14];

      v16 = [v11 arrayByAddingObject:v15];

      ++v10;
      v11 = v16;
    }

    while ([v4 coalescingRulesCount] > v10);
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = [FCCTimeOfDayRule alloc];
  v18 = [v4 timeOfDayRule];
  v19 = [(FCCTimeOfDayRule *)v17 initWithProtobuf:v18];

  v20 = -[FCCAlmostThereConfiguration initWithIdentifier:minimumPercentageComplete:goalBufferPercentage:coalescingRules:timeOfDayRule:goalType:](self, "initWithIdentifier:minimumPercentageComplete:goalBufferPercentage:coalescingRules:timeOfDayRule:goalType:", v5, v16, v19, [v4 goalType], v7, v9);
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

        v9 = [*(*(&v13 + 1) + 8 * i) protobuf];
        [(FCCAlmostThereConfigurationProtobuf *)v3 addCoalescingRules:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [(FCCTimeOfDayRule *)self->_timeOfDayRule protobuf];
  [(FCCAlmostThereConfigurationProtobuf *)v3 setTimeOfDayRule:v10];

  [(FCCAlmostThereConfigurationProtobuf *)v3 setGoalType:LODWORD(self->_goalType)];
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (FCCAlmostThereConfiguration)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCAlmostThereConfigurationProtobuf alloc] initWithData:v4];

  v6 = [(FCCAlmostThereConfiguration *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  v2 = [(FCCAlmostThereConfiguration *)self protobuf];
  v3 = [v2 data];

  return v3;
}

@end