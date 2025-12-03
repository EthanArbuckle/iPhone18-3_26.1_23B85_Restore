@interface CMCanonicalShapeBuilder
- (CGAffineTransform)affineTransform;
- (CGPath)copyCanWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyChevronWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyCircularArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyCubeWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyDiagramCircularArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyDiamondWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyDownArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyEllipseWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyHexagonWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyHomePlateWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyLeftArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyLeftRightArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyLeftRightUpArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyLineWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyOctagonWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyParallelogramWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyPentagonWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyPieWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyPlusWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyPyramidLayerWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyQuadArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyRectangleWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyRightArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyRightDiagramArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyRightTriangleWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyRoundedRectWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyShapeWithTransform:(CGAffineTransform *)transform;
- (CGPath)copyStarWithTransform:(CGAffineTransform *)transform aspectRatio:(float)ratio andBranchNumber:(int)number;
- (CGPath)copyStraightConnector1tWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyTrapezoidWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyTriangleWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyUpArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyUpDiagramArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyUpDownArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
- (CGPath)copyWedgeRectWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio;
@end

@implementation CMCanonicalShapeBuilder

- (CGAffineTransform)affineTransform
{
  orientedBounds = self->super._orientedBounds;
  if (!orientedBounds)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a3 object:self file:@"CMCanonicalShapeBuilder.mm" lineNumber:59 description:@"oriented bounds not set"];

    orientedBounds = self->super._orientedBounds;
  }

  v6 = MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 32);
  [(OADOrientedBounds *)orientedBounds bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  +[CMShapeBuilder canonicalBounds];
  v17 = v16;
  v19 = v18;
  [(OADOrientedBounds *)self->super._orientedBounds rotation];
  if ([OADOrientedBounds directionCloserToVerticalThanToHorizontal:?])
  {
    v9 = NSTransposedRectWithSameCenter(v9, v11, v13, v15);
    v11 = v20;
    v13 = v21;
    v15 = v22;
  }

  v23 = *&retstr->c;
  *&v48.a = *&retstr->a;
  *&v48.c = v23;
  *&v48.tx = *&retstr->tx;
  CGAffineTransformTranslate(retstr, &v48, v9, v11);
  [(OADOrientedBounds *)self->super._orientedBounds rotation];
  v25 = v24 * 3.14159265 / 180.0;
  if (v25 != 0.0)
  {
    v26 = *&retstr->c;
    *&v47.a = *&retstr->a;
    *&v47.c = v26;
    *&v47.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v48, &v47, v13 * 0.5, v15 * 0.5);
    v27 = *&v48.c;
    *&retstr->a = *&v48.a;
    *&retstr->c = v27;
    *&retstr->tx = *&v48.tx;
    v28 = *&retstr->c;
    *&v47.a = *&retstr->a;
    *&v47.c = v28;
    *&v47.tx = *&retstr->tx;
    CGAffineTransformRotate(&v48, &v47, v25);
    v29 = *&v48.c;
    *&retstr->a = *&v48.a;
    *&retstr->c = v29;
    *&retstr->tx = *&v48.tx;
    v30 = *&retstr->c;
    *&v47.a = *&retstr->a;
    *&v47.c = v30;
    *&v47.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v48, &v47, -(v13 * 0.5), -(v15 * 0.5));
    v31 = *&v48.c;
    *&retstr->a = *&v48.a;
    *&retstr->c = v31;
    *&retstr->tx = *&v48.tx;
  }

  if ([(OADOrientedBounds *)self->super._orientedBounds flipX])
  {
    v32 = *&retstr->c;
    *&v47.a = *&retstr->a;
    *&v47.c = v32;
    *&v47.tx = *&retstr->tx;
    CGAffineTransformScale(&v48, &v47, -1.0, 1.0);
    v33 = *&v48.c;
    *&retstr->a = *&v48.a;
    *&retstr->c = v33;
    *&retstr->tx = *&v48.tx;
    v34 = *&retstr->c;
    *&v47.a = *&retstr->a;
    *&v47.c = v34;
    *&v47.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v48, &v47, -v13, 0.0);
    v35 = *&v48.c;
    *&retstr->a = *&v48.a;
    *&retstr->c = v35;
    *&retstr->tx = *&v48.tx;
  }

  if (![(OADOrientedBounds *)self->super._orientedBounds flipY])
  {
    v36 = *&retstr->c;
    *&v47.a = *&retstr->a;
    *&v47.c = v36;
    *&v47.tx = *&retstr->tx;
    CGAffineTransformScale(&v48, &v47, 1.0, -1.0);
    v37 = *&v48.c;
    *&retstr->a = *&v48.a;
    *&retstr->c = v37;
    *&retstr->tx = *&v48.tx;
    v38 = *&retstr->c;
    *&v47.a = *&retstr->a;
    *&v47.c = v38;
    *&v47.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v48, &v47, 0.0, -v15);
    v39 = *&v48.c;
    *&retstr->a = *&v48.a;
    *&retstr->c = v39;
    *&retstr->tx = *&v48.tx;
  }

  v40 = v13 / v17;
  v41 = v15 / v19;
  v42 = *&retstr->c;
  *&v47.a = *&retstr->a;
  *&v47.c = v42;
  *&v47.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v48, &v47, v40, v41);
  v44 = *&v48.c;
  *&retstr->a = *&v48.a;
  *&retstr->c = v44;
  *&retstr->tx = *&v48.tx;
  return result;
}

