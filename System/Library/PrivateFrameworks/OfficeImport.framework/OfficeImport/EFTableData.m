@interface EFTableData
- (EFTableData)initWith:(EFStrTok *)a3;
- (void)dealloc;
- (void)makeup:(id)a3 with:(int)a4;
@end

@implementation EFTableData

- (EFTableData)initWith:(EFStrTok *)a3
{
  v9.receiver = self;
  v9.super_class = EFTableData;
  v4 = [(EFTableData *)&v9 init];
  if (v4)
  {
    var0 = a3->var2.var0.var0;
    var1 = a3->var2.var1.var1;
    v7 = [var1 tableRange];
    *&v4->mRefTok.type = 0xA0000003BLL;
    *v4->mRefTok.data = var0;
    v4->mTable = var1;
    v4->mReference = v7;
    v4->mMakeups = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EFTableData;
  [(EFTableData *)&v3 dealloc];
}

- (void)makeup:(id)a3 with:(int)a4
{
  v4 = a4;
  ++self->mMakeups;
  v7 = [(EFTableData *)self ptgData];
  mMakeups = self->mMakeups;
  if (mMakeups == 2)
  {
    if (![a3 compare:@"#Data"])
    {
      goto LABEL_16;
    }

    if ([a3 compare:@"#Totals"])
    {
      return;
    }
  }

  else
  {
    if (mMakeups != 1)
    {
      return;
    }

    if ([a3 compare:@"#All"])
    {
      if (![a3 compare:@"#Headers"])
      {
        v7[1] = [(EDReference *)self->mReference firstRow];
        v9 = [(EDReference *)self->mReference firstRow];
        v4 = [(EDTable *)self->mTable headerRowCount]+ v9 - 1;
        goto LABEL_17;
      }

      if ([a3 compare:@"#Data"])
      {
        if ([a3 compare:@"#Totals"])
        {
          if ([a3 compare:@"#This Row"])
          {
            return;
          }

          v7[1] = v4;
          goto LABEL_17;
        }

        v12 = [(EDReference *)self->mReference lastRow];
        v7[1] = v12 - [(EDTable *)self->mTable totalsRowCount]+ 1;
        goto LABEL_13;
      }

      v10 = [(EDReference *)self->mReference firstRow];
      v7[1] = [(EDTable *)self->mTable headerRowCount]+ v10;
LABEL_16:
      v11 = [(EDReference *)self->mReference lastRow];
      v4 = v11 - [(EDTable *)self->mTable totalsRowCount];
      goto LABEL_17;
    }

    v7[1] = [(EDReference *)self->mReference firstRow];
  }

LABEL_13:
  v4 = [(EDReference *)self->mReference lastRow];
LABEL_17:
  v7[2] = v4;
}

@end