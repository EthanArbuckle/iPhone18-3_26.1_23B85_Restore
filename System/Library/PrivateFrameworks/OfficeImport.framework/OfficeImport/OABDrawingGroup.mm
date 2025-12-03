@interface OABDrawingGroup
+ (void)readBlipsFromDrawingGroup:(id)group toDocument:(id)document state:(id)state;
+ (void)readGraphicalDefaultsFromDrawingGroup:(id)group toTheme:(id)theme state:(id)state;
@end

@implementation OABDrawingGroup

+ (void)readBlipsFromDrawingGroup:(id)group toDocument:(id)document state:(id)state
{
  documentCopy = document;
  stateCopy = state;
  v8 = [group firstChildOfType:61441];
  [stateCopy setBstoreContainerHolder:v8];
  childCount = [v8 childCount];
  if (childCount)
  {
    for (i = 0; i != childCount; ++i)
    {
      v11 = [v8 childAt:i];
      blips = [documentCopy blips];
      v13 = [OABBlip readBlipFromBse:v11];
      [blips addBlip:v13];
    }
  }
}

+ (void)readGraphicalDefaultsFromDrawingGroup:(id)group toTheme:(id)theme state:(id)state
{
  groupCopy = group;
  themeCopy = theme;
  stateCopy = state;
  v9 = [groupCopy firstChildOfType:4];
  v10 = v9;
  if (v9)
  {
    eshObject = [v9 eshObject];
    if (eshObject)
    {
    }

    else
    {
      v12 = 0;
    }

    drawableDefaults = [themeCopy drawableDefaults];
    lineDefaults = [drawableDefaults lineDefaults];
    shapeProperties = [lineDefaults shapeProperties];
    [OABShape readGraphicDefaults:v10 to:shapeProperties state:stateCopy];

    v16 = +[OADNullFill nullFill];
    drawableDefaults2 = [themeCopy drawableDefaults];
    lineDefaults2 = [drawableDefaults2 lineDefaults];
    shapeProperties2 = [lineDefaults2 shapeProperties];
    [shapeProperties2 setFill:v16];

    drawableDefaults3 = [themeCopy drawableDefaults];
    shapeDefaults = [drawableDefaults3 shapeDefaults];
    shapeProperties3 = [shapeDefaults shapeProperties];
    [OABShape readGraphicDefaults:v10 to:shapeProperties3 state:stateCopy];

    drawableDefaults4 = [themeCopy drawableDefaults];
    shapeDefaults2 = [drawableDefaults4 shapeDefaults];
    textBodyProperties = [shapeDefaults2 textBodyProperties];
    [OABTextBodyProperties readTextBodyProperties:textBodyProperties textBox:v12 + 272 useDefaults:1 state:stateCopy];

    drawableDefaults5 = [themeCopy drawableDefaults];
    textDefaults = [drawableDefaults5 textDefaults];
    shapeProperties4 = [textDefaults shapeProperties];
    [OABShape readGraphicDefaults:v10 to:shapeProperties4 state:stateCopy];

    v29 = +[OADNullFill nullFill];
    drawableDefaults6 = [themeCopy drawableDefaults];
    textDefaults2 = [drawableDefaults6 textDefaults];
    shapeProperties5 = [textDefaults2 shapeProperties];
    [shapeProperties5 setFill:v29];

    v33 = +[OADStroke nullStroke];
    drawableDefaults7 = [themeCopy drawableDefaults];
    textDefaults3 = [drawableDefaults7 textDefaults];
    shapeProperties6 = [textDefaults3 shapeProperties];
    [shapeProperties6 setStroke:v33];

    drawableDefaults8 = [themeCopy drawableDefaults];
    textDefaults4 = [drawableDefaults8 textDefaults];
    textBodyProperties2 = [textDefaults4 textBodyProperties];
    [OABTextBodyProperties readTextBodyProperties:textBodyProperties2 textBox:v12 + 272 useDefaults:1 state:stateCopy];
  }
}

@end