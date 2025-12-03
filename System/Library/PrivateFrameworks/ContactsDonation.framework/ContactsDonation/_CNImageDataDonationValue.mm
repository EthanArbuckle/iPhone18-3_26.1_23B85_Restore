@interface _CNImageDataDonationValue
- (BOOL)isEqual:(id)equal;
- (_CNImageDataDonationValue)initWithCoder:(id)coder;
- (_CNImageDataDonationValue)initWithImageData:(id)data origin:(id)origin;
- (id)copyWithNewExpirationDate:(id)date;
- (unint64_t)hash;
- (void)acceptDonationValueVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CNImageDataDonationValue

- (_CNImageDataDonationValue)initWithImageData:(id)data origin:(id)origin
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = _CNImageDataDonationValue;
  v7 = [(CNDonationValue *)&v12 initWithOrigin:origin];
  if (v7)
  {
    v8 = [dataCopy copy];
    imageData = v7->_imageData;
    v7->_imageData = v8;

    v10 = v7;
  }

  return v7;
}

- (id)copyWithNewExpirationDate:(id)date
{
  dateCopy = date;
  origin = [(CNDonationValue *)self origin];
  v6 = [origin mutableCopy];

  [v6 setExpirationDate:dateCopy];
  v7 = objc_alloc(objc_opt_class());
  imageData = [(_CNImageDataDonationValue *)self imageData];
  v9 = [v7 initWithImageData:imageData origin:v6];

  return v9;
}

- (_CNImageDataDonationValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _CNImageDataDonationValue;
  v5 = [(CNDonationValue *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    v7 = [v6 copy];
    imageData = v5->_imageData;
    v5->_imageData = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _CNImageDataDonationValue;
  coderCopy = coder;
  [(CNDonationValue *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imageData forKey:{@"_imageData", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x277CFBE18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __37___CNImageDataDonationValue_isEqual___block_invoke;
  v15[3] = &unk_2785698D8;
  v15[4] = self;
  v16 = equalCopy;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __37___CNImageDataDonationValue_isEqual___block_invoke_2;
  v12 = &unk_2785698D8;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = MEMORY[0x22AA69CD0](&v9);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, v9, v10, v11, v12, selfCopy}];

  return self;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x277CFBE38];
  v6[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33___CNImageDataDonationValue_hash__block_invoke;
  v7[3] = &unk_278569900;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33___CNImageDataDonationValue_hash__block_invoke_2;
  v6[3] = &unk_278569900;
  v3 = MEMORY[0x22AA69CD0](v6, a2);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

- (void)acceptDonationValueVisitor:(id)visitor
{
  visitorCopy = visitor;
  imageData = [(_CNImageDataDonationValue *)self imageData];
  [visitorCopy visitDonationValue:self imageData:imageData];
}

@end