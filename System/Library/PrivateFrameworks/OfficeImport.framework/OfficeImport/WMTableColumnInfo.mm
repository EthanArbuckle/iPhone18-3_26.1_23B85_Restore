@interface WMTableColumnInfo
- (WMTableColumnInfo)initWithStopArray:(id)array;
- (float)stopAt:(unsigned int)at;
- (unsigned)columnSpan:(float)span at:(unsigned int)at;
- (void)mergeStopArray:(id)array;
@end

@implementation WMTableColumnInfo

- (WMTableColumnInfo)initWithStopArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = WMTableColumnInfo;
  v5 = [(WMTableColumnInfo *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:arrayCopy];
    mStopArray = v5->mStopArray;
    v5->mStopArray = v6;
  }

  return v5;
}

- (float)stopAt:(unsigned int)at
{
  v5 = -1.0;
  if ([(NSMutableArray *)self->mStopArray count]> at)
  {
    v6 = [(NSMutableArray *)self->mStopArray objectAtIndex:at];
    [v6 floatValue];
    v5 = v7;
  }

  return v5;
}

- (void)mergeStopArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    [(WMTableColumnInfo *)self stopAt:0];
    v5 = v4;
    LODWORD(v6) = 0;
    for (i = 0; ; ++i)
    {
      if ([arrayCopy count] <= i)
      {
        goto LABEL_20;
      }

      v8 = [arrayCopy objectAtIndex:i];
      [v8 floatValue];
      v10 = v9;

      while ([(NSMutableArray *)self->mStopArray count]&& v5 < v10)
      {
        if ([(NSMutableArray *)self->mStopArray count]- 1 <= v6)
        {
          goto LABEL_13;
        }

        v6 = (v6 + 1);
        [(WMTableColumnInfo *)self stopAt:v6];
        v5 = v12;
      }

      if (v5 < v10)
      {
        break;
      }

      if (v10 >= v5)
      {
        if (v10 == v5)
        {
          v6 = (v6 + 1);
          [(WMTableColumnInfo *)self stopAt:v6];
          goto LABEL_14;
        }
      }

      else
      {
        mStopArray = self->mStopArray;
        v17 = [arrayCopy objectAtIndex:i];
        [(NSMutableArray *)mStopArray insertObject:v17 atIndex:v6];

        LODWORD(v6) = v6 + 1;
      }

LABEL_15:
      ;
    }

LABEL_13:
    v13 = self->mStopArray;
    v14 = [arrayCopy objectAtIndex:i];
    [(NSMutableArray *)v13 addObject:v14];

    v6 = (v6 + 1);
    [(WMTableColumnInfo *)self stopAt:v6];
LABEL_14:
    v5 = v15;
    goto LABEL_15;
  }

LABEL_20:
}

- (unsigned)columnSpan:(float)span at:(unsigned int)at
{
  v4 = *&at;
  if (at)
  {
    [(WMTableColumnInfo *)self stopAt:at - 1];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  LODWORD(v9) = v4;
  if ([(NSMutableArray *)self->mStopArray count]> v4)
  {
    v10 = v8 + span;
    v9 = v4;
    do
    {
      [(WMTableColumnInfo *)self stopAt:v9];
      if (v10 <= v11)
      {
        break;
      }

      v9 = (v9 + 1);
    }

    while ([(NSMutableArray *)self->mStopArray count]> v9);
  }

  return v9 - v4 + 1;
}

@end