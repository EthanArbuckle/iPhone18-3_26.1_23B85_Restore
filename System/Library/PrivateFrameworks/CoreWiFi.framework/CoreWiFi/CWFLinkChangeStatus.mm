@interface CWFLinkChangeStatus
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLinkChangeStatus:(id)a3;
- (CWFLinkChangeStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFLinkChangeStatus

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_linkDown)
  {
    if (self->_involuntaryLinkDown)
    {
      v4 = "down (involuntary)";
    }

    else
    {
      v4 = "down";
    }
  }

  else
  {
    v4 = "up";
  }

  interfaceName = self->_interfaceName;
  v6 = sub_1E0BCC248(self->_timestamp);
  v7 = [v3 stringWithFormat:@"link %s, intf=%@ timestamp=%@ reason=%d sub=%ld debounce=%d rssi=%ld noise=%ld cca=%lu", v4, interfaceName, v6, self->_reason, self->_subreason, self->_linkDownDebounceInProgress, self->_RSSI, self->_noise, self->_CCA];

  return v7;
}

- (BOOL)isEqualToLinkChangeStatus:(id)a3
{
  v7 = a3;
  interfaceName = self->_interfaceName;
  v9 = [v7 interfaceName];
  if (interfaceName != v9)
  {
    if (!self->_interfaceName || ([v7 interfaceName], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = 0;
      goto LABEL_30;
    }

    v3 = v10;
    v11 = self->_interfaceName;
    v4 = [v7 interfaceName];
    if (![(NSString *)v11 isEqual:v4])
    {
      v12 = 0;
LABEL_29:

      goto LABEL_30;
    }
  }

  timestamp = self->_timestamp;
  v14 = [v7 timestamp];
  if (timestamp != v14)
  {
    if (!self->_timestamp)
    {
      goto LABEL_24;
    }

    v15 = [v7 timestamp];
    if (!v15)
    {
LABEL_23:

      v12 = 0;
      goto LABEL_28;
    }

    v5 = v15;
    v16 = self->_timestamp;
    v17 = [v7 timestamp];
    v18 = v16;
    v19 = v17;
    if (![(NSDate *)v18 isEqual:v17])
    {
      v12 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v29 = v19;
  }

  linkDown = self->_linkDown;
  if (linkDown == [v7 isLinkDown])
  {
    involuntaryLinkDown = self->_involuntaryLinkDown;
    if (involuntaryLinkDown == [v7 isInvoluntaryLinkDown])
    {
      reason = self->_reason;
      if (reason == [v7 reason])
      {
        subreason = self->_subreason;
        if (subreason == [v7 subreason])
        {
          linkDownDebounceInProgress = self->_linkDownDebounceInProgress;
          if (linkDownDebounceInProgress == [v7 isLinkDownDebounceInProgress])
          {
            RSSI = self->_RSSI;
            if (RSSI == [v7 RSSI])
            {
              noise = self->_noise;
              if (noise == [v7 noise])
              {
                CCA = self->_CCA;
                v12 = CCA == [v7 CCA];
                v19 = v29;
                if (timestamp == v14)
                {
                  goto LABEL_27;
                }

                goto LABEL_26;
              }
            }
          }
        }
      }
    }
  }

  if (timestamp != v14)
  {

    goto LABEL_23;
  }

LABEL_24:
  v12 = 0;
LABEL_27:

LABEL_28:
  if (interfaceName != v9)
  {
    goto LABEL_29;
  }

LABEL_30:

  return v12;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFLinkChangeStatus *)self isEqualToLinkChangeStatus:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_interfaceName hash];
  v4 = [(NSDate *)self->_timestamp hash];
  v5 = veorq_s8(*&self->_subreason, *&self->_noise);
  return *&veor_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) ^ self->_linkDown ^ (self->_involuntaryLinkDown ^ self->_linkDownDebounceInProgress) & 1 ^ v3 ^ self->_reason ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFLinkChangeStatus allocWithZone:?]];
  [(CWFLinkChangeStatus *)v4 setInterfaceName:self->_interfaceName];
  [(CWFLinkChangeStatus *)v4 setLinkDown:self->_linkDown];
  [(CWFLinkChangeStatus *)v4 setInvoluntaryLinkDown:self->_involuntaryLinkDown];
  [(CWFLinkChangeStatus *)v4 setTimestamp:self->_timestamp];
  [(CWFLinkChangeStatus *)v4 setReason:self->_reason];
  [(CWFLinkChangeStatus *)v4 setSubreason:self->_subreason];
  [(CWFLinkChangeStatus *)v4 setLinkDownDebounceInProgress:self->_linkDownDebounceInProgress];
  [(CWFLinkChangeStatus *)v4 setRSSI:self->_RSSI];
  [(CWFLinkChangeStatus *)v4 setNoise:self->_noise];
  [(CWFLinkChangeStatus *)v4 setCCA:self->_CCA];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  interfaceName = self->_interfaceName;
  v5 = a3;
  [v5 encodeObject:interfaceName forKey:@"_interfaceName"];
  [v5 encodeObject:self->_timestamp forKey:@"_timestamp"];
  [v5 encodeBool:self->_linkDown forKey:@"_linkDown"];
  [v5 encodeBool:self->_involuntaryLinkDown forKey:@"_involuntaryLinkDown"];
  [v5 encodeInteger:self->_reason forKey:@"_reason"];
  [v5 encodeInteger:self->_subreason forKey:@"_subreason"];
  [v5 encodeBool:self->_linkDownDebounceInProgress forKey:@"_linkDownDebounceInProgress"];
  [v5 encodeInteger:self->_RSSI forKey:@"_RSSI"];
  [v5 encodeInteger:self->_noise forKey:@"_noise"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_CCA];
  [v5 encodeObject:v6 forKey:@"_CCA"];
}

- (CWFLinkChangeStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CWFLinkChangeStatus;
  v5 = [(CWFLinkChangeStatus *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v5->_linkDown = [v4 decodeBoolForKey:@"_linkDown"];
    v5->_involuntaryLinkDown = [v4 decodeBoolForKey:@"_involuntaryLinkDown"];
    v5->_reason = [v4 decodeIntegerForKey:@"_reason"];
    v5->_subreason = [v4 decodeIntegerForKey:@"_subreason"];
    v5->_linkDownDebounceInProgress = [v4 decodeBoolForKey:@"_linkDownDebounceInProgress"];
    v5->_RSSI = [v4 decodeIntegerForKey:@"_RSSI"];
    v5->_noise = [v4 decodeIntegerForKey:@"_noise"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_CCA"];
    v5->_CCA = [v10 unsignedIntegerValue];
  }

  return v5;
}

@end