@interface EBCellFormatTable
+ (id)getStyleNameForCellFormatIndex:(unsigned int)index xlStyleTable:(const void *)table edResources:(id)resources;
+ (void)readWithState:(id)state;
@end

@implementation EBCellFormatTable

+ (void)readWithState:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  styles = [resources styles];
  v36 = &unk_286EC9B40;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 184))(xlReader, &v36);
  XlStyleTable::XlStyleTable(v35);
  xlReader2 = [stateCopy xlReader];
  (*(*xlReader2 + 240))(xlReader2, v35);
  [styles setDefaultWorkbookStyleIndex:0];
  if (((v38 - v37) & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v28 = ((v38 - v37) >> 3);
    do
    {
      isStyle = XlCellFormatTable::isStyle(&v36, v6);
      if (isStyle)
      {
        v8 = [(EDStyle *)[EDNamedStyle alloc] initWithResources:resources];
        v9 = [self getStyleNameForCellFormatIndex:v6 xlStyleTable:v35 edResources:resources];
        [(EDNamedStyle *)v8 setName:v9];

        v10 = v8;
        v11 = v10;
      }

      else
      {
        v11 = 0;
        v10 = [[EDStyle alloc] initWithResources:resources];
      }

      ParentCellFormat = XlCellFormatTable::getParentCellFormat(&v36, v6);
      if (ParentCellFormat == 4095)
      {
        v13 = -1;
      }

      else
      {
        v13 = ParentCellFormat;
      }

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = isStyle;
      }

      if ((v14 & 1) == 0 || (-[EDStyle name](v11, "name"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 caseInsensitiveCompare:@"Normal"], v15, v16))
      {
        [(EDStyle *)v10 setParentIndex:v13];
      }

      if (v6 >= ((v38 - v37) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v17 = v37[v6];
      XlRecord::XlRecord(v30, v17);
      v30[0] = &unk_286ED0E50;
      v31 = *(v17 + 16);
      v19 = *(v17 + 48);
      v18 = *(v17 + 64);
      v20 = *(v17 + 32);
      *&v34[10] = *(v17 + 74);
      v33 = v19;
      *v34 = v18;
      v32 = v20;
      [(EDStyle *)v10 setFontIndex:[EBFontTable edFontIndexFromXlFontIndex:v31]];
      v21 = [EBAlignmentInfo edAlignmentInfoFromXlXf:v30];
      [(EDStyle *)v10 setAlignmentInfo:v21];

      v22 = [EBBorders edBordersFromXlXf:v30 edResources:resources];
      [(EDStyle *)v10 setBorders:v22];

      v23 = [EBFill edFillFromXlXf:v30 edResources:resources];
      [(EDStyle *)v10 setFill:v23];

      v24 = [EBProtection edProtectionFromXlXf:v30];
      [(EDStyle *)v10 setProtection:v24];

      [(EDStyle *)v10 setContentFormatId:SWORD1(v31)];
      if (isStyle)
      {
        [(EDStyle *)v10 setFontOverridden:v34[20] ^ 1u];
        [(EDStyle *)v10 setAlignmentInfoOverridden:(v34[21] & 1) == 0];
        [(EDStyle *)v10 setBordersOverridden:(v34[22] & 1) == 0];
        [(EDStyle *)v10 setFillOverridden:(v34[23] & 1) == 0];
        [(EDStyle *)v10 setProtectionOverridden:(v34[24] & 1) == 0];
        v25 = v34[19] ^ 1;
      }

      else
      {
        [(EDStyle *)v10 setFontOverridden:v34[20]];
        [(EDStyle *)v10 setAlignmentInfoOverridden:v34[21]];
        [(EDStyle *)v10 setBordersOverridden:v34[22]];
        [(EDStyle *)v10 setFillOverridden:v34[23]];
        [(EDStyle *)v10 setProtectionOverridden:v34[24]];
        v25 = v34[19];
      }

      [(EDStyle *)v10 setContentFormatOverridden:v25 & 1];
      [styles addObject:v10];

      ++v6;
    }

    while (v28 != v6);
  }

  XlStyleTable::~XlStyleTable(v35);
  v36 = &unk_286EC9B40;
  CsSimpleHeapVector<XlXf>::~CsSimpleHeapVector(&v37);
}

+ (id)getStyleNameForCellFormatIndex:(unsigned int)index xlStyleTable:(const void *)table edResources:(id)resources
{
  resourcesCopy = resources;
  v8 = *(table + 1);
  v9 = *(table + 2) - v8;
  if ((v9 & 0x7FFFFFFF8) != 0)
  {
    v10 = 0;
    v11 = (v9 >> 3);
    while (1)
    {
      if (v11 == v10)
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *(v8 + 8 * v10);
      if (*(v12 + 24) == index)
      {
        break;
      }

      if (v11 == ++v10)
      {
        goto LABEL_6;
      }
    }

    v14 = MEMORY[0x277CCACA8];
    if (*(v12 + 33) == 1)
    {
      Name = XlStyleTable::getName(table, v10);
    }

    else
    {
      Name = *(v12 + 16) + 8;
    }

    v13 = [v14 stringWithOcText:Name];
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  return v13;
}

@end