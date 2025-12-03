@interface EMColumnInfoMapper
- (EMColumnInfoMapper)initWithDefaultWidth:(double)width span:(unint64_t)span parent:(id)parent;
- (EMColumnInfoMapper)initWithEDColumnInfo:(id)info maxSpan:(unint64_t)span parent:(id)parent;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation EMColumnInfoMapper

- (EMColumnInfoMapper)initWithEDColumnInfo:(id)info maxSpan:(unint64_t)span parent:(id)parent
{
  infoCopy = info;
  parentCopy = parent;
  v20.receiver = self;
  v20.super_class = EMColumnInfoMapper;
  v11 = [(CMMapper *)&v20 initWithParent:parentCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->edColumnInfo, info);
    columnWidthConvertor = [parentCopy columnWidthConvertor];
    [(EDColumnInfo *)v12->edColumnInfo width];
    [columnWidthConvertor lassoColumnWidthFromXl:?];
    v12->columnWidth = v14;

    v12->columnSpan = 1;
    range = [(EDColumnInfo *)v12->edColumnInfo range];
    v16 = range;
    if (range)
    {
      lastColumn = [range lastColumn];
      columnSpan = (lastColumn - [v16 firstColumn] + 1);
      v12->columnSpan = columnSpan;
    }

    else
    {
      columnSpan = v12->columnSpan;
    }

    if (columnSpan > span)
    {
      v12->columnSpan = span;
    }
  }

  return v12;
}

- (EMColumnInfoMapper)initWithDefaultWidth:(double)width span:(unint64_t)span parent:(id)parent
{
  parentCopy = parent;
  v16.receiver = self;
  v16.super_class = EMColumnInfoMapper;
  v9 = [(CMMapper *)&v16 initWithParent:parentCopy];
  v10 = v9;
  if (v9)
  {
    edColumnInfo = v9->edColumnInfo;
    v9->edColumnInfo = 0;

    columnWidthConvertor = [parentCopy columnWidthConvertor];
    [columnWidthConvertor lassoColumnWidthFromXl:width];
    v10->columnWidth = v13;

    if (span <= 1)
    {
      spanCopy = 1;
    }

    else
    {
      spanCopy = span;
    }

    v10->columnSpan = spanCopy;
  }

  return v10;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  v11 = [OIXMLElement elementWithType:2];
  [atCopy addChild:v11];
  v10 = [[CMLengthProperty alloc] initWithNumber:self->columnWidth + 1.0];
  v5 = [(CMLengthProperty *)v10 cssStringForName:@"width"];
  v6 = [OIXMLAttribute attributeWithName:@"style" stringValue:v5];
  [v11 addAttribute:v6];
  if (self->columnSpan >= 2)
  {
    v7 = 1;
    do
    {
      v8 = [OIXMLElement elementWithType:2];
      v9 = [OIXMLAttribute attributeWithName:@"style" stringValue:v5];
      [v8 addAttribute:v9];
      [atCopy addChild:v8];

      ++v7;
    }

    while (self->columnSpan > v7);
  }
}

@end