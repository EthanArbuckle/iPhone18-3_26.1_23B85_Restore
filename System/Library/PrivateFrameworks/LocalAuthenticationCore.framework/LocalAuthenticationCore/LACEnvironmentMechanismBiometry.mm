@interface LACEnvironmentMechanismBiometry
- (BOOL)isEqual:(id)a3;
- (LACEnvironmentMechanismBiometry)initWithAvailabilityError:(id)a3 biometryType:(int64_t)a4 enrolled:(BOOL)a5 lockedOut:(BOOL)a6 stateHash:(id)a7 sensorInaccessible:(BOOL)a8 approvalState:(int64_t)a9;
- (LACEnvironmentMechanismBiometry)initWithCoder:(id)a3;
- (id)descriptionDetails;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACEnvironmentMechanismBiometry

- (LACEnvironmentMechanismBiometry)initWithAvailabilityError:(id)a3 biometryType:(int64_t)a4 enrolled:(BOOL)a5 lockedOut:(BOOL)a6 stateHash:(id)a7 sensorInaccessible:(BOOL)a8 approvalState:(int64_t)a9
{
  v16 = a7;
  v17 = a3;
  v18 = NSLocalizedStringFromLACBiometryType(a4);
  switch(a4)
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
  v20 = [(LACEnvironmentMechanism *)&v22 initWithAvailabilityError:v17 localizedName:v18 iconSystemName:v19];

  if (v20)
  {
    v20->_biometryType = a4;
    v20->_enrolled = a5;
    v20->_lockedOut = a6;
    objc_storeStrong(&v20->_stateHash, a7);
    v20->_sensorInaccessible = a8;
    v20->_approvalState = a9;
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

- (void)encodeWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = LACEnvironmentMechanismBiometry;
  v4 = a3;
  [(LACEnvironmentMechanism *)&v17 encodeWithCoder:v4];
  v5 = [(LACEnvironmentMechanismBiometry *)self biometryType:v17.receiver];
  v6 = NSStringFromSelector(sel_biometryType);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(LACEnvironmentMechanismBiometry *)self enrolled];
  v8 = NSStringFromSelector(sel_enrolled);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(LACEnvironmentMechanismBiometry *)self lockedOut];
  v10 = NSStringFromSelector(sel_lockedOut);
  [v4 encodeBool:v9 forKey:v10];

  v11 = [(LACEnvironmentMechanismBiometry *)self stateHash];
  v12 = NSStringFromSelector(sel_stateHash);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(LACEnvironmentMechanismBiometry *)self sensorInaccessible];
  v14 = NSStringFromSelector(sel_sensorInaccessible);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(LACEnvironmentMechanismBiometry *)self approvalState];
  v16 = NSStringFromSelector(sel_approvalState);
  [v4 encodeInt:v15 forKey:v16];
}

- (LACEnvironmentMechanismBiometry)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = NSStringFromSelector(sel_availabilityError);
  v17 = [v3 decodeObjectForKey:v20];
  v19 = NSStringFromSelector(sel_biometryType);
  v16 = [v3 decodeIntegerForKey:v19];
  v4 = NSStringFromSelector(sel_enrolled);
  v15 = [v3 decodeBoolForKey:v4];
  v5 = NSStringFromSelector(sel_lockedOut);
  v6 = [v3 decodeBoolForKey:v5];
  v7 = NSStringFromSelector(sel_stateHash);
  v8 = [v3 decodeObjectForKey:v7];
  v9 = NSStringFromSelector(sel_sensorInaccessible);
  v10 = [v3 decodeBoolForKey:v9];
  v11 = NSStringFromSelector(sel_approvalState);
  v12 = [v3 decodeIntForKey:v11];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v15) = 1;
    goto LABEL_13;
  }

  v18.receiver = self;
  v18.super_class = LACEnvironmentMechanismBiometry;
  if (![(LACEnvironmentMechanism *)&v18 isEqual:v4]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v15) = 0;
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [(LACEnvironmentMechanismBiometry *)self biometryType];
  if (v6 != [(LACEnvironmentMechanismBiometry *)v5 biometryType])
  {
    goto LABEL_9;
  }

  v7 = [(LACEnvironmentMechanismBiometry *)self enrolled];
  if (v7 != [(LACEnvironmentMechanismBiometry *)v5 enrolled])
  {
    goto LABEL_9;
  }

  v8 = [(LACEnvironmentMechanismBiometry *)self lockedOut];
  if (v8 != [(LACEnvironmentMechanismBiometry *)v5 lockedOut])
  {
    goto LABEL_9;
  }

  v9 = [(LACEnvironmentMechanismBiometry *)self stateHash];
  v10 = [(LACEnvironmentMechanismBiometry *)v5 stateHash];
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_15;
  }

  v12 = [(LACEnvironmentMechanismBiometry *)self stateHash];
  v13 = [(LACEnvironmentMechanismBiometry *)v5 stateHash];
  v14 = [v12 isEqualToData:v13];

  if (v14)
  {
LABEL_15:
    v17 = [(LACEnvironmentMechanismBiometry *)self sensorInaccessible];
    v15 = v17 ^ [(LACEnvironmentMechanismBiometry *)v5 sensorInaccessible]^ 1;
    goto LABEL_10;
  }

LABEL_9:
  LOBYTE(v15) = 0;
LABEL_10:

LABEL_13:
  return v15;
}

@end