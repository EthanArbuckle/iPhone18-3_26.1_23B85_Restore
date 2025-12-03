@interface CATSharingDevice
+ (id)unlocalizedDescriptivePairingStateForPairingState:(unint64_t)state;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDevice:(id)device;
- (CATSharingDevice)initWithIdentifier:(id)identifier modelIdentifier:(id)modelIdentifier RSSI:(int64_t)i paired:(BOOL)paired pairingState:(unint64_t)state detectionTime:(id)time;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation CATSharingDevice

- (CATSharingDevice)initWithIdentifier:(id)identifier modelIdentifier:(id)modelIdentifier RSSI:(int64_t)i paired:(BOOL)paired pairingState:(unint64_t)state detectionTime:(id)time
{
  identifierCopy = identifier;
  modelIdentifierCopy = modelIdentifier;
  timeCopy = time;
  v23.receiver = self;
  v23.super_class = CATSharingDevice;
  v18 = [(CATSharingDevice *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    v20 = [modelIdentifierCopy copy];
    modelIdentifier = v19->_modelIdentifier;
    v19->_modelIdentifier = v20;

    v19->_paired = paired;
    v19->_RSSI = i;
    v19->_pairingState = state;
    objc_storeStrong(&v19->_detectionTime, time);
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [(CATSharingDevice *)self isEqualToDevice:v6];
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(CATSharingDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)debugDescription
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  identifier = [(CATSharingDevice *)self identifier];
  uUIDString = [identifier UUIDString];
  modelIdentifier = [(CATSharingDevice *)self modelIdentifier];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CATSharingDevice RSSI](self, "RSSI")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CATSharingDevice isPaired](self, "isPaired")}];
  v9 = [CATSharingDevice unlocalizedDescriptivePairingStateForPairingState:[(CATSharingDevice *)self pairingState]];
  detectionTime = [(CATSharingDevice *)self detectionTime];
  context = [(CATSharingDevice *)self context];
  v12 = [v14 stringWithFormat:@"<%@: %p> identifier: %@, modelIdentifier: %@, RSSI: %@, paired: %@, pairingState: %@, detectionTime: %@, context: %@", v3, self, uUIDString, modelIdentifier, v7, v8, v9, detectionTime, context];

  return v12;
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy && [deviceCopy isMemberOfClass:objc_opt_class()])
  {
    identifier = [(CATSharingDevice *)self identifier];
    uUIDString = [identifier UUIDString];
    identifier2 = [deviceCopy identifier];
    uUIDString2 = [identifier2 UUIDString];
    if ([uUIDString isEqualToString:uUIDString2])
    {
      modelIdentifier = [(CATSharingDevice *)self modelIdentifier];
      modelIdentifier2 = [deviceCopy modelIdentifier];
      v11 = [modelIdentifier isEqualToString:modelIdentifier2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)unlocalizedDescriptivePairingStateForPairingState:(unint64_t)state
{
  if (state >= 4)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v3 = [v4 stringWithFormat:@"Unknown pairingState: %@", v5];
  }

  else
  {
    v3 = off_278DA78E0[state];
  }

  return v3;
}

@end