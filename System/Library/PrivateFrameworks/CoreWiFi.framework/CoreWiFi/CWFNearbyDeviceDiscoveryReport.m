@interface CWFNearbyDeviceDiscoveryReport
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNDDReport:(id)a3;
- (CWFNearbyDeviceDiscoveryReport)init;
- (CWFNearbyDeviceDiscoveryReport)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFNearbyDeviceDiscoveryReport

- (CWFNearbyDeviceDiscoveryReport)init
{
  v10.receiver = self;
  v10.super_class = CWFNearbyDeviceDiscoveryReport;
  v2 = [(CWFNearbyDeviceDiscoveryReport *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

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
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"timeStamp=%@, ", self->_timeStamp];
  [v3 appendFormat:@"receiver=%@, ", self->_receiver];
  [v3 appendFormat:@"transmitter=%@, ", self->_transmitter];
  [v3 appendFormat:@"bssid=%@, ", self->_bssid];
  if ([(NSArray *)self->_rssi count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_rssi objectAtIndexedSubscript:v4];
      [v3 appendFormat:@"rssi%d = %@, ", v4, v5];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_rssi count]);
  }

  [v3 appendFormat:@"frameType=%ld, ", self->_frameType];
  [v3 appendFormat:@"bandwidth=%ld, ", self->_bandwidth];
  [v3 appendFormat:@"channel=%ld, ", self->_channel];
  [v3 appendFormat:@"band=%ld, ", self->_band];
  [v3 appendFormat:@"rateMbps=%ld, ", self->_rateMbps];
  [v3 appendFormat:@"isLowConfidence=%d, ", self->_isLowConfidence];

  return v3;
}

