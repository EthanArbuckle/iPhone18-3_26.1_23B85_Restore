@interface EBColumnTable
+ (void)readWithState:(id)a3;
@end

@implementation EBColumnTable

+ (void)readWithState:(id)a3
{
  v3 = a3;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v4 = [v3 xlReader];
  (*(*v4 + 392))(v4, &v14);
  v5 = [v3 edSheet];
  v6 = [v5 columnInfos];
  v7 = [v3 resources];
  if (((v16 - v15) & 0x7FFFFFFF8) != 0)
  {
    v8 = 0;
    v9 = ((v16 - v15) >> 3);
    do
    {
      ColumnFirst = XlColumnTable::getColumnFirst(&v14, v8);
      ColumnLast = XlColumnTable::getColumnLast(&v14, v8);
      if (ColumnFirst <= 0xFF)
      {
        v12 = ColumnLast;
        if (ColumnLast <= 0xFF)
        {
          v13 = [[EDColumnInfo alloc] initWithResources:v7 worksheet:v5];
          [(EDColumnInfo *)v13 setWidthInXlUnits:XlColumnTable::getWidth(&v14, v8)];
          [(EDColumnInfo *)v13 setHidden:XlColumnTable::isHidden(&v14, v8)];
          [(EDColumnInfo *)v13 setRangeWithFirstColumn:ColumnFirst lastColumn:v12];
          if (XlColumnTable::getCellFormat(&v14, v8) != -1)
          {
            [(EDColumnInfo *)v13 setStyleIndex:XlColumnTable::getCellFormat(&v14, v8)];
          }

          if (v8 >= ((v16 - v15) >> 3))
          {
            std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
          }

          [(EDColumnInfo *)v13 setOutlineLevel:*(v15[v8] + 28)];
          [v6 addObject:v13];
        }
      }

      ++v8;
    }

    while (v9 != v8);
  }

  v14 = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(&v15);
}

@end