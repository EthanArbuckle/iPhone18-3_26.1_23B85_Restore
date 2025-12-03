@interface CWFNearbyDeviceDiscoveryReport
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNDDReport:(id)report;
- (CWFNearbyDeviceDiscoveryReport)init;
- (CWFNearbyDeviceDiscoveryReport)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFNearbyDeviceDiscoveryReport

- (CWFNearbyDeviceDiscoveryReport)init
{
  v10.receiver = self;
  v10.super_class = CWFNearbyDeviceDiscoveryReport;
  v2 = [(CWFNearbyDeviceDiscoveryReport *)&v10 init];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    v4 = *(v2 + 2);
    *(v2 + 2) = date;

    v5 = *(v2 + 3);
    *(v2 + 3) = 0;

    v6 = *(v2 + 4);
    *(v2 + 4) = 0;

    v7 = *(v2 + 5);
    *(v2 + 5) = 0;

    v8 = *(v2 + 6);
    *(v2 + 6) = 0;

    v2[8] = 0;
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 11) = 0;
  }

  return v2;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"timeStamp=%@, ", self->_timeStamp];
  [string appendFormat:@"receiver=%@, ", self->_receiver];
  [string appendFormat:@"transmitter=%@, ", self->_transmitter];
  [string appendFormat:@"bssid=%@, ", self->_bssid];
  if ([(NSArray *)self->_rssi count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_rssi objectAtIndexedSubscript:v4];
      [string appendFormat:@"rssi%d = %@, ", v4, v5];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_rssi count]);
  }

  [string appendFormat:@"frameType=%ld, ", self->_frameType];
  [string appendFormat:@"bandwidth=%ld, ", self->_bandwidth];
  [string appendFormat:@"channel=%ld, ", self->_channel];
  [string appendFormat:@"band=%ld, ", self->_band];
  [string appendFormat:@"rateMbps=%ld, ", self->_rateMbps];
  [string appendFormat:@"isLowConfidence=%d, ", self->_isLowConfidence];

  return string;
}

