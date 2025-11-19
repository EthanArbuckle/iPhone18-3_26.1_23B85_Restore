@interface DKDrawingStroke
+ (DKDrawingStroke)drawingStrokeWithData:(id)a3 count:(unint64_t)a4;
- (DKDrawingStroke)init;
- (id)_decodeDKEncodedDrawingPointDataAsArray:(id)a3 count:(int64_t)a4;
- (id)_encodePointsDrawingPointData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DKDrawingStroke

- (DKDrawingStroke)init
{
  v6.receiver = self;
  v6.super_class = DKDrawingStroke;
  v2 = [(DKDrawingStroke *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    strokePoints = v2->_strokePoints;
    v2->_strokePoints = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [(DKDrawingStroke *)self strokePoints];
  v7 = [v5 initWithArray:v6 copyItems:1];
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

+ (DKDrawingStroke)drawingStrokeWithData:(id)a3 count:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(DKDrawingStroke);
  v7 = [(DKDrawingStroke *)v6 _decodeDKEncodedDrawingPointDataAsArray:v5 count:a4];

  v8 = [(DKDrawingStroke *)v6 strokePoints];
  [v8 addObjectsFromArray:v7];

  return v6;
}

- (id)_encodePointsDrawingPointData:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = (32 * v4);
  if (32 * v4)
  {
    v6 = v4;
    v7 = malloc_type_malloc(32 * v4, 0xD737A86CuLL);
    if (v7)
    {
      v8 = v7;
      if (v6 >= 1)
      {
        v9 = 0;
        v10 = v6 & 0x7FFFFFFF;
        v11 = v7 + 2;
        do
        {
          v12 = [v3 objectAtIndex:v9];
          [v12 location];
          v14 = v13;
          v16 = v15;
          [v12 velocity];
          v18 = v17;
          [v12 force];
          *(v11 - 2) = v14;
          *(v11 - 1) = v16;
          *v11 = v18;
          v11[1] = v19;
          v11 += 4;

          ++v9;
        }

        while (v10 != v9);
      }

      v5 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v5];
      free(v8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_decodeDKEncodedDrawingPointDataAsArray:(id)a3 count:(int64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v5 length];
  if (a4 >= 1 && v7)
  {
    v8 = ([v5 bytes] + 16);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = v8[1];
      v8 += 4;
      v13 = objc_alloc_init(DKDrawingStrokePoint);
      [(DKDrawingStrokePoint *)v13 setLocation:v9, v10];
      [(DKDrawingStrokePoint *)v13 setVelocity:v11];
      [(DKDrawingStrokePoint *)v13 setForce:v12];
      [v6 addObject:v13];

      --a4;
    }

    while (a4);
  }

  return v6;
}

@end