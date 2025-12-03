@interface FCCGoalProgressContent
- (FCCGoalProgressContent)initWithEventIdentifier:(id)identifier goalTypesToDisplay:(id)display goalTypeToHighlight:(int64_t)highlight expectedGoalValue:(double)value;
- (FCCGoalProgressContent)initWithTransportData:(id)data;
- (id)transportData;
@end

@implementation FCCGoalProgressContent

- (FCCGoalProgressContent)initWithEventIdentifier:(id)identifier goalTypesToDisplay:(id)display goalTypeToHighlight:(int64_t)highlight expectedGoalValue:(double)value
{
  identifierCopy = identifier;
  displayCopy = display;
  v18.receiver = self;
  v18.super_class = FCCGoalProgressContent;
  v12 = [(FCCGoalProgressContent *)&v18 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    eventIdentifier = v12->_eventIdentifier;
    v12->_eventIdentifier = v13;

    v15 = [displayCopy copy];
    goalTypesToDisplay = v12->_goalTypesToDisplay;
    v12->_goalTypesToDisplay = v15;

    v12->_goalTypeToHighlight = highlight;
    v12->_expectedGoalValue = value;
  }

  return v12;
}

- (FCCGoalProgressContent)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCGoalProgressContentProtobuf alloc] initWithData:dataCopy];
  eventIdentifier = [(FCCGoalProgressContentProtobuf *)v5 eventIdentifier];
  if ([(FCCGoalProgressContentProtobuf *)v5 goalTypesToDisplaysCount])
  {
    v7 = 0;
    v8 = MEMORY[0x277CBEBF8];
    do
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[FCCGoalProgressContentProtobuf goalTypesToDisplayAtIndex:](v5, "goalTypesToDisplayAtIndex:", v7)}];
      v10 = [v8 arrayByAddingObject:v9];

      ++v7;
      v8 = v10;
    }

    while ([(FCCGoalProgressContentProtobuf *)v5 goalTypesToDisplaysCount]> v7);
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  goalTypeToHighlight = [(FCCGoalProgressContentProtobuf *)v5 goalTypeToHighlight];
  [(FCCGoalProgressContentProtobuf *)v5 expectedGoalValue];
  v12 = [(FCCGoalProgressContent *)self initWithEventIdentifier:eventIdentifier goalTypesToDisplay:v10 goalTypeToHighlight:goalTypeToHighlight expectedGoalValue:?];

  return v12;
}

- (id)transportData
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(FCCGoalProgressContentProtobuf);
  [(FCCGoalProgressContentProtobuf *)v3 setEventIdentifier:self->_eventIdentifier];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_goalTypesToDisplay;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        -[FCCGoalProgressContentProtobuf addGoalTypesToDisplay:](v3, "addGoalTypesToDisplay:", [*(*(&v12 + 1) + 8 * i) unsignedIntValue]);
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(FCCGoalProgressContentProtobuf *)v3 setGoalTypeToHighlight:LODWORD(self->_goalTypeToHighlight)];
  [(FCCGoalProgressContentProtobuf *)v3 setExpectedGoalValue:self->_expectedGoalValue];
  data = [(FCCGoalProgressContentProtobuf *)v3 data];

  v10 = *MEMORY[0x277D85DE8];

  return data;
}

@end