- (CGPath)copyShapeWithTransform:(CGAffineTransform *)transform
{
  [(OADOrientedBounds *)self->super._orientedBounds bounds];
  LODWORD(v7) = 1068146622;
  if (v5 != 0.0 && v6 != 0.0)
  {
    v7 = v5 / v6;
    *&v7 = v5 / v6;
    *&v7 = fabsf(*&v7);
  }

  result = 0;
  type = self->super._type;
  if (type <= 175)
  {
    switch(type)
    {
      case 1:
      case 47:
      case 97:
        goto LABEL_26;
      case 2:
        goto LABEL_38;
      case 3:
        v38 = *&transform->c;
        v54 = *&transform->a;
        v55 = v38;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyEllipseWithTransform:&v54 andAspectRatio:v7];
        break;
      case 4:
      case 110:
        v23 = *&transform->c;
        v54 = *&transform->a;
        v55 = v23;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyDiamondWithTransform:&v54 andAspectRatio:v7];
        break;
      case 5:
        v43 = *&transform->c;
        v54 = *&transform->a;
        v55 = v43;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyTriangleWithTransform:&v54 andAspectRatio:v7];
        break;
      case 6:
        v35 = *&transform->c;
        v54 = *&transform->a;
        v55 = v35;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyRightTriangleWithTransform:&v54 andAspectRatio:v7];
        break;
      case 7:
        v33 = *&transform->c;
        v54 = *&transform->a;
        v55 = v33;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyParallelogramWithTransform:&v54 andAspectRatio:v7];
        break;
      case 8:
        v36 = *&transform->c;
        v54 = *&transform->a;
        v55 = v36;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyTrapezoidWithTransform:&v54 andAspectRatio:v7];
        break;
      case 9:
        v42 = *&transform->c;
        v54 = *&transform->a;
        v55 = v42;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyHexagonWithTransform:&v54 andAspectRatio:v7];
        break;
      case 10:
        v40 = *&transform->c;
        v54 = *&transform->a;
        v55 = v40;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyOctagonWithTransform:&v54 andAspectRatio:v7];
        break;
      case 11:
        v37 = *&transform->c;
        v54 = *&transform->a;
        v55 = v37;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyPlusWithTransform:&v54 andAspectRatio:v7];
        break;
      case 12:
        v44 = *&transform->c;
        v54 = *&transform->a;
        v55 = v44;
        v56 = *&transform->tx;
        selfCopy10 = self;
        v14 = 5;
        return [(CMCanonicalShapeBuilder *)selfCopy10 copyStarWithTransform:&v54 aspectRatio:v14 andBranchNumber:v7, v54, v55, v56];
      case 13:
      case 78:
        v21 = *&transform->c;
        v54 = *&transform->a;
        v55 = v21;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyRightArrowWithTransform:&v54 andAspectRatio:v7];
        break;
      case 15:
        v46 = *&transform->c;
        v54 = *&transform->a;
        v55 = v46;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyHomePlateWithTransform:&v54 andAspectRatio:v7];
        break;
      case 16:
        v48 = *&transform->c;
        v54 = *&transform->a;
        v55 = v48;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyCubeWithTransform:&v54 andAspectRatio:v7];
        break;
      case 20:
        v34 = *&transform->c;
        v54 = *&transform->a;
        v55 = v34;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyLineWithTransform:&v54 andAspectRatio:v7];
        break;
      case 22:
        v39 = *&transform->c;
        v54 = *&transform->a;
        v55 = v39;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyCanWithTransform:&v54 andAspectRatio:v7];
        break;
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
        v10 = *&transform->c;
        v54 = *&transform->a;
        v55 = v10;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyStraightConnector1tWithTransform:&v54 andAspectRatio:v7];
        break;
      case 55:
        v47 = *&transform->c;
        v54 = *&transform->a;
        v55 = v47;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyChevronWithTransform:&v54 andAspectRatio:v7];
        break;
      case 56:
        v41 = *&transform->c;
        v54 = *&transform->a;
        v55 = v41;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyPentagonWithTransform:&v54 andAspectRatio:v7];
        break;
      case 58:
        v45 = *&transform->c;
        v54 = *&transform->a;
        v55 = v45;
        v56 = *&transform->tx;
        selfCopy10 = self;
        v14 = 8;
        return [(CMCanonicalShapeBuilder *)selfCopy10 copyStarWithTransform:&v54 aspectRatio:v14 andBranchNumber:v7, v54, v55, v56];
      case 59:
        v30 = *&transform->c;
        v54 = *&transform->a;
        v55 = v30;
        v56 = *&transform->tx;
        selfCopy10 = self;
        v14 = 16;
        return [(CMCanonicalShapeBuilder *)selfCopy10 copyStarWithTransform:&v54 aspectRatio:v14 andBranchNumber:v7, v54, v55, v56];
      case 60:
        v32 = *&transform->c;
        v54 = *&transform->a;
        v55 = v32;
        v56 = *&transform->tx;
        selfCopy10 = self;
        v14 = 32;
        return [(CMCanonicalShapeBuilder *)selfCopy10 copyStarWithTransform:&v54 aspectRatio:v14 andBranchNumber:v7, v54, v55, v56];
      case 61:
      case 62:
      case 63:
      case 106:
        v15 = *&transform->c;
        v54 = *&transform->a;
        v55 = v15;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyWedgeRectWithTransform:&v54 andAspectRatio:v7];
        break;
      case 66:
      case 77:
        v24 = *&transform->c;
        v54 = *&transform->a;
        v55 = v24;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyLeftArrowWithTransform:&v54 andAspectRatio:v7];
        break;
      case 67:
      case 80:
        v22 = *&transform->c;
        v54 = *&transform->a;
        v55 = v22;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyDownArrowWithTransform:&v54 andAspectRatio:v7];
        break;
      case 68:
      case 79:
        v26 = *&transform->c;
        v54 = *&transform->a;
        v55 = v26;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyUpArrowWithTransform:&v54 andAspectRatio:v7];
        break;
      case 69:
      case 81:
        v25 = *&transform->c;
        v54 = *&transform->a;
        v55 = v25;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyLeftRightArrowWithTransform:&v54 andAspectRatio:v7];
        break;
      case 70:
      case 82:
        v20 = *&transform->c;
        v54 = *&transform->a;
        v55 = v20;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyUpDownArrowWithTransform:&v54 andAspectRatio:v7];
        break;
      case 76:
      case 83:
        v27 = *&transform->c;
        v54 = *&transform->a;
        v55 = v27;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyQuadArrowWithTransform:&v54 andAspectRatio:v7];
        break;
      case 92:
        v29 = *&transform->c;
        v54 = *&transform->a;
        v55 = v29;
        v56 = *&transform->tx;
        selfCopy10 = self;
        v14 = 24;
        return [(CMCanonicalShapeBuilder *)selfCopy10 copyStarWithTransform:&v54 aspectRatio:v14 andBranchNumber:v7, v54, v55, v56];
      case 99:
        v31 = *&transform->c;
        v54 = *&transform->a;
        v55 = v31;
        v56 = *&transform->tx;
        result = [(CMCanonicalShapeBuilder *)self copyCircularArrowWithTransform:&v54 andAspectRatio:v7];
        break;
      default:
        return result;
    }

    return result;
  }

  if (type <= 209)
  {
    if (type > 201)
    {
      switch(type)
      {
        case 202:
LABEL_26:
          v18 = *&transform->c;
          v54 = *&transform->a;
          v55 = v18;
          v56 = *&transform->tx;
          return [(CMCanonicalShapeBuilder *)self copyRectangleWithTransform:&v54 andAspectRatio:v7];
        case 208:
          v53 = *&transform->c;
          v54 = *&transform->a;
          v55 = v53;
          v56 = *&transform->tx;
          selfCopy10 = self;
          v14 = 6;
          break;
        case 209:
          v17 = *&transform->c;
          v54 = *&transform->a;
          v55 = v17;
          v56 = *&transform->tx;
          selfCopy10 = self;
          v14 = 7;
          break;
        default:
          return result;
      }
    }

    else
    {
      if (type == 176)
      {
LABEL_38:
        v28 = *&transform->c;
        v54 = *&transform->a;
        v55 = v28;
        v56 = *&transform->tx;
        return [(CMCanonicalShapeBuilder *)self copyRoundedRectWithTransform:&v54 andAspectRatio:v7];
      }

      if (type == 182)
      {
        v52 = *&transform->c;
        v54 = *&transform->a;
        v55 = v52;
        v56 = *&transform->tx;
        return [(CMCanonicalShapeBuilder *)self copyLeftRightUpArrowWithTransform:&v54 andAspectRatio:v7];
      }

      if (type != 187)
      {
        return result;
      }

      v12 = *&transform->c;
      v54 = *&transform->a;
      v55 = v12;
      v56 = *&transform->tx;
      selfCopy10 = self;
      v14 = 4;
    }

    return [(CMCanonicalShapeBuilder *)selfCopy10 copyStarWithTransform:&v54 aspectRatio:v14 andBranchNumber:v7, v54, v55, v56];
  }

  if (type > 247)
  {
    if (type > 249)
    {
      if (type == 250)
      {
        v49 = *&transform->c;
        v54 = *&transform->a;
        v55 = v49;
        v56 = *&transform->tx;
        return [(CMCanonicalShapeBuilder *)self copyPieWithTransform:&v54 andAspectRatio:v7];
      }

      else if (type == 251)
      {
        v19 = *&transform->c;
        v54 = *&transform->a;
        v55 = v19;
        v56 = *&transform->tx;
        return [(CMCanonicalShapeBuilder *)self copyDiagramCircularArrowWithTransform:&v54 andAspectRatio:v7];
      }
    }

    else
    {
      v11 = *&transform->c;
      v54 = *&transform->a;
      v55 = v11;
      v56 = *&transform->tx;
      if (type == 248)
      {
        return [(CMCanonicalShapeBuilder *)self copyUpDiagramArrowWithTransform:&v54 andAspectRatio:v7];
      }

      else
      {
        return [(CMCanonicalShapeBuilder *)self copyPyramidLayerWithTransform:&v54 andAspectRatio:v7];
      }
    }

    return result;
  }

  switch(type)
  {
    case 210:
      v51 = *&transform->c;
      v54 = *&transform->a;
      v55 = v51;
      v56 = *&transform->tx;
      selfCopy10 = self;
      v14 = 10;
      return [(CMCanonicalShapeBuilder *)selfCopy10 copyStarWithTransform:&v54 aspectRatio:v14 andBranchNumber:v7, v54, v55, v56];
    case 211:
      v50 = *&transform->c;
      v54 = *&transform->a;
      v55 = v50;
      v56 = *&transform->tx;
      selfCopy10 = self;
      v14 = 12;
      return [(CMCanonicalShapeBuilder *)selfCopy10 copyStarWithTransform:&v54 aspectRatio:v14 andBranchNumber:v7, v54, v55, v56];
    case 247:
      v16 = *&transform->c;
      v54 = *&transform->a;
      v55 = v16;
      v56 = *&transform->tx;
      return [(CMCanonicalShapeBuilder *)self copyRightDiagramArrowWithTransform:&v54 andAspectRatio:v7];
  }

  return result;
}

