@interface PKPassTileAccessorySpinner
- (BOOL)_isEqual:(id)a3;
- (BOOL)_setUpWithDictionary:(id)a3;
- (PKPassTileAccessorySpinner)initWithCoder:(id)a3;
- (id)createResolvedAccessoryWithBundle:(id)a3 privateBundle:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileAccessorySpinner

- (BOOL)_setUpWithDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPassTileAccessorySpinner;
  v5 = [(PKPassTileAccessory *)&v7 _setUpWithDictionary:v4];
  if (v5)
  {
    self->_spinnerEnabled = [v4 PKBoolForKey:@"spinnerEnabled"];
  }

  return v5;
}

- (id)createResolvedAccessoryWithBundle:(id)a3 privateBundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = PKPassTileAccessorySpinner;
  result = [(PKPassTileAccessory *)&v6 createResolvedAccessoryWithBundle:a3 privateBundle:a4];
  *(result + 24) = self->_spinnerEnabled;
  return result;
}

- (PKPassTileAccessorySpinner)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPassTileAccessorySpinner;
  v5 = [(PKPassTileAccessory *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_spinnerEnabled = [v4 decodeBoolForKey:@"spinnerEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassTileAccessorySpinner;
  v4 = a3;
  [(PKPassTileAccessory *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_spinnerEnabled forKey:{@"spinnerEnabled", v5.receiver, v5.super_class}];
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = PKPassTileAccessorySpinner;
  v3 = [(PKPassTileAccessory *)&v6 hash];
  spinnerEnabled = self->_spinnerEnabled;
  v7 = v3;
  v8 = spinnerEnabled;
  return SipHash();
}

- (BOOL)_isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPassTileAccessorySpinner;
  if ([(PKPassTileAccessory *)&v7 _isEqual:v4])
  {
    v5 = v4[24] == self->_spinnerEnabled;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end