@interface OABDrawing
+ (id)readBackgroundPropertiesFromDrawing:(id)a3 state:(id)a4;
+ (id)readDrawablesFromDrawing:(id)a3 state:(id)a4;
+ (unsigned)addShapeIdForObject:(id)a3;
+ (void)applyRulesFromSolverContainer:(id)a3 state:(id)a4;
@end

@implementation OABDrawing

+ (id)readDrawablesFromDrawing:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 eshObject];
  if ((*(*v8 + 16))(v8) == 61442 && [v6 childCount] >= 2)
  {
    v10 = [v6 childAt:1];
    v11 = [v10 eshObject];
    if (*(*v11 + 16))(v11) == 61443 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = [OABDrawable readDrawablesFromContainer:v10 state:v7];
      v12 = [v6 firstChildOfType:61445];
      if (v12)
      {
        [a1 applyRulesFromSolverContainer:v12 state:v7];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)readBackgroundPropertiesFromDrawing:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 childCount] < 3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [v5 childAt:2];
    v8 = [(OABFillPropertiesManager *)v7 eshObject];
    if (v8)
    {

      if (!v9)
      {
        goto LABEL_8;
      }

      v7 = [[OABFillPropertiesManager alloc] initWithFill:&v9[12].mEffects shapeType:1 masterShape:0];
      v10 = [OABFill readFillFromFillPropertiesManager:v7 state:v6];
      v9 = objc_alloc_init(OADBackgroundProperties);
      [(OADBackgroundProperties *)v9 setFill:v10];
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_8:

  return v9;
}

+ (void)applyRulesFromSolverContainer:(id)a3 state:(id)a4
{
  v14 = a3;
  v5 = a4;
  if (v14)
  {
    v6 = [v14 childCount];
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = [v14 childAt:i];
        v9 = [v8 eshObject];
        if ((*(*v9 + 16))(v9) == 61458)
        {
          v10 = [v5 drawableForShapeId:v9[10]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 connectorProperties];
            v12 = [v11 from];
            [v12 setDrawableId:v9[8]];
            [v12 setLocationIndex:v9[11]];
            v13 = [v11 to];
            [v13 setDrawableId:v9[9]];
            [v13 setLocationIndex:v9[12]];
          }
        }
      }
    }
  }
}

+ (unsigned)addShapeIdForObject:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    do
    {
      v6 = [v5 eshObject];
      if ((*(*v6 + 16))(v6) == 61442)
      {
        break;
      }

      v7 = [v5 parent];

      v5 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v8 = [v5 childAt:0];
  v9 = [v8 eshObject];
  if (!v9)
  {

    goto LABEL_11;
  }

  if (!v10)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v11 = vadd_s32(*(v10 + 28), 0x100000001);
  *(v10 + 28) = v11;
  v12 = v11.u32[1];
LABEL_12:

  return v12;
}

@end