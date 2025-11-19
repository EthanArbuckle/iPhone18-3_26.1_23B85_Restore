@interface BRStateData
- (BRStateData)initWithState:(unint64_t)a3 enabled:(BOOL)a4;
- (BRStateData)initWithStateData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)propertyList;
- (void)dealloc;
@end

@implementation BRStateData

- (BRStateData)initWithState:(unint64_t)a3 enabled:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = BRStateData;
  v6 = [(BRStateData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_state = a3;
    v6->_enabled = a4;
    v6->_speedConfigs = objc_opt_new();
    v7->_speedSlots = objc_opt_new();
  }

  return v7;
}

- (BRStateData)initWithStateData:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = BRStateData;
    v4 = [(BRStateData *)&v6 init];
    if (v4)
    {
      v4->_state = [a3 state];
      v4->_enabled = [a3 enabled];
      v4->_speedConfigs = [objc_msgSend(a3 "speedConfigs")];
      v4->_speedSlots = [objc_msgSend(a3 "speedSlots")];
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

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
  v4 = [(BRStateData *)self enabled];
  v5 = "N";
  if (v4)
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", -[BRStateData state](self, "state")), @"State"}];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(BRStateData *)self enabled];
  v8 = "N";
  if (v7)
  {
    v8 = "Y";
  }

  [v3 setObject:objc_msgSend(v6 forKey:{"stringWithFormat:", @"%s;", v8), @"Enabled"}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [(BRStateData *)self speedConfigs];
  v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v9);
        }

        [v4 setObject:-[NSMutableDictionary objectForKeyedSubscript:](-[BRStateData speedConfigs](self forKey:{"speedConfigs"), "objectForKeyedSubscript:", *(*(&v25 + 1) + 8 * v13)), objc_msgSend(*(*(&v25 + 1) + 8 * v13), "stringValue")}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  [v3 setObject:v4 forKey:@"ButtonConfigsForSpeeds"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(BRStateData *)self speedSlots];
  v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v14);
        }

        [v5 setObject:-[NSMutableDictionary objectForKeyedSubscript:](-[BRStateData speedSlots](self forKey:{"speedSlots"), "objectForKeyedSubscript:", *(*(&v21 + 1) + 8 * v18)), objc_msgSend(*(*(&v21 + 1) + 8 * v18), "stringValue")}];
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  [v3 setObject:v5 forKey:@"SlotsForSpeeds"];
  v19 = *MEMORY[0x277D85DE8];
  return v3;
}

@end