- (BOOL)isEqualToNDDReport:(id)a3
{
  v5 = a3;
  timeStamp = self->_timeStamp;
  v7 = [v5 timeStamp];
  if (timeStamp != v7)
  {
    if (!self->_timeStamp || ([v5 timeStamp], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_67;
    }

    v3 = v8;
    v9 = self->_timeStamp;
    v10 = [v5 timeStamp];
    if (![(NSDate *)v9 isEqual:v10])
    {
      v11 = 0;
LABEL_66:

      goto LABEL_67;
    }

    v62 = v10;
  }

  receiver = self->_receiver;
  v13 = [v5 receiver];
  if (receiver != v13)
  {
    if (!self->_receiver)
    {
      v11 = 0;
      goto LABEL_65;
    }

    v14 = [v5 receiver];
    if (!v14)
    {
      goto LABEL_36;
    }

    v15 = v14;
    v16 = self->_receiver;
    v17 = [v5 receiver];
    if (([(NSString *)v16 isEqual:v17]& 1) == 0)
    {

      goto LABEL_36;
    }

    v60 = v15;
    v61 = v17;
  }

  transmitter = self->_transmitter;
  v19 = [v5 transmitter];
  if (transmitter == v19)
  {
    goto LABEL_19;
  }

  if (self->_transmitter)
  {
    v20 = [v5 transmitter];
    if (v20)
    {
      v58 = v20;
      v21 = self->_transmitter;
      v22 = [v5 transmitter];
      v23 = v21;
      v24 = v22;
      if (([(NSString *)v23 isEqual:v22]& 1) != 0)
      {
        v55 = v24;
LABEL_19:
        bssid = self->_bssid;
        v26 = [v5 bssid];
        if (bssid == v26)
        {
          v54 = v19;
          v32 = transmitter;
          v33 = v3;
          v59 = v26;
LABEL_27:
          rssi = self->_rssi;
          v35 = [v5 rssi];
          v50 = rssi;
          if (rssi == v35)
          {
            v56 = v35;
            v53 = bssid;
            v3 = v33;
            transmitter = v32;
            v19 = v54;
          }

          else
          {
            if (!self->_rssi)
            {
              v11 = 0;
              v3 = v33;
              transmitter = v32;
              v19 = v54;
              goto LABEL_58;
            }

            v56 = v35;
            v36 = [v5 rssi];
            v3 = v33;
            transmitter = v32;
            v19 = v54;
            if (!v36)
            {
LABEL_50:

              v11 = 0;
              goto LABEL_59;
            }

            v47 = v36;
            v52 = self->_rssi;
            v46 = [v5 rssi];
            if (![(NSArray *)v52 isEqual:?])
            {
              v11 = 0;
              v35 = v56;
LABEL_69:
              v57 = v35;

              if (bssid == v59)
              {

                v45 = v55;
                if (transmitter == v19)
                {
                  goto LABEL_73;
                }

                goto LABEL_72;
              }

LABEL_71:
              v45 = v55;

              if (transmitter == v19)
              {
LABEL_73:

                if (receiver != v13)
                {
                }

LABEL_37:
                v10 = v62;
                if (timeStamp == v7)
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
          if (frameType == [v5 frameType])
          {
            bandwidth = self->_bandwidth;
            if (bandwidth == [v5 bandwidth])
            {
              channel = self->_channel;
              if (channel == [v5 channel])
              {
                band = self->_band;
                if (band == [v5 band])
                {
                  rateMbps = self->_rateMbps;
                  if (rateMbps == [v5 rateMbps])
                  {
                    isLowConfidence = self->_isLowConfidence;
                    v11 = isLowConfidence == [v5 isLowConfidence];
                    v35 = v56;
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

          v35 = v56;
          if (v50 != v56)
          {

            bssid = v53;
            goto LABEL_50;
          }

          v11 = 0;
          bssid = v53;
LABEL_58:

LABEL_59:
          v26 = v59;
          if (bssid != v59)
          {

            v26 = v59;
          }

          goto LABEL_61;
        }

        if (!self->_bssid)
        {
          v11 = 0;
LABEL_61:

          if (transmitter != v19)
          {
          }

          goto LABEL_63;
        }

        v59 = v26;
        v27 = [v5 bssid];
        if (!v27)
        {
          v11 = 0;
          goto LABEL_71;
        }

        v51 = bssid;
        v49 = v27;
        v28 = self->_bssid;
        v29 = [v5 bssid];
        v30 = v28;
        v31 = v29;
        if (([(NSString *)v30 isEqual:v29]& 1) != 0)
        {
          v54 = v19;
          v32 = transmitter;
          v33 = v3;
          v48 = v31;
          bssid = v51;
          goto LABEL_27;
        }

        if (transmitter != v19)
        {
        }

        v37 = v61;
        if (receiver == v13)
        {
LABEL_36:

          v11 = 0;
          goto LABEL_37;
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    if (receiver == v13)
    {
      goto LABEL_36;
    }

    v37 = v61;
    goto LABEL_35;
  }

  v11 = 0;
LABEL_63:

  if (receiver != v13)
  {
  }

LABEL_65:
  v10 = v62;

  if (timeStamp != v7)
  {
    goto LABEL_66;
  }

LABEL_67:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFNearbyDeviceDiscoveryReport *)self isEqualToNDDReport:v5];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  timeStamp = self->_timeStamp;
  v5 = a3;
  [v5 encodeObject:timeStamp forKey:@"_timeStamp"];
  [v5 encodeObject:self->_receiver forKey:@"_receiver"];
  [v5 encodeObject:self->_transmitter forKey:@"_transmitter"];
  [v5 encodeObject:self->_bssid forKey:@"_bssid"];
  [v5 encodeObject:self->_rssi forKey:@"_rssi"];
  [v5 encodeInteger:self->_frameType forKey:@"_frameType"];
  [v5 encodeInteger:self->_bandwidth forKey:@"_bandwidth"];
  [v5 encodeInteger:self->_channel forKey:@"_channel"];
  [v5 encodeInteger:self->_band forKey:@"_band"];
  [v5 encodeInteger:self->_rateMbps forKey:@"_rateMbps"];
  [v5 encodeBool:self->_isLowConfidence forKey:@"_isLowConfidence"];
}

- (CWFNearbyDeviceDiscoveryReport)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CWFNearbyDeviceDiscoveryReport;
  v5 = [(CWFNearbyDeviceDiscoveryReport *)&v24 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_timeStamp"];
    timeStamp = v5->_timeStamp;
    v5->_timeStamp = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_receiver"];
    receiver = v5->_receiver;
    v5->_receiver = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_transmitter"];
    transmitter = v5->_transmitter;
    v5->_transmitter = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"_bssid"];
    bssid = v5->_bssid;
    v5->_bssid = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"_rssi"];
    rssi = v5->_rssi;
    v5->_rssi = v21;

    v5->_frameType = [v4 decodeIntegerForKey:@"_frameType"];
    v5->_bandwidth = [v4 decodeIntegerForKey:@"_bandwidth"];
    v5->_channel = [v4 decodeIntegerForKey:@"_channel"];
    v5->_band = [v4 decodeIntegerForKey:@"_band"];
    v5->_rateMbps = [v4 decodeIntegerForKey:@"_rateMbps"];
    v5->_isLowConfidence = [v4 decodeIntegerForKey:@"_isLowConfidence"] != 0;
  }

  return v5;
}

@end