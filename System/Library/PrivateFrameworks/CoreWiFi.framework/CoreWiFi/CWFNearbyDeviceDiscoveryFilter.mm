@interface CWFNearbyDeviceDiscoveryFilter
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNDDFilter:(id)a3;
- (CWFNearbyDeviceDiscoveryFilter)init;
- (CWFNearbyDeviceDiscoveryFilter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = CWFCorrectEthernetAddressString(self->_receiverMacAddress);
  [v3 appendFormat:@"receiverMacAddress=%@, ", v4];

  v5 = CWFCorrectEthernetAddressString(self->_transmitterMacAddress);
  [v3 appendFormat:@"transmitterMacAddress=%@, ", v5];

  v6 = CWFCorrectEthernetAddressString(self->_bssid);
  [v3 appendFormat:@"bssid=%@, ", v6];

  [v3 appendFormat:@"numReports=%ld, ", self->_numReports];
  [v3 appendFormat:@"frameType=%ld, ", self->_frameType];

  return v3;
}

- (BOOL)isEqualToNDDFilter:(id)a3
{
  v6 = a3;
  receiverMacAddress = self->_receiverMacAddress;
  v8 = [v6 receiverMacAddress];
  if (receiverMacAddress != v8)
  {
    if (!self->_receiverMacAddress || ([v6 receiverMacAddress], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_36;
    }

    v3 = v9;
    v10 = self->_receiverMacAddress;
    v4 = [v6 receiverMacAddress];
    if (![(NSString *)v10 isEqual:v4])
    {
      v11 = 0;
LABEL_35:

      goto LABEL_36;
    }
  }

  transmitterMacAddress = self->_transmitterMacAddress;
  v13 = [v6 transmitterMacAddress];
  if (transmitterMacAddress != v13)
  {
    if (!self->_transmitterMacAddress || ([v6 transmitterMacAddress], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_33;
    }

    v15 = v14;
    v16 = self->_transmitterMacAddress;
    v17 = [v6 transmitterMacAddress];
    v18 = v16;
    v19 = v17;
    if (([(NSString *)v18 isEqual:v17]& 1) == 0)
    {

      v11 = 0;
      goto LABEL_34;
    }

    v32 = v15;
    v33 = v19;
  }

  bssid = self->_bssid;
  v21 = [v6 bssid];
  if (bssid == v21)
  {
    numReports = self->_numReports;
    if (numReports == [v6 numReports])
    {
      frameType = self->_frameType;
      v11 = frameType == [v6 frameType];
      goto LABEL_22;
    }

LABEL_21:
    v11 = 0;
LABEL_22:
    v28 = v33;

    if (transmitterMacAddress == v13)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (!self->_bssid)
  {
    goto LABEL_21;
  }

  v31 = v4;
  v22 = [v6 bssid];
  if (v22)
  {
    v23 = self->_bssid;
    v30 = [v6 bssid];
    if (([(NSString *)v23 isEqual:?]& 1) == 0)
    {
      v11 = 0;
      goto LABEL_26;
    }

    v24 = self->_numReports;
    if (v24 == [v6 numReports])
    {
      v25 = self->_frameType;
      v11 = v25 == [v6 frameType];
LABEL_26:

      if (transmitterMacAddress == v13)
      {

        v4 = v31;
        if (receiverMacAddress == v8)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v4 = v31;
      goto LABEL_33;
    }
  }

  v11 = 0;
  v4 = v31;
  v28 = v33;
  if (transmitterMacAddress != v13)
  {
LABEL_32:
  }

LABEL_33:

LABEL_34:
  if (receiverMacAddress != v8)
  {
    goto LABEL_35;
  }

LABEL_36:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFNearbyDeviceDiscoveryFilter *)self isEqualToNDDFilter:v5];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFNearbyDeviceDiscoveryFilter allocWithZone:?]];
  [(CWFNearbyDeviceDiscoveryFilter *)v4 setReceiverMacAddress:self->_receiverMacAddress];
  [(CWFNearbyDeviceDiscoveryFilter *)v4 setTransmitterMacAddress:self->_transmitterMacAddress];
  [(CWFNearbyDeviceDiscoveryFilter *)v4 setBssid:self->_bssid];
  [(CWFNearbyDeviceDiscoveryFilter *)v4 setNumReports:self->_numReports];
  [(CWFNearbyDeviceDiscoveryFilter *)v4 setFrameType:self->_frameType];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  receiverMacAddress = self->_receiverMacAddress;
  v5 = a3;
  [v5 encodeObject:receiverMacAddress forKey:@"_receiverMacAddress"];
  [v5 encodeObject:self->_transmitterMacAddress forKey:@"_transmitterMacAddress"];
  [v5 encodeObject:self->_bssid forKey:@"_bssid"];
  [v5 encodeInteger:self->_numReports forKey:@"_numReports"];
  [v5 encodeInteger:self->_frameType forKey:@"_frameType"];
}

- (CWFNearbyDeviceDiscoveryFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CWFNearbyDeviceDiscoveryFilter;
  v5 = [(CWFNearbyDeviceDiscoveryFilter *)&v16 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_receiverMacAddress"];
    receiverMacAddress = v5->_receiverMacAddress;
    v5->_receiverMacAddress = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_transmitterMacAddress"];
    transmitterMacAddress = v5->_transmitterMacAddress;
    v5->_transmitterMacAddress = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_bssid"];
    bssid = v5->_bssid;
    v5->_bssid = v13;

    v5->_numReports = [v4 decodeIntegerForKey:@"_numReports"];
    v5->_frameType = [v4 decodeIntegerForKey:@"_frameType"];
  }

  return v5;
}

@end