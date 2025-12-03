@interface OABShapeGeometry
+ (EshComputedValue)computedValueWithAdjustCoord:(OADAdjustCoord)coord;
+ (int)actualPathCommandForPathCommand:(int)command index:(unsigned __int16)index;
+ (void)appendAdjustPoint:(OADAdjustPoint)point toPathParams:(void *)params;
+ (void)readAdjustValuesFromShapeProperties:(const EshShapeProperties *)properties toGeometry:(id)geometry;
+ (void)readFromFormulas:(const void *)formulas toGeometry:(id)geometry;
+ (void)readFromPathCommands:(const void *)commands pathParams:(const void *)params toGeometry:(id)geometry;
+ (void)readFromShape:(void *)shape toShape:(id)toShape;
+ (void)readFromTextBoxRects:(const void *)rects toGeometry:(id)geometry;
+ (void)readGeometryCoordSpaceFromShapeProperties:(const EshShapeProperties *)properties toGeometry:(id)geometry;
+ (void)readLimoFromPath:(const EshPath *)path toGeometry:(id)geometry;
+ (void)readPathCommandsAndParamsFromPath:(const EshPath *)path toGeometry:(id)geometry;
+ (void)writeAdjustValuesFromGeometry:(id)geometry toShapeProperties:(EshShapeProperties *)properties;
+ (void)writeCoordSpaceFromGeometry:(id)geometry toShape:(void *)shape;
+ (void)writeFormulasFromGeometry:(id)geometry toPath:(EshPath *)path;
+ (void)writeFromShape:(id)shape toShape:(void *)toShape;
+ (void)writeLimoFromGeometry:(id)geometry toPath:(EshPath *)path;
+ (void)writePathCommandsAndParamsFromGeometry:(id)geometry toPath:(EshPath *)path;
+ (void)writeTextBodyRectsFromGeometry:(id)geometry toPath:(EshPath *)path;
@end

@implementation OABShapeGeometry

