@interface CRXFRXValues
- (CRXFRXValues)initWithCoder:(id)coder;
- (CRXFRXValues)initWithSphere:(float)sphere cylinder:(float)cylinder axis:(unint64_t)axis;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXFRXValues

- (CRXFRXValues)initWithSphere:(float)sphere cylinder:(float)cylinder axis:(unint64_t)axis
{
  v9.receiver = self;
  v9.super_class = CRXFRXValues;
  result = [(CRXFRXValues *)&v9 init];
  if (result)
  {
    result->_sphere = sphere;
    result->_cylinder = cylinder;
    result->_axis = axis;
  }

  return result;
}

- (CRXFRXValues)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"sph"];
  v6 = v5;
  [coderCopy decodeFloatForKey:@"cyl"];
  v8 = v7;
  v9 = [coderCopy decodeIntegerForKey:@"axis"];

  LODWORD(v10) = v6;
  LODWORD(v11) = v8;

  return [(CRXFRXValues *)self initWithSphere:v9 cylinder:v10 axis:v11];
}

- (void)encodeWithCoder:(id)coder
{
  sphere = self->_sphere;
  coderCopy = coder;
  *&v5 = sphere;
  [coderCopy encodeFloat:@"sph" forKey:v5];
  *&v6 = self->_cylinder;
  [coderCopy encodeFloat:@"cyl" forKey:v6];
  [coderCopy encodeInteger:self->_axis forKey:@"axis"];
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