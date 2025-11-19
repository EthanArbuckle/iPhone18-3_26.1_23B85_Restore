@interface ULMapPoint
- (BOOL)isEqual:(id)a3;
- (ULMapPoint)initWithCoder:(id)a3;
- (ULMapPoint)initWithX:(float)a3 Y:(float)a4 Z:(float)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULMapPoint

- (ULMapPoint)initWithX:(float)a3 Y:(float)a4 Z:(float)a5
{
  v14.receiver = self;
  v14.super_class = ULMapPoint;
  v8 = [(ULMapPoint *)&v14 init];
  v10 = v8;
  if (v8)
  {
    *&v9 = a3;
    [(ULMapPoint *)v8 setX:v9];
    *&v11 = a4;
    [(ULMapPoint *)v10 setY:v11];
    *&v12 = a5;
    [(ULMapPoint *)v10 setZ:v12];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(ULMapPoint *)self x];
  v6 = v5;
  [(ULMapPoint *)self y];
  v8 = v7;
  [(ULMapPoint *)self z];
  LODWORD(v9) = LODWORD(v10);
  LODWORD(v10) = v6;
  LODWORD(v11) = v8;

  return [v4 initWithX:v10 Y:v11 Z:v9];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  x = self->_x;
  v6 = a3;
  *&v7 = x;
  v8 = [v4 numberWithFloat:v7];
  [v6 encodeObject:v8 forKey:@"x"];

  *&v9 = self->_y;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v6 encodeObject:v10 forKey:@"y"];

  *&v11 = self->_z;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v6 encodeObject:v12 forKey:@"z"];
}

- (ULMapPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ULMapPoint;
  v5 = [(ULMapPoint *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"x"];
    v7 = v6;
    if (v6)
    {
      [(ULMapPoint *)v6 floatValue];
      v9 = v8;

      v5->_x = v9;
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"y"];
      v7 = v10;
      if (v10)
      {
        [(ULMapPoint *)v10 floatValue];
        v12 = v11;

        v5->_y = v12;
        v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"z"];
        v7 = v13;
        if (v13)
        {
          [(ULMapPoint *)v13 floatValue];
          v15 = v14;

          v5->_z = v15;
          v7 = v5;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  [(ULMapPoint *)self x];
  [v6 appendFormat:@", x: %f", v7];
  [(ULMapPoint *)self y];
  [v6 appendFormat:@", y: %f", v8];
  [(ULMapPoint *)self z];
  [v6 appendFormat:@", z: %f", v9];
  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(ULMapPoint *)self x];
    v7 = v6;
    [v5 x];
    if (v7 == v8 && (-[ULMapPoint y](self, "y"), v10 = v9, [v5 y], v10 == v11))
    {
      [(ULMapPoint *)self z];
      v15 = v14;
      [v5 z];
      v12 = v15 == v16;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end