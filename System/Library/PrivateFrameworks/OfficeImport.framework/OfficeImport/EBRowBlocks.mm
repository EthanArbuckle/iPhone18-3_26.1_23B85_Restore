@interface EBRowBlocks
+ (void)readWithState:(id)a3;
@end

@implementation EBRowBlocks

+ (void)readWithState:(id)a3
{
  v3 = a3;
  XlSheetInfo::XlSheetInfo(v27);
  v4 = [v3 xlReader];
  (*(*v4 + 528))(v4, v27);
  v5 = v28;
  v6 = v28 > 0;
  if (v28 >= 1)
  {
    [TCProgressContext createStageWithSteps:v28 takingSteps:1.0];
  }

  v21 = v5;
  v7 = [v3 edSheet];
  v8 = [v7 rowBlocks];

  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (XlBinaryReader::hasMoreRows([v3 xlReader]))
  {
    XlRowBlock::XlRowBlock(v23);
    v12 = [v3 xlReader];
    (*(*v12 + 408))(v12, v23);
    v13 = v6 && v11 < v21;
    if (v13 == 1)
    {
      [TCProgressContext createStageWithSteps:((v25 - v24) >> 3) takingSteps:1.0];
    }

    v22 = v11;
    v14 = v26;
    for (i = v24; ((v25 - v24) >> 3) > v26; i = v24)
    {
      v16 = v9;
      v26 = v14 + 1;
      v17 = *(i + 8 * v14);
      v9 = [v8 rowBlockForRowNumber:*(*(v17 + 8) + 8) currentRowBlock:v9 createIfNil:1];

      [EBRow readCellRow:v17 edRowBlock:v9 edRowBlocks:v8 state:v3];
      if (v13)
      {
        [TCProgressContext advanceProgress:1.0];
      }

      ++v10;
      HIDWORD(v18) = 85899344 - 1030792151 * v10;
      LODWORD(v18) = HIDWORD(v18);
      if ((v18 >> 1) <= 0x51EB850)
      {
        v19 = [v3 readerState];
        v20 = [v19 isCancelled];

        if (v20)
        {
          [TCMessageException raiseUntaggedMessage:@"TCUserCancelled", 0];
        }
      }

      v14 = v26;
    }

    if (v13)
    {
      +[TCProgressContext endStage];
    }

    v11 = v22 + v6;
    XlRowBlock::~XlRowBlock(v23);
    v6 = v13;
  }

  [v8 unlock];
  if (v21 >= 1)
  {
    +[TCProgressContext endStage];
  }
}

@end