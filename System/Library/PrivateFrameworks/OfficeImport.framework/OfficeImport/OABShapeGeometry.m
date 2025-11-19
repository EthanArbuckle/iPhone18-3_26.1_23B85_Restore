@interface OABShapeGeometry
+ (EshComputedValue)computedValueWithAdjustCoord:(OADAdjustCoord)a3;
+ (int)actualPathCommandForPathCommand:(int)a3 index:(unsigned __int16)a4;
+ (void)appendAdjustPoint:(OADAdjustPoint)a3 toPathParams:(void *)a4;
+ (void)readAdjustValuesFromShapeProperties:(const EshShapeProperties *)a3 toGeometry:(id)a4;
+ (void)readFromFormulas:(const void *)a3 toGeometry:(id)a4;
+ (void)readFromPathCommands:(const void *)a3 pathParams:(const void *)a4 toGeometry:(id)a5;
+ (void)readFromShape:(void *)a3 toShape:(id)a4;
+ (void)readFromTextBoxRects:(const void *)a3 toGeometry:(id)a4;
+ (void)readGeometryCoordSpaceFromShapeProperties:(const EshShapeProperties *)a3 toGeometry:(id)a4;
+ (void)readLimoFromPath:(const EshPath *)a3 toGeometry:(id)a4;
+ (void)readPathCommandsAndParamsFromPath:(const EshPath *)a3 toGeometry:(id)a4;
+ (void)writeAdjustValuesFromGeometry:(id)a3 toShapeProperties:(EshShapeProperties *)a4;
+ (void)writeCoordSpaceFromGeometry:(id)a3 toShape:(void *)a4;
+ (void)writeFormulasFromGeometry:(id)a3 toPath:(EshPath *)a4;
+ (void)writeFromShape:(id)a3 toShape:(void *)a4;
+ (void)writeLimoFromGeometry:(id)a3 toPath:(EshPath *)a4;
+ (void)writePathCommandsAndParamsFromGeometry:(id)a3 toPath:(EshPath *)a4;
+ (void)writeTextBodyRectsFromGeometry:(id)a3 toPath:(EshPath *)a4;
@end

@implementation OABShapeGeometry

