@interface MUISearchFeedbackStats
- (MUISearchFeedbackStats)initWithDictionaryRepresentation:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (void)incrementCountForFailure:(BOOL)a3 forDay:(int64_t)a4;
- (void)resetStats;
@end

@implementation MUISearchFeedbackStats

- (MUISearchFeedbackStats)initWithDictionaryRepresentation:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = MUISearchFeedbackStats;
  v5 = [(MUISearchFeedbackStats *)&v36 init];
  if (v5)
  {
    v6 = 0x277CBE000uLL;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count] == 7)
    {
      v7 = [MEMORY[0x277CBEB38] dictionary];
      daysOfWeek = v5->_daysOfWeek;
      v5->_daysOfWeek = v7;

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v9 = v4;
      v10 = [v9 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v33;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v32 + 1) + 8 * i);
            v15 = [v9 objectForKeyedSubscript:v14];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_14;
            }

            v16 = [v15 mutableCopy];
            [(NSMutableDictionary *)v5->_daysOfWeek setObject:v16 forKeyedSubscript:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v32 objects:v39 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    v31 = v4;
    v17 = v5->_daysOfWeek;
    if (!v17 || [(NSMutableDictionary *)v17 count]!= 7)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = v5->_daysOfWeek;
      v5->_daysOfWeek = v18;

      for (j = 1; j != 8; ++j)
      {
        v21 = MEMORY[0x277CBEB38];
        v37[0] = @"success";
        v37[1] = @"failure";
        v38[0] = &unk_2827059C8;
        v38[1] = &unk_2827059C8;
        v22 = [*(v6 + 2752) dictionaryWithObjects:v38 forKeys:v37 count:2];
        v23 = [v21 dictionaryWithDictionary:v22];
        v24 = v5->_daysOfWeek;
        v25 = DayToStringMap();
        v26 = [MEMORY[0x277CCABB0] numberWithInteger:j];
        [v25 objectForKeyedSubscript:v26];
        v27 = v6;
        v29 = v28 = v5;
        [(NSMutableDictionary *)v24 setObject:v23 forKeyedSubscript:v29];

        v5 = v28;
        v6 = v27;
      }
    }

    v5->_lastReset = [MEMORY[0x277CBEAA8] date];
    v4 = v31;
  }

  return v5;
}

- (void)incrementCountForFailure:(BOOL)a3 forDay:(int64_t)a4
{
  v5 = a3;
  v7 = MEMORY[0x277CCABB0];
  daysOfWeek = self->_daysOfWeek;
  v21 = DayToStringMap();
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v10 = [v21 objectForKeyedSubscript:v9];
  v11 = [(NSMutableDictionary *)daysOfWeek objectForKeyedSubscript:v10];
  v12 = v11;
  if (v5)
  {
    v13 = @"failure";
  }

  else
  {
    v13 = @"success";
  }

  v14 = [v11 objectForKeyedSubscript:v13];
  v15 = [v7 numberWithInteger:{objc_msgSend(v14, "integerValue") + 1}];
  v16 = self->_daysOfWeek;
  v17 = DayToStringMap();
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v19 = [v17 objectForKeyedSubscript:v18];
  v20 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v19];
  [v20 setObject:v15 forKeyedSubscript:v13];
}

- (void)resetStats
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_daysOfWeek;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_daysOfWeek objectForKeyedSubscript:v8, v11];
        [v9 setObject:&unk_2827059C8 forKeyedSubscript:@"success"];

        v10 = [(NSMutableDictionary *)self->_daysOfWeek objectForKeyedSubscript:v8];
        [v10 setObject:&unk_2827059C8 forKeyedSubscript:@"failure"];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [(NSMutableDictionary *)self->_daysOfWeek copy];

  return v2;
}

@end