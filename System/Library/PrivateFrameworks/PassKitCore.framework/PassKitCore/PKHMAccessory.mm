@interface PKHMAccessory
- (PKHMAccessory)initWithCoder:(id)a3;
- (PKHMAccessory)initWithUniqueIdentifier:(id)a3 name:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKHMAccessory

- (PKHMAccessory)initWithUniqueIdentifier:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKHMAccessory;
  v9 = [(PKHMAccessory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uniqueIdentifier, a3);
    objc_storeStrong(&v10->_name, a4);
  }

  return v10;
}

- (PKHMAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKHMAccessory;
  v5 = [(PKHMAccessory *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
}

@end