+ (void)readFromShape:(void *)shape toShape:(id)toShape
{
  toShapeCopy = toShape;
  ShapeType = EshShapeProperties::getShapeType((shape + 424));
  if (ShapeType == 100)
  {
    v8 = 99;
  }

  else
  {
    v8 = ShapeType;
  }

  if (EshPath::isParamsSet(shape + 22) & 1) != 0 || (EshPath::isCommandsSet(shape + 22) & 1) != 0 || ((isPathTypeSet = EshPath::isPathTypeSet(shape + 22), v8 != 20) ? (v10 = isPathTypeSet) : (v10 = 0), (v10 & 1) != 0 || (EshPath::isFormulasSet(shape + 22) & 1) != 0 || (EshPath::isTextBoxRectsSet(shape + 22) & 1) != 0 || (EshPath::isLimoXSet(shape + 22) & 1) != 0 || (EshPath::isLimoYSet(shape + 22) & 1) != 0 || (EshShapeProperties::isCoordLeftSet((shape + 424)) & 1) != 0 || (EshShapeProperties::isCoordTopSet((shape + 424)) & 1) != 0 || (EshShapeProperties::isCoordRightSet((shape + 424))))
  {
    isCoordBottomSet = 1;
    if (!v8)
    {
      goto LABEL_51;
    }
  }

  else
  {
    isCoordBottomSet = EshShapeProperties::isCoordBottomSet((shape + 424));
    if (!v8)
    {
      goto LABEL_51;
    }
  }

  if (isCoordBottomSet)
  {
    EshGeometryProperties::EshGeometryProperties(v29);
    if (EshShapeLib::cloneShapeProperties(v8, v29, v12))
    {
      EshGeometryProperties::addImpliedSegments(v29);
      if ((EshPath::isParamsSet(shape + 22) & 1) == 0)
      {
        Vertices = EshGeometryProperties::getVertices(v29);
        v14 = (*(*Vertices + 16))(Vertices);
        EshPath::takeParams(shape + 22, v14);
      }

      if ((EshPath::isCommandsSet(shape + 22) & 1) == 0 && (!EshPath::isPathTypeSet(shape + 22) || EshPath::getPathType(shape + 22) == 4) && EshGeometryProperties::getSegments(v29))
      {
        Segments = EshGeometryProperties::getSegments(v29);
        v16 = (*(*Segments + 16))(Segments);
        EshPath::takeCommands(shape + 528, v16);
      }

      if ((EshPath::isFormulasSet(shape + 22) & 1) == 0)
      {
        Formulas = EshGeometryProperties::getFormulas(v29);
        v18 = (*(*Formulas + 16))(Formulas);
        EshPath::takeFormulas(shape + 528, v18);
      }

      if ((EshPath::isTextBoxRectsSet(shape + 22) & 1) == 0 && EshGeometryProperties::isInscribesSet(v29))
      {
        Inscribes = EshGeometryProperties::getInscribes(v29);
        v20 = (*(*Inscribes + 16))(Inscribes);
        EshPath::takeTextBoxRects(shape + 528, v20);
      }

      if ((EshPath::isLimoXSet(shape + 22) & 1) == 0 && v35 != 0x7FFFFFFF)
      {
        EshPath::setLimoX(shape + 22, v35);
      }

      if ((EshPath::isLimoYSet(shape + 22) & 1) == 0 && v36 != 0x7FFFFFFF)
      {
        EshPath::setLimoY(shape + 22, v36);
      }

      v22 = v30;
      v21 = v31;
      v24 = v32;
      v23 = v33;
      if ((EshShapeProperties::isCoordLeftSet((shape + 424)) & 1) == 0)
      {
        EshShapeProperties::setCoordLeft((shape + 424), v22);
      }

      if ((EshShapeProperties::isCoordTopSet((shape + 424)) & 1) == 0)
      {
        EshShapeProperties::setCoordTop((shape + 424), v21);
      }

      if ((EshShapeProperties::isCoordRightSet((shape + 424)) & 1) == 0)
      {
        EshShapeProperties::setCoordRight((shape + 424), v24);
      }

      if ((EshShapeProperties::isCoordBottomSet((shape + 424)) & 1) == 0)
      {
        EshShapeProperties::setCoordBottom((shape + 424), v23);
      }

      for (i = 0; i != 10; ++i)
      {
        if ((EshShapeProperties::isAdjSet((shape + 424), i) & 1) == 0)
        {
          EshShapeProperties::setAdj((shape + 424), i, v34[i]);
        }
      }
    }

    EshGeometryProperties::~EshGeometryProperties(v29);
  }

LABEL_51:
  if ((v8 == 0) | isCoordBottomSet & 1)
  {
    v26 = objc_alloc_init(OADCustomShapeGeometry);
    [(OADShapeGeometry *)v26 setIsEscher:1];
    [toShapeCopy setGeometry:v26];
    [self readAdjustValuesFromShapeProperties:shape + 424 toGeometry:v26];
    [self readGeometryCoordSpaceFromShapeProperties:shape + 424 toGeometry:v26];
    [self readLimoFromPath:shape + 528 toGeometry:v26];
    if (EshPath::isFormulasSet(shape + 22))
    {
      v27 = EshPath::getFormulas(shape + 22);
      if (v27)
      {
        [self readFromFormulas:v27 toGeometry:v26];
      }
    }

    if (EshPath::isTextBoxRectsSet(shape + 22))
    {
      TextBoxRects = EshPath::getTextBoxRects(shape + 22);
      if (TextBoxRects)
      {
        [self readFromTextBoxRects:TextBoxRects toGeometry:v26];
      }
    }

    [self readPathCommandsAndParamsFromPath:shape + 528 toGeometry:v26];
  }

  else
  {
    v26 = objc_alloc_init(OADPresetShapeGeometry);
    [(OADShapeGeometry *)v26 setIsEscher:1];
    [toShapeCopy setGeometry:v26];
    [(OADCustomShapeGeometry *)v26 setType:v8];
    [self readAdjustValuesFromShapeProperties:shape + 424 toGeometry:v26];
  }
}

