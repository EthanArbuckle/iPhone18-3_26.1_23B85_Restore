@interface CWFLinkChangeStatus
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLinkChangeStatus:(id)status;
- (CWFLinkChangeStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqualToLinkChangeStatus:(id)status
{
  statusCopy = status;
  interfaceName = self->_interfaceName;
  interfaceName = [statusCopy interfaceName];
  if (interfaceName != interfaceName)
  {
    if (!self->_interfaceName || ([statusCopy interfaceName], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = 0;
      goto LABEL_30;
    }

    v3 = v10;
    v11 = self->_interfaceName;
    interfaceName2 = [statusCopy interfaceName];
    if (![(NSString *)v11 isEqual:interfaceName2])
    {
      v12 = 0;
LABEL_29:

      goto LABEL_30;
    }
  }

  timestamp = self->_timestamp;
  timestamp = [statusCopy timestamp];
  if (timestamp != timestamp)
  {
    if (!self->_timestamp)
    {
      goto LABEL_24;
    }

    timestamp2 = [statusCopy timestamp];
    if (!timestamp2)
    {
LABEL_23:

      v12 = 0;
      goto LABEL_28;
    }

    v5 = timestamp2;
    v16 = self->_timestamp;
    timestamp3 = [statusCopy timestamp];
    v18 = v16;
    v19 = timestamp3;
    if (![(NSDate *)v18 isEqual:timestamp3])
    {
      v12 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v29 = v19;
  }

  linkDown = self->_linkDown;
  if (linkDown == [statusCopy isLinkDown])
  {
    involuntaryLinkDown = self->_involuntaryLinkDown;
    if (involuntaryLinkDown == [statusCopy isInvoluntaryLinkDown])
    {
      reason = self->_reason;
      if (reason == [statusCopy reason])
      {
        subreason = self->_subreason;
        if (subreason == [statusCopy subreason])
        {
          linkDownDebounceInProgress = self->_linkDownDebounceInProgress;
          if (linkDownDebounceInProgress == [statusCopy isLinkDownDebounceInProgress])
          {
            RSSI = self->_RSSI;
            if (RSSI == [statusCopy RSSI])
            {
              noise = self->_noise;
              if (noise == [statusCopy noise])
              {
                CCA = self->_CCA;
                v12 = CCA == [statusCopy CCA];
                v19 = v29;
                if (timestamp == timestamp)
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

  if (timestamp != timestamp)
  {

    goto LABEL_23;
  }

LABEL_24:
  v12 = 0;
LABEL_27:

LABEL_28:
  if (interfaceName != interfaceName)
  {
    goto LABEL_29;
  }

LABEL_30:

  return v12;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFLinkChangeStatus *)self isEqualToLinkChangeStatus:v5];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  interfaceName = self->_interfaceName;
  coderCopy = coder;
  [coderCopy encodeObject:interfaceName forKey:@"_interfaceName"];
  [coderCopy encodeObject:self->_timestamp forKey:@"_timestamp"];
  [coderCopy encodeBool:self->_linkDown forKey:@"_linkDown"];
  [coderCopy encodeBool:self->_involuntaryLinkDown forKey:@"_involuntaryLinkDown"];
  [coderCopy encodeInteger:self->_reason forKey:@"_reason"];
  [coderCopy encodeInteger:self->_subreason forKey:@"_subreason"];
  [coderCopy encodeBool:self->_linkDownDebounceInProgress forKey:@"_linkDownDebounceInProgress"];
  [coderCopy encodeInteger:self->_RSSI forKey:@"_RSSI"];
  [coderCopy encodeInteger:self->_noise forKey:@"_noise"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_CCA];
  [coderCopy encodeObject:v6 forKey:@"_CCA"];
}

- (CWFLinkChangeStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CWFLinkChangeStatus;
  v5 = [(CWFLinkChangeStatus *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v5->_linkDown = [coderCopy decodeBoolForKey:@"_linkDown"];
    v5->_involuntaryLinkDown = [coderCopy decodeBoolForKey:@"_involuntaryLinkDown"];
    v5->_reason = [coderCopy decodeIntegerForKey:@"_reason"];
    v5->_subreason = [coderCopy decodeIntegerForKey:@"_subreason"];
    v5->_linkDownDebounceInProgress = [coderCopy decodeBoolForKey:@"_linkDownDebounceInProgress"];
    v5->_RSSI = [coderCopy decodeIntegerForKey:@"_RSSI"];
    v5->_noise = [coderCopy decodeIntegerForKey:@"_noise"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_CCA"];
    v5->_CCA = [v10 unsignedIntegerValue];
  }

  return v5;
}

@end