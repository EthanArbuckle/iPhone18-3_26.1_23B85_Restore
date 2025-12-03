@interface PKPassTileAccessorySpinner
- (BOOL)_isEqual:(id)equal;
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (PKPassTileAccessorySpinner)initWithCoder:(id)coder;
- (id)createResolvedAccessoryWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileAccessorySpinner

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = PKPassTileAccessorySpinner;
  v5 = [(PKPassTileAccessory *)&v7 _setUpWithDictionary:dictionaryCopy];
  if (v5)
  {
    self->_spinnerEnabled = [dictionaryCopy PKBoolForKey:@"spinnerEnabled"];
  }

  return v5;
}

- (id)createResolvedAccessoryWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  v6.receiver = self;
  v6.super_class = PKPassTileAccessorySpinner;
  result = [(PKPassTileAccessory *)&v6 createResolvedAccessoryWithBundle:bundle privateBundle:privateBundle];
  *(result + 24) = self->_spinnerEnabled;
  return result;
}

- (PKPassTileAccessorySpinner)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPassTileAccessorySpinner;
  v5 = [(PKPassTileAccessory *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_spinnerEnabled = [coderCopy decodeBoolForKey:@"spinnerEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassTileAccessorySpinner;
  coderCopy = coder;
  [(PKPassTileAccessory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_spinnerEnabled forKey:{@"spinnerEnabled", v5.receiver, v5.super_class}];
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

- (BOOL)_isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = PKPassTileAccessorySpinner;
  if ([(PKPassTileAccessory *)&v7 _isEqual:equalCopy])
  {
    v5 = equalCopy[24] == self->_spinnerEnabled;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end