+ (void)readFromPathCommands:(const void *)commands pathParams:(const void *)params toGeometry:(id)geometry
{
  geometryCopy = geometry;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__OABShapeGeometry_readFromPathCommands_pathParams_toGeometry___block_invoke;
  aBlock[3] = &unk_2799C7C60;
  aBlock[4] = v53;
  aBlock[5] = params;
  selfCopy = self;
  aBlock[6] = self;
  v8 = _Block_copy(aBlock);
  v9 = objc_alloc_init(OADPath);
  if (((*(commands + 2) - *(commands + 1)) & 0x7FFFFFFF8) != 0)
  {
    v10 = 0;
    commandsCopy = commands;
    v48 = 0;
    v46 = v8;
    do
    {
      v45 = v10;
      v11 = EshBasicTablePropVal<EshComputedValue>::operator[](commands, v10);
      v51 = v9;
      if (*v11)
      {
        v12 = v11;
        v13 = 0;
        v50 = v11;
        while (1)
        {
          v14 = [selfCopy actualPathCommandForPathCommand:*(v12 + 1) index:v13];
          switch(v14)
          {
            case 0:
            case 29:
              v32 = v8[2](v8);
              v18 = [(OADToPointPathElement *)[OADLineToPathElement alloc] initWithToPoint:v32, v8[2](v8)];
              [(OADToPointPathElement *)v18 setRelative:v14 == 29];
              [(OADPath *)v51 addElement:v18];
              goto LABEL_33;
            case 1:
            case 30:
              v27 = v8[2](v8);
              v28 = v8[2](v8);
              v29 = v8[2](v8);
              v30 = v8[2](v8);
              v31 = v8[2](v8);
              v18 = [[OADCubicBezierToPathElement alloc] initWithControlPoint1:v27 controlPoint2:v28 toPoint:v29, v30, v31, v8[2](v8)];
              [(OADToPointPathElement *)v18 setRelative:v14 == 30];
              [(OADPath *)v51 addElement:v18];
              goto LABEL_33;
            case 2:
            case 28:
              v33 = v8[2](v8);
              v18 = [(OADToPointPathElement *)[OADMoveToPathElement alloc] initWithToPoint:v33, v8[2](v8)];
              [(OADToPointPathElement *)v18 setRelative:v14 == 28];
              [(OADPath *)v51 addElement:v18];
              goto LABEL_33;
            case 3:
              v18 = objc_alloc_init(OADClosePathElement);
              [(OADPath *)v51 addElement:v18];
              goto LABEL_33;
            case 4:

              if ([(OADPath *)v51 elementCount])
              {
                [geometryCopy addPath:v51];
                v48 = v51;
              }

              else
              {
                v48 = 0;
              }

              v18 = v51;
              v51 = objc_alloc_init(OADPath);
              goto LABEL_33;
            case 6:
            case 7:
              v34 = v8[2](v8);
              v35 = v8[2](v8);
              v36 = v8[2](v8);
              v37 = v8[2](v8);
              v38 = v8[2](v8);
              LOBYTE(v41) = v14 == 6;
              v18 = [[OADAngleArcPathElement alloc] initWithCenter:v34 semiaxes:v35 startAngle:v36 angleLength:v37 connectedToPrevious:v38, v8[2](v8), v41];
              [(OADPath *)v51 addElement:v18];
              goto LABEL_33;
            case 8:
            case 9:
            case 10:
            case 11:
              v20 = v8;
              v21 = v8[2](v8);
              v22 = v20[2](v20);
              v23 = v20[2](v20);
              v24 = v20[2](v20);
              v47 = v20[2](v20);
              v25 = v20[2](v20);
              v26 = v20[2](v20);
              BYTE1(v42) = (v14 & 0xFFFFFFFD) == 8;
              LOBYTE(v42) = (v14 & 0xFFFFFFFE) == 10;
              v18 = [[OADVectorArcPathElement alloc] initWithLeft:v21 top:v22 right:v23 bottom:v24 startVector:v47 endVector:v25 clockwise:v26 connectedToPrevious:v20[2](v20), v42];
              [(OADPath *)v51 addElement:v18];
              v8 = v46;
              goto LABEL_33;
            case 12:
            case 13:
              v39 = v8[2](v8);
              v18 = [[OADQuarterEllipseToPathElement alloc] initWithToPoint:v39 startsVertical:v8[2](v8), v14 == 13];
              [(OADPath *)v51 addElement:v18];
              goto LABEL_33;
            case 14:
              v40 = v8[2](v8);
              v18 = [[OADQuadBezierControlPointPathElement alloc] initWithControlPoint:v40, v8[2](v8)];
              [(OADPath *)v51 addElement:v18];
              goto LABEL_33;
            case 15:
            case 16:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
              elementCount = [(OADPath *)v51 elementCount];
              v16 = v48;
              if (elementCount)
              {
                v16 = v51;
              }

              v17 = v16;
              v18 = v17;
              if (v14 > 31)
              {
                if (v14 > 33)
                {
                  if (v14 == 34)
                  {
                    v19 = 5;
                  }

                  else
                  {
                    if (v14 != 35)
                    {
                      goto LABEL_33;
                    }

                    v19 = 4;
                  }
                }

                else if (v14 == 32)
                {
                  v19 = 3;
                }

                else
                {
                  v19 = 2;
                }

                goto LABEL_32;
              }

              if (v14 == 15)
              {
                v19 = 0;
LABEL_32:
                [(OADLineToPathElement *)v17 setFillMode:v19];
                goto LABEL_33;
              }

              if (v14 != 16)
              {
                if (v14 != 31)
                {
                  goto LABEL_33;
                }

                v19 = 1;
                goto LABEL_32;
              }

              [(OADLineToPathElement *)v17 setStroked:0];
LABEL_33:

LABEL_34:
              ++v13;
              v12 = v50;
              if (*v50 <= v13)
              {
                goto LABEL_39;
              }

              break;
            default:
              goto LABEL_34;
          }
        }
      }

LABEL_39:
      v10 = v45 + 1;
      commands = commandsCopy;
      v9 = v51;
    }

    while (v45 + 1 < ((commandsCopy[2] - commandsCopy[1]) >> 3));
  }

  else
  {
    v48 = 0;
  }

  if ([(OADPath *)v9 elementCount])
  {
    [geometryCopy addPath:v9];
  }

  _Block_object_dispose(v53, 8);
}

