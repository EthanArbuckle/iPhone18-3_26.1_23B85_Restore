@interface FCCAtypicalDayConfiguration
- (FCCAtypicalDayConfiguration)initWithIdentifier:(id)a3 minimumAheadPercentage:(double)a4 minimumBehindPercentage:(double)a5 percentageOfDayRule:(id)a6 allowedGoalTypes:(id)a7;
- (FCCAtypicalDayConfiguration)initWithProtobuf:(id)a3;
- (FCCAtypicalDayConfiguration)initWithTransportData:(id)a3;
- (id)protobuf;
- (id)transportData;
@end

@implementation FCCAtypicalDayConfiguration

- (FCCAtypicalDayConfiguration)initWithIdentifier:(id)a3 minimumAheadPercentage:(double)a4 minimumBehindPercentage:(double)a5 percentageOfDayRule:(id)a6 allowedGoalTypes:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v21.receiver = self;
  v21.super_class = FCCAtypicalDayConfiguration;
  v15 = [(FCCAtypicalDayConfiguration *)&v21 init];
  if (v15)
  {
    v16 = [v12 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v15->_minimumAheadPercentage = a4;
    v15->_minimumBehindPercentage = a5;
    objc_storeStrong(&v15->_percentageOfDayRule, a6);
    v18 = [v14 copy];
    allowedGoalTypes = v15->_allowedGoalTypes;
    v15->_allowedGoalTypes = v18;
  }

  return v15;
}

- (FCCAtypicalDayConfiguration)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  [v4 minimumAheadPercentage];
  v7 = v6;
  [v4 minimumBehindPercentage];
  v9 = v8;
  v10 = [FCCPercentageOfDayRule alloc];
  v11 = [v4 percentageOfDayRule];
  v12 = [(FCCPercentageOfDayRule *)v10 initWithProtobuf:v11];

  if ([v4 allowedGoalTypesCount])
  {
    v13 = 0;
    v14 = MEMORY[0x277CBEBF8];
    do
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "allowedGoalTypesAtIndex:", v13)}];
      v16 = [v14 arrayByAddingObject:v15];

      ++v13;
      v14 = v16;
    }

    while ([v4 allowedGoalTypesCount] > v13);
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = [(FCCAtypicalDayConfiguration *)self initWithIdentifier:v5 minimumAheadPercentage:v12 minimumBehindPercentage:v16 percentageOfDayRule:v7 allowedGoalTypes:v9];

  return v17;
}

- (id)protobuf
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(FCCAtypicalDayConfigurationProtobuf);
  [(FCCAtypicalDayConfigurationProtobuf *)v3 setIdentifier:self->_identifier];
  [(FCCAtypicalDayConfigurationProtobuf *)v3 setMinimumAheadPercentage:self->_minimumAheadPercentage];
  [(FCCAtypicalDayConfigurationProtobuf *)v3 setMinimumBehindPercentage:self->_minimumBehindPercentage];
  v4 = [(FCCPercentageOfDayRule *)self->_percentageOfDayRule protobuf];
  [(FCCAtypicalDayConfigurationProtobuf *)v3 setPercentageOfDayRule:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_allowedGoalTypes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        -[FCCAtypicalDayConfigurationProtobuf addAllowedGoalTypes:](v3, "addAllowedGoalTypes:", [*(*(&v12 + 1) + 8 * i) unsignedIntValue]);
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (FCCAtypicalDayConfiguration)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCAtypicalDayConfigurationProtobuf alloc] initWithData:v4];

  v6 = [(FCCAtypicalDayConfiguration *)self initWithProtobuf:v5];
  return v6;
}

- (id)transportData
{
  v2 = [(FCCAtypicalDayConfiguration *)self protobuf];
  v3 = [v2 data];

  return v3;
}

@end