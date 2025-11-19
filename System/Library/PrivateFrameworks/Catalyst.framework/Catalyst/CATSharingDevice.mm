@interface CATSharingDevice
+ (id)unlocalizedDescriptivePairingStateForPairingState:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDevice:(id)a3;
- (CATSharingDevice)initWithIdentifier:(id)a3 modelIdentifier:(id)a4 RSSI:(int64_t)a5 paired:(BOOL)a6 pairingState:(unint64_t)a7 detectionTime:(id)a8;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation CATSharingDevice

- (CATSharingDevice)initWithIdentifier:(id)a3 modelIdentifier:(id)a4 RSSI:(int64_t)a5 paired:(BOOL)a6 pairingState:(unint64_t)a7 detectionTime:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = CATSharingDevice;
  v18 = [(CATSharingDevice *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    v20 = [v16 copy];
    modelIdentifier = v19->_modelIdentifier;
    v19->_modelIdentifier = v20;

    v19->_paired = a6;
    v19->_RSSI = a5;
    v19->_pairingState = a7;
    objc_storeStrong(&v19->_detectionTime, a8);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v2 = [(CATSharingDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)debugDescription
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [(CATSharingDevice *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [(CATSharingDevice *)self modelIdentifier];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CATSharingDevice RSSI](self, "RSSI")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CATSharingDevice isPaired](self, "isPaired")}];
  v9 = [CATSharingDevice unlocalizedDescriptivePairingStateForPairingState:[(CATSharingDevice *)self pairingState]];
  v10 = [(CATSharingDevice *)self detectionTime];
  v11 = [(CATSharingDevice *)self context];
  v12 = [v14 stringWithFormat:@"<%@: %p> identifier: %@, modelIdentifier: %@, RSSI: %@, paired: %@, pairingState: %@, detectionTime: %@, context: %@", v3, self, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isEqualToDevice:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CATSharingDevice *)self identifier];
    v6 = [v5 UUIDString];
    v7 = [v4 identifier];
    v8 = [v7 UUIDString];
    if ([v6 isEqualToString:v8])
    {
      v9 = [(CATSharingDevice *)self modelIdentifier];
      v10 = [v4 modelIdentifier];
      v11 = [v9 isEqualToString:v10];
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

+ (id)unlocalizedDescriptivePairingStateForPairingState:(unint64_t)a3
{
  if (a3 >= 4)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v3 = [v4 stringWithFormat:@"Unknown pairingState: %@", v5];
  }

  else
  {
    v3 = off_278DA78E0[a3];
  }

  return v3;
}

@end