uint64_t __63__OABShapeGeometry_readFromPathCommands_pathParams_toGeometry___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(*(v3 + 8) + 24);
  if (v4 >= ((*(v2 + 16) - *(v2 + 8)) >> 3))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"not enough parameters"];
    v2 = a1[5];
    v4 = *(*(a1[4] + 8) + 24);
  }

  v5 = a1[6];
  v7 = *EshBasicTablePropVal<EshComputedValue>::operator[](v2, v4);
  result = [v5 adjustCoordWithComputedValue:&v7];
  ++*(*(a1[4] + 8) + 24);
  return result;
}

+ (void)readFromFormulas:(const void *)formulas toGeometry:(id)geometry
{
  v15[3] = *MEMORY[0x277D85DE8];
  geometryCopy = geometry;
  if (-1227133513 * ((*(formulas + 2) - *(formulas + 1)) >> 2))
  {
    v6 = 0;
    do
    {
      v7 = EshBasicTablePropVal<EshFormula>::operator[](formulas, v6);
      for (i = 0; i != 6; i += 2)
      {
        v9 = &v14[i];
        v9[1] = 0;
        *(v9 + 4) = 0;
      }

      EshFormula::operator=(v14, v7);
      v10 = 0;
      v11 = v14[0];
      do
      {
        v15[v10 / 2] = v14[v10 + 1] | (LOWORD(v14[v10 + 2]) << 32);
        v10 += 2;
      }

      while (v10 != 6);
      v12 = [OADFormula alloc];
      v13 = [(OADFormula *)v12 initWithType:v11 arg0:v15[0] arg1:v15[1] arg2:v15[2]];
      [geometryCopy addFormula:v13];

      ++v6;
    }

    while (v6 < -1227133513 * ((*(formulas + 2) - *(formulas + 1)) >> 2));
  }
}

