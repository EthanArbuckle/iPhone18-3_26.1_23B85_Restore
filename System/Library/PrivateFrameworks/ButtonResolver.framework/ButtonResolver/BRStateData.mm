@interface BRStateData
- (BRStateData)initWithState:(unint64_t)state enabled:(BOOL)enabled;
- (BRStateData)initWithStateData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)propertyList;
- (void)dealloc;
@end

@implementation BRStateData

- (BRStateData)initWithState:(unint64_t)state enabled:(BOOL)enabled
{
  v9.receiver = self;
  v9.super_class = BRStateData;
  v6 = [(BRStateData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_state = state;
    v6->_enabled = enabled;
    v6->_speedConfigs = objc_opt_new();
    v7->_speedSlots = objc_opt_new();
  }

  return v7;
}

- (BRStateData)initWithStateData:(id)data
{
  if (data)
  {
    v6.receiver = self;
    v6.super_class = BRStateData;
    v4 = [(BRStateData *)&v6 init];
    if (v4)
    {
      v4->_state = [data state];
      v4->_enabled = [data enabled];
      v4->_speedConfigs = [objc_msgSend(data "speedConfigs")];
      v4->_speedSlots = [objc_msgSend(data "speedSlots")];
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithStateData:self];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BRStateData;
  [(BRStateData *)&v3 dealloc];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BRStateData;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[BRStateData description](&v7, sel_description)}];
  [v3 appendFormat:@"State: %lu;", -[BRStateData state](self, "state")];
  enabled = [(BRStateData *)self enabled];
  v5 = "N";
  if (enabled)
  {
    v5 = "Y";
  }

  [v3 appendFormat:@"Enabled: %s;", v5];
  [v3 appendFormat:@"ButtonConfigsForSpeeds: %@;", -[BRStateData speedConfigs](self, "speedConfigs")];
  [v3 appendFormat:@"SlotsForSpeeds: %@;", -[BRStateData speedSlots](self, "speedSlots")];
  return v3;
}

- (id)propertyList
{
  v31 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", -[BRStateData state](self, "state")), @"State"}];
  v6 = MEMORY[0x277CCACA8];
  enabled = [(BRStateData *)self enabled];
  v8 = "N";
  if (enabled)
  {
    v8 = "Y";
  }

  [dictionary setObject:objc_msgSend(v6 forKey:{"stringWithFormat:", @"%s;", v8), @"Enabled"}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  speedConfigs = [(BRStateData *)self speedConfigs];
  v10 = [(NSMutableDictionary *)speedConfigs countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(speedConfigs);
        }

        [dictionary2 setObject:-[NSMutableDictionary objectForKeyedSubscript:](-[BRStateData speedConfigs](self forKey:{"speedConfigs"), "objectForKeyedSubscript:", *(*(&v25 + 1) + 8 * v13)), objc_msgSend(*(*(&v25 + 1) + 8 * v13), "stringValue")}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableDictionary *)speedConfigs countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  [dictionary setObject:dictionary2 forKey:@"ButtonConfigsForSpeeds"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  speedSlots = [(BRStateData *)self speedSlots];
  v15 = [(NSMutableDictionary *)speedSlots countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(speedSlots);
        }

        [dictionary3 setObject:-[NSMutableDictionary objectForKeyedSubscript:](-[BRStateData speedSlots](self forKey:{"speedSlots"), "objectForKeyedSubscript:", *(*(&v21 + 1) + 8 * v18)), objc_msgSend(*(*(&v21 + 1) + 8 * v18), "stringValue")}];
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableDictionary *)speedSlots countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  [dictionary setObject:dictionary3 forKey:@"SlotsForSpeeds"];
  v19 = *MEMORY[0x277D85DE8];
  return dictionary;
}

@end