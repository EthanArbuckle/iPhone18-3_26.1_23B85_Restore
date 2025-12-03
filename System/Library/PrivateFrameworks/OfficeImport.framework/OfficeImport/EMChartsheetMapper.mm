@interface EMChartsheetMapper
- (EMChartsheetMapper)initWithChartSheet:(id)sheet parent:(id)parent;
- (int)preprocessHeightWithState:(id)state;
- (int)preprocessWidthWithState:(id)state;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation EMChartsheetMapper

- (EMChartsheetMapper)initWithChartSheet:(id)sheet parent:(id)parent
{
  sheetCopy = sheet;
  parentCopy = parent;
  v9 = [(CMMapper *)self initWithParent:parentCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mChartSheet, sheet);
    if ([sheetCopy areBoundsSet])
    {
      [sheetCopy bounds];
      v10->mBox.origin.x = v11;
      v10->mBox.origin.y = v12;
      v10->mBox.size.width = v13;
      v10->mBox.size.height = v14;
    }
  }

  return v10;
}

- (int)preprocessWidthWithState:(id)state
{
  width = self->mBox.size.width;
  if (width <= 0.0)
  {
    return 980.0;
  }

  return width;
}

- (int)preprocessHeightWithState:(id)state
{
  height = self->mBox.size.height;
  if (height <= 0.0)
  {
    return 600.0;
  }

  return height;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  mainChart = [(EDChartSheet *)self->mChartSheet mainChart];
  if (mainChart)
  {
    [(EDChartSheet *)self->mChartSheet bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = v8;
    if (v13 == 0.0 && v8 == 0.0)
    {
      clientData = [mainChart clientData];
      anchor = [clientData anchor];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [anchor position];
        v10 = v18;
        v12 = v19;
        [anchor size];
        v14 = v20;
        v15 = v21;
      }
    }

    v22 = [[EMDrawableMapper alloc] initWithChartDrawable:mainChart box:self parent:v10, v12, v14, v15];
    [(EMDrawableMapper *)v22 mapAt:atCopy withState:stateCopy];
  }
}

@end