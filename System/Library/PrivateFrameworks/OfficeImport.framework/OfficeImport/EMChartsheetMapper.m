@interface EMChartsheetMapper
- (EMChartsheetMapper)initWithChartSheet:(id)a3 parent:(id)a4;
- (int)preprocessHeightWithState:(id)a3;
- (int)preprocessWidthWithState:(id)a3;
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation EMChartsheetMapper

- (EMChartsheetMapper)initWithChartSheet:(id)a3 parent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CMMapper *)self initWithParent:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mChartSheet, a3);
    if ([v7 areBoundsSet])
    {
      [v7 bounds];
      v10->mBox.origin.x = v11;
      v10->mBox.origin.y = v12;
      v10->mBox.size.width = v13;
      v10->mBox.size.height = v14;
    }
  }

  return v10;
}

- (int)preprocessWidthWithState:(id)a3
{
  width = self->mBox.size.width;
  if (width <= 0.0)
  {
    return 980.0;
  }

  return width;
}

- (int)preprocessHeightWithState:(id)a3
{
  height = self->mBox.size.height;
  if (height <= 0.0)
  {
    return 600.0;
  }

  return height;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [(EDChartSheet *)self->mChartSheet mainChart];
  if (v7)
  {
    [(EDChartSheet *)self->mChartSheet bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = v8;
    if (v13 == 0.0 && v8 == 0.0)
    {
      v16 = [v7 clientData];
      v17 = [v16 anchor];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v17 position];
        v10 = v18;
        v12 = v19;
        [v17 size];
        v14 = v20;
        v15 = v21;
      }
    }

    v22 = [[EMDrawableMapper alloc] initWithChartDrawable:v7 box:self parent:v10, v12, v14, v15];
    [(EMDrawableMapper *)v22 mapAt:v23 withState:v6];
  }
}

@end