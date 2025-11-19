@interface OABDrawingGroup
+ (void)readBlipsFromDrawingGroup:(id)a3 toDocument:(id)a4 state:(id)a5;
+ (void)readGraphicalDefaultsFromDrawingGroup:(id)a3 toTheme:(id)a4 state:(id)a5;
@end

@implementation OABDrawingGroup

+ (void)readBlipsFromDrawingGroup:(id)a3 toDocument:(id)a4 state:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [a3 firstChildOfType:61441];
  [v7 setBstoreContainerHolder:v8];
  v9 = [v8 childCount];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [v8 childAt:i];
      v12 = [v14 blips];
      v13 = [OABBlip readBlipFromBse:v11];
      [v12 addBlip:v13];
    }
  }
}

+ (void)readGraphicalDefaultsFromDrawingGroup:(id)a3 toTheme:(id)a4 state:(id)a5
{
  v40 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v40 firstChildOfType:4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 eshObject];
    if (v11)
    {
    }

    else
    {
      v12 = 0;
    }

    v13 = [v7 drawableDefaults];
    v14 = [v13 lineDefaults];
    v15 = [v14 shapeProperties];
    [OABShape readGraphicDefaults:v10 to:v15 state:v8];

    v16 = +[OADNullFill nullFill];
    v17 = [v7 drawableDefaults];
    v18 = [v17 lineDefaults];
    v19 = [v18 shapeProperties];
    [v19 setFill:v16];

    v20 = [v7 drawableDefaults];
    v21 = [v20 shapeDefaults];
    v22 = [v21 shapeProperties];
    [OABShape readGraphicDefaults:v10 to:v22 state:v8];

    v23 = [v7 drawableDefaults];
    v24 = [v23 shapeDefaults];
    v25 = [v24 textBodyProperties];
    [OABTextBodyProperties readTextBodyProperties:v25 textBox:v12 + 272 useDefaults:1 state:v8];

    v26 = [v7 drawableDefaults];
    v27 = [v26 textDefaults];
    v28 = [v27 shapeProperties];
    [OABShape readGraphicDefaults:v10 to:v28 state:v8];

    v29 = +[OADNullFill nullFill];
    v30 = [v7 drawableDefaults];
    v31 = [v30 textDefaults];
    v32 = [v31 shapeProperties];
    [v32 setFill:v29];

    v33 = +[OADStroke nullStroke];
    v34 = [v7 drawableDefaults];
    v35 = [v34 textDefaults];
    v36 = [v35 shapeProperties];
    [v36 setStroke:v33];

    v37 = [v7 drawableDefaults];
    v38 = [v37 textDefaults];
    v39 = [v38 textBodyProperties];
    [OABTextBodyProperties readTextBodyProperties:v39 textBox:v12 + 272 useDefaults:1 state:v8];
  }
}

@end