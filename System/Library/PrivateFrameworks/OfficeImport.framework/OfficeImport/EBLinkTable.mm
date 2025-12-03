@interface EBLinkTable
+ (int)mapEDLinkTypeToXl:(int)xl;
+ (int)mapXlLinkTypeToED:(int)d;
+ (void)createXlLinkTableFromLinksCollection:(id)collection workbook:(id)workbook state:(id)state;
+ (void)readFromState:(id)state;
@end

@implementation EBLinkTable

+ (void)readFromState:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  links = [resources links];
  xlLinkTable = [stateCopy xlLinkTable];
  v5 = xlLinkTable[8] - xlLinkTable[6];
  v6 = (v5 >> 3);
  if ((v5 >> 3))
  {
    v7 = 0;
    do
    {
      MergeRegion = XlMerge::getMergeRegion((xlLinkTable + 2), v7);
      v9 = MergeRegion[1];
      v10 = MergeRegion[2];
      if (v9 == 65534)
      {
        v11 = -2;
      }

      else
      {
        v11 = MergeRegion[1];
      }

      if (v9 == 0xFFFF)
      {
        v12 = -1;
      }

      else
      {
        v12 = v11;
      }

      if (v10 == 65534)
      {
        v13 = -2;
      }

      else
      {
        v13 = MergeRegion[2];
      }

      if (v10 == 0xFFFF)
      {
        v14 = -1;
      }

      else
      {
        v14 = v13;
      }

      v15 = [EDLinkReference linkReferenceWithLinkIndex:*MergeRegion firstSheetIndex:v12 lastSheetIndex:v14];
      [links addReference:v15];

      ++v7;
    }

    while (v6 != v7);
  }

  v26 = xlLinkTable;
  v25 = ((xlLinkTable[14] - xlLinkTable[12]) >> 3);
  if (((xlLinkTable[14] - xlLinkTable[12]) >> 3))
  {
    v16 = 0;
    do
    {
      Link = XlLinkTable::getLink(v26, v16);
      v18 = +[EDLink linkWithType:](EDLink, "linkWithType:", [self mapXlLinkTypeToED:*(Link + 16)]);
      v19 = (*(Link + 64) - *(Link + 56)) >> 3;
      if (v19)
      {
        v20 = 0;
        externalNames = 0;
        do
        {
          if (!externalNames)
          {
            externalNames = [v18 externalNames];
          }

          v22 = *(XlLink::getExternalName(Link, v20) + 32);
          if (v22)
          {
            [EBString edStringFromXlString:v22 edResources:resources];
          }

          else
          {
            +[EDString string];
          }
          v23 = ;
          [externalNames addObject:v23];

          ++v20;
        }

        while (v19 != v20);
      }

      else
      {
        externalNames = 0;
      }

      [links addLink:v18];

      ++v16;
    }

    while (v16 != v25);
  }
}

+ (void)createXlLinkTableFromLinksCollection:(id)collection workbook:(id)workbook state:(id)state
{
  collection;
  workbook;
  state;
  operator new();
}

+ (int)mapXlLinkTypeToED:(int)d
{
  if ((d - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_25D6FEA60[d - 1];
  }
}

+ (int)mapEDLinkTypeToXl:(int)xl
{
  if ((xl - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_25D6FEA60[xl - 1];
  }
}

@end