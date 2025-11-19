@interface WBListDefinition
+ (void)readFrom:(id)a3 listDefinition:(id)a4 listFormat:(void *)a5 document:(id)a6;
@end

@implementation WBListDefinition

+ (void)readFrom:(id)a3 listDefinition:(id)a4 listFormat:(void *)a5 document:(id)a6
{
  v17 = a3;
  v9 = a4;
  v10 = a6;
  v11 = *(a5 + 52);
  if (*(a5 + 52))
  {
    v12 = 0;
    do
    {
      v13 = [v9 addLevel];
      [WBListLevel readFrom:v17 listLevel:v13 format:WrdEmbeddedTTFRecordTable::getEmbeddedFontReference(a5 document:v12), v10];

      ++v12;
    }

    while (v11 != v12);
  }

  v14 = *(a5 + 25);
  if ((v14 & 0x10) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  [v9 setType:v16];
}

@end