+ (void)readFromTextBoxRects:(const void *)rects toGeometry:(id)geometry
{
  geometryCopy = geometry;
  if (((*(rects + 2) - *(rects + 1)) & 0x1FFFFFFFE0) != 0)
  {
    v7 = 0;
    do
    {
      v8 = EshBasicTablePropVal<EshComputedRect>::operator[](rects, v7);
      for (i = 0; i != 32; i += 8)
      {
        v10 = &v20 + i;
        *v10 = 0;
        *(v10 + 1) = 0;
      }

      v11 = v8[1];
      v20 = *v8;
      v21 = v11;
      v19 = v20;
      v12 = [self adjustCoordWithComputedValue:&v19];
      v18 = *(&v20 + 1);
      v13 = [self adjustCoordWithComputedValue:&v18];
      v17 = v21;
      v14 = [self adjustCoordWithComputedValue:&v17];
      v16 = *(&v21 + 1);
      v15 = -[OADAdjustRect initWithLeft:top:right:bottom:]([OADAdjustRect alloc], "initWithLeft:top:right:bottom:", v12, v13, v14, [self adjustCoordWithComputedValue:&v16]);
      [geometryCopy addTextBodyRect:v15];

      ++v7;
    }

    while (v7 < ((*(rects + 2) - *(rects + 1)) >> 5));
  }
}

+ (EshComputedValue)computedValueWithAdjustCoord:(OADAdjustCoord)coord
{
  *v3 = coord.isFormulaResult;
  *(v3 + 4) = coord.value;
  return self;
}

+ (void)writeAdjustValuesFromGeometry:(id)geometry toShapeProperties:(EshShapeProperties *)properties
{
  geometryCopy = geometry;
  v5 = 0;
  do
  {
    if ([geometryCopy hasAdjustValueAtIndex:v5])
    {
      EshShapeProperties::setAdj(properties, v5, [geometryCopy adjustValueAtIndex:v5]);
    }

    v5 = (v5 + 1);
  }

  while (v5 != 10);
}

+ (void)writeCoordSpaceFromGeometry:(id)geometry toShape:(void *)shape
{
  geometryCopy = geometry;
  isEscher = [geometryCopy isEscher];
  if (isEscher)
  {
    if (geometryCopy)
    {
      isEscher = [geometryCopy geometryCoordSpace];
      v7 = v14[0];
    }

    else
    {
      v7 = 0;
      *v14 = 0;
      *v15 = 0;
    }

    DefaultPositionHorizontal = EshContentProperties::getDefaultPositionHorizontal(isEscher);
    if (v7 != DefaultPositionHorizontal)
    {
      EshShapeProperties::setCoordLeft((shape + 424), v14[0]);
    }

    v9 = v14[1];
    v10 = EshContentProperties::getDefaultPositionHorizontal(DefaultPositionHorizontal);
    if (v9 != v10)
    {
      EshShapeProperties::setCoordTop((shape + 424), v14[1]);
    }

    v11 = v15[0];
    DefaultCoordRight = EshShapeProperties::getDefaultCoordRight(v10);
    if (v11 != DefaultCoordRight)
    {
      EshShapeProperties::setCoordRight((shape + 424), v15[0]);
    }

    v13 = v15[1];
    if (v13 != EshShapeProperties::getDefaultCoordRight(DefaultCoordRight))
    {
      EshShapeProperties::setCoordBottom((shape + 424), v15[1]);
    }

    operator new();
  }
}

