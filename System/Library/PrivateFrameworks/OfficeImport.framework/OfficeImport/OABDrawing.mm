@interface OABDrawing
+ (id)readBackgroundPropertiesFromDrawing:(id)drawing state:(id)state;
+ (id)readDrawablesFromDrawing:(id)drawing state:(id)state;
+ (unsigned)addShapeIdForObject:(id)object;
+ (void)applyRulesFromSolverContainer:(id)container state:(id)state;
@end

@implementation OABDrawing

+ (id)readDrawablesFromDrawing:(id)drawing state:(id)state
{
  drawingCopy = drawing;
  stateCopy = state;
  eshObject = [drawingCopy eshObject];
  if ((*(*eshObject + 16))(eshObject) == 61442 && [drawingCopy childCount] >= 2)
  {
    v10 = [drawingCopy childAt:1];
    eshObject2 = [v10 eshObject];
    if (*(*eshObject2 + 16))(eshObject2) == 61443 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = [OABDrawable readDrawablesFromContainer:v10 state:stateCopy];
      v12 = [drawingCopy firstChildOfType:61445];
      if (v12)
      {
        [self applyRulesFromSolverContainer:v12 state:stateCopy];
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

+ (id)readBackgroundPropertiesFromDrawing:(id)drawing state:(id)state
{
  drawingCopy = drawing;
  stateCopy = state;
  if ([drawingCopy childCount] < 3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [drawingCopy childAt:2];
    eshObject = [(OABFillPropertiesManager *)v7 eshObject];
    if (eshObject)
    {

      if (!v9)
      {
        goto LABEL_8;
      }

      v7 = [[OABFillPropertiesManager alloc] initWithFill:&v9[12].mEffects shapeType:1 masterShape:0];
      v10 = [OABFill readFillFromFillPropertiesManager:v7 state:stateCopy];
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

+ (void)applyRulesFromSolverContainer:(id)container state:(id)state
{
  containerCopy = container;
  stateCopy = state;
  if (containerCopy)
  {
    childCount = [containerCopy childCount];
    if (childCount)
    {
      for (i = 0; i != childCount; ++i)
      {
        v8 = [containerCopy childAt:i];
        eshObject = [v8 eshObject];
        if ((*(*eshObject + 16))(eshObject) == 61458)
        {
          v10 = [stateCopy drawableForShapeId:eshObject[10]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            connectorProperties = [v10 connectorProperties];
            from = [connectorProperties from];
            [from setDrawableId:eshObject[8]];
            [from setLocationIndex:eshObject[11]];
            v13 = [connectorProperties to];
            [v13 setDrawableId:eshObject[9]];
            [v13 setLocationIndex:eshObject[12]];
          }
        }
      }
    }
  }
}

+ (unsigned)addShapeIdForObject:(id)object
{
  objectCopy = object;
  v4 = objectCopy;
  if (objectCopy)
  {
    v5 = objectCopy;
    do
    {
      eshObject = [v5 eshObject];
      if ((*(*eshObject + 16))(eshObject) == 61442)
      {
        break;
      }

      parent = [v5 parent];

      v5 = parent;
    }

    while (parent);
  }

  else
  {
    v5 = 0;
  }

  v8 = [v5 childAt:0];
  eshObject2 = [v8 eshObject];
  if (!eshObject2)
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