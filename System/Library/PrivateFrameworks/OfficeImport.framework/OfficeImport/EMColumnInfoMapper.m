@interface EMColumnInfoMapper
- (EMColumnInfoMapper)initWithDefaultWidth:(double)a3 span:(unint64_t)a4 parent:(id)a5;
- (EMColumnInfoMapper)initWithEDColumnInfo:(id)a3 maxSpan:(unint64_t)a4 parent:(id)a5;
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation EMColumnInfoMapper

- (EMColumnInfoMapper)initWithEDColumnInfo:(id)a3 maxSpan:(unint64_t)a4 parent:(id)a5
{
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = EMColumnInfoMapper;
  v11 = [(CMMapper *)&v20 initWithParent:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->edColumnInfo, a3);
    v13 = [v10 columnWidthConvertor];
    [(EDColumnInfo *)v12->edColumnInfo width];
    [v13 lassoColumnWidthFromXl:?];
    v12->columnWidth = v14;

    v12->columnSpan = 1;
    v15 = [(EDColumnInfo *)v12->edColumnInfo range];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 lastColumn];
      columnSpan = (v17 - [v16 firstColumn] + 1);
      v12->columnSpan = columnSpan;
    }

    else
    {
      columnSpan = v12->columnSpan;
    }

    if (columnSpan > a4)
    {
      v12->columnSpan = a4;
    }
  }

  return v12;
}

- (EMColumnInfoMapper)initWithDefaultWidth:(double)a3 span:(unint64_t)a4 parent:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = EMColumnInfoMapper;
  v9 = [(CMMapper *)&v16 initWithParent:v8];
  v10 = v9;
  if (v9)
  {
    edColumnInfo = v9->edColumnInfo;
    v9->edColumnInfo = 0;

    v12 = [v8 columnWidthConvertor];
    [v12 lassoColumnWidthFromXl:a3];
    v10->columnWidth = v13;

    if (a4 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = a4;
    }

    v10->columnSpan = v14;
  }

  return v10;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v12 = a3;
  v11 = [OIXMLElement elementWithType:2];
  [v12 addChild:v11];
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
      [v12 addChild:v8];

      ++v7;
    }

    while (self->columnSpan > v7);
  }
}

@end