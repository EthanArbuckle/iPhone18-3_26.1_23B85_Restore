@interface WMTableColumnInfo
- (WMTableColumnInfo)initWithStopArray:(id)a3;
- (float)stopAt:(unsigned int)a3;
- (unsigned)columnSpan:(float)a3 at:(unsigned int)a4;
- (void)mergeStopArray:(id)a3;
@end

@implementation WMTableColumnInfo

- (WMTableColumnInfo)initWithStopArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WMTableColumnInfo;
  v5 = [(WMTableColumnInfo *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v4];
    mStopArray = v5->mStopArray;
    v5->mStopArray = v6;
  }

  return v5;
}

- (float)stopAt:(unsigned int)a3
{
  v5 = -1.0;
  if ([(NSMutableArray *)self->mStopArray count]> a3)
  {
    v6 = [(NSMutableArray *)self->mStopArray objectAtIndex:a3];
    [v6 floatValue];
    v5 = v7;
  }

  return v5;
}

- (void)mergeStopArray:(id)a3
{
  v18 = a3;
  if (v18)
  {
    [(WMTableColumnInfo *)self stopAt:0];
    v5 = v4;
    LODWORD(v6) = 0;
    for (i = 0; ; ++i)
    {
      if ([v18 count] <= i)
      {
        goto LABEL_20;
      }

      v8 = [v18 objectAtIndex:i];
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
        v17 = [v18 objectAtIndex:i];
        [(NSMutableArray *)mStopArray insertObject:v17 atIndex:v6];

        LODWORD(v6) = v6 + 1;
      }

LABEL_15:
      ;
    }

LABEL_13:
    v13 = self->mStopArray;
    v14 = [v18 objectAtIndex:i];
    [(NSMutableArray *)v13 addObject:v14];

    v6 = (v6 + 1);
    [(WMTableColumnInfo *)self stopAt:v6];
LABEL_14:
    v5 = v15;
    goto LABEL_15;
  }

LABEL_20:
}

- (unsigned)columnSpan:(float)a3 at:(unsigned int)a4
{
  v4 = *&a4;
  if (a4)
  {
    [(WMTableColumnInfo *)self stopAt:a4 - 1];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  LODWORD(v9) = v4;
  if ([(NSMutableArray *)self->mStopArray count]> v4)
  {
    v10 = v8 + a3;
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