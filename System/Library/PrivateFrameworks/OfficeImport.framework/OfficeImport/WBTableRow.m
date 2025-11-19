@interface WBTableRow
+ (void)collectCellProperties:(void *)a3 tracked:(void *)a4 for:(id)a5;
+ (void)readCellsFrom:(id)a3 textRuns:(id)a4 level:(int)a5 to:(id)a6 properties:(void *)a7 tracked:(void *)a8;
+ (void)readFrom:(id)a3 textRuns:(id)a4 to:(id)a5 index:(unint64_t)a6 row:(id)a7;
@end

@implementation WBTableRow

+ (void)readFrom:(id)a3 textRuns:(id)a4 to:(id)a5 index:(unint64_t)a6 row:(id)a7
{
  v31 = a3;
  v11 = a4;
  v30 = a5;
  v28 = a7;
  v29 = v11;
  v12 = [v11 lastObject];
  v13 = [v12 pointerValue];

  v14 = *(v13 + 24);
  v15 = *(v13 + 40);
  v16 = *(v13 + 48);
  v17 = [v28 properties];
  [WBTableRowProperties readFrom:v31 wrdProperties:v15 tracked:v16 properties:v17];

  WrdCharacterTextRun::WrdCharacterTextRun(&v32);
  v18 = *(v13 + 12) + *(v13 + 16) - 1;
  v32.var1 = *(v13 + 8);
  v32.var2 = v18;
  v32.var3 = 1;
  v19 = [v31 wrdReader];
  (*(*v19 + 192))(v19, &v32);
  var4 = v32.var4;
  var5 = v32.var5;
  v22 = [v30 properties];
  v23 = [v22 document];
  v24 = [v28 properties];
  v25 = [v24 characterProperties];
  [WBCharacterProperties readFrom:v31 wrdProperties:var4 tracked:var5 document:v23 properties:v25];

  v26 = *(v14 + 16);
  if ((v26 & 0x1000000000000) != 0)
  {
    v27 = *(v14 + 244);
  }

  else
  {
    v27 = (v26 >> 1) & 1;
  }

  [a1 readCellsFrom:v31 textRuns:v29 level:v27 to:v28 properties:v15 tracked:v16];
  WrdCharacterTextRun::~WrdCharacterTextRun(&v32);
}

+ (void)readCellsFrom:(id)a3 textRuns:(id)a4 level:(int)a5 to:(id)a6 properties:(void *)a7 tracked:(void *)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [v13 count];
  v16 = [v14 table];
  v17 = [v16 text];
  WrdTextRun::WrdTextRun(v32, [v17 textType], 0);
  v18 = v15 - 1;

  if (v18)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = [v13 objectAtIndex:v19];
      v22 = [v21 pointerValue];

      if (v20)
      {
        v23 = 0;
        v33 = *(v22 + 12);
        v34 = 0;
      }

      else
      {
        v23 = v34;
      }

      v34 = *(v22 + 16) + v23;
      if (a5 == 1)
      {
        v24 = (*(v22 + 16) + *(v22 + 12));
        v25 = [v12 readCharactersFrom:(v24 - 1) to:v24 textType:*(v22 + 8)];
        v26 = [v25 isEqualToString:@"\a"];

        if ((v26 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v28 = *(v22 + 24);
        v29 = *(v28 + 16);
        if ((v29 & 0x1000000000000) != 0)
        {
          v30 = *(v28 + 244);
        }

        else
        {
          v30 = (v29 >> 1) & 1;
        }

        v20 = 0;
        if ((v29 & 0x2000000000000) == 0 || v30 != a5)
        {
          goto LABEL_16;
        }

        if ((*(v28 + 296) & 0x10) == 0)
        {
LABEL_15:
          v20 = 0;
          goto LABEL_16;
        }
      }

      v27 = [v14 addCell];
      +[WBTableCell readFrom:textRun:with:tracked:row:index:cell:](WBTableCell, "readFrom:textRun:with:tracked:row:index:cell:", v12, v32, a7, a8, v14, [v14 cellCount] - 1, v27);

      v20 = 1;
LABEL_16:
      ++v19;
    }

    while (v18 != v19);
  }
}

+ (void)collectCellProperties:(void *)a3 tracked:(void *)a4 for:(id)a5
{
  v11 = a5;
  v7 = [v11 cellCount];
  WrdTableProperties::insertCells(a3, 0, v7, 0);
  WrdTableProperties::insertCells(a4, 0, v7, 0);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = [v11 cellAt:i];
      v10 = [v9 properties];
      [WBTableCellBodyProperties write:v10 wrdProperties:a3 tracked:a4 index:i];
    }
  }
}

@end