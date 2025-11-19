@interface _CNImageDataDonationValue
- (BOOL)isEqual:(id)a3;
- (_CNImageDataDonationValue)initWithCoder:(id)a3;
- (_CNImageDataDonationValue)initWithImageData:(id)a3 origin:(id)a4;
- (id)copyWithNewExpirationDate:(id)a3;
- (unint64_t)hash;
- (void)acceptDonationValueVisitor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CNImageDataDonationValue

- (_CNImageDataDonationValue)initWithImageData:(id)a3 origin:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _CNImageDataDonationValue;
  v7 = [(CNDonationValue *)&v12 initWithOrigin:a4];
  if (v7)
  {
    v8 = [v6 copy];
    imageData = v7->_imageData;
    v7->_imageData = v8;

    v10 = v7;
  }

  return v7;
}

- (id)copyWithNewExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [(CNDonationValue *)self origin];
  v6 = [v5 mutableCopy];

  [v6 setExpirationDate:v4];
  v7 = objc_alloc(objc_opt_class());
  v8 = [(_CNImageDataDonationValue *)self imageData];
  v9 = [v7 initWithImageData:v8 origin:v6];

  return v9;
}

- (_CNImageDataDonationValue)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _CNImageDataDonationValue;
  v5 = [(CNDonationValue *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    v7 = [v6 copy];
    imageData = v5->_imageData;
    v5->_imageData = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _CNImageDataDonationValue;
  v4 = a3;
  [(CNDonationValue *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_imageData forKey:{@"_imageData", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CFBE18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __37___CNImageDataDonationValue_isEqual___block_invoke;
  v15[3] = &unk_2785698D8;
  v15[4] = self;
  v16 = v4;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __37___CNImageDataDonationValue_isEqual___block_invoke_2;
  v12 = &unk_2785698D8;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = MEMORY[0x22AA69CD0](&v9);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, v9, v10, v11, v12, v13}];

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

- (void)acceptDonationValueVisitor:(id)a3
{
  v4 = a3;
  v5 = [(_CNImageDataDonationValue *)self imageData];
  [v4 visitDonationValue:self imageData:v5];
}

@end