@interface PKPaymentSetupProductRegionData
- (PKPaymentSetupProductRegionData)initWithCoder:(id)coder;
- (PKPaymentSetupProductRegionData)initWithRegionDataDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentSetupProductRegionData

- (PKPaymentSetupProductRegionData)initWithRegionDataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy && [dictionaryCopy count])
  {
    v16.receiver = self;
    v16.super_class = PKPaymentSetupProductRegionData;
    v6 = [(PKPaymentSetupProductRegionData *)&v16 init];
    if (v6)
    {
      v6->_persistent = [v5 PKBoolForKey:@"isPersistent"];
      v6->_priority = [v5 PKIntegerForKey:@"priority"];
      [v5 PKDoubleForKey:@"maximumMatchingDistance"];
      v6->_maximumMatchingDistance = v7;
      v8 = [v5 PKArrayContaining:objc_opt_class() forKey:@"inclusionaryZones"];
      v9 = [(PKPaymentSetupProductRegionData *)v6 _boundaryDataFromList:v8];
      inclusionaryZones = v6->_inclusionaryZones;
      v6->_inclusionaryZones = v9;

      v11 = [v5 PKArrayContaining:objc_opt_class() forKey:@"exclusionaryZones"];
      v12 = [(PKPaymentSetupProductRegionData *)v6 _boundaryDataFromList:v11];
      exclusionaryZones = v6->_exclusionaryZones;
      v6->_exclusionaryZones = v12;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

PKPaymentSetupProductRegionDataCoordinate *__57__PKPaymentSetupProductRegionData__boundaryDataFromList___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPaymentSetupProductRegionDataCoordinate alloc] initWithCoordinatePair:v2];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentSetupProductRegionData allocWithZone:](PKPaymentSetupProductRegionData init];
  v5->_persistent = self->_persistent;
  v5->_priority = self->_priority;
  v6 = [(NSArray *)self->_inclusionaryZones copyWithZone:zone];
  inclusionaryZones = v5->_inclusionaryZones;
  v5->_inclusionaryZones = v6;

  v8 = [(NSArray *)self->_exclusionaryZones copyWithZone:zone];
  exclusionaryZones = v5->_exclusionaryZones;
  v5->_exclusionaryZones = v8;

  v5->_maximumMatchingDistance = self->_maximumMatchingDistance;
  return v5;
}

- (PKPaymentSetupProductRegionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPaymentSetupProductRegionData;
  v5 = [(PKPaymentSetupProductRegionData *)&v15 init];
  if (v5)
  {
    v5->_persistent = [coderCopy decodeBoolForKey:@"isPersistent"];
    v5->_priority = [coderCopy decodeIntegerForKey:@"priority"];
    [coderCopy decodeDoubleForKey:@"maximumMatchingDistance"];
    v5->_maximumMatchingDistance = v6;
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"inclusionaryZones"];
    inclusionaryZones = v5->_inclusionaryZones;
    v5->_inclusionaryZones = v10;

    v12 = [coderCopy decodeObjectOfClasses:v9 forKey:@"exclusionaryZones"];
    exclusionaryZones = v5->_exclusionaryZones;
    v5->_exclusionaryZones = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  persistent = self->_persistent;
  coderCopy = coder;
  [coderCopy encodeBool:persistent forKey:@"isPersistent"];
  [coderCopy encodeInteger:self->_priority forKey:@"priority"];
  [coderCopy encodeObject:self->_inclusionaryZones forKey:@"inclusionaryZones"];
  [coderCopy encodeObject:self->_exclusionaryZones forKey:@"exclusionaryZones"];
  [coderCopy encodeDouble:@"maximumMatchingDistance" forKey:self->_maximumMatchingDistance];
}

@end