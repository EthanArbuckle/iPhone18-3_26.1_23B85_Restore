@interface WBTableRow
+ (void)collectCellProperties:(void *)properties tracked:(void *)tracked for:(id)for;
+ (void)readCellsFrom:(id)from textRuns:(id)runs level:(int)level to:(id)to properties:(void *)properties tracked:(void *)tracked;
+ (void)readFrom:(id)from textRuns:(id)runs to:(id)to index:(unint64_t)index row:(id)row;
@end

@implementation WBTableRow

+ (void)readFrom:(id)from textRuns:(id)runs to:(id)to index:(unint64_t)index row:(id)row
{
  fromCopy = from;
  runsCopy = runs;
  toCopy = to;
  rowCopy = row;
  v29 = runsCopy;
  lastObject = [runsCopy lastObject];
  pointerValue = [lastObject pointerValue];

  v14 = *(pointerValue + 24);
  v15 = *(pointerValue + 40);
  v16 = *(pointerValue + 48);
  properties = [rowCopy properties];
  [WBTableRowProperties readFrom:fromCopy wrdProperties:v15 tracked:v16 properties:properties];

  WrdCharacterTextRun::WrdCharacterTextRun(&v32);
  v18 = *(pointerValue + 12) + *(pointerValue + 16) - 1;
  v32.var1 = *(pointerValue + 8);
  v32.var2 = v18;
  v32.var3 = 1;
  wrdReader = [fromCopy wrdReader];
  (*(*wrdReader + 192))(wrdReader, &v32);
  var4 = v32.var4;
  var5 = v32.var5;
  properties2 = [toCopy properties];
  document = [properties2 document];
  properties3 = [rowCopy properties];
  characterProperties = [properties3 characterProperties];
  [WBCharacterProperties readFrom:fromCopy wrdProperties:var4 tracked:var5 document:document properties:characterProperties];

  v26 = *(v14 + 16);
  if ((v26 & 0x1000000000000) != 0)
  {
    v27 = *(v14 + 244);
  }

  else
  {
    v27 = (v26 >> 1) & 1;
  }

  [self readCellsFrom:fromCopy textRuns:v29 level:v27 to:rowCopy properties:v15 tracked:v16];
  WrdCharacterTextRun::~WrdCharacterTextRun(&v32);
}

+ (void)readCellsFrom:(id)from textRuns:(id)runs level:(int)level to:(id)to properties:(void *)properties tracked:(void *)tracked
{
  fromCopy = from;
  runsCopy = runs;
  toCopy = to;
  v15 = [runsCopy count];
  table = [toCopy table];
  text = [table text];
  WrdTextRun::WrdTextRun(v32, [text textType], 0);
  v18 = v15 - 1;

  if (v18)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = [runsCopy objectAtIndex:v19];
      pointerValue = [v21 pointerValue];

      if (v20)
      {
        v23 = 0;
        v33 = *(pointerValue + 12);
        v34 = 0;
      }

      else
      {
        v23 = v34;
      }

      v34 = *(pointerValue + 16) + v23;
      if (level == 1)
      {
        v24 = (*(pointerValue + 16) + *(pointerValue + 12));
        v25 = [fromCopy readCharactersFrom:(v24 - 1) to:v24 textType:*(pointerValue + 8)];
        v26 = [v25 isEqualToString:@"\a"];

        if ((v26 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v28 = *(pointerValue + 24);
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
        if ((v29 & 0x2000000000000) == 0 || v30 != level)
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

      addCell = [toCopy addCell];
      +[WBTableCell readFrom:textRun:with:tracked:row:index:cell:](WBTableCell, "readFrom:textRun:with:tracked:row:index:cell:", fromCopy, v32, properties, tracked, toCopy, [toCopy cellCount] - 1, addCell);

      v20 = 1;
LABEL_16:
      ++v19;
    }

    while (v18 != v19);
  }
}

+ (void)collectCellProperties:(void *)properties tracked:(void *)tracked for:(id)for
{
  forCopy = for;
  cellCount = [forCopy cellCount];
  WrdTableProperties::insertCells(properties, 0, cellCount, 0);
  WrdTableProperties::insertCells(tracked, 0, cellCount, 0);
  if (cellCount)
  {
    for (i = 0; i != cellCount; ++i)
    {
      v9 = [forCopy cellAt:i];
      properties = [v9 properties];
      [WBTableCellBodyProperties write:properties wrdProperties:properties tracked:tracked index:i];
    }
  }
}

@end