- (CGPath)copyRectangleWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  Mutable = CGPathCreateMutable();
  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  CGPathAddRect(Mutable, transform, v15);
  return Mutable;
}

- (CGPath)copyParallelogramWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 5.0 / v8;
    }

    else
    {
      v12 = 2.5;
    }

    if ([(CMShapeBuilder *)self isOffice12])
    {
      v12 = v12 * 0.5;
    }

    v13 = v12;
  }

  else
  {
    v13 = 2.5;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v15, v17);
  v23 = v15 + v19;
  CGPathAddLineToPoint(Mutable, transform, v23 - v13, v17);
  v24 = v17 + v21;
  CGPathAddLineToPoint(Mutable, transform, v23, v24);
  CGPathAddLineToPoint(Mutable, transform, v13 + v15, v24);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyTrapezoidWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 5.0 / v8;
      v13 = v12;
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v13 = 2.5;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  Mutable = CGPathCreateMutable();
  isOffice12 = [(CMShapeBuilder *)self isOffice12];
  v24 = v13 + v15;
  if (isOffice12)
  {
    v25 = v17 + v21;
    CGPathMoveToPoint(Mutable, transform, v24, v25);
    v26 = v15 + v19;
    CGPathAddLineToPoint(Mutable, transform, v26 - v13, v25);
  }

  else
  {
    CGPathMoveToPoint(Mutable, transform, v24, v17);
    v26 = v15 + v19;
    CGPathAddLineToPoint(Mutable, transform, v26 - v13, v17);
    v17 = v17 + v21;
  }

  CGPathAddLineToPoint(Mutable, transform, v26, v17);
  CGPathAddLineToPoint(Mutable, transform, v15, v17);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyEllipseWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  Mutable = CGPathCreateMutable();
  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  CGPathAddEllipseInRect(Mutable, transform, v15);
  return Mutable;
}

- (CGPath)copyRoundedRectWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  v8 = v7;
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v16 = v15;
  adjustValues = self->super._adjustValues;
  v18 = v9 / 6.0;
  if (adjustValues)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v20 = [(NSDictionary *)adjustValues objectForKey:v19];

    v21 = v18;
    if (v20)
    {
      [v20 floatValue];
      v23 = v22;
      [v20 floatValue];
      v21 = v14 * 0.5 * (v23 / v8);
      v18 = v14 * 0.5 * (v24 / v8);
    }
  }

  else
  {
    v21 = v9 / 6.0;
  }

  v25 = v21 * ratio;
  if (ratio >= 1.0)
  {
    v25 = v21;
  }

  if (ratio > 1.0)
  {
    v26 = v21 / ratio;
  }

  else
  {
    v26 = v25;
  }

  Mutable = CGPathCreateMutable();
  v28 = v11 + v26;
  CGPathMoveToPoint(Mutable, transform, v11 + v26, v13);
  v29 = v11 + v14;
  v30 = v29 - v26;
  CGPathAddLineToPoint(Mutable, transform, v30, v13);
  v31 = v13 + v18;
  CGPathAddQuadCurveToPoint(Mutable, transform, v29, v13, v29, v13 + v18);
  v32 = v13 + v16;
  v33 = v32 - v18;
  CGPathAddLineToPoint(Mutable, transform, v29, v33);
  CGPathAddQuadCurveToPoint(Mutable, transform, v29, v32, v30, v32);
  CGPathAddLineToPoint(Mutable, transform, v28, v32);
  CGPathAddQuadCurveToPoint(Mutable, transform, v11, v32, v11, v33);
  CGPathAddLineToPoint(Mutable, transform, v11, v31);
  CGPathAddQuadCurveToPoint(Mutable, transform, v11, v13, v28, v13);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyDiamondWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  Mutable = CGPathCreateMutable();
  v14 = v6 + v10;
  CGPathMoveToPoint(Mutable, transform, v14 * 0.5, v8);
  v15 = v8 + v12;
  CGPathAddLineToPoint(Mutable, transform, v14, v15 * 0.5);
  CGPathAddLineToPoint(Mutable, transform, v14 * 0.5, v15);
  CGPathAddLineToPoint(Mutable, transform, v6, v15 * 0.5);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyTriangleWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 5.0 / v8;
      v13 = v12;
    }

    else
    {
      v13 = 5.0;
    }
  }

  else
  {
    v13 = 5.0;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v15, v17);
  CGPathAddLineToPoint(Mutable, transform, v15 + v19, v17);
  CGPathAddLineToPoint(Mutable, transform, v13 + v15, v17 + v21);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyRightTriangleWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v6, v8);
  CGPathAddLineToPoint(Mutable, transform, v6 + v10, v8);
  CGPathAddLineToPoint(Mutable, transform, v6, v8 + v12);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyPlusWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v9 = v7;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v11 = [(NSDictionary *)adjustValues objectForKey:v10];

    if (v11)
    {
      [v11 floatValue];
      v13 = v12;
      [v11 floatValue];
      v14 = v9;
      v15 = v13 * 5.0 / v9;
      v17 = v16 * 5.0 / v14;
    }

    else
    {
      v15 = 2.5;
      v17 = 2.5;
    }
  }

  else
  {
    v15 = 2.5;
    v17 = 2.5;
  }

  v18 = v17 * ratio;
  if (ratio >= 1.0)
  {
    v18 = v17;
  }

  if (ratio > 1.0)
  {
    v19 = v15 / ratio;
  }

  else
  {
    v19 = v15;
  }

  if (ratio > 1.0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v18;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  Mutable = CGPathCreateMutable();
  v30 = v19 + v22;
  CGPathMoveToPoint(Mutable, transform, v19 + v22, v24);
  v31 = v22 + v26;
  v32 = v22 + v26 - v19;
  CGPathAddLineToPoint(Mutable, transform, v32, v24);
  v33 = v20 + v24;
  CGPathAddLineToPoint(Mutable, transform, v32, v20 + v24);
  CGPathAddLineToPoint(Mutable, transform, v31, v20 + v24);
  v34 = v24 + v28;
  CGPathAddLineToPoint(Mutable, transform, v31, v34 - v20);
  CGPathAddLineToPoint(Mutable, transform, v32, v34 - v20);
  CGPathAddLineToPoint(Mutable, transform, v32, v34);
  CGPathAddLineToPoint(Mutable, transform, v30, v34);
  CGPathAddLineToPoint(Mutable, transform, v30, v34 - v20);
  CGPathAddLineToPoint(Mutable, transform, v22, v34 - v20);
  CGPathAddLineToPoint(Mutable, transform, v22, v33);
  CGPathAddLineToPoint(Mutable, transform, v30, v33);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyPentagonWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  Mutable = CGPathCreateMutable();
  v14 = v6 + v10;
  CGPathMoveToPoint(Mutable, transform, v14 / 5.0, v8);
  CGPathAddLineToPoint(Mutable, transform, v14 * 4.0 / 5.0, v8);
  v15 = v8 + v12;
  CGPathAddLineToPoint(Mutable, transform, v14, v15 * 3.0 / 5.0);
  CGPathAddLineToPoint(Mutable, transform, v14 * 0.5, v15);
  CGPathAddLineToPoint(Mutable, transform, v6, v15 * 3.0 / 5.0);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyHexagonWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 5.0 / v8;
      v13 = v12;
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v13 = 2.5;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  Mutable = CGPathCreateMutable();
  v23 = v13 + v15;
  CGPathMoveToPoint(Mutable, transform, v13 + v15, v17);
  v24 = v15 + v19;
  v25 = v24 - v13;
  CGPathAddLineToPoint(Mutable, transform, v25, v17);
  v26 = v17 + v21;
  CGPathAddLineToPoint(Mutable, transform, v24, v26 * 0.5);
  CGPathAddLineToPoint(Mutable, transform, v25, v26);
  CGPathAddLineToPoint(Mutable, transform, v23, v26);
  CGPathAddLineToPoint(Mutable, transform, v15, v26 * 0.5);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyOctagonWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v9 = v7;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v11 = [(NSDictionary *)adjustValues objectForKey:v10];

    if (v11)
    {
      [v11 floatValue];
      v13 = v12;
      [v11 floatValue];
      v14 = v9;
      v15 = v13 * 5.0 / v9;
      v17 = v16 * 5.0 / v14;
    }

    else
    {
      v15 = 2.5;
      v17 = 2.5;
    }
  }

  else
  {
    v15 = 2.5;
    v17 = 2.5;
  }

  v18 = v17 * ratio;
  if (ratio >= 1.0)
  {
    v18 = v17;
  }

  if (ratio > 1.0)
  {
    v19 = v15 / ratio;
  }

  else
  {
    v19 = v15;
  }

  if (ratio > 1.0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v18;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  Mutable = CGPathCreateMutable();
  v30 = v19 + v22;
  CGPathMoveToPoint(Mutable, transform, v19 + v22, v24);
  v31 = v22 + v26;
  v32 = v31 - v19;
  CGPathAddLineToPoint(Mutable, transform, v32, v24);
  v33 = v20 + v24;
  CGPathAddLineToPoint(Mutable, transform, v31, v20 + v24);
  v34 = v24 + v28;
  CGPathAddLineToPoint(Mutable, transform, v31, v34 - v20);
  CGPathAddLineToPoint(Mutable, transform, v32, v34);
  CGPathAddLineToPoint(Mutable, transform, v30, v34);
  CGPathAddLineToPoint(Mutable, transform, v22, v34 - v20);
  CGPathAddLineToPoint(Mutable, transform, v22, v33);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyCanWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 2.5 / v8;
    }

    else
    {
      v12 = 1.25;
    }
  }

  else
  {
    v12 = 1.25;
  }

  v35 = (v12 * 0.5);
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v13 = v12;
  v34 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  Mutable = CGPathCreateMutable();
  v23 = v15 + v19;
  v24 = v17 + v21;
  v25 = v13;
  CGPathMoveToPoint(Mutable, transform, v15 + v19, v24 - v25);
  CGPathAddLineToPoint(Mutable, transform, v15 + v19, v17 + v25);
  CGPathAddCurveToPoint(Mutable, transform, v15 + v19, v17 + v25 - v35, v23 * 0.5 + 2.5, v17, v23 * 0.5, v17);
  cp1x = (v15 + v19) * 0.5 + -2.5;
  CGPathAddCurveToPoint(Mutable, transform, cp1x, v17, v15, v17 + v25 - v35, v15, v17 + v25);
  CGPathAddLineToPoint(Mutable, transform, v15, v24 - v25);
  v26 = v24 - v25 + v35;
  CGPathAddCurveToPoint(Mutable, transform, v15, v26, cp1x, v24, (v15 + v19) * 0.5, v24);
  v27 = (v15 + v19) * 0.5 + 2.5;
  v28 = v15 + v19;
  v29 = v15 + v19;
  v30 = v24 - v25;
  CGPathAddCurveToPoint(Mutable, transform, v27, v24, v28, v26, v29, v24 - v25);
  v31 = v24 - (v34 + v34);
  CGPathAddCurveToPoint(Mutable, transform, v23, v30 - v35, v27, v31, v23 * 0.5, v31);
  CGPathAddCurveToPoint(Mutable, transform, cp1x, v31, v15, v30 - v35, v15, v30);
  return Mutable;
}

- (CGPath)copyCubeWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v9 = v7;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v11 = [(NSDictionary *)adjustValues objectForKey:v10];

    if (v11)
    {
      [v11 floatValue];
      v13 = v12 * 10.0 / (v9 + v9);
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v13 = 2.5;
  }

  if (ratio <= 1.0)
  {
    v14 = v13 * ratio;
  }

  else
  {
    v14 = v13;
    v13 = v13 / ratio;
  }

  v15 = 10.0 - v13;
  v16 = 10.0 - v14;
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v18, v20);
  CGPathAddLineToPoint(Mutable, transform, v15 + v18, v20);
  v26 = v16 + v20;
  CGPathAddLineToPoint(Mutable, transform, v15 + v18, v16 + v20);
  CGPathAddLineToPoint(Mutable, transform, v18, v16 + v20);
  CGPathCloseSubpath(Mutable);
  CGPathMoveToPoint(Mutable, transform, v15 + v18, v20);
  v27 = v18 + v22;
  v28 = v20 + v24;
  CGPathAddLineToPoint(Mutable, transform, v27, v28 - v16);
  CGPathAddLineToPoint(Mutable, transform, v27, v28);
  CGPathAddLineToPoint(Mutable, transform, v15 + v18, v26);
  CGPathCloseSubpath(Mutable);
  CGPathMoveToPoint(Mutable, transform, v27, v28);
  CGPathAddLineToPoint(Mutable, transform, v27 - v15, v28);
  CGPathAddLineToPoint(Mutable, transform, v18, v26);
  CGPathAddLineToPoint(Mutable, transform, v15 + v18, v26);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyWedgeRectWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  v7 = v6;
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v64 = v14;
  Mutable = CGPathCreateMutable();
  isOffice12 = [(CMShapeBuilder *)self isOffice12];
  v17 = v7;
  v18 = 5.0;
  if (isOffice12)
  {
    v18 = 3.0;
  }

  v19 = 2.4;
  if (isOffice12)
  {
    v19 = 2.2;
  }

  v20 = v7 / v18;
  v21 = v19 * v17;
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v24 = [(NSDictionary *)adjustValues objectForKey:v23];

    if (v24)
    {
      intValue = [v24 intValue];
      isOffice122 = [(CMShapeBuilder *)self isOffice12];
      v27 = -0.0;
      if (isOffice122)
      {
        v27 = v7;
      }

      v20 = v27 + intValue;
    }

    v28 = self->super._adjustValues;
    v29 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v30 = [(NSDictionary *)v28 objectForKey:v29];

    if (v30)
    {
      intValue2 = [v30 intValue];
      isOffice123 = [(CMShapeBuilder *)self isOffice12];
      v33 = -0.0;
      if (isOffice123)
      {
        v33 = v7;
      }

      v21 = v33 + intValue2;
    }
  }

  v34 = v7 + v7;
  if (v20 > v7 || v21 <= v34)
  {
    if (v20 <= v7 || v21 <= v34)
    {
      if (v20 <= v34 || v21 >= v34 || v21 <= v7)
      {
        v39 = v20 > v34 && v21 < v34;
        if (v39 && v21 > 0.0)
        {
          v47 = 0;
          v40 = 0;
          v41 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v42 = 1;
        }

        else if (v20 <= v7 || v21 >= 0.0)
        {
          if (v21 >= 0.0)
          {
            v62 = v20 < 0.0;
            if (v21 >= v34)
            {
              v62 = 0;
            }

            v40 = 0;
            v41 = 0;
            v42 = 0;
            v63 = v20 < 0.0 && v21 < v7;
            v47 = !v63 && !v62;
            v43 = 0;
            v44 = 0;
            v45 = v63;
            v46 = !v63 && v62;
          }

          else
          {
            v47 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v45 = 0;
            v46 = 0;
            v44 = 1;
          }
        }

        else
        {
          v47 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v43 = 1;
        }
      }

      else
      {
        v47 = 0;
        v40 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v41 = 1;
      }
    }

    else
    {
      v47 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v40 = 1;
    }
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 1;
  }

  v48 = v20;
  v49 = 10.0;
  v50 = 10.0 / v17 * v48 * 0.5;
  v51 = 10.0 / v17 * v21 * 0.5;
  CGPathMoveToPoint(Mutable, transform, v9, v11);
  v52 = v9 + v13;
  if (v47)
  {
    CGPathAddLineToPoint(Mutable, transform, v9 + v52 / 5.0, v11);
    v53 = v64;
    CGPathAddLineToPoint(Mutable, transform, v9 + v50, v11 + v64 - v51);
    v54 = v52 * 0.5;
  }

  else
  {
    v53 = v64;
    if (!v40)
    {
      goto LABEL_45;
    }

    CGPathAddLineToPoint(Mutable, transform, v52 * 0.5 + v52 / 10.0, v11);
    CGPathAddLineToPoint(Mutable, transform, v9 + v50, v11 + v64 - v51);
    v49 = 5.0;
    v54 = v52;
  }

  CGPathAddLineToPoint(Mutable, transform, v54 - v52 / v49, v11);
LABEL_45:
  CGPathAddLineToPoint(Mutable, transform, v52, v11);
  v55 = v11 + v53;
  if (v41)
  {
    CGPathAddLineToPoint(Mutable, transform, v52, v11 + v55 / 5.0);
    CGPathAddLineToPoint(Mutable, transform, v9 + v50, v55 - v51);
    v56 = v55 * 0.5;
    v57 = 10.0;
  }

  else
  {
    if (!v42)
    {
      goto LABEL_50;
    }

    CGPathAddLineToPoint(Mutable, transform, v52, v55 * 0.5 + v55 / 10.0);
    CGPathAddLineToPoint(Mutable, transform, v9 + v50, v55 - v51);
    v57 = 5.0;
    v56 = v11 + v53;
  }

  CGPathAddLineToPoint(Mutable, transform, v52, v56 - v55 / v57);
LABEL_50:
  CGPathAddLineToPoint(Mutable, transform, v52, v11 + v53);
  if (v43)
  {
    CGPathAddLineToPoint(Mutable, transform, v52 + v52 / -5.0, v11 + v53);
    CGPathAddLineToPoint(Mutable, transform, v9 + v50, v55 - v51);
    v58 = v52 * 0.5;
    v59 = 10.0;
  }

  else
  {
    if (!v44)
    {
      goto LABEL_55;
    }

    CGPathAddLineToPoint(Mutable, transform, v52 * 0.5 + v52 / -10.0, v11 + v53);
    CGPathAddLineToPoint(Mutable, transform, v9 + v50, v55 - v51);
    v59 = 5.0;
    v58 = v9;
  }

  CGPathAddLineToPoint(Mutable, transform, v58 + v52 / v59, v11 + v53);
LABEL_55:
  CGPathAddLineToPoint(Mutable, transform, v9, v11 + v53);
  if (v45)
  {
    CGPathAddLineToPoint(Mutable, transform, v9, v55 + v55 / -5.0);
    CGPathAddLineToPoint(Mutable, transform, v9 + v50, v55 - v51);
    v11 = v55 * 0.5;
    v60 = 10.0;
LABEL_59:
    CGPathAddLineToPoint(Mutable, transform, v9, v11 + v55 / v60);
    goto LABEL_60;
  }

  if (v46)
  {
    CGPathAddLineToPoint(Mutable, transform, v9, v55 * 0.5 + v55 / -10.0);
    CGPathAddLineToPoint(Mutable, transform, v9 + v50, v55 - v51);
    v60 = 5.0;
    goto LABEL_59;
  }

LABEL_60:
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyStraightConnector1tWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v6, v8 + v12);
  CGPathAddLineToPoint(Mutable, transform, v6 + v10, v8);
  return Mutable;
}

- (CGPath)copyLineWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v6, v8 + v12);
  CGPathAddLineToPoint(Mutable, transform, v6 + v10, v8);
  return Mutable;
}

- (CGPath)copyRightArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 10.0 / (v8 + v8);
    }

    else
    {
      v12 = 7.5;
    }

    v14 = self->super._adjustValues;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v16 = [(NSDictionary *)v14 objectForKey:v15];

    if (v16)
    {
      [v16 floatValue];
      v13 = v17 * 10.0 / (v8 + v8);
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v13 = 2.5;
    v12 = 7.5;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v19, v13 + v21);
  v27 = v12 + v19;
  CGPathAddLineToPoint(Mutable, transform, v27, v13 + v21);
  CGPathAddLineToPoint(Mutable, transform, v27, v21);
  v28 = v21 + v25;
  CGPathAddLineToPoint(Mutable, transform, v19 + v23, v28 * 0.5);
  CGPathAddLineToPoint(Mutable, transform, v27, v28);
  v29 = v28 - v13;
  CGPathAddLineToPoint(Mutable, transform, v27, v29);
  CGPathAddLineToPoint(Mutable, transform, v19, v29);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyLeftArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 10.0 / (v8 + v8);
    }

    else
    {
      v12 = 2.5;
    }

    v14 = self->super._adjustValues;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v16 = [(NSDictionary *)v14 objectForKey:v15];

    if (v16)
    {
      [v16 floatValue];
      v13 = v17 * 10.0 / (v8 + v8);
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v12 = 2.5;
    v13 = 2.5;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  Mutable = CGPathCreateMutable();
  v27 = v21 + v25;
  CGPathMoveToPoint(Mutable, transform, v19, v27 * 0.5);
  v28 = v12 + v19;
  CGPathAddLineToPoint(Mutable, transform, v28, v21);
  v29 = v13 + v21;
  CGPathAddLineToPoint(Mutable, transform, v28, v29);
  v30 = v19 + v23;
  CGPathAddLineToPoint(Mutable, transform, v30, v29);
  CGPathAddLineToPoint(Mutable, transform, v30, v27 - v13);
  CGPathAddLineToPoint(Mutable, transform, v28, v27 - v13);
  CGPathAddLineToPoint(Mutable, transform, v28, v27);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyUpArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 10.0 / (v8 + v8);
    }

    else
    {
      v12 = 2.5;
    }

    v14 = self->super._adjustValues;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v16 = [(NSDictionary *)v14 objectForKey:v15];

    if (v16)
    {
      [v16 floatValue];
      v13 = v17 * 10.0 / (v8 + v8);
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v13 = 2.5;
    v12 = 2.5;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  Mutable = CGPathCreateMutable();
  v27 = v13 + v19;
  CGPathMoveToPoint(Mutable, transform, v13 + v19, v21);
  v28 = v19 + v23;
  v29 = v28 - v13;
  CGPathAddLineToPoint(Mutable, transform, v29, v21);
  v30 = v21 + v25;
  CGPathAddLineToPoint(Mutable, transform, v29, v30 - v12);
  CGPathAddLineToPoint(Mutable, transform, v28, v30 - v12);
  CGPathAddLineToPoint(Mutable, transform, v28 * 0.5, v30);
  CGPathAddLineToPoint(Mutable, transform, v19, v30 - v12);
  CGPathAddLineToPoint(Mutable, transform, v27, v30 - v12);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyDownArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 10.0 / (v8 + v8);
    }

    else
    {
      v12 = 2.5;
    }

    v14 = self->super._adjustValues;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v16 = [(NSDictionary *)v14 objectForKey:v15];

    if (v16)
    {
      [v16 floatValue];
      v13 = 10.0 - v17 * 10.0 / (v8 + v8);
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v12 = 2.5;
    v13 = 2.5;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  Mutable = CGPathCreateMutable();
  v27 = v19 + v23;
  CGPathMoveToPoint(Mutable, transform, v27 * 0.5, v21);
  v28 = v13 + v21;
  CGPathAddLineToPoint(Mutable, transform, v27, v28);
  v29 = v27 - v12;
  CGPathAddLineToPoint(Mutable, transform, v29, v28);
  v30 = v21 + v25;
  CGPathAddLineToPoint(Mutable, transform, v29, v30);
  CGPathAddLineToPoint(Mutable, transform, v12 + v19, v30);
  CGPathAddLineToPoint(Mutable, transform, v12 + v19, v28);
  CGPathAddLineToPoint(Mutable, transform, v19, v28);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyLeftRightArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 10.0 / (v8 + v8);
    }

    else
    {
      v12 = 2.5;
    }

    v14 = self->super._adjustValues;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v16 = [(NSDictionary *)v14 objectForKey:v15];

    if (v16)
    {
      [v16 floatValue];
      v13 = v17 * 10.0 / (v8 + v8);
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v12 = 2.5;
    v13 = 2.5;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  Mutable = CGPathCreateMutable();
  v27 = v21 + v25;
  CGPathMoveToPoint(Mutable, transform, v19, v27 * 0.5);
  v28 = v12 + v19;
  CGPathAddLineToPoint(Mutable, transform, v12 + v19, v21);
  CGPathAddLineToPoint(Mutable, transform, v12 + v19, v13 + v21);
  v29 = v19 + v23;
  CGPathAddLineToPoint(Mutable, transform, v29 - v12, v13 + v21);
  CGPathAddLineToPoint(Mutable, transform, v29 - v12, v21);
  CGPathAddLineToPoint(Mutable, transform, v29, v27 * 0.5);
  CGPathAddLineToPoint(Mutable, transform, v29 - v12, v27);
  CGPathAddLineToPoint(Mutable, transform, v29 - v12, v27 - v13);
  CGPathAddLineToPoint(Mutable, transform, v28, v27 - v13);
  CGPathAddLineToPoint(Mutable, transform, v28, v27);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyUpDownArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 10.0 / (v8 + v8);
    }

    else
    {
      v12 = 2.5;
    }

    v14 = self->super._adjustValues;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v16 = [(NSDictionary *)v14 objectForKey:v15];

    if (v16)
    {
      [v16 floatValue];
      v13 = v17 * 10.0 / (v8 + v8);
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v12 = 2.5;
    v13 = 2.5;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  Mutable = CGPathCreateMutable();
  v27 = v19 + v23;
  x = (v19 + v23) * 0.5;
  CGPathMoveToPoint(Mutable, transform, x, v21);
  v28 = v13 + v21;
  CGPathAddLineToPoint(Mutable, transform, v27, v13 + v21);
  CGPathAddLineToPoint(Mutable, transform, v27 - v12, v13 + v21);
  v29 = v21 + v25;
  CGPathAddLineToPoint(Mutable, transform, v27 - v12, v29 - v13);
  CGPathAddLineToPoint(Mutable, transform, v27, v29 - v13);
  CGPathAddLineToPoint(Mutable, transform, x, v29);
  CGPathAddLineToPoint(Mutable, transform, v19, v29 - v13);
  CGPathAddLineToPoint(Mutable, transform, v12 + v19, v29 - v13);
  CGPathAddLineToPoint(Mutable, transform, v12 + v19, v28);
  CGPathAddLineToPoint(Mutable, transform, v19, v28);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyQuadArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = (10.0 - v11 * 10.0 / v8) * 0.5;
      v13 = v12;
    }

    else
    {
      v13 = 2.0;
    }

    v15 = self->super._adjustValues;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v17 = [(NSDictionary *)v15 objectForKey:v16];

    if (v17)
    {
      [v17 floatValue];
      v19 = (10.0 - v18 * 10.0 / v8) * 0.5;
      v20 = v19;
    }

    else
    {
      v20 = 1.0;
    }

    v39 = v20;
    v21 = self->super._adjustValues;
    v22 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v23 = [(NSDictionary *)v21 objectForKey:v22];

    if (v23)
    {
      [v23 floatValue];
      v25 = v24 * 10.0 / v8 * 0.5;
      v14 = v25;
    }

    else
    {
      v14 = 2.0;
    }
  }

  else
  {
    v14 = 2.0;
    v39 = 1.0;
    v13 = 2.0;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  Mutable = CGPathCreateMutable();
  v35 = (v29 + v33) * 0.5;
  CGPathMoveToPoint(Mutable, transform, v27, v35);
  CGPathAddLineToPoint(Mutable, transform, v14 + v27, v35 - v13);
  CGPathAddLineToPoint(Mutable, transform, v14 + v27, v35 - v39);
  v36 = v27 + v31;
  v37 = (v27 + v31) * 0.5;
  CGPathAddLineToPoint(Mutable, transform, v37 - v39, v35 - v39);
  CGPathAddLineToPoint(Mutable, transform, v37 - v39, v14 + v29);
  CGPathAddLineToPoint(Mutable, transform, v37 - v13, v14 + v29);
  CGPathAddLineToPoint(Mutable, transform, v37, v29);
  CGPathAddLineToPoint(Mutable, transform, v13 + v37, v14 + v29);
  CGPathAddLineToPoint(Mutable, transform, v39 + v37, v14 + v29);
  CGPathAddLineToPoint(Mutable, transform, v39 + v37, v35 - v39);
  CGPathAddLineToPoint(Mutable, transform, v36 - v14, v35 - v39);
  CGPathAddLineToPoint(Mutable, transform, v36 - v14, v35 - v13);
  CGPathAddLineToPoint(Mutable, transform, v36, v35);
  CGPathAddLineToPoint(Mutable, transform, v36 - v14, v13 + v35);
  CGPathAddLineToPoint(Mutable, transform, v36 - v14, v39 + v35);
  CGPathAddLineToPoint(Mutable, transform, v39 + v37, v39 + v35);
  CGPathAddLineToPoint(Mutable, transform, v39 + v37, v29 + v33 - v14);
  CGPathAddLineToPoint(Mutable, transform, v13 + v37, v29 + v33 - v14);
  CGPathAddLineToPoint(Mutable, transform, v37, v29 + v33);
  CGPathAddLineToPoint(Mutable, transform, v37 - v13, v29 + v33 - v14);
  CGPathAddLineToPoint(Mutable, transform, v37 - v39, v29 + v33 - v14);
  CGPathAddLineToPoint(Mutable, transform, v37 - v39, v39 + v35);
  CGPathAddLineToPoint(Mutable, transform, v14 + v27, v39 + v35);
  CGPathAddLineToPoint(Mutable, transform, v14 + v27, v13 + v35);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyLeftRightUpArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = (10.0 - v11 * 10.0 / v8) * 0.5;
      v13 = v12;
    }

    else
    {
      v13 = 2.0;
    }

    v16 = self->super._adjustValues;
    v17 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v18 = [(NSDictionary *)v16 objectForKey:v17];

    if (v18)
    {
      [v18 floatValue];
      v20 = (10.0 - v19 * 10.0 / v8) * 0.5;
      v15 = v20;
    }

    else
    {
      v15 = 1.0;
    }

    v21 = self->super._adjustValues;
    v22 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v23 = [(NSDictionary *)v21 objectForKey:v22];

    if (v23)
    {
      [v23 floatValue];
      v25 = v24 * 10.0 / v8 * 0.5;
      v14 = v25;
    }

    else
    {
      v14 = 2.0;
    }
  }

  else
  {
    v14 = 2.0;
    v15 = 1.0;
    v13 = 2.0;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v27 = v26;
  v29 = v28;
  v42 = v30;
  v32 = v31;
  Mutable = CGPathCreateMutable();
  v43 = v29 + v32;
  v34 = (v29 + v32) * 0.5;
  CGPathMoveToPoint(Mutable, transform, v27, v34);
  v44 = v14 + v27;
  v35 = v13;
  v36 = v34 - v13;
  CGPathAddLineToPoint(Mutable, transform, v14 + v27, v36);
  v37 = v15;
  v38 = v34 - v15;
  CGPathAddLineToPoint(Mutable, transform, v14 + v27, v38);
  v39 = v27 + v42;
  v40 = v27 + v42 - v14;
  CGPathAddLineToPoint(Mutable, transform, v40, v38);
  CGPathAddLineToPoint(Mutable, transform, v40, v36);
  CGPathAddLineToPoint(Mutable, transform, v39, v34);
  CGPathAddLineToPoint(Mutable, transform, v40, v35 + v34);
  CGPathAddLineToPoint(Mutable, transform, v40, v37 + v34);
  CGPathAddLineToPoint(Mutable, transform, v37 + v39 * 0.5, v37 + v34);
  CGPathAddLineToPoint(Mutable, transform, v37 + v39 * 0.5, v43 - v14);
  CGPathAddLineToPoint(Mutable, transform, v35 + v39 * 0.5, v43 - v14);
  CGPathAddLineToPoint(Mutable, transform, v39 * 0.5, v43);
  CGPathAddLineToPoint(Mutable, transform, v39 * 0.5 - v35, v43 - v14);
  CGPathAddLineToPoint(Mutable, transform, v39 * 0.5 - v37, v43 - v14);
  CGPathAddLineToPoint(Mutable, transform, v39 * 0.5 - v37, v37 + v34);
  CGPathAddLineToPoint(Mutable, transform, v44, v37 + v34);
  CGPathAddLineToPoint(Mutable, transform, v44, v35 + v34);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyStarWithTransform:(CGAffineTransform *)transform aspectRatio:(float)ratio andBranchNumber:(int)number
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  v8 = *&v9;
  LODWORD(v9) = 3.75;
  if (number == 5)
  {
    *&v9 = 1.875;
  }

  if (number == 4)
  {
    v10 = 1.25;
  }

  else
  {
    v10 = *&v9;
  }

  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{0, v9}];
    v13 = [(NSDictionary *)adjustValues objectForKey:v12];

    if (v13)
    {
      if ([(CMShapeBuilder *)self isOffice12])
      {
        [v13 floatValue];
        v15 = v14 * 5.0 / v8;
      }

      else
      {
        [v13 floatValue];
        v15 = 5.0 - v16 * 5.0 / v8;
      }

      v10 = v15;
    }
  }

  v17 = 6.28318531 / number;
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v20 = (v18 + v19) * 0.5;
  v23 = (v21 + v22) * 0.5;
  Mutable = CGPathCreateMutable();
  v25 = __sincos_stret((v17 * 0.0) + 1.57079633);
  CGPathMoveToPoint(Mutable, transform, v25.__cosval * 10.0 * 0.5 + v20, v25.__sinval * 10.0 * 0.5 + v23);
  v26 = v17 * 0.5;
  x = v20 + cos(v26 + 1.57079633) * v10;
  v27 = sin((v17 * 0.5) + 1.57079633);
  CGPathAddLineToPoint(Mutable, transform, x, v23 + v27 * v10);
  if (number >= 2)
  {
    v28 = 1;
    do
    {
      v29 = __sincos_stret((v17 * v28) + 1.57079633);
      CGPathAddLineToPoint(Mutable, transform, v20 + v29.__cosval * 10.0 * 0.5, v23 + v29.__sinval * 10.0 * 0.5);
      v30 = __sincos_stret(v26 + (v17 * v28) + 1.57079633);
      CGPathAddLineToPoint(Mutable, transform, v20 + v30.__cosval * v10, v23 + v30.__sinval * v10);
      ++v28;
    }

    while (number != v28);
  }

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyHomePlateWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v9 = v7;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v11 = [(NSDictionary *)adjustValues objectForKey:v10];

    if (v11)
    {
      [v11 floatValue];
      v13 = 10.0 - v12 * 10.0 / ((v9 + v9) * ratio);
      if (v13 >= 0.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0.0;
      }

      if (v14 > 10.0)
      {
        v14 = 10.0;
      }
    }

    else
    {
      v14 = 2.5;
    }

    v15 = v14;
  }

  else
  {
    v15 = 2.5;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v17, v19);
  v25 = v15 + v17;
  CGPathAddLineToPoint(Mutable, transform, v25, v19);
  v26 = v19 + v23;
  CGPathAddLineToPoint(Mutable, transform, v17 + v21, v26 * 0.5);
  CGPathAddLineToPoint(Mutable, transform, v25, v26);
  CGPathAddLineToPoint(Mutable, transform, v17, v26);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyChevronWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11;
      isOffice12 = [(CMShapeBuilder *)self isOffice12];
      v14 = v12 * 10.0 / (v8 + v8);
      if (isOffice12)
      {
        v15 = v14 * 0.125;
      }

      else
      {
        v15 = 10.0 - v14;
      }
    }

    else
    {
      v15 = 1.25;
    }

    v17 = [(NSDictionary *)self->super._adjustValues objectForKey:@"IsHomePlate"];

    if (v17)
    {
      bOOLValue = [v17 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
    v15 = 1.25;
  }

  v18 = 10.0;
  if (v15 <= 10.0)
  {
    v18 = v15;
  }

  if (v18 >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v21, v23);
  v29 = v21 + v25;
  CGPathAddLineToPoint(Mutable, transform, v29 - v19, v23);
  v30 = v23 + v27;
  CGPathAddLineToPoint(Mutable, transform, v29, v30 * 0.5);
  CGPathAddLineToPoint(Mutable, transform, v29 - v19, v30);
  CGPathAddLineToPoint(Mutable, transform, v21, v30);
  if ((bOOLValue & 1) == 0)
  {
    CGPathAddLineToPoint(Mutable, transform, v19 + v21, v30 * 0.5);
  }

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyPieWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v8 = [(NSDictionary *)adjustValues objectForKey:v7];

    if (v8)
    {
      [v8 floatValue];
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    v12 = self->super._adjustValues;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v14 = [(NSDictionary *)v12 objectForKey:v13];

    if (v14)
    {
      [v14 floatValue];
      v11 = v15;
    }

    else
    {
      v11 = 6.28318531;
    }
  }

  else
  {
    v10 = 0.0;
    v11 = 6.28318531;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v20 * 0.5;
  Mutable = CGPathCreateMutable();
  v26 = (v17 + v21) * 0.5;
  v27 = (v19 + v23) * 0.5;
  CGPathMoveToPoint(Mutable, transform, v26, v27);
  v28 = __sincos_stret(v10);
  CGPathAddLineToPoint(Mutable, transform, v26 + v24 * v28.__cosval, v27 + v24 * v28.__sinval);
  CGPathAddArc(Mutable, transform, v26, v27, v24, v10, v11, 1);
  CGPathAddLineToPoint(Mutable, transform, v26, v27);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyCircularArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v10 * 0.5 / ratio;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v7, v9);
  v16 = v7 + v11;
  v17 = v7 + v11 - v14;
  CGPathAddLineToPoint(Mutable, transform, v17, v9);
  v18 = (v14 + v14) / 3.0;
  v19 = v9 + v13;
  CGPathAddCurveToPoint(Mutable, transform, v16 - v18, v9, v16, v9 + v18, v16, v19 * 0.5);
  CGPathAddCurveToPoint(Mutable, transform, v16, v19 - v18, v16 - v18, v19, v17, v19);
  CGPathAddLineToPoint(Mutable, transform, v7, v19);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyRightDiagramArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 10.0 / (v8 + v8);
    }

    else
    {
      v12 = 6.50000006;
    }

    v14 = self->super._adjustValues;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v16 = [(NSDictionary *)v14 objectForKey:v15];

    if (v16)
    {
      [v16 floatValue];
      v13 = v17 * 10.0 / (v8 + v8);
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v13 = 2.5;
    v12 = 6.50000006;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, v19, v13 + v21);
  v27 = v12 + v19;
  CGPathAddLineToPoint(Mutable, transform, v27, v13 + v21);
  CGPathAddLineToPoint(Mutable, transform, v27, v21);
  v28 = v21 + v25;
  CGPathAddLineToPoint(Mutable, transform, v19 + v23, v28 * 0.5);
  CGPathAddLineToPoint(Mutable, transform, v27, v28);
  v29 = v28 - v13;
  CGPathAddLineToPoint(Mutable, transform, v27, v29);
  CGPathAddLineToPoint(Mutable, transform, v19, v29);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyUpDiagramArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  [(CMShapeBuilder *)self maxAdjustedValue];
  adjustValues = self->super._adjustValues;
  if (adjustValues)
  {
    v8 = v6;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v10 = [(NSDictionary *)adjustValues objectForKey:v9];

    if (v10)
    {
      [v10 floatValue];
      v12 = v11 * 10.0 / (v8 + v8);
    }

    else
    {
      v12 = 3.49999994;
    }

    v14 = self->super._adjustValues;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v16 = [(NSDictionary *)v14 objectForKey:v15];

    if (v16)
    {
      [v16 floatValue];
      v13 = v17 * 10.0 / (v8 + v8);
    }

    else
    {
      v13 = 2.5;
    }
  }

  else
  {
    v13 = 2.5;
    v12 = 3.49999994;
  }

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  Mutable = CGPathCreateMutable();
  v27 = v13 + v19;
  CGPathMoveToPoint(Mutable, transform, v13 + v19, v21);
  v28 = v19 + v23;
  v29 = v28 - v13;
  CGPathAddLineToPoint(Mutable, transform, v29, v21);
  v30 = v21 + v25;
  CGPathAddLineToPoint(Mutable, transform, v29, v30 - v12);
  CGPathAddLineToPoint(Mutable, transform, v28, v30 - v12);
  CGPathAddLineToPoint(Mutable, transform, v28 * 0.5, v30);
  CGPathAddLineToPoint(Mutable, transform, v19, v30 - v12);
  CGPathAddLineToPoint(Mutable, transform, v27, v30 - v12);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)copyPyramidLayerWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  adjustValues = self->super._adjustValues;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v8 = [(NSDictionary *)adjustValues objectForKey:v7];
  [v8 floatValue];
  v10 = v9;
  v11 = v9;

  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  Mutable = CGPathCreateMutable();
  v21 = Mutable;
  ratioCopy = ratio;
  if (v10 >= 0.0)
  {
    v25 = 5.0 / v11 / ratioCopy;
    v26 = v25;
    CGPathMoveToPoint(Mutable, transform, v13 + v25, v15 + v19);
    v27 = v13 + v17;
    CGPathAddLineToPoint(v21, transform, v27 - v26, v15 + v19);
    CGPathAddLineToPoint(v21, transform, v27, v15);
  }

  else
  {
    v23 = -5.0 / v11 / ratioCopy;
    CGPathMoveToPoint(Mutable, transform, v13, v15 + v19);
    v24 = v13 + v17;
    CGPathAddLineToPoint(v21, transform, v24, v15 + v19);
    CGPathAddLineToPoint(v21, transform, v24 - v23, v15);
    v13 = v13 + v23;
  }

  CGPathAddLineToPoint(v21, transform, v13, v15);
  CGPathCloseSubpath(v21);
  return v21;
}

- (CGPath)copyDiagramCircularArrowWithTransform:(CGAffineTransform *)transform andAspectRatio:(float)ratio
{
  +[(CMShapeBuilder *)CMCanonicalShapeBuilder];
  v7 = v6;
  v9 = v8;
  v49 = v10;
  v11 = v8 * 0.5 * 0.05;
  v12 = v8 * 0.5;
  adjustValues = self->super._adjustValues;
  v51 = v8 * 0.5 * 0.1;
  v48 = v14;
  if (adjustValues)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v16 = [(NSDictionary *)adjustValues objectForKey:v15];

    if (v16)
    {
      [v16 floatValue];
      v18 = v17;
    }

    else
    {
      v18 = 0.0;
    }

    endAngle = v18;
    v21 = self->super._adjustValues;
    v22 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v23 = [(NSDictionary *)v21 objectForKey:v22];

    if (v23)
    {
      [v23 floatValue];
      v20 = v24;
    }

    else
    {
      v20 = 6.28318531;
    }

    [(OADOrientedBounds *)self->super._orientedBounds bounds];
    v26 = v25;
    v28 = v27;
    v29 = self->super._adjustValues;
    v30 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v31 = [(NSDictionary *)v29 objectForKey:v30];
    v32 = sqrt(v28 / v49 * (v28 / v49) + v26 / v9 * (v26 / v9));

    if (v31)
    {
      [v31 floatValue];
      v11 = v33 / v32;
      v51 = v51 / v32;
    }

    v34 = self->super._adjustValues;
    v35 = [MEMORY[0x277CCABB0] numberWithInt:3];
    v36 = [(NSDictionary *)v34 objectForKey:v35];

    if (v36)
    {
      [v36 floatValue];
      v51 = v37 / v32;
    }

    v19 = endAngle;
  }

  else
  {
    v19 = 0.0;
    v20 = 6.28318531;
  }

  v47 = v20;
  startAngle = v20 + (v20 - v19) * -0.1;
  Mutable = CGPathCreateMutable();
  v39 = (v7 + v9) * 0.5;
  v40 = v12 - v11;
  v41 = __sincos_stret(v19);
  v42 = (v48 + v49) * 0.5;
  CGPathMoveToPoint(Mutable, transform, v39 + v40 * v41.__cosval, v42 + v40 * v41.__sinval);
  v43 = v12 + v11;
  CGPathAddLineToPoint(Mutable, transform, v39 + v43 * v41.__cosval, v42 + v43 * v41.__sinval);
  CGPathAddArc(Mutable, transform, v39, v42, v43, v19, startAngle, 1);
  v44 = __sincos_stret(startAngle);
  CGPathAddLineToPoint(Mutable, transform, v39 + (v12 + v51) * v44.__cosval, v42 + (v12 + v51) * v44.__sinval);
  v45 = __sincos_stret(v47);
  CGPathAddLineToPoint(Mutable, transform, v39 + v12 * v45.__cosval, v42 + v12 * v45.__sinval);
  CGPathAddLineToPoint(Mutable, transform, v39 + (v12 - v51) * v44.__cosval, v42 + (v12 - v51) * v44.__sinval);
  CGPathAddLineToPoint(Mutable, transform, v39 + v40 * v44.__cosval, v42 + v40 * v44.__sinval);
  CGPathAddArc(Mutable, transform, v39, v42, v40, startAngle, v19, 0);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

@end