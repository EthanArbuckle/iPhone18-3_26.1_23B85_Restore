@interface CSAttributionResponseMessage
+ (id)requiredParameters;
- (CSAttributionResponseMessage)initWithAttributions:(id)a3;
- (CSAttributionResponseMessage)initWithMessage:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSAttributionResponseMessage

+ (id)requiredParameters
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CSAttributionResponseMessage;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"QueueAttributions"];

  return v3;
}

- (CSAttributionResponseMessage)initWithAttributions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSAttributionResponseMessage;
  v5 = [(CSAttributionResponseMessage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    queueIdentifierAttributionMap = v5->_queueIdentifierAttributionMap;
    v5->_queueIdentifierAttributionMap = v6;
  }

  return v5;
}

- (CSAttributionResponseMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CSAttributionResponseMessage;
  v5 = [(CSMessage *)&v14 initWithMessage:v4];
  if (v5)
  {
    CFDictionaryGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__CSAttributionResponseMessage_initWithMessage___block_invoke;
    v12[3] = &unk_278E0AD00;
    v13 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
    v9 = [v8 copy];
    queueIdentifierAttributionMap = v5->_queueIdentifierAttributionMap;
    v5->_queueIdentifierAttributionMap = v9;
  }

  return v5;
}

void __48__CSAttributionResponseMessage_initWithMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CF6C40];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithDictionary:v6];

  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

- (id)dictionaryRepresentation
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSDictionary count](self->_queueIdentifierAttributionMap, "count")}];
  queueIdentifierAttributionMap = self->_queueIdentifierAttributionMap;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__CSAttributionResponseMessage_dictionaryRepresentation__block_invoke;
  v10[3] = &unk_278E0AD28;
  v11 = v3;
  v5 = v3;
  [(NSDictionary *)queueIdentifierAttributionMap enumerateKeysAndObjectsUsingBlock:v10];
  v9.receiver = self;
  v9.super_class = CSAttributionResponseMessage;
  v6 = [(CSMessage *)&v9 dictionaryRepresentation];
  v7 = [v6 mutableCopy];

  [v7 setObject:v5 forKeyedSubscript:@"QueueAttributions"];

  return v7;
}

void __56__CSAttributionResponseMessage_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end