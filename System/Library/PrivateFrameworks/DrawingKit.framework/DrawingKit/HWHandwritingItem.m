@interface HWHandwritingItem
- (HWHandwritingItem)initWithCoder:(id)a3;
- (HWHandwritingItem)initWithDrawing:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HWHandwritingItem

- (HWHandwritingItem)initWithDrawing:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HWHandwritingItem;
  v5 = [(HWHandwritingItem *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [MEMORY[0x277CBEAA8] date];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;

    v10 = [v4 copy];
    drawing = v5->_drawing;
    v5->_drawing = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(HWHandwritingItem);
  if (v5)
  {
    v6 = [(NSUUID *)self->_uuid copyWithZone:a3];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [(NSDate *)self->_creationDate copyWithZone:a3];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;

    v10 = [(DKDrawing *)self->_drawing copyWithZone:a3];
    drawing = v5->_drawing;
    v5->_drawing = v10;
  }

  return v5;
}

- (HWHandwritingItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HWHandwritingItem *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cd1"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dw1"];
    drawing = v5->_drawing;
    v5->_drawing = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_creationDate forKey:@"cd1"];
  [v5 encodeObject:self->_drawing forKey:@"dw1"];
}

@end