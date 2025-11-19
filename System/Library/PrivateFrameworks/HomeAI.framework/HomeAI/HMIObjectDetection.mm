@interface HMIObjectDetection
- (BOOL)isEqual:(id)a3;
- (CGRect)boundingBox;
- (HMIObjectDetection)initWithCoder:(id)a3;
- (HMIObjectDetection)initWithLabelIndex:(int)a3 confidence:(double)a4 unclampedBoundingBox:(CGRect)a5 yaw:(id)a6 roll:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIObjectDetection

- (HMIObjectDetection)initWithLabelIndex:(int)a3 confidence:(double)a4 unclampedBoundingBox:(CGRect)a5 yaw:(id)a6 roll:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = HMIObjectDetection;
  v18 = [(HMIObjectDetection *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_labelIndex = a3;
    v18->_confidence = a4;
    v18->_boundingBox.origin.x = x;
    v18->_boundingBox.origin.y = y;
    v18->_boundingBox.size.width = width;
    v18->_boundingBox.size.height = height;
    objc_storeStrong(&v18->_yaw, a6);
    objc_storeStrong(&v19->_roll, a7);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMIObjectDetection *)self labelIndex];
  [(HMIObjectDetection *)self confidence];
  v6 = v5;
  [(HMIObjectDetection *)self boundingBox];
  v8 = v7;
  [(HMIObjectDetection *)self boundingBox];
  v10 = v9;
  [(HMIObjectDetection *)self boundingBox];
  v12 = v11;
  [(HMIObjectDetection *)self boundingBox];
  v14 = v13;
  v15 = [(HMIObjectDetection *)self yaw];
  v16 = [v3 stringWithFormat:@"Label:%d Confidence:%f X:%f Y:%f Width:%f Height:%f Yaw:%@}", v4, v6, v8, v10, v12, v14, v15];

  return v16;
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

- (HMIObjectDetection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"HMIOD.l"];
  [v4 decodeDoubleForKey:@"HMIOD.c"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"HMIOD.b.x"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"HMIOD.b.y"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"HMIOD.b.w"];
  v13 = v12;
  [v4 decodeDoubleForKey:@"HMIOD.b.h"];
  v15 = v14;
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIOD.y.a"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIOD.r.o"];

  v18 = [(HMIObjectDetection *)self initWithLabelIndex:v5 confidence:v16 boundingBox:v17 yaw:v7 roll:v9, v11, v13, v15];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[HMIObjectDetection labelIndex](self forKey:{"labelIndex"), @"HMIOD.l"}];
  [(HMIObjectDetection *)self confidence];
  [v4 encodeDouble:@"HMIOD.c" forKey:?];
  [(HMIObjectDetection *)self boundingBox];
  [v4 encodeDouble:@"HMIOD.b.x" forKey:?];
  [(HMIObjectDetection *)self boundingBox];
  [v4 encodeDouble:@"HMIOD.b.y" forKey:v5];
  [(HMIObjectDetection *)self boundingBox];
  [v4 encodeDouble:@"HMIOD.b.w" forKey:v6];
  [(HMIObjectDetection *)self boundingBox];
  [v4 encodeDouble:@"HMIOD.b.h" forKey:v7];
  v8 = [(HMIObjectDetection *)self yaw];
  [v4 encodeObject:v8 forKey:@"HMIOD.y.a"];

  v9 = [(HMIObjectDetection *)self roll];
  [v4 encodeObject:v9 forKey:@"HMIOD.r.o"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMIObjectDetection *)self labelIndex];
      v7 = [(HMIObjectDetection *)v5 labelIndex];
      [(HMIObjectDetection *)self confidence];
      v9 = v8;
      [(HMIObjectDetection *)v5 confidence];
      v11 = v10;
      v12 = [(HMIObjectDetection *)self yaw];
      v13 = [(HMIObjectDetection *)v5 yaw];
      v14 = HMFEqualObjects();

      v15 = [(HMIObjectDetection *)self roll];
      v16 = [(HMIObjectDetection *)v5 roll];
      v17 = HMFEqualObjects();

      v18 = 0;
      if (v6 == v7 && v9 == v11 && v14 && v17)
      {
        [(HMIObjectDetection *)self boundingBox];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        [(HMIObjectDetection *)v5 boundingBox];
        v33.origin.x = v27;
        v33.origin.y = v28;
        v33.size.width = v29;
        v33.size.height = v30;
        v32.origin.x = v20;
        v32.origin.y = v22;
        v32.size.width = v24;
        v32.size.height = v26;
        v18 = CGRectEqualToRect(v32, v33);
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(HMIObjectDetection *)self labelIndex];
  [(HMIObjectDetection *)self confidence];
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  *v5.i64 = floor(v4 + 0.5);
  v7 = (v4 - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v5.i64[0] = vbslq_s8(vnegq_f64(v8), v6, v5).i64[0];
  v9 = 2654435761u * *v5.i64;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v5.i64;
  }

  v11 = v9 - fabs(v7);
  if (v7 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v3 >= 0)
  {
    v13 = v3;
  }

  else
  {
    v13 = -v3;
  }

  v14 = 2654435761 * v13;
  [(HMIObjectDetection *)self boundingBox];
  v22 = v14 ^ HMIHashCGRect(v15, v16, v17, v18, v19, v20, v21);
  v23 = [(HMIObjectDetection *)self yaw];
  v24 = v22 ^ [v23 hash];
  v25 = [(HMIObjectDetection *)self roll];
  v26 = v24 ^ [v25 hash];

  return v12 ^ v26;
}

@end