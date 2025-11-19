@interface MovingAverage
- (MovingAverage)initWithSize:(unint64_t)a3 withScalingFactor:(float)a4;
- (float)add:(float)a3 overflow:(BOOL)a4;
- (float)getStdDev;
- (id)description;
@end

@implementation MovingAverage

- (MovingAverage)initWithSize:(unint64_t)a3 withScalingFactor:(float)a4
{
  v11.receiver = self;
  v11.super_class = MovingAverage;
  v6 = [(MovingAverage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_arraySize = a3;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    values = v7->_values;
    v7->_values = v8;

    v7->_currentAverage = 0.0;
    v7->_scalingFactor = a4;
  }

  return v7;
}

- (float)add:(float)a3 overflow:(BOOL)a4
{
  currentAverage = self->_currentAverage;
  v8 = currentAverage * [(NSMutableArray *)self->_values count];
  if ([(NSMutableArray *)self->_values count]== self->_arraySize && !a4)
  {
    v10 = [(NSMutableArray *)self->_values lastObject];
    [v10 floatValue];
    v8 = v8 - v11;

    [(NSMutableArray *)self->_values removeLastObject];
  }

  values = self->_values;
  *&v9 = a3;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [(NSMutableArray *)values insertObject:v13 atIndex:0];

  result = (v8 + a3) / [(NSMutableArray *)self->_values count];
  self->_currentAverage = result;
  return result;
}

- (float)getStdDev
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_values count];
  result = -1.0;
  if (v3 >= self->_arraySize)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_values;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v13 + 1) + 8 * i) doubleValue];
          v9 = v9 + (v11 - self->_currentAverage) * (v11 - self->_currentAverage);
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    result = sqrt(v9 / [(NSMutableArray *)self->_values count]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)description
{
  v3 = [(NSMutableArray *)self->_values count];
  v4 = MEMORY[0x277CCACA8];
  if (v3 > 9)
  {
    [(MovingAverage *)self getAvg];
    v10 = (v9 / self->_scalingFactor);
    [(MovingAverage *)self getStdDev];
    [v4 stringWithFormat:@"Avg: %.3f, Stddev: %.3f", *&v10, (v11 / self->_scalingFactor), v14];
  }

  else
  {
    values = self->_values;
    [(MovingAverage *)self getAvg];
    v7 = (v6 / self->_scalingFactor);
    [(MovingAverage *)self getStdDev];
    [v4 stringWithFormat:@"Values: %@, Avg: %.3f, Stddev: %.3f", values, *&v7, (v8 / self->_scalingFactor)];
  }
  v12 = ;

  return v12;
}

@end