- (BOOL)isEqualToNDDReport:(id)report
{
  reportCopy = report;
  timeStamp = self->_timeStamp;
  timeStamp = [reportCopy timeStamp];
  if (timeStamp != timeStamp)
  {
    if (!self->_timeStamp || ([reportCopy timeStamp], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_67;
    }

    v3 = v8;
    v9 = self->_timeStamp;
    timeStamp2 = [reportCopy timeStamp];
    if (![(NSDate *)v9 isEqual:timeStamp2])
    {
      v11 = 0;
LABEL_66:

      goto LABEL_67;
    }

    v62 = timeStamp2;
  }

  receiver = self->_receiver;
  receiver = [reportCopy receiver];
  if (receiver != receiver)
  {
    if (!self->_receiver)
    {
      v11 = 0;
      goto LABEL_65;
    }

    receiver2 = [reportCopy receiver];
    if (!receiver2)
    {
      goto LABEL_36;
    }

    v15 = receiver2;
    v16 = self->_receiver;
    receiver3 = [reportCopy receiver];
    if (([(NSString *)v16 isEqual:receiver3]& 1) == 0)
    {

      goto LABEL_36;
    }

    v60 = v15;
    v61 = receiver3;
  }

  transmitter = self->_transmitter;
  transmitter = [reportCopy transmitter];
  if (transmitter == transmitter)
  {
    goto LABEL_19;
  }

  if (self->_transmitter)
  {
    transmitter2 = [reportCopy transmitter];
    if (transmitter2)
    {
      v58 = transmitter2;
      v21 = self->_transmitter;
      transmitter3 = [reportCopy transmitter];
      v23 = v21;
      v24 = transmitter3;
      if (([(NSString *)v23 isEqual:transmitter3]& 1) != 0)
      {
        v55 = v24;
LABEL_19:
        bssid = self->_bssid;
        bssid = [reportCopy bssid];
        if (bssid == bssid)
        {
          v54 = transmitter;
          v32 = transmitter;
          v33 = v3;
          v59 = bssid;
LABEL_27:
          rssi = self->_rssi;
          rssi = [reportCopy rssi];
          v50 = rssi;
          if (rssi == rssi)
          {
            v56 = rssi;
            v53 = bssid;
            v3 = v33;
            transmitter = v32;
            transmitter = v54;
          }

          else
          {
            if (!self->_rssi)
            {
              v11 = 0;
              v3 = v33;
              transmitter = v32;
              transmitter = v54;
              goto LABEL_58;
            }

            v56 = rssi;
            rssi2 = [reportCopy rssi];
            v3 = v33;
            transmitter = v32;
            transmitter = v54;
            if (!rssi2)
            {
LABEL_50:

              v11 = 0;
              goto LABEL_59;
            }

            v47 = rssi2;
            v52 = self->_rssi;
            rssi3 = [reportCopy rssi];
            if (![(NSArray *)v52 isEqual:?])
            {
              v11 = 0;
              rssi = v56;
LABEL_69:
              v57 = rssi;

              if (bssid == v59)
              {

                v45 = v55;
                if (transmitter == transmitter)
                {
                  goto LABEL_73;
                }

                goto LABEL_72;
              }

LABEL_71:
              v45 = v55;

              if (transmitter == transmitter)
              {
LABEL_73:

                if (receiver != receiver)
                {
                }

LABEL_37:
                timeStamp2 = v62;
                if (timeStamp == timeStamp)
                {
                  goto LABEL_67;
                }

                goto LABEL_66;
              }

LABEL_72:

              goto LABEL_73;
            }

            v53 = bssid;
          }

          frameType = self->_frameType;
          if (frameType == [reportCopy frameType])
          {
            bandwidth = self->_bandwidth;
            if (bandwidth == [reportCopy bandwidth])
            {
              channel = self->_channel;
              if (channel == [reportCopy channel])
              {
                band = self->_band;
                if (band == [reportCopy band])
                {
                  rateMbps = self->_rateMbps;
                  if (rateMbps == [reportCopy rateMbps])
                  {
                    isLowConfidence = self->_isLowConfidence;
                    v11 = isLowConfidence == [reportCopy isLowConfidence];
                    rssi = v56;
                    bssid = v53;
                    if (v50 == v56)
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_69;
                  }
                }
              }
            }
          }

          rssi = v56;
          if (v50 != v56)
          {

            bssid = v53;
            goto LABEL_50;
          }

          v11 = 0;
          bssid = v53;
LABEL_58:

LABEL_59:
          bssid = v59;
          if (bssid != v59)
          {

            bssid = v59;
          }

          goto LABEL_61;
        }

        if (!self->_bssid)
        {
          v11 = 0;
LABEL_61:

          if (transmitter != transmitter)
          {
          }

          goto LABEL_63;
        }

        v59 = bssid;
        bssid2 = [reportCopy bssid];
        if (!bssid2)
        {
          v11 = 0;
          goto LABEL_71;
        }

        v51 = bssid;
        v49 = bssid2;
        v28 = self->_bssid;
        bssid3 = [reportCopy bssid];
        v30 = v28;
        v31 = bssid3;
        if (([(NSString *)v30 isEqual:bssid3]& 1) != 0)
        {
          v54 = transmitter;
          v32 = transmitter;
          v33 = v3;
          v48 = v31;
          bssid = v51;
          goto LABEL_27;
        }

        if (transmitter != transmitter)
        {
        }

        v37 = v61;
        if (receiver == receiver)
        {
LABEL_36:

          v11 = 0;
          goto LABEL_37;
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    if (receiver == receiver)
    {
      goto LABEL_36;
    }

    v37 = v61;
    goto LABEL_35;
  }

  v11 = 0;
LABEL_63:

  if (receiver != receiver)
  {
  }

LABEL_65:
  timeStamp2 = v62;

  if (timeStamp != timeStamp)
  {
    goto LABEL_66;
  }

LABEL_67:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFNearbyDeviceDiscoveryReport *)self isEqualToNDDReport:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_timeStamp hash];
  v4 = [(NSString *)self->_receiver hash]^ v3;
  v5 = [(NSString *)self->_transmitter hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_bssid hash];
  v7 = v6 ^ [(NSArray *)self->_rssi hash];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_frameType];
  v9 = [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_bandwidth];
  v11 = v7 ^ v9 ^ [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_channel];
  v13 = [v12 hash];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_band];
  v15 = v13 ^ [v14 hash];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rateMbps];
  v17 = v11 ^ v15 ^ [v16 hash];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidence];
  v19 = [v18 hash];

  return v17 ^ v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFNearbyDeviceDiscoveryReport allocWithZone:?]];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setTimeStamp:self->_timeStamp];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setReceiver:self->_receiver];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setTransmitter:self->_transmitter];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setBssid:self->_bssid];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setRssi:self->_rssi];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setFrameType:self->_frameType];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setBandwidth:self->_bandwidth];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setChannel:self->_channel];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setBand:self->_band];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setRateMbps:self->_rateMbps];
  [(CWFNearbyDeviceDiscoveryReport *)v4 setIsLowConfidence:self->_isLowConfidence];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  timeStamp = self->_timeStamp;
  coderCopy = coder;
  [coderCopy encodeObject:timeStamp forKey:@"_timeStamp"];
  [coderCopy encodeObject:self->_receiver forKey:@"_receiver"];
  [coderCopy encodeObject:self->_transmitter forKey:@"_transmitter"];
  [coderCopy encodeObject:self->_bssid forKey:@"_bssid"];
  [coderCopy encodeObject:self->_rssi forKey:@"_rssi"];
  [coderCopy encodeInteger:self->_frameType forKey:@"_frameType"];
  [coderCopy encodeInteger:self->_bandwidth forKey:@"_bandwidth"];
  [coderCopy encodeInteger:self->_channel forKey:@"_channel"];
  [coderCopy encodeInteger:self->_band forKey:@"_band"];
  [coderCopy encodeInteger:self->_rateMbps forKey:@"_rateMbps"];
  [coderCopy encodeBool:self->_isLowConfidence forKey:@"_isLowConfidence"];
}

- (CWFNearbyDeviceDiscoveryReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CWFNearbyDeviceDiscoveryReport;
  v5 = [(CWFNearbyDeviceDiscoveryReport *)&v24 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_timeStamp"];
    timeStamp = v5->_timeStamp;
    v5->_timeStamp = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_receiver"];
    receiver = v5->_receiver;
    v5->_receiver = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_transmitter"];
    transmitter = v5->_transmitter;
    v5->_transmitter = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"_bssid"];
    bssid = v5->_bssid;
    v5->_bssid = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"_rssi"];
    rssi = v5->_rssi;
    v5->_rssi = v21;

    v5->_frameType = [coderCopy decodeIntegerForKey:@"_frameType"];
    v5->_bandwidth = [coderCopy decodeIntegerForKey:@"_bandwidth"];
    v5->_channel = [coderCopy decodeIntegerForKey:@"_channel"];
    v5->_band = [coderCopy decodeIntegerForKey:@"_band"];
    v5->_rateMbps = [coderCopy decodeIntegerForKey:@"_rateMbps"];
    v5->_isLowConfidence = [coderCopy decodeIntegerForKey:@"_isLowConfidence"] != 0;
  }

  return v5;
}

@end