+ (void)readFromShape:(void *)a3 toShape:(id)a4
{
  v6 = a4;
  ShapeType = EshShapeProperties::getShapeType((a3 + 424));
  if (ShapeType == 100)
  {
    v8 = 99;
  }

  else
  {
    v8 = ShapeType;
  }

  if (EshPath::isParamsSet(a3 + 22) & 1) != 0 || (EshPath::isCommandsSet(a3 + 22) & 1) != 0 || ((isPathTypeSet = EshPath::isPathTypeSet(a3 + 22), v8 != 20) ? (v10 = isPathTypeSet) : (v10 = 0), (v10 & 1) != 0 || (EshPath::isFormulasSet(a3 + 22) & 1) != 0 || (EshPath::isTextBoxRectsSet(a3 + 22) & 1) != 0 || (EshPath::isLimoXSet(a3 + 22) & 1) != 0 || (EshPath::isLimoYSet(a3 + 22) & 1) != 0 || (EshShapeProperties::isCoordLeftSet((a3 + 424)) & 1) != 0 || (EshShapeProperties::isCoordTopSet((a3 + 424)) & 1) != 0 || (EshShapeProperties::isCoordRightSet((a3 + 424))))
  {
    isCoordBottomSet = 1;
    if (!v8)
    {
      goto LABEL_51;
    }
  }

  else
  {
    isCoordBottomSet = EshShapeProperties::isCoordBottomSet((a3 + 424));
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
      if ((EshPath::isParamsSet(a3 + 22) & 1) == 0)
      {
        Vertices = EshGeometryProperties::getVertices(v29);
        v14 = (*(*Vertices + 16))(Vertices);
        EshPath::takeParams(a3 + 22, v14);
      }

      if ((EshPath::isCommandsSet(a3 + 22) & 1) == 0 && (!EshPath::isPathTypeSet(a3 + 22) || EshPath::getPathType(a3 + 22) == 4) && EshGeometryProperties::getSegments(v29))
      {
        Segments = EshGeometryProperties::getSegments(v29);
        v16 = (*(*Segments + 16))(Segments);
        EshPath::takeCommands(a3 + 528, v16);
      }

      if ((EshPath::isFormulasSet(a3 + 22) & 1) == 0)
      {
        Formulas = EshGeometryProperties::getFormulas(v29);
        v18 = (*(*Formulas + 16))(Formulas);
        EshPath::takeFormulas(a3 + 528, v18);
      }

      if ((EshPath::isTextBoxRectsSet(a3 + 22) & 1) == 0 && EshGeometryProperties::isInscribesSet(v29))
      {
        Inscribes = EshGeometryProperties::getInscribes(v29);
        v20 = (*(*Inscribes + 16))(Inscribes);
        EshPath::takeTextBoxRects(a3 + 528, v20);
      }

      if ((EshPath::isLimoXSet(a3 + 22) & 1) == 0 && v35 != 0x7FFFFFFF)
      {
        EshPath::setLimoX(a3 + 22, v35);
      }

      if ((EshPath::isLimoYSet(a3 + 22) & 1) == 0 && v36 != 0x7FFFFFFF)
      {
        EshPath::setLimoY(a3 + 22, v36);
      }

      v22 = v30;
      v21 = v31;
      v24 = v32;
      v23 = v33;
      if ((EshShapeProperties::isCoordLeftSet((a3 + 424)) & 1) == 0)
      {
        EshShapeProperties::setCoordLeft((a3 + 424), v22);
      }

      if ((EshShapeProperties::isCoordTopSet((a3 + 424)) & 1) == 0)
      {
        EshShapeProperties::setCoordTop((a3 + 424), v21);
      }

      if ((EshShapeProperties::isCoordRightSet((a3 + 424)) & 1) == 0)
      {
        EshShapeProperties::setCoordRight((a3 + 424), v24);
      }

      if ((EshShapeProperties::isCoordBottomSet((a3 + 424)) & 1) == 0)
      {
        EshShapeProperties::setCoordBottom((a3 + 424), v23);
      }

      for (i = 0; i != 10; ++i)
      {
        if ((EshShapeProperties::isAdjSet((a3 + 424), i) & 1) == 0)
        {
          EshShapeProperties::setAdj((a3 + 424), i, v34[i]);
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
    [v6 setGeometry:v26];
    [a1 readAdjustValuesFromShapeProperties:a3 + 424 toGeometry:v26];
    [a1 readGeometryCoordSpaceFromShapeProperties:a3 + 424 toGeometry:v26];
    [a1 readLimoFromPath:a3 + 528 toGeometry:v26];
    if (EshPath::isFormulasSet(a3 + 22))
    {
      v27 = EshPath::getFormulas(a3 + 22);
      if (v27)
      {
        [a1 readFromFormulas:v27 toGeometry:v26];
      }
    }

    if (EshPath::isTextBoxRectsSet(a3 + 22))
    {
      TextBoxRects = EshPath::getTextBoxRects(a3 + 22);
      if (TextBoxRects)
      {
        [a1 readFromTextBoxRects:TextBoxRects toGeometry:v26];
      }
    }

    [a1 readPathCommandsAndParamsFromPath:a3 + 528 toGeometry:v26];
  }

  else
  {
    v26 = objc_alloc_init(OADPresetShapeGeometry);
    [(OADShapeGeometry *)v26 setIsEscher:1];
    [v6 setGeometry:v26];
    [(OADCustomShapeGeometry *)v26 setType:v8];
    [a1 readAdjustValuesFromShapeProperties:a3 + 424 toGeometry:v26];
  }
}

+ (void)readFromPathCommands:(const void *)a3 pathParams:(const void *)a4 toGeometry:(id)a5
{
  v43 = a5;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__OABShapeGeometry_readFromPathCommands_pathParams_toGeometry___block_invoke;
  aBlock[3] = &unk_2799C7C60;
  aBlock[4] = v53;
  aBlock[5] = a4;
  v49 = a1;
  aBlock[6] = a1;
  v8 = _Block_copy(aBlock);
  v9 = objc_alloc_init(OADPath);
  if (((*(a3 + 2) - *(a3 + 1)) & 0x7FFFFFFF8) != 0)
  {
    v10 = 0;
    v44 = a3;
    v48 = 0;
    v46 = v8;
    do
    {
      v45 = v10;
      v11 = EshBasicTablePropVal<EshComputedValue>::operator[](a3, v10);
      v51 = v9;
      if (*v11)
      {
        v12 = v11;
        v13 = 0;
        v50 = v11;
        while (1)
        {
          v14 = [v49 actualPathCommandForPathCommand:*(v12 + 1) index:v13];
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
                [v43 addPath:v51];
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
              v15 = [(OADPath *)v51 elementCount];
              v16 = v48;
              if (v15)
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
      a3 = v44;
      v9 = v51;
    }

    while (v45 + 1 < ((v44[2] - v44[1]) >> 3));
  }

  else
  {
    v48 = 0;
  }

  if ([(OADPath *)v9 elementCount])
  {
    [v43 addPath:v9];
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

+ (void)readFromFormulas:(const void *)a3 toGeometry:(id)a4
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (-1227133513 * ((*(a3 + 2) - *(a3 + 1)) >> 2))
  {
    v6 = 0;
    do
    {
      v7 = EshBasicTablePropVal<EshFormula>::operator[](a3, v6);
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
      [v5 addFormula:v13];

      ++v6;
    }

    while (v6 < -1227133513 * ((*(a3 + 2) - *(a3 + 1)) >> 2));
  }
}

+ (void)readFromTextBoxRects:(const void *)a3 toGeometry:(id)a4
{
  v6 = a4;
  if (((*(a3 + 2) - *(a3 + 1)) & 0x1FFFFFFFE0) != 0)
  {
    v7 = 0;
    do
    {
      v8 = EshBasicTablePropVal<EshComputedRect>::operator[](a3, v7);
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
      v12 = [a1 adjustCoordWithComputedValue:&v19];
      v18 = *(&v20 + 1);
      v13 = [a1 adjustCoordWithComputedValue:&v18];
      v17 = v21;
      v14 = [a1 adjustCoordWithComputedValue:&v17];
      v16 = *(&v21 + 1);
      v15 = -[OADAdjustRect initWithLeft:top:right:bottom:]([OADAdjustRect alloc], "initWithLeft:top:right:bottom:", v12, v13, v14, [a1 adjustCoordWithComputedValue:&v16]);
      [v6 addTextBodyRect:v15];

      ++v7;
    }

    while (v7 < ((*(a3 + 2) - *(a3 + 1)) >> 5));
  }
}

+ (EshComputedValue)computedValueWithAdjustCoord:(OADAdjustCoord)a3
{
  *v3 = a3.isFormulaResult;
  *(v3 + 4) = a3.value;
  return a1;
}

+ (void)writeAdjustValuesFromGeometry:(id)a3 toShapeProperties:(EshShapeProperties *)a4
{
  v6 = a3;
  v5 = 0;
  do
  {
    if ([v6 hasAdjustValueAtIndex:v5])
    {
      EshShapeProperties::setAdj(a4, v5, [v6 adjustValueAtIndex:v5]);
    }

    v5 = (v5 + 1);
  }

  while (v5 != 10);
}

+ (void)writeCoordSpaceFromGeometry:(id)a3 toShape:(void *)a4
{
  v5 = a3;
  v6 = [v5 isEscher];
  if (v6)
  {
    if (v5)
    {
      v6 = [v5 geometryCoordSpace];
      v7 = v14[0];
    }

    else
    {
      v7 = 0;
      *v14 = 0;
      *v15 = 0;
    }

    DefaultPositionHorizontal = EshContentProperties::getDefaultPositionHorizontal(v6);
    if (v7 != DefaultPositionHorizontal)
    {
      EshShapeProperties::setCoordLeft((a4 + 424), v14[0]);
    }

    v9 = v14[1];
    v10 = EshContentProperties::getDefaultPositionHorizontal(DefaultPositionHorizontal);
    if (v9 != v10)
    {
      EshShapeProperties::setCoordTop((a4 + 424), v14[1]);
    }

    v11 = v15[0];
    DefaultCoordRight = EshShapeProperties::getDefaultCoordRight(v10);
    if (v11 != DefaultCoordRight)
    {
      EshShapeProperties::setCoordRight((a4 + 424), v15[0]);
    }

    v13 = v15[1];
    if (v13 != EshShapeProperties::getDefaultCoordRight(DefaultCoordRight))
    {
      EshShapeProperties::setCoordBottom((a4 + 424), v15[1]);
    }

    operator new();
  }
}

+ (void)writeLimoFromGeometry:(id)a3 toPath:(EshPath *)a4
{
  v5 = a3;
  v6 = [v5 isEscher];
  if (v6)
  {
    if (v5)
    {
      v6 = [v5 limo];
      v7 = v17[0];
    }

    else
    {
      v7 = 0;
      *v17 = 0;
    }

    DefaultLimoX = EshPath::getDefaultLimoX(v6);
    if (v7 != DefaultLimoX)
    {
      EshPath::setLimoX(a4, v17[0]);
    }

    v16 = v17[1];
    if (v16 != EshPath::getDefaultLimoX(DefaultLimoX))
    {
      EshPath::setLimoY(a4, v17[1]);
    }
  }

  else
  {
    DefaultCoordRight = EshShapeProperties::getDefaultCoordRight(v6);
    v9 = DefaultCoordRight;
    DefaultPositionHorizontal = EshContentProperties::getDefaultPositionHorizontal(DefaultCoordRight);
    EshPath::setLimoX(a4, (v9 - DefaultPositionHorizontal) / 2);
    v12 = EshShapeProperties::getDefaultCoordRight(v11);
    v13 = v12;
    v14 = EshContentProperties::getDefaultPositionHorizontal(v12);
    EshPath::setLimoY(a4, (v13 - v14) / 2);
  }
}

+ (void)appendAdjustPoint:(OADAdjustPoint)a3 toPathParams:(void *)a4
{
  y = a3.y;
  [a1 computedValueWithAdjustCoord:*&a3.x];
  v7 = *(a4 + 2);
  if (v7 >= *(a4 + 3))
  {
    v8 = std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__emplace_back_slow_path<EshComputedValue const&>(a4 + 1, &v12);
  }

  else
  {
    *v7 = v12;
    v8 = (v7 + 1);
  }

  *(a4 + 2) = v8;
  [a1 computedValueWithAdjustCoord:y];
  v9 = *(a4 + 2);
  if (v9 >= *(a4 + 3))
  {
    v10 = std::vector<EshComputedValue,ChAllocator<EshComputedValue>>::__emplace_back_slow_path<EshComputedValue const&>(a4 + 1, &v11);
  }

  else
  {
    *v9 = v11;
    v10 = (v9 + 1);
  }

  *(a4 + 2) = v10;
}

+ (void)writePathCommandsAndParamsFromGeometry:(id)a3 toPath:(EshPath *)a4
{
  v5 = a3;
  if ([v5 pathCount])
  {
    operator new();
  }

  EshPath::takeCommands(a4, 0);
  EshPath::takeParams(a4, 0);
}

+ (void)writeFormulasFromGeometry:(id)a3 toPath:(EshPath *)a4
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 formulaCount])
  {
    operator new();
  }

  EshPath::takeFormulas(a4, 0);
}

+ (void)writeTextBodyRectsFromGeometry:(id)a3 toPath:(EshPath *)a4
{
  v5 = a3;
  if ([v5 textBodyRectCount])
  {
    operator new();
  }

  EshPath::takeTextBoxRects(a4, 0);
}

+ (void)writeFromShape:(id)a3 toShape:(void *)a4
{
  v11 = a3;
  v6 = [v11 geometry];
  v7 = [v11 type];
  v8 = v7;
  if (v7 < 203)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = [v6 equivalentCustomGeometry];

    v6 = v9;
  }

  v8 = 100;
LABEL_5:
  EshShapeProperties::setShapeType(a4 + 424, v8);
  EshShapeProperties::setHasShapeType((a4 + 424), 1);
  [a1 writeAdjustValuesFromGeometry:v6 toShapeProperties:a4 + 424];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    EshPath::takeConnectAngles(a4 + 528, 0);
    EshPath::takeHandles(a4 + 528, 0);
    [a1 writeCoordSpaceFromGeometry:v10 toShape:a4];
    [a1 writeLimoFromGeometry:v10 toPath:a4 + 528];
    [a1 writePathCommandsAndParamsFromGeometry:v10 toPath:a4 + 528];
    [a1 writeFormulasFromGeometry:v10 toPath:a4 + 528];
    [a1 writeTextBodyRectsFromGeometry:v10 toPath:a4 + 528];
  }

  EshShapeProperties::setHidden((a4 + 424), [v11 hidden]);
}

