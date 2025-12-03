@interface CWFNearbyDeviceDiscoveryFilter
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNDDFilter:(id)filter;
- (CWFNearbyDeviceDiscoveryFilter)init;
- (CWFNearbyDeviceDiscoveryFilter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFNearbyDeviceDiscoveryFilter

- (CWFNearbyDeviceDiscoveryFilter)init
{
  v8.receiver = self;
  v8.super_class = CWFNearbyDeviceDiscoveryFilter;
  v2 = [(CWFNearbyDeviceDiscoveryFilter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    receiverMacAddress = v2->_receiverMacAddress;
    v2->_receiverMacAddress = 0;

    transmitterMacAddress = v3->_transmitterMacAddress;
    v3->_transmitterMacAddress = 0;

    bssid = v3->_bssid;
    v3->_bssid = 0;

    v3->_numReports = 0;
    v3->_frameType = 0;
  }

  return v3;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = CWFCorrectEthernetAddressString(self->_receiverMacAddress);
  [string appendFormat:@"receiverMacAddress=%@, ", v4];

  v5 = CWFCorrectEthernetAddressString(self->_transmitterMacAddress);
  [string appendFormat:@"transmitterMacAddress=%@, ", v5];

  v6 = CWFCorrectEthernetAddressString(self->_bssid);
  [string appendFormat:@"bssid=%@, ", v6];

  [string appendFormat:@"numReports=%ld, ", self->_numReports];
  [string appendFormat:@"frameType=%ld, ", self->_frameType];

  return string;
}

- (BOOL)isEqualToNDDFilter:(id)filter
{
  filterCopy = filter;
  receiverMacAddress = self->_receiverMacAddress;
  receiverMacAddress = [filterCopy receiverMacAddress];
  if (receiverMacAddress != receiverMacAddress)
  {
    if (!self->_receiverMacAddress || ([filterCopy receiverMacAddress], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_36;
    }

    v3 = v9;
    v10 = self->_receiverMacAddress;
    receiverMacAddress2 = [filterCopy receiverMacAddress];
    if (![(NSString *)v10 isEqual:receiverMacAddress2])
    {
      v11 = 0;
LABEL_35:

      goto LABEL_36;
    }
  }

  transmitterMacAddress = self->_transmitterMacAddress;
  transmitterMacAddress = [filterCopy transmitterMacAddress];
  if (transmitterMacAddress != transmitterMacAddress)
  {
    if (!self->_transmitterMacAddress || ([filterCopy transmitterMacAddress], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_33;
    }

    v15 = v14;
    v16 = self->_transmitterMacAddress;
    transmitterMacAddress2 = [filterCopy transmitterMacAddress];
    v18 = v16;
    v19 = transmitterMacAddress2;
    if (([(NSString *)v18 isEqual:transmitterMacAddress2]& 1) == 0)
    {

      v11 = 0;
      goto LABEL_34;
    }

    v32 = v15;
    v33 = v19;
  }

  bssid = self->_bssid;
  bssid = [filterCopy bssid];
  if (bssid == bssid)
  {
    numReports = self->_numReports;
    if (numReports == [filterCopy numReports])
    {
      frameType = self->_frameType;
      v11 = frameType == [filterCopy frameType];
      goto LABEL_22;
    }

LABEL_21:
    v11 = 0;
LABEL_22:
    v28 = v33;

    if (transmitterMacAddress == transmitterMacAddress)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (!self->_bssid)
  {
    goto LABEL_21;
  }

  v31 = receiverMacAddress2;
  bssid2 = [filterCopy bssid];
  if (bssid2)
  {
    v23 = self->_bssid;
    bssid3 = [filterCopy bssid];
    if (([(NSString *)v23 isEqual:?]& 1) == 0)
    {
      v11 = 0;
      goto LABEL_26;
    }

    v24 = self->_numReports;
    if (v24 == [filterCopy numReports])
    {
      v25 = self->_frameType;
      v11 = v25 == [filterCopy frameType];
LABEL_26:

      if (transmitterMacAddress == transmitterMacAddress)
      {

        receiverMacAddress2 = v31;
        if (receiverMacAddress == receiverMacAddress)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      receiverMacAddress2 = v31;
      goto LABEL_33;
    }
  }

  v11 = 0;
  receiverMacAddress2 = v31;
  v28 = v33;
  if (transmitterMacAddress != transmitterMacAddress)
  {
LABEL_32:
  }

LABEL_33:

LABEL_34:
  if (receiverMacAddress != receiverMacAddress)
  {
    goto LABEL_35;
  }

LABEL_36:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFNearbyDeviceDiscoveryFilter *)self isEqualToNDDFilter:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_receiverMacAddress hash];
  v4 = [(NSString *)self->_transmitterMacAddress hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_bssid hash];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numReports];
  v7 = v5 ^ [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_frameType];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFNearbyDeviceDiscoveryFilter allocWithZone:?]];
  [(CWFNearbyDeviceDiscoveryFilter *)v4 setReceiverMacAddress:self->_receiverMacAddress];
  [(CWFNearbyDeviceDiscoveryFilter *)v4 setTransmitterMacAddress:self->_transmitterMacAddress];
  [(CWFNearbyDeviceDiscoveryFilter *)v4 setBssid:self->_bssid];
  [(CWFNearbyDeviceDiscoveryFilter *)v4 setNumReports:self->_numReports];
  [(CWFNearbyDeviceDiscoveryFilter *)v4 setFrameType:self->_frameType];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  receiverMacAddress = self->_receiverMacAddress;
  coderCopy = coder;
  [coderCopy encodeObject:receiverMacAddress forKey:@"_receiverMacAddress"];
  [coderCopy encodeObject:self->_transmitterMacAddress forKey:@"_transmitterMacAddress"];
  [coderCopy encodeObject:self->_bssid forKey:@"_bssid"];
  [coderCopy encodeInteger:self->_numReports forKey:@"_numReports"];
  [coderCopy encodeInteger:self->_frameType forKey:@"_frameType"];
}

- (CWFNearbyDeviceDiscoveryFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CWFNearbyDeviceDiscoveryFilter;
  v5 = [(CWFNearbyDeviceDiscoveryFilter *)&v16 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_receiverMacAddress"];
    receiverMacAddress = v5->_receiverMacAddress;
    v5->_receiverMacAddress = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_transmitterMacAddress"];
    transmitterMacAddress = v5->_transmitterMacAddress;
    v5->_transmitterMacAddress = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_bssid"];
    bssid = v5->_bssid;
    v5->_bssid = v13;

    v5->_numReports = [coderCopy decodeIntegerForKey:@"_numReports"];
    v5->_frameType = [coderCopy decodeIntegerForKey:@"_frameType"];
  }

  return v5;
}

@end