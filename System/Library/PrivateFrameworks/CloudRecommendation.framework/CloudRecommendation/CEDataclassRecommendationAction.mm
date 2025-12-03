@interface CEDataclassRecommendationAction
- (CEDataclassRecommendationAction)initWithCoder:(id)coder;
- (CEDataclassRecommendationAction)initWithDictionary:(id)dictionary;
- (CEDataclassRecommendationAction)initWithIdentifier:(id)identifier title:(id)title dataclasses:(id)dataclasses;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CEDataclassRecommendationAction

- (CEDataclassRecommendationAction)initWithIdentifier:(id)identifier title:(id)title dataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  v13.receiver = self;
  v13.super_class = CEDataclassRecommendationAction;
  v10 = [(CERecommendationAction *)&v13 initWithIdentifier:identifier actionTitle:title actionType:@"EnableDataclass"];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_dataclasses, dataclasses);
  }

  return v11;
}

- (CEDataclassRecommendationAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CEDataclassRecommendationAction;
  v5 = [(CERecommendationAction *)&v14 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dataclassesToEnable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __54__CEDataclassRecommendationAction_initWithDictionary___block_invoke;
      v12[3] = &unk_278DE0538;
      v13 = v7;
      v8 = v7;
      [v6 enumerateObjectsUsingBlock:v12];
      v9 = [v8 copy];
      dataclasses = v5->_dataclasses;
      v5->_dataclasses = v9;
    }

    else
    {
      v8 = _CELogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CEDataclassRecommendationAction initWithDictionary:];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CEDataclassRecommendationAction;
  coderCopy = coder;
  [(CERecommendationAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_dataclasses forKey:{@"dataclasses", v5.receiver, v5.super_class}];
}

- (CEDataclassRecommendationAction)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CEDataclassRecommendationAction;
  v5 = [(CERecommendationAction *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"dataclasses"];
    dataclasses = v5->_dataclasses;
    v5->_dataclasses = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CEDataclassRecommendationAction;
  v4 = [(CERecommendationAction *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setDataclasses:self->_dataclasses];
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CEDataclassRecommendationAction;
  v3 = [(CERecommendationAction *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" dataclasses: %@", self->_dataclasses];

  return v4;
}

- (void)initWithDictionary:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse dataclasses from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end