+ (void)writeLimoFromGeometry:(id)geometry toPath:(EshPath *)path
{
  geometryCopy = geometry;
  isEscher = [geometryCopy isEscher];
  if (isEscher)
  {
    if (geometryCopy)
    {
      isEscher = [geometryCopy limo];
      v7 = v17[0];
    }

    else
    {
      v7 = 0;
      *v17 = 0;
    }

    DefaultLimoX = EshPath::getDefaultLimoX(isEscher);
    if (v7 != DefaultLimoX)
    {
      EshPath::setLimoX(path, v17[0]);
    }

    v16 = v17[1];
    if (v16 != EshPath::getDefaultLimoX(DefaultLimoX))
    {
      EshPath::setLimoY(path, v17[1]);
    }
  }

  else
  {
    DefaultCoordRight = EshShapeProperties::getDefaultCoordRight(isEscher);
    v9 = DefaultCoordRight;
    DefaultPositionHorizontal = EshContentProperties::getDefaultPositionHorizontal(DefaultCoordRight);
    EshPath::setLimoX(path, (v9 - DefaultPositionHorizontal) / 2);
    v12 = EshShapeProperties::getDefaultCoordRight(v11);
    v13 = v12;
    v14 = EshContentProperties::getDefaultPositionHorizontal(v12);
    EshPath::setLimoY(path, (v13 - v14) / 2);
  }
}

+ (void)appendAdjustPoint:(OADAdjustPoint)point toPathParams:(void *)params
{
  y = point.y;
  [self computedValueWithAdjustCoord:*&point.x];
  v7 = *(params + 2);
  if (v7 >= *(params + 3))
  {
    v8 = std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__emplace_back_slow_path<EshComputedValue const&>(params + 1, &v12);
  }

  else
  {
    *v7 = v12;
    v8 = (v7 + 1);
  }

  *(params + 2) = v8;
  [self computedValueWithAdjustCoord:y];
  v9 = *(params + 2);
  if (v9 >= *(params + 3))
  {
    v10 = std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__emplace_back_slow_path<EshComputedValue const&>(params + 1, &v11);
  }

  else
  {
    *v9 = v11;
    v10 = (v9 + 1);
  }

  *(params + 2) = v10;
}

+ (void)writePathCommandsAndParamsFromGeometry:(id)geometry toPath:(EshPath *)path
{
  geometryCopy = geometry;
  if ([geometryCopy pathCount])
  {
    operator new();
  }

  EshPath::takeCommands(path, 0);
  EshPath::takeParams(path, 0);
}

+ (void)writeFormulasFromGeometry:(id)geometry toPath:(EshPath *)path
{
  v6 = *MEMORY[0x277D85DE8];
  geometryCopy = geometry;
  if ([geometryCopy formulaCount])
  {
    operator new();
  }

  EshPath::takeFormulas(path, 0);
}

+ (void)writeTextBodyRectsFromGeometry:(id)geometry toPath:(EshPath *)path
{
  geometryCopy = geometry;
  if ([geometryCopy textBodyRectCount])
  {
    operator new();
  }

  EshPath::takeTextBoxRects(path, 0);
}

+ (void)writeFromShape:(id)shape toShape:(void *)toShape
{
  shapeCopy = shape;
  geometry = [shapeCopy geometry];
  type = [shapeCopy type];
  v8 = type;
  if (type < 203)
  {
    if (type)
    {
      goto LABEL_5;
    }
  }

  else
  {
    equivalentCustomGeometry = [geometry equivalentCustomGeometry];

    geometry = equivalentCustomGeometry;
  }

  v8 = 100;
LABEL_5:
  EshShapeProperties::setShapeType(toShape + 424, v8);
  EshShapeProperties::setHasShapeType((toShape + 424), 1);
  [self writeAdjustValuesFromGeometry:geometry toShapeProperties:toShape + 424];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = geometry;
    EshPath::takeConnectAngles(toShape + 528, 0);
    EshPath::takeHandles(toShape + 528, 0);
    [self writeCoordSpaceFromGeometry:v10 toShape:toShape];
    [self writeLimoFromGeometry:v10 toPath:toShape + 528];
    [self writePathCommandsAndParamsFromGeometry:v10 toPath:toShape + 528];
    [self writeFormulasFromGeometry:v10 toPath:toShape + 528];
    [self writeTextBodyRectsFromGeometry:v10 toPath:toShape + 528];
  }

  EshShapeProperties::setHidden((toShape + 424), [shapeCopy hidden]);
}