+ (void)readAdjustValuesFromShapeProperties:(const EshShapeProperties *)a3 toGeometry:(id)a4
{
  v6 = a4;
  v5 = 0;
  do
  {
    if (EshShapeProperties::isAdjSet(a3, v5))
    {
      [v6 setAdjustValue:EshShapeProperties::getAdj(a3 atIndex:{v5), v5}];
    }

    v5 = (v5 + 1);
  }

  while (v5 != 10);
}

+ (void)readGeometryCoordSpaceFromShapeProperties:(const EshShapeProperties *)a3 toGeometry:(id)a4
{
  v5 = a4;
  isCoordLeftSet = EshShapeProperties::isCoordLeftSet(a3);
  if (isCoordLeftSet)
  {
    CoordLeft = EshShapeProperties::getCoordLeft(a3);
  }

  else
  {
    CoordLeft = EshContentProperties::getDefaultPositionHorizontal(isCoordLeftSet);
  }

  v8 = CoordLeft;
  isCoordTopSet = EshShapeProperties::isCoordTopSet(a3);
  if (isCoordTopSet)
  {
    CoordTop = EshShapeProperties::getCoordTop(a3);
  }

  else
  {
    CoordTop = EshContentProperties::getDefaultPositionHorizontal(isCoordTopSet);
  }

  v11 = CoordTop;
  isCoordRightSet = EshShapeProperties::isCoordRightSet(a3);
  if (isCoordRightSet)
  {
    CoordRight = EshShapeProperties::getCoordRight(a3);
  }

  else
  {
    CoordRight = EshShapeProperties::getDefaultCoordRight(isCoordRightSet);
  }

  v14 = CoordRight;
  isCoordBottomSet = EshShapeProperties::isCoordBottomSet(a3);
  if (isCoordBottomSet)
  {
    CoordBottom = EshShapeProperties::getCoordBottom(a3);
  }

  else
  {
    CoordBottom = EshShapeProperties::getDefaultCoordRight(isCoordBottomSet);
  }

  v17[0] = v8;
  v17[1] = v11;
  v17[2] = v14;
  v17[3] = CoordBottom;
  [v5 setGeometryCoordSpace:v17];
}

