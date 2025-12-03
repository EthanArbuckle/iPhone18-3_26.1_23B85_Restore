@interface CRKDeviceDisplay
- (BOOL)isEqual:(id)equal;
- (CGRect)frame;
- (CRKDeviceDisplay)initWithCoder:(id)coder;
- (CRKDeviceDisplay)initWithDictionary:(id)dictionary;
- (CRKDeviceDisplay)initWithScaleFactor:(double)factor frame:(CGRect)frame orientation:(unint64_t)orientation;
- (NSDictionary)dictionaryValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKDeviceDisplay

- (CRKDeviceDisplay)initWithScaleFactor:(double)factor frame:(CGRect)frame orientation:(unint64_t)orientation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = CRKDeviceDisplay;
  result = [(CRKDeviceDisplay *)&v12 init];
  if (result)
  {
    result->_scaleFactor = factor;
    result->_frame.origin.x = x;
    result->_frame.origin.y = y;
    result->_frame.size.width = width;
    result->_frame.size.height = height;
    result->_orientation = orientation;
  }

  return result;
}

- (CRKDeviceDisplay)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"scaleFactor"];
  [v5 floatValue];
  v7 = v6;

  v8 = CRKRectFromDictionary(dictionaryCopy);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [dictionaryCopy objectForKeyedSubscript:@"orientation"];

  unsignedIntegerValue = [v15 unsignedIntegerValue];

  return [(CRKDeviceDisplay *)self initWithScaleFactor:unsignedIntegerValue frame:v7 orientation:v8, v10, v12, v14];
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  [(CRKDeviceDisplay *)self frame];
  v8 = CRKDictionaryFromRect(v4, v5, v6, v7);
  [v3 addEntriesFromDictionary:v8];

  v9 = MEMORY[0x277CCABB0];
  [(CRKDeviceDisplay *)self scaleFactor];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"scaleFactor"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKDeviceDisplay orientation](self, "orientation")}];
  [v3 setObject:v11 forKeyedSubscript:@"orientation"];

  v12 = [v3 copy];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryValue = [(CRKDeviceDisplay *)self dictionaryValue];
  [coderCopy encodeObject:dictionaryValue forKey:@"dictionaryValue"];
}

- (CRKDeviceDisplay)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = CRKFoundationClasses();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"dictionaryValue"];

  v7 = [(CRKDeviceDisplay *)self initWithDictionary:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v22 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [CRKDeviceDisplay isEqual:];
    }

    [(CRKDeviceDisplay *)self frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(CRKDeviceDisplay *)v6 frame];
    v26.origin.x = v15;
    v26.origin.y = v16;
    v26.size.width = v17;
    v26.size.height = v18;
    v25.origin.x = v8;
    v25.origin.y = v10;
    v25.size.width = v12;
    v25.size.height = v14;
    if (CGRectEqualToRect(v25, v26) && ([(CRKDeviceDisplay *)self scaleFactor], v20 = v19, [(CRKDeviceDisplay *)v6 scaleFactor], vabdd_f64(v20, v21) <= 2.22044605e-16))
    {
      orientation = [(CRKDeviceDisplay *)self orientation];
      v22 = orientation == [(CRKDeviceDisplay *)v6 orientation];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unint64_t)hash
{
  [(CRKDeviceDisplay *)self frame];
  v7 = CRKRectHash(v3, v4, v5, v6);
  v8 = MEMORY[0x277CCABB0];
  [(CRKDeviceDisplay *)self scaleFactor];
  v9 = [v8 numberWithDouble:?];
  v10 = [v9 hash] ^ v7;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKDeviceDisplay orientation](self, "orientation")}];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)isEqual:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKDeviceDisplay isEqual:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CRKDeviceDisplay.m" lineNumber:98 description:{@"expected %@, got %@", v2, v4}];
}

@end