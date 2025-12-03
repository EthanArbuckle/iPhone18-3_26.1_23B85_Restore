@interface LACEnvironmentMechanismBiometry
- (BOOL)isEqual:(id)equal;
- (LACEnvironmentMechanismBiometry)initWithAvailabilityError:(id)error biometryType:(int64_t)type enrolled:(BOOL)enrolled lockedOut:(BOOL)out stateHash:(id)hash sensorInaccessible:(BOOL)inaccessible approvalState:(int64_t)state;
- (LACEnvironmentMechanismBiometry)initWithCoder:(id)coder;
- (id)descriptionDetails;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACEnvironmentMechanismBiometry

- (LACEnvironmentMechanismBiometry)initWithAvailabilityError:(id)error biometryType:(int64_t)type enrolled:(BOOL)enrolled lockedOut:(BOOL)out stateHash:(id)hash sensorInaccessible:(BOOL)inaccessible approvalState:(int64_t)state
{
  hashCopy = hash;
  errorCopy = error;
  v18 = NSLocalizedStringFromLACBiometryType(type);
  switch(type)
  {
    case 1:
      v19 = @"touchid";
      break;
    case 2:
      v19 = @"faceid";
      break;
    case 4:
      v19 = @"opticid";
      break;
    default:
      v19 = @"questionmark";
      break;
  }

  v22.receiver = self;
  v22.super_class = LACEnvironmentMechanismBiometry;
  v20 = [(LACEnvironmentMechanism *)&v22 initWithAvailabilityError:errorCopy localizedName:v18 iconSystemName:v19];

  if (v20)
  {
    v20->_biometryType = type;
    v20->_enrolled = enrolled;
    v20->_lockedOut = out;
    objc_storeStrong(&v20->_stateHash, hash);
    v20->_sensorInaccessible = inaccessible;
    v20->_approvalState = state;
  }

  return v20;
}

void __93__LACEnvironmentMechanismBiometry_environmentMechanismForUser_auditToken_dependencies_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) biometryType] != 2)
  {
    goto LABEL_6;
  }

  v2 = +[LACTCCManager sharedInstance];
  v3 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v3;
  v4 = [v2 authorizationStatusOfFaceIDServiceForAuditToken:v7];

  switch(v4)
  {
    case 0:
      v5 = &LACEnvironmentMechanismApprovalStateUnknown;
      break;
    case 1:
LABEL_6:
      v5 = &LACEnvironmentMechanismApprovalStateGranted;
      break;
    case 2:
      v5 = &LACEnvironmentMechanismApprovalStateDenied;
      break;
    default:
      return;
  }

  v6 = *v5;
}

- (void)encodeWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = LACEnvironmentMechanismBiometry;
  coderCopy = coder;
  [(LACEnvironmentMechanism *)&v17 encodeWithCoder:coderCopy];
  v5 = [(LACEnvironmentMechanismBiometry *)self biometryType:v17.receiver];
  v6 = NSStringFromSelector(sel_biometryType);
  [coderCopy encodeInteger:v5 forKey:v6];

  enrolled = [(LACEnvironmentMechanismBiometry *)self enrolled];
  v8 = NSStringFromSelector(sel_enrolled);
  [coderCopy encodeBool:enrolled forKey:v8];

  lockedOut = [(LACEnvironmentMechanismBiometry *)self lockedOut];
  v10 = NSStringFromSelector(sel_lockedOut);
  [coderCopy encodeBool:lockedOut forKey:v10];

  stateHash = [(LACEnvironmentMechanismBiometry *)self stateHash];
  v12 = NSStringFromSelector(sel_stateHash);
  [coderCopy encodeObject:stateHash forKey:v12];

  sensorInaccessible = [(LACEnvironmentMechanismBiometry *)self sensorInaccessible];
  v14 = NSStringFromSelector(sel_sensorInaccessible);
  [coderCopy encodeBool:sensorInaccessible forKey:v14];

  approvalState = [(LACEnvironmentMechanismBiometry *)self approvalState];
  v16 = NSStringFromSelector(sel_approvalState);
  [coderCopy encodeInt:approvalState forKey:v16];
}

