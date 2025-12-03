@interface MADVIMachineReadableCodeDetectionResultItem
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)normalizedBoundingBox;
- (MADVIMachineReadableCodeDetectionResultItem)initWithCoder:(id)coder;
- (MADVIMachineReadableCodeDetectionResultItem)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight symbology:(id)symbology payload:(id)payload andDescriptor:(id)descriptor;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIMachineReadableCodeDetectionResultItem

- (MADVIMachineReadableCodeDetectionResultItem)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight symbology:(id)symbology payload:(id)payload andDescriptor:(id)descriptor
{
  y = bottomRight.y;
  x = bottomRight.x;
  v14 = bottomLeft.y;
  v15 = bottomLeft.x;
  v16 = right.y;
  v17 = right.x;
  v18 = left.y;
  v19 = left.x;
  symbologyCopy = symbology;
  payloadCopy = payload;
  descriptorCopy = descriptor;
  v27.receiver = self;
  v27.super_class = MADVIMachineReadableCodeDetectionResultItem;
  v24 = [(MADVIMachineReadableCodeDetectionResultItem *)&v27 init];
  v25 = v24;
  if (v24)
  {
    v24->_topLeft.x = v19;
    v24->_topLeft.y = v18;
    v24->_topRight.x = v17;
    v24->_topRight.y = v16;
    v24->_bottomLeft.x = v15;
    v24->_bottomLeft.y = v14;
    v24->_bottomRight.x = x;
    v24->_bottomRight.y = y;
    objc_storeStrong(&v24->_symbology, symbology);
    objc_storeStrong(&v25->_payload, payload);
    objc_storeStrong(&v25->_descriptor, descriptor);
  }

  return v25;
}

- (MADVIMachineReadableCodeDetectionResultItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MADVIMachineReadableCodeDetectionResultItem;
  v5 = [(MADVIMachineReadableCodeDetectionResultItem *)&v23 init];
  if (v5)
  {
    [coderCopy decodePointForKey:@"TopLeft"];
    v5->_topLeft.x = v6;
    v5->_topLeft.y = v7;
    [coderCopy decodePointForKey:@"TopRight"];
    v5->_topRight.x = v8;
    v5->_topRight.y = v9;
    [coderCopy decodePointForKey:@"BottomLeft"];
    v5->_bottomLeft.x = v10;
    v5->_bottomLeft.y = v11;
    [coderCopy decodePointForKey:@"BottomRight"];
    v5->_bottomRight.x = v12;
    v5->_bottomRight.y = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Symbology"];
    symbology = v5->_symbology;
    v5->_symbology = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Payload"];
    payload = v5->_payload;
    v5->_payload = v16;

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v18 = getCIBarcodeDescriptorClass_softClass;
    v28 = getCIBarcodeDescriptorClass_softClass;
    if (!getCIBarcodeDescriptorClass_softClass)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __getCIBarcodeDescriptorClass_block_invoke;
      v24[3] = &unk_1E8342DE0;
      v24[4] = &v25;
      __getCIBarcodeDescriptorClass_block_invoke(v24);
      v18 = v26[3];
    }

    v19 = v18;
    _Block_object_dispose(&v25, 8);
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  coderCopy = coder;
  [coderCopy encodePoint:@"TopLeft" forKey:{x, y}];
  [coderCopy encodePoint:@"TopRight" forKey:{self->_topRight.x, self->_topRight.y}];
  [coderCopy encodePoint:@"BottomLeft" forKey:{self->_bottomLeft.x, self->_bottomLeft.y}];
  [coderCopy encodePoint:@"BottomRight" forKey:{self->_bottomRight.x, self->_bottomRight.y}];
  [coderCopy encodeObject:self->_symbology forKey:@"Symbology"];
  [coderCopy encodeObject:self->_payload forKey:@"Payload"];
  [coderCopy encodeObject:self->_descriptor forKey:@"Descriptor"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"topLeft: (%0.2f, %0.2f), ", *&self->_topLeft.x, *&self->_topLeft.y];
  [string appendFormat:@"topRight: (%0.2f, %0.2f), ", *&self->_topRight.x, *&self->_topRight.y];
  [string appendFormat:@"bottomLeft: (%0.2f, %0.2f), ", *&self->_bottomLeft.x, *&self->_bottomLeft.y];
  [string appendFormat:@"bottomRight: (%0.2f, %0.2f), ", *&self->_bottomRight.x, *&self->_bottomRight.y];
  [string appendFormat:@"symbology: '%@', ", self->_symbology];
  [string appendFormat:@"payload: %@, ", self->_payload];
  [string appendFormat:@"descriptor: %@>", self->_descriptor];

  return string;
}

- (CGRect)normalizedBoundingBox
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  v4 = self->_topRight.x;
  v5 = self->_topRight.y;
  v6 = self->_bottomLeft.x;
  v7 = self->_bottomLeft.y;
  v8 = self->_bottomRight.x;
  v9 = self->_bottomRight.y;
  if (v7 >= v9)
  {
    v10 = self->_bottomRight.y;
  }

  else
  {
    v10 = self->_bottomLeft.y;
  }

  if (v7 < v9)
  {
    v7 = self->_bottomRight.y;
  }

  if (y >= v5)
  {
    v11 = self->_topRight.y;
  }

  else
  {
    v11 = self->_topLeft.y;
  }

  if (y >= v5)
  {
    v5 = self->_topLeft.y;
  }

  if (v6 >= v8)
  {
    v12 = self->_bottomRight.x;
  }

  else
  {
    v12 = self->_bottomLeft.x;
  }

  if (v6 < v8)
  {
    v6 = self->_bottomRight.x;
  }

  if (x >= v4)
  {
    v13 = self->_topRight.x;
  }

  else
  {
    v13 = self->_topLeft.x;
  }

  if (x >= v4)
  {
    v4 = self->_topLeft.x;
  }

  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (v11 >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v11;
  }

  if (v4 < v6)
  {
    v4 = v6;
  }

  v16 = v4 - v14;
  if (v5 < v7)
  {
    v5 = v7;
  }

  v17 = v5 - v15;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)topLeft
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)topRight
{
  x = self->_topRight.x;
  y = self->_topRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomLeft
{
  x = self->_bottomLeft.x;
  y = self->_bottomLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomRight
{
  x = self->_bottomRight.x;
  y = self->_bottomRight.y;
  result.y = y;
  result.x = x;
  return result;
}

@end