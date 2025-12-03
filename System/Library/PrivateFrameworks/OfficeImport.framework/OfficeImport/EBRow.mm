@interface EBRow
+ (void)readCellRow:(void *)row edRowBlock:(id)block edRowBlocks:(id)blocks state:(id)state;
@end

@implementation EBRow

+ (void)readCellRow:(void *)row edRowBlock:(id)block edRowBlocks:(id)blocks state:(id)state
{
  blockCopy = block;
  blocksCopy = blocks;
  stateCopy = state;
  if (row)
  {
    if (blockCopy)
    {
      v12 = *(row + 1);
      v18[1] = &unk_286EC9E80;
      v13 = *(v12 + 21);
      *v19 = *(v12 + 8);
      *&v19[13] = v13;
      v14 = [blockCopy rowInfoWithRowNumber:*v19];
      v18[0] = v14;
      if (v14 || (v14 = [blockCopy addRowInfoWithRowNumber:*v19 cellCountHint:((*(row + 6) - *(row + 4)) >> 3)], (v18[0] = v14) != 0))
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
          v16 = *(row + 10);
          v17 = *(row + 2);
          if (v16 >= ((*(row + 3) - v17) >> 3))
          {
            break;
          }

          *(row + 10) = v16 + 1;
          [EBCell readXlCell:*(v17 + 8 * v16) edRowInfo:v18 edRowBlock:blockCopy edRowBlocks:blocksCopy state:stateCopy];
        }
      }
    }
  }
}

@end