- (LACEnvironmentMechanismBiometry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = NSStringFromSelector(sel_availabilityError);
  v17 = [coderCopy decodeObjectForKey:v20];
  v19 = NSStringFromSelector(sel_biometryType);
  v16 = [coderCopy decodeIntegerForKey:v19];
  v4 = NSStringFromSelector(sel_enrolled);
  v15 = [coderCopy decodeBoolForKey:v4];
  v5 = NSStringFromSelector(sel_lockedOut);
  v6 = [coderCopy decodeBoolForKey:v5];
  v7 = NSStringFromSelector(sel_stateHash);
  v8 = [coderCopy decodeObjectForKey:v7];
  v9 = NSStringFromSelector(sel_sensorInaccessible);
  v10 = [coderCopy decodeBoolForKey:v9];
  v11 = NSStringFromSelector(sel_approvalState);
  v12 = [coderCopy decodeIntForKey:v11];

  v13 = [(LACEnvironmentMechanismBiometry *)self initWithAvailabilityError:v17 biometryType:v16 enrolled:v15 lockedOut:v6 stateHash:v8 sensorInaccessible:v10 approvalState:v12];
  return v13;
}

- (id)descriptionDetails
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"biometryType: %d", -[LACEnvironmentMechanismBiometry biometryType](self, "biometryType")];
  [v3 addObject:v4];

  if (![(LACEnvironmentMechanismBiometry *)self enrolled])
  {
    [v3 addObject:@"not enrolled"];
  }

  if ([(LACEnvironmentMechanismBiometry *)self lockedOut])
  {
    [v3 addObject:@"locked out"];
  }

  if ([(LACEnvironmentMechanismBiometry *)self sensorInaccessible])
  {
    [v3 addObject:@"sensor inaccessible"];
  }

  if ([(LACEnvironmentMechanismBiometry *)self approvalState]!= 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = NSStringFromLACEnvironmentMechanismApprovalState([(LACEnvironmentMechanismBiometry *)self approvalState]);
    v7 = [v5 stringWithFormat:@"approvalState: %@", v6];
    [v3 addObject:v7];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v15) = 1;
    goto LABEL_13;
  }

  v18.receiver = self;
  v18.super_class = LACEnvironmentMechanismBiometry;
  if (![(LACEnvironmentMechanism *)&v18 isEqual:equalCopy]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v15) = 0;
    goto LABEL_13;
  }

  v5 = equalCopy;
  biometryType = [(LACEnvironmentMechanismBiometry *)self biometryType];
  if (biometryType != [(LACEnvironmentMechanismBiometry *)v5 biometryType])
  {
    goto LABEL_9;
  }

  enrolled = [(LACEnvironmentMechanismBiometry *)self enrolled];
  if (enrolled != [(LACEnvironmentMechanismBiometry *)v5 enrolled])
  {
    goto LABEL_9;
  }

  lockedOut = [(LACEnvironmentMechanismBiometry *)self lockedOut];
  if (lockedOut != [(LACEnvironmentMechanismBiometry *)v5 lockedOut])
  {
    goto LABEL_9;
  }

  stateHash = [(LACEnvironmentMechanismBiometry *)self stateHash];
  stateHash2 = [(LACEnvironmentMechanismBiometry *)v5 stateHash];
  v11 = stateHash2;
  if (stateHash == stateHash2)
  {

    goto LABEL_15;
  }

  stateHash3 = [(LACEnvironmentMechanismBiometry *)self stateHash];
  stateHash4 = [(LACEnvironmentMechanismBiometry *)v5 stateHash];
  v14 = [stateHash3 isEqualToData:stateHash4];

  if (v14)
  {
LABEL_15:
    sensorInaccessible = [(LACEnvironmentMechanismBiometry *)self sensorInaccessible];
    v15 = sensorInaccessible ^ [(LACEnvironmentMechanismBiometry *)v5 sensorInaccessible]^ 1;
    goto LABEL_10;
  }

LABEL_9:
  LOBYTE(v15) = 0;
LABEL_10:

LABEL_13:
  return v15;
}

@end