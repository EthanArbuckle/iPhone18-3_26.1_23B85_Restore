@interface HKHeartbeatSequenceChartData
- (HKHeartbeatSequenceChartData)init;
- (void)_expandToSection:(int64_t)a3;
- (void)addSequencePoint:(id)a3 section:(int64_t)a4;
- (void)enumerateSequences:(id)a3;
@end

@implementation HKHeartbeatSequenceChartData

- (HKHeartbeatSequenceChartData)init
{
  v6.receiver = self;
  v6.super_class = HKHeartbeatSequenceChartData;
  v2 = [(HKHeartbeatSequenceChartData *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sections = v2->_sections;
    v2->_sections = v3;
  }

  return v2;
}

- (void)addSequencePoint:(id)a3 section:(int64_t)a4
{
  v6 = a3;
  [(HKHeartbeatSequenceChartData *)self _expandToSection:a4];
  v7 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:a4];
  [v7 addObject:v6];
}

- (void)enumerateSequences:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (!v4[2](v4, *(*(&v10 + 1) + 8 * v9)))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_expandToSection:(int64_t)a3
{
  v5 = [(NSMutableArray *)self->_sections count];
  if (v5 <= a3)
  {
    v6 = a3 - v5 + 1;
    do
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSMutableArray *)self->_sections addObject:v7];

      --v6;
    }

    while (v6);
  }
}

@end