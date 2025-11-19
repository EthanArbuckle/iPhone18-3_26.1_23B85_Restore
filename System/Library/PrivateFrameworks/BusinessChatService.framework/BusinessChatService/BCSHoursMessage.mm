@interface BCSHoursMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDays:(id)a3;
- (int)dayAtIndex:(unint64_t)a3;
- (void)addTimeRange:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSHoursMessage

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = BCSHoursMessage;
  [(BCSHoursMessage *)&v3 dealloc];
}

- (int)dayAtIndex:(unint64_t)a3
{
  p_days = &self->_days;
  count = self->_days.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_days->list[a3];
}

- (int)StringAsDays:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUNDAY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MONDAY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TUESDAY"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WEDNESDAY"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"THURSDAY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"FRIDAY"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SATURDAY"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"EVERYDAY"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addTimeRange:(id)a3
{
  v4 = a3;
  timeRanges = self->_timeRanges;
  v8 = v4;
  if (!timeRanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_timeRanges;
    self->_timeRanges = v6;

    v4 = v8;
    timeRanges = self->_timeRanges;
  }

  [(NSMutableArray *)timeRanges addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSHoursMessage;
  v4 = [(BCSHoursMessage *)&v8 description];
  v5 = [(BCSHoursMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  p_days = &self->_days;
  if (self->_days.count)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_days.count)
    {
      v6 = 0;
      do
      {
        v7 = p_days->list[v6] - 1;
        if (v7 >= 8)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_days->list[v6]];
        }

        else
        {
          v8 = off_278D39A08[v7];
        }

        [v5 addObject:v8];

        ++v6;
      }

      while (v6 < self->_days.count);
    }

    [v3 setObject:v5 forKey:@"day"];
  }

  if ([(NSMutableArray *)self->_timeRanges count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_timeRanges, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_timeRanges;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"time_range"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_days.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_days.list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_days.count);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_timeRanges;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v11 = a3;
  if ([(BCSHoursMessage *)self daysCount])
  {
    [v11 clearDays];
    v4 = [(BCSHoursMessage *)self daysCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v11 addDay:{-[BCSHoursMessage dayAtIndex:](self, "dayAtIndex:", i)}];
      }
    }
  }

  if ([(BCSHoursMessage *)self timeRangesCount])
  {
    [v11 clearTimeRanges];
    v7 = [(BCSHoursMessage *)self timeRangesCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        v10 = [(BCSHoursMessage *)self timeRangeAtIndex:j];
        [v11 addTimeRange:v10];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_timeRanges;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{a3, v14}];
        [v5 addTimeRange:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && PBRepeatedInt32IsEqual())
  {
    timeRanges = self->_timeRanges;
    if (timeRanges | v4[4])
    {
      v6 = [(NSMutableArray *)timeRanges isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 daysCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[BCSHoursMessage addDay:](self, "addDay:", [v4 dayAtIndex:i]);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v4[4];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(BCSHoursMessage *)self addTimeRange:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end