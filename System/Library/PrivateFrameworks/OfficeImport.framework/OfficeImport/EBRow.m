@interface EBRow
+ (void)readCellRow:(void *)a3 edRowBlock:(id)a4 edRowBlocks:(id)a5 state:(id)a6;
@end

@implementation EBRow

+ (void)readCellRow:(void *)a3 edRowBlock:(id)a4 edRowBlocks:(id)a5 state:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (a3)
  {
    if (v9)
    {
      v12 = *(a3 + 1);
      v18[1] = &unk_286EC9E80;
      v13 = *(v12 + 21);
      *v19 = *(v12 + 8);
      *&v19[13] = v13;
      v14 = [v9 rowInfoWithRowNumber:*v19];
      v18[0] = v14;
      if (v14 || (v14 = [v9 addRowInfoWithRowNumber:*v19 cellCountHint:((*(a3 + 6) - *(a3 + 4)) >> 3)], (v18[0] = v14) != 0))
      {
        *(v14 + 20) = *&v19[2];
        if (v19[14])
        {
          v15 = 2;
        }

        else
        {
          v15 = 0;
        }

        *(v14 + 23) = v15 | v19[15] | *(v14 + 23) & 0xFC;
        *(v14 + 22) = v19[10];
        if (v19[16] == 1)
        {
          setStyleIndexForEDRowInfo(v14, *&v19[4]);
        }

        while (1)
        {
          v16 = *(a3 + 10);
          v17 = *(a3 + 2);
          if (v16 >= ((*(a3 + 3) - v17) >> 3))
          {
            break;
          }

          *(a3 + 10) = v16 + 1;
          [EBCell readXlCell:*(v17 + 8 * v16) edRowInfo:v18 edRowBlock:v9 edRowBlocks:v10 state:v11];
        }
      }
    }
  }
}

@end