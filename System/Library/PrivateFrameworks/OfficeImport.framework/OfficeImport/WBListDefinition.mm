@interface WBListDefinition
+ (void)readFrom:(id)from listDefinition:(id)definition listFormat:(void *)format document:(id)document;
@end

@implementation WBListDefinition

+ (void)readFrom:(id)from listDefinition:(id)definition listFormat:(void *)format document:(id)document
{
  fromCopy = from;
  definitionCopy = definition;
  documentCopy = document;
  v11 = *(format + 52);
  if (*(format + 52))
  {
    v12 = 0;
    do
    {
      addLevel = [definitionCopy addLevel];
      [WBListLevel readFrom:fromCopy listLevel:addLevel format:WrdEmbeddedTTFRecordTable::getEmbeddedFontReference(format document:v12), documentCopy];

      ++v12;
    }

    while (v11 != v12);
  }

  v14 = *(format + 25);
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

  [definitionCopy setType:v16];
}

@end