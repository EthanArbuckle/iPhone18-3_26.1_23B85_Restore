@interface CRXFRXValues
- (CRXFRXValues)initWithCoder:(id)a3;
- (CRXFRXValues)initWithSphere:(float)a3 cylinder:(float)a4 axis:(unint64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRXFRXValues

- (CRXFRXValues)initWithSphere:(float)a3 cylinder:(float)a4 axis:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = CRXFRXValues;
  result = [(CRXFRXValues *)&v9 init];
  if (result)
  {
    result->_sphere = a3;
    result->_cylinder = a4;
    result->_axis = a5;
  }

  return result;
}

- (CRXFRXValues)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"sph"];
  v6 = v5;
  [v4 decodeFloatForKey:@"cyl"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"axis"];

  LODWORD(v10) = v6;
  LODWORD(v11) = v8;

  return [(CRXFRXValues *)self initWithSphere:v9 cylinder:v10 axis:v11];
}

- (void)encodeWithCoder:(id)a3
{
  sphere = self->_sphere;
  v7 = a3;
  *&v5 = sphere;
  [v7 encodeFloat:@"sph" forKey:v5];
  *&v6 = self->_cylinder;
  [v7 encodeFloat:@"cyl" forKey:v6];
  [v7 encodeInteger:self->_axis forKey:@"axis"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(CRXFRXValues *)self sphere];
  v5 = v4;
  [(CRXFRXValues *)self cylinder];
  v7 = v6;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFRXValues axis](self, "axis")}];
  v9 = [v3 stringWithFormat:@"sphere:%.02f, cylinder:%.02f, axis:%@", *&v5, *&v7, v8];

  return v9;
}

@end