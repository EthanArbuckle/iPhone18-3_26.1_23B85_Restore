@interface FRCFaceHandLegRectangle
+ (id)animalFaceRectangleWithBoundingBox:(CGRect)box;
+ (id)bodyRectangleWithCenter:(CGPoint)center tip:(CGPoint)tip category:(unint64_t)category frameAspectRatio:(float)ratio;
+ (id)faceRectangleWithBoundingBox:(CGRect)box roll:(id)roll yaw:(id)yaw;
+ (id)handRectangleWithObservation:(id)observation;
+ (id)humanRectangleWithBoundingBox:(CGRect)box;
- (CGRect)boundingBox;
@end

@implementation FRCFaceHandLegRectangle

+ (id)faceRectangleWithBoundingBox:(CGRect)box roll:(id)roll yaw:(id)yaw
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  rollCopy = roll;
  yawCopy = yaw;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___FRCFaceHandLegRectangle;
  v13 = [objc_msgSendSuper2(&v17 alloc)];
  v14 = v13;
  if (v13)
  {
    [v13 setCategory:0];
    [v14 setBoundingBox:{x, y, width, height}];
    if (rollCopy)
    {
      [v14 setRoll:rollCopy];
    }

    if (yawCopy)
    {
      [v14 setYaw:yawCopy];
    }

    v15 = v14;
  }

  return v14;
}

+ (id)handRectangleWithObservation:(id)observation
{
  v36 = *MEMORY[0x277D85DE8];
  observationCopy = observation;
  v4 = objc_alloc_init(FRCFaceHandLegRectangle);
  v5 = v4;
  if (v4)
  {
    [(FRCFaceHandLegRectangle *)v4 setCategory:1];
    v6 = *MEMORY[0x277CE3068];
    v34 = 0;
    v7 = [observationCopy recognizedPointsForGroupKey:v6 error:&v34];
    v8 = v34;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      v13 = 1.79769313e308;
      v14 = 2.22507386e-308;
      v15 = 2.22507386e-308;
      v16 = 1.79769313e308;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = [v9 objectForKeyedSubscript:{v18, v30}];
          [v19 confidence];
          v21 = v20;

          if (v21 > 0.0)
          {
            v22 = [v9 objectForKeyedSubscript:v18];
            [v22 location];
            v24 = v23;
            v26 = v25;

            v16 = fmin(v16, v24);
            v15 = fmax(v15, v24);
            v13 = fmin(v13, v26);
            v14 = fmax(v14, v26);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = 1.79769313e308;
      v14 = 2.22507386e-308;
      v15 = 2.22507386e-308;
      v16 = 1.79769313e308;
    }

    [(FRCFaceHandLegRectangle *)v5 setBoundingBox:v16, v13, v15 - v16, v14 - v13];
    v27 = v5;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)humanRectangleWithBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___FRCFaceHandLegRectangle;
  v7 = [objc_msgSendSuper2(&v11 alloc)];
  v8 = v7;
  if (v7)
  {
    [v7 setCategory:4];
    [v8 setBoundingBox:{x, y, width, height}];
    v9 = v8;
  }

  return v8;
}

+ (id)bodyRectangleWithCenter:(CGPoint)center tip:(CGPoint)tip category:(unint64_t)category frameAspectRatio:(float)ratio
{
  y = tip.y;
  x = tip.x;
  v10 = center.y;
  v11 = center.x;
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS___FRCFaceHandLegRectangle;
  v12 = [objc_msgSendSuper2(&v19 alloc)];
  v13 = v12;
  v14 = vabdd_f64(x, v11);
  v15 = v14 + v14;
  v16 = vabdd_f64(y, v10);
  v17 = v16 + v16;
  if ((v15 * ratio) >= v17)
  {
    if ((v15 * ratio) > v17)
    {
      v17 = fmaxf(v17, (v15 * ratio) * 0.5);
    }
  }

  else
  {
    v15 = fmaxf(v15, (v17 / ratio) * 0.5);
  }

  [v12 setBoundingBox:{v11 - (v15 * 0.5), v10 - (v17 * 0.5), v15, v17}];
  [v13 setCategory:category];

  return v13;
}

+ (id)animalFaceRectangleWithBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___FRCFaceHandLegRectangle;
  v7 = [objc_msgSendSuper2(&v11 alloc)];
  v8 = v7;
  if (v7)
  {
    [v7 setCategory:5];
    [v8 setBoundingBox:{x, y, width, height}];
    v9 = v8;
  }

  return v8;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end