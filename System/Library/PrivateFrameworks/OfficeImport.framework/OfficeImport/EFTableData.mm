@interface EFTableData
- (EFTableData)initWith:(EFStrTok *)with;
- (void)dealloc;
- (void)makeup:(id)makeup with:(int)with;
@end

@implementation EFTableData

- (EFTableData)initWith:(EFStrTok *)with
{
  v9.receiver = self;
  v9.super_class = EFTableData;
  v4 = [(EFTableData *)&v9 init];
  if (v4)
  {
    var0 = with->var2.var0.var0;
    var1 = with->var2.var1.var1;
    tableRange = [var1 tableRange];
    *&v4->mRefTok.type = 0xA0000003BLL;
    *v4->mRefTok.data = var0;
    v4->mTable = var1;
    v4->mReference = tableRange;
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

- (void)makeup:(id)makeup with:(int)with
{
  withCopy = with;
  ++self->mMakeups;
  ptgData = [(EFTableData *)self ptgData];
  mMakeups = self->mMakeups;
  if (mMakeups == 2)
  {
    if (![makeup compare:@"#Data"])
    {
      goto LABEL_16;
    }

    if ([makeup compare:@"#Totals"])
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

    if ([makeup compare:@"#All"])
    {
      if (![makeup compare:@"#Headers"])
      {
        ptgData[1] = [(EDReference *)self->mReference firstRow];
        firstRow = [(EDReference *)self->mReference firstRow];
        withCopy = [(EDTable *)self->mTable headerRowCount]+ firstRow - 1;
        goto LABEL_17;
      }

      if ([makeup compare:@"#Data"])
      {
        if ([makeup compare:@"#Totals"])
        {
          if ([makeup compare:@"#This Row"])
          {
            return;
          }

          ptgData[1] = withCopy;
          goto LABEL_17;
        }

        lastRow = [(EDReference *)self->mReference lastRow];
        ptgData[1] = lastRow - [(EDTable *)self->mTable totalsRowCount]+ 1;
        goto LABEL_13;
      }

      firstRow2 = [(EDReference *)self->mReference firstRow];
      ptgData[1] = [(EDTable *)self->mTable headerRowCount]+ firstRow2;
LABEL_16:
      lastRow2 = [(EDReference *)self->mReference lastRow];
      withCopy = lastRow2 - [(EDTable *)self->mTable totalsRowCount];
      goto LABEL_17;
    }

    ptgData[1] = [(EDReference *)self->mReference firstRow];
  }

LABEL_13:
  withCopy = [(EDReference *)self->mReference lastRow];
LABEL_17:
  ptgData[2] = withCopy;
}

@end