+ (void)readAdjustValuesFromShapeProperties:(const EshShapeProperties *)properties toGeometry:(id)geometry
{
  geometryCopy = geometry;
  v5 = 0;
  do
  {
    if (EshShapeProperties::isAdjSet(properties, v5))
    {
      [geometryCopy setAdjustValue:EshShapeProperties::getAdj(properties atIndex:{v5), v5}];
    }

    v5 = (v5 + 1);
  }

  while (v5 != 10);
}

+ (void)readGeometryCoordSpaceFromShapeProperties:(const EshShapeProperties *)properties toGeometry:(id)geometry
{
  geometryCopy = geometry;
  isCoordLeftSet = EshShapeProperties::isCoordLeftSet(properties);
  if (isCoordLeftSet)
  {
    CoordLeft = EshShapeProperties::getCoordLeft(properties);
  }

  else
  {
    CoordLeft = EshContentProperties::getDefaultPositionHorizontal(isCoordLeftSet);
  }

  v8 = CoordLeft;
  isCoordTopSet = EshShapeProperties::isCoordTopSet(properties);
  if (isCoordTopSet)
  {
    CoordTop = EshShapeProperties::getCoordTop(properties);
  }

  else
  {
    CoordTop = EshContentProperties::getDefaultPositionHorizontal(isCoordTopSet);
  }

  v11 = CoordTop;
  isCoordRightSet = EshShapeProperties::isCoordRightSet(properties);
  if (isCoordRightSet)
  {
    CoordRight = EshShapeProperties::getCoordRight(properties);
  }

  else
  {
    CoordRight = EshShapeProperties::getDefaultCoordRight(isCoordRightSet);
  }

  v14 = CoordRight;
  isCoordBottomSet = EshShapeProperties::isCoordBottomSet(properties);
  if (isCoordBottomSet)
  {
    CoordBottom = EshShapeProperties::getCoordBottom(properties);
  }

  else
  {
    CoordBottom = EshShapeProperties::getDefaultCoordRight(isCoordBottomSet);
  }

  v17[0] = v8;
  v17[1] = v11;
  v17[2] = v14;
  v17[3] = CoordBottom;
  [geometryCopy setGeometryCoordSpace:v17];
}

+ (void)readPathCommandsAndParamsFromPath:(const EshPath *)path toGeometry:(id)geometry
{
  geometryCopy = geometry;
  if (EshPath::isParamsSet(path))
  {
    Params = EshPath::getParams(path);
    v7 = Params;
    if (Params)
    {
      if (((*(Params + 16) - *(Params + 8)) & 0x7FFFFFFF8) != 0)
      {
        if (!EshPath::isCommandsSet(path) || (Commands = EshPath::getCommands(path)) == 0)
        {
          operator new();
        }

        [self readFromPathCommands:Commands pathParams:v7 toGeometry:geometryCopy];
      }
    }
  }
}

+ (void)readLimoFromPath:(const EshPath *)path toGeometry:(id)geometry
{
  geometryCopy = geometry;
  isLimoXSet = EshPath::isLimoXSet(path);
  if (isLimoXSet)
  {
    LimoX = EshPath::getLimoX(path);
  }

  else
  {
    LimoX = EshPath::getDefaultLimoX(isLimoXSet);
  }

  v9 = LimoX;
  isLimoYSet = EshPath::isLimoYSet(path);
  if (isLimoYSet)
  {
    LimoY = EshPath::getLimoY(path);
  }

  else
  {
    LimoY = EshPath::getDefaultLimoX(isLimoYSet);
  }

  v12[0] = v9;
  v12[1] = LimoY;
  [self readFromLimo:v12 toGeometry:geometryCopy];
}

+ (int)actualPathCommandForPathCommand:(int)command index:(unsigned __int16)index
{
  result = command;
  if (command <= 10)
  {
    if (command == 7)
    {
      if (index)
      {
        return 6;
      }
    }

    else if (command == 9 && index)
    {
      return 8;
    }
  }

  else if (command == 11)
  {
    if (index)
    {
      return 10;
    }
  }

  else if (command == 12)
  {
    if (index)
    {
      return 13;
    }
  }

  else if (command == 13 && (index & 1) != 0)
  {
    return 12;
  }

  return result;
}

@end