@interface OADTableCell
- (BOOL)merge:(int)merge;
- (OADTableCell)init;
- (id)description;
- (int)spanAlongDir:(int)dir;
@end

@implementation OADTableCell

- (OADTableCell)init
{
  v3.receiver = self;
  v3.super_class = OADTableCell;
  result = [(OADTableCell *)&v3 init];
  if (result)
  {
    *&result->mRowSpan = 0x100000001;
    *&result->mHorzMerge = 0;
    *&result->mTopRow = -1;
  }

  return result;
}

- (int)spanAlongDir:(int)dir
{
  if (dir)
  {
    return [(OADTableCell *)self gridSpan];
  }

  else
  {
    return [(OADTableCell *)self rowSpan];
  }
}

- (BOOL)merge:(int)merge
{
  if (merge)
  {
    return [(OADTableCell *)self horzMerge];
  }

  else
  {
    return [(OADTableCell *)self vertMerge];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTableCell;
  v2 = [(OADTableCell *)&v4 description];

  return v2;
}

@end