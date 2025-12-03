@interface HWHandwritingItem
- (HWHandwritingItem)initWithCoder:(id)coder;
- (HWHandwritingItem)initWithDrawing:(id)drawing;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HWHandwritingItem

- (HWHandwritingItem)initWithDrawing:(id)drawing
{
  drawingCopy = drawing;
  v13.receiver = self;
  v13.super_class = HWHandwritingItem;
  v5 = [(HWHandwritingItem *)&v13 init];
  if (v5)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v5->_uuid;
    v5->_uuid = uUID;

    date = [MEMORY[0x277CBEAA8] date];
    creationDate = v5->_creationDate;
    v5->_creationDate = date;

    v10 = [drawingCopy copy];
    drawing = v5->_drawing;
    v5->_drawing = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(HWHandwritingItem);
  if (v5)
  {
    v6 = [(NSUUID *)self->_uuid copyWithZone:zone];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [(NSDate *)self->_creationDate copyWithZone:zone];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;

    v10 = [(DKDrawing *)self->_drawing copyWithZone:zone];
    drawing = v5->_drawing;
    v5->_drawing = v10;
  }

  return v5;
}

- (HWHandwritingItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HWHandwritingItem *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cd1"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dw1"];
    drawing = v5->_drawing;
    v5->_drawing = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_creationDate forKey:@"cd1"];
  [coderCopy encodeObject:self->_drawing forKey:@"dw1"];
}

@end