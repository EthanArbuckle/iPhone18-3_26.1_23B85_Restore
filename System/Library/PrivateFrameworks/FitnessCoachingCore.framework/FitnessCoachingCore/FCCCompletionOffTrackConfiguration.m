@interface FCCCompletionOffTrackConfiguration
- (FCCCompletionOffTrackConfiguration)initWithIdentifier:(id)a3 goalBufferPercentage:(double)a4 coalescingRules:(id)a5 percentageOfDayRule:(id)a6 allowedGoalTypes:(id)a7;
- (FCCCompletionOffTrackConfiguration)initWithProtobuf:(id)a3;
- (FCCCompletionOffTrackConfiguration)initWithTransportData:(id)a3;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCCompletionOffTrackConfiguration

- (FCCCompletionOffTrackConfiguration)initWithIdentifier:(id)a3 goalBufferPercentage:(double)a4 coalescingRules:(id)a5 percentageOfDayRule:(id)a6 allowedGoalTypes:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = FCCCompletionOffTrackConfiguration;
  v16 = [(FCCCompletionOffTrackConfiguration *)&v24 init];
  if (v16)
  {
    v17 = [v12 copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v16->_goalBufferPercentage = a4;
    v19 = [v13 copy];
    coalescingRules = v16->_coalescingRules;
    v16->_coalescingRules = v19;

    objc_storeStrong(&v16->_percentageOfDayRule, a6);
    v21 = [v15 copy];
    allowedGoalTypes = v16->_allowedGoalTypes;
    v16->_allowedGoalTypes = v21;
  }

  return v16;
}

- (FCCCompletionOffTrackConfiguration)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  [v4 goalBufferPercentage];
  v7 = v6;
  if ([v4 coalescingRulesCount])
  {
    v8 = 0;
    v9 = MEMORY[0x277CBEBF8];
    do
    {
      v10 = [FCCCoalescingRule alloc];
      v11 = [v4 coalescingRulesAtIndex:v8];
      v12 = [v11 data];
      v13 = [(FCCCoalescingRule *)v10 initWithTransportData:v12];

      v14 = [v9 arrayByAddingObject:v13];

      ++v8;
      v9 = v14;
    }

    while ([v4 coalescingRulesCount] > v8);
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = [FCCPercentageOfDayRule alloc];
  v16 = [v4 percentageOfDayRule];
  v17 = [(FCCPercentageOfDayRule *)v15 initWithProtobuf:v16];

  if ([v4 allowedGoalTypesCount])
  {
    v18 = 0;
    v19 = MEMORY[0x277CBEBF8];
    do
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "allowedGoalTypesAtIndex:", v18)}];
      v21 = [v19 arrayByAddingObject:v20];

      ++v18;
      v19 = v21;
    }

    while ([v4 allowedGoalTypesCount] > v18);
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  v22 = [(FCCCompletionOffTrackConfiguration *)self initWithIdentifier:v5 goalBufferPercentage:v14 coalescingRules:v17 percentageOfDayRule:v21 allowedGoalTypes:v7];

  return v22;
}

- (id)protobuf
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(FCCCompletionOffTrackConfigurationProtobuf);
  [(FCCCompletionOffTrackConfigurationProtobuf *)v3 setIdentifier:self->_identifier];
  [(FCCCompletionOffTrackConfigurationProtobuf *)v3 setGoalBufferPercentage:self->_goalBufferPercentage];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_coalescingRules;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v22 + 1) + 8 * i) protobuf];
        [(FCCCompletionOffTrackConfigurationProtobuf *)v3 addCoalescingRules:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v10 = [(FCCPercentageOfDayRule *)self->_percentageOfDayRule protobuf];
  [(FCCCompletionOffTrackConfigurationProtobuf *)v3 setPercentageOfDayRule:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_allowedGoalTypes;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        -[FCCCompletionOffTrackConfigurationProtobuf addAllowedGoalTypes:](v3, "addAllowedGoalTypes:", [*(*(&v18 + 1) + 8 * j) unsignedIntValue]);
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (FCCCompletionOffTrackConfiguration)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCCompletionOffTrackConfigurationProtobuf alloc] initWithData:v4];

  v6 = [(FCCCompletionOffTrackConfiguration *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  v2 = [(FCCCompletionOffTrackConfiguration *)self protobuf];
  v3 = [v2 data];

  return v3;
}

@end