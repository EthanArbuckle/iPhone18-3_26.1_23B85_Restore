@interface EBLinkTable
+ (int)mapEDLinkTypeToXl:(int)a3;
+ (int)mapXlLinkTypeToED:(int)a3;
+ (void)createXlLinkTableFromLinksCollection:(id)a3 workbook:(id)a4 state:(id)a5;
+ (void)readFromState:(id)a3;
@end

@implementation EBLinkTable

+ (void)readFromState:(id)a3
{
  v24 = a3;
  v3 = [v24 resources];
  v28 = [v3 links];
  v4 = [v24 xlLinkTable];
  v5 = v4[8] - v4[6];
  v6 = (v5 >> 3);
  if ((v5 >> 3))
  {
    v7 = 0;
    do
    {
      MergeRegion = XlMerge::getMergeRegion((v4 + 2), v7);
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
      [v28 addReference:v15];

      ++v7;
    }

    while (v6 != v7);
  }

  v26 = v4;
  v25 = ((v4[14] - v4[12]) >> 3);
  if (((v4[14] - v4[12]) >> 3))
  {
    v16 = 0;
    do
    {
      Link = XlLinkTable::getLink(v26, v16);
      v18 = +[EDLink linkWithType:](EDLink, "linkWithType:", [a1 mapXlLinkTypeToED:*(Link + 16)]);
      v19 = (*(Link + 64) - *(Link + 56)) >> 3;
      if (v19)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          if (!v21)
          {
            v21 = [v18 externalNames];
          }

          v22 = *(XlLink::getExternalName(Link, v20) + 32);
          if (v22)
          {
            [EBString edStringFromXlString:v22 edResources:v3];
          }

          else
          {
            +[EDString string];
          }
          v23 = ;
          [v21 addObject:v23];

          ++v20;
        }

        while (v19 != v20);
      }

      else
      {
        v21 = 0;
      }

      [v28 addLink:v18];

      ++v16;
    }

    while (v16 != v25);
  }
}

+ (void)createXlLinkTableFromLinksCollection:(id)a3 workbook:(id)a4 state:(id)a5
{
  a3;
  a4;
  a5;
  operator new();
}

+ (int)mapXlLinkTypeToED:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_25D6FEA60[a3 - 1];
  }
}

+ (int)mapEDLinkTypeToXl:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_25D6FEA60[a3 - 1];
  }
}

@end