+ (void)readPathCommandsAndParamsFromPath:(const EshPath *)a3 toGeometry:(id)a4
{
  v9 = a4;
  if (EshPath::isParamsSet(a3))
  {
    Params = EshPath::getParams(a3);
    v7 = Params;
    if (Params)
    {
      if (((*(Params + 16) - *(Params + 8)) & 0x7FFFFFFF8) != 0)
      {
        if (!EshPath::isCommandsSet(a3) || (Commands = EshPath::getCommands(a3)) == 0)
        {
          operator new();
        }

        [a1 readFromPathCommands:Commands pathParams:v7 toGeometry:v9];
      }
    }
  }
}

+ (void)readLimoFromPath:(const EshPath *)a3 toGeometry:(id)a4
{
  v6 = a4;
  isLimoXSet = EshPath::isLimoXSet(a3);
  if (isLimoXSet)
  {
    LimoX = EshPath::getLimoX(a3);
  }

  else
  {
    LimoX = EshPath::getDefaultLimoX(isLimoXSet);
  }

  v9 = LimoX;
  isLimoYSet = EshPath::isLimoYSet(a3);
  if (isLimoYSet)
  {
    LimoY = EshPath::getLimoY(a3);
  }

  else
  {
    LimoY = EshPath::getDefaultLimoX(isLimoYSet);
  }

  v12[0] = v9;
  v12[1] = LimoY;
  [a1 readFromLimo:v12 toGeometry:v6];
}

+ (int)actualPathCommandForPathCommand:(int)a3 index:(unsigned __int16)a4
{
  result = a3;
  if (a3 <= 10)
  {
    if (a3 == 7)
    {
      if (a4)
      {
        return 6;
      }
    }

    else if (a3 == 9 && a4)
    {
      return 8;
    }
  }

  else if (a3 == 11)
  {
    if (a4)
    {
      return 10;
    }
  }

  else if (a3 == 12)
  {
    if (a4)
    {
      return 13;
    }
  }

  else if (a3 == 13 && (a4 & 1) != 0)
  {
    return 12;
  }

  return result;
}

@end