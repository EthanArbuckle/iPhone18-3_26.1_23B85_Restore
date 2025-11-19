@interface ODIState
- (CGRect)logicalBounds;
- (ODIState)initWithDiagram:(id)a3 group:(id)a4 drawingTheme:(id)a5;
- (id)defaultStyleLabelNameForPointType:(int)a3;
- (id)presentationNameForPointType:(int)a3;
- (void)setLogicalBounds:(CGRect)a3 maintainAspectRatio:(BOOL)a4;
- (void)setPresentationName:(id)a3 forPointType:(int)a4;
@end

@implementation ODIState

- (ODIState)initWithDiagram:(id)a3 group:(id)a4 drawingTheme:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31.receiver = self;
  v31.super_class = ODIState;
  v12 = [(ODIState *)&v31 init];
  v13 = v12;
  v14 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mDiagram, a3);
    objc_storeStrong(&v13->mGroup, a4);
    objc_storeStrong(&v13->mDrawingTheme, a5);
    v15 = [OAITOrientedBounds absoluteOrientedBoundsOfDrawable:v9];
    mDiagramOrientedBounds = v14->mDiagramOrientedBounds;
    v14->mDiagramOrientedBounds = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mPresentationNames = v14->mPresentationNames;
    v14->mPresentationNames = v17;

    v19 = 6;
    do
    {
      v20 = v14->mPresentationNames;
      v21 = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)v20 addObject:v21];

      --v19;
    }

    while (v19);
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mDefaultStyleLabelNames = v14->mDefaultStyleLabelNames;
    v14->mDefaultStyleLabelNames = v22;

    [(NSMutableArray *)v14->mDefaultStyleLabelNames addObject:@"asst0"];
    v24 = v14->mDefaultStyleLabelNames;
    v25 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)v24 addObject:v25];

    [(NSMutableArray *)v14->mDefaultStyleLabelNames addObject:@"node1"];
    [(NSMutableArray *)v14->mDefaultStyleLabelNames addObject:@"parChTrans2D1"];
    v26 = v14->mDefaultStyleLabelNames;
    v27 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)v26 addObject:v27];

    [(NSMutableArray *)v14->mDefaultStyleLabelNames addObject:@"sibTrans2D1"];
    v28 = v14->mDefaultStyleLabelNames;
    v29 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)v28 addObject:v29];
  }

  return v14;
}

- (CGRect)logicalBounds
{
  x = self->mLogicalBounds.origin.x;
  y = self->mLogicalBounds.origin.y;
  width = self->mLogicalBounds.size.width;
  height = self->mLogicalBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setLogicalBounds:(CGRect)a3 maintainAspectRatio:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    [ODIDrawable sizeOfDiagram:self->mDiagram];
    v11 = v10 / v9;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v12 = CGRectGetHeight(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v13 = v12 / CGRectGetWidth(v30);
    v14 = v11;
    if (v11 >= v13)
    {
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v17 = CGRectGetWidth(v33);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      v18 = -(CGRectGetHeight(v34) - v17 * v14);
      y = y + (v18 * -0.5);
      height = height + v18;
    }

    else
    {
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v15 = CGRectGetHeight(v31) / v14;
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v16 = v15 - CGRectGetWidth(v32);
      x = x + (v16 * -0.5);
      width = width + v16;
    }
  }

  self->mLogicalBounds.origin.x = x;
  self->mLogicalBounds.origin.y = y;
  self->mLogicalBounds.size.width = width;
  self->mLogicalBounds.size.height = height;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v19 = CGRectGetHeight(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v20 = CGRectGetWidth(v36);
  if (v19 >= v20)
  {
    v20 = v19;
  }

  v21 = floor(log10(v20));
  if (v21 < 4.0)
  {
    v21 = 4.0;
  }

  v22 = llround(__exp10(v21));
  self->mScale = v22;
  mGroup = self->mGroup;
  v24 = self->mLogicalBounds.origin.x * v22;
  v25 = self->mLogicalBounds.origin.y * v22;
  v26 = self->mLogicalBounds.size.width * v22;
  v27 = self->mLogicalBounds.size.height * v22;

  [(OADGroup *)mGroup setLogicalBounds:v24, v25, v26, v27];
}

- (id)presentationNameForPointType:(int)a3
{
  v3 = [(NSMutableArray *)self->mPresentationNames objectAtIndex:a3];
  v4 = [MEMORY[0x277CBEB68] null];

  if (v3 == v4)
  {

    v3 = 0;
  }

  return v3;
}

- (void)setPresentationName:(id)a3 forPointType:(int)a4
{
  v6 = a3;
  mPresentationNames = self->mPresentationNames;
  v8 = v6;
  v10 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  [(NSMutableArray *)mPresentationNames replaceObjectAtIndex:a4 withObject:v8];
  v9 = v10;
  if (!v10)
  {

    v9 = 0;
  }
}

- (id)defaultStyleLabelNameForPointType:(int)a3
{
  v3 = [(NSMutableArray *)self->mDefaultStyleLabelNames objectAtIndex:a3];
  v4 = [MEMORY[0x277CBEB68] null];

  if (v3 == v4)
  {

    v3 = 0;
  }

  return v3;
}

@end