@interface CMShapeBuilder
+ (CGRect)canonicalBounds;
- (CGAffineTransform)affineTransform;
- (float)maxAdjustedValue;
@end

@implementation CMShapeBuilder

+ (CGRect)canonicalBounds
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 10.0;
  v5 = 10.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (float)maxAdjustedValue
{
  isOffice12 = [(CMShapeBuilder *)self isOffice12];
  result = 10800.0;
  if (isOffice12)
  {
    return 50000.0;
  }

  return result;
}

- (CGAffineTransform)affineTransform
{
  orientedBounds = self->_orientedBounds;
  if (!orientedBounds)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a3 object:self file:@"CMShapeBuilder.mm" lineNumber:44 description:@"oriented bounds not set"];

    orientedBounds = self->_orientedBounds;
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
  [(OADOrientedBounds *)self->_orientedBounds rotation];
  v20 = [OADOrientedBounds directionCloserToVerticalThanToHorizontal:?];
  if (v20)
  {
    v9 = NSTransposedRectWithSameCenter(v9, v11, v13, v15);
    v11 = v21;
    v13 = v22;
    v15 = v23;
  }

  v24 = *&retstr->c;
  *&v50.a = *&retstr->a;
  *&v50.c = v24;
  *&v50.tx = *&retstr->tx;
  CGAffineTransformTranslate(retstr, &v50, v9, v11);
  [(OADOrientedBounds *)self->_orientedBounds rotation];
  v26 = v25 * 3.14159265 / 180.0;
  if (v26 != 0.0)
  {
    if (v20)
    {
      v27 = v26;
    }

    else
    {
      v27 = -v26;
    }

    v28 = *&retstr->c;
    *&v49.a = *&retstr->a;
    *&v49.c = v28;
    *&v49.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v50, &v49, v13 * 0.5, v15 * 0.5);
    v29 = *&v50.c;
    *&retstr->a = *&v50.a;
    *&retstr->c = v29;
    *&retstr->tx = *&v50.tx;
    v30 = *&retstr->c;
    *&v49.a = *&retstr->a;
    *&v49.c = v30;
    *&v49.tx = *&retstr->tx;
    CGAffineTransformRotate(&v50, &v49, v27);
    v31 = *&v50.c;
    *&retstr->a = *&v50.a;
    *&retstr->c = v31;
    *&retstr->tx = *&v50.tx;
    v32 = *&retstr->c;
    *&v49.a = *&retstr->a;
    *&v49.c = v32;
    *&v49.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v50, &v49, -(v13 * 0.5), -(v15 * 0.5));
    v33 = *&v50.c;
    *&retstr->a = *&v50.a;
    *&retstr->c = v33;
    *&retstr->tx = *&v50.tx;
  }

  if ([(OADOrientedBounds *)self->_orientedBounds flipX])
  {
    v34 = *&retstr->c;
    *&v49.a = *&retstr->a;
    *&v49.c = v34;
    *&v49.tx = *&retstr->tx;
    CGAffineTransformScale(&v50, &v49, -1.0, 1.0);
    v35 = *&v50.c;
    *&retstr->a = *&v50.a;
    *&retstr->c = v35;
    *&retstr->tx = *&v50.tx;
    v36 = *&retstr->c;
    *&v49.a = *&retstr->a;
    *&v49.c = v36;
    *&v49.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v50, &v49, -v13, 0.0);
    v37 = *&v50.c;
    *&retstr->a = *&v50.a;
    *&retstr->c = v37;
    *&retstr->tx = *&v50.tx;
  }

  if (![(OADOrientedBounds *)self->_orientedBounds flipY])
  {
    v38 = *&retstr->c;
    *&v49.a = *&retstr->a;
    *&v49.c = v38;
    *&v49.tx = *&retstr->tx;
    CGAffineTransformScale(&v50, &v49, 1.0, -1.0);
    v39 = *&v50.c;
    *&retstr->a = *&v50.a;
    *&retstr->c = v39;
    *&retstr->tx = *&v50.tx;
    v40 = *&retstr->c;
    *&v49.a = *&retstr->a;
    *&v49.c = v40;
    *&v49.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v50, &v49, 0.0, -v15);
    v41 = *&v50.c;
    *&retstr->a = *&v50.a;
    *&retstr->c = v41;
    *&retstr->tx = *&v50.tx;
  }

  v42 = v13 / v17;
  v43 = v15 / v19;
  v44 = *&retstr->c;
  *&v49.a = *&retstr->a;
  *&v49.c = v44;
  *&v49.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v50, &v49, v42, v43);
  v46 = *&v50.c;
  *&retstr->a = *&v50.a;
  *&retstr->c = v46;
  *&retstr->tx = *&v50.tx;
  return result;
}

@end