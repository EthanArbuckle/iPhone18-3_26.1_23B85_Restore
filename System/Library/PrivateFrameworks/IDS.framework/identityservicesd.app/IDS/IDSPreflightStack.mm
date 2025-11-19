@interface IDSPreflightStack
- (BOOL)containsMechanisms;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesIMSI:(id)a3 PLMN:(id)a4;
- (IDSPreflightStack)initWithIMSI:(id)a3 PLMN:(id)a4 validationMechanisms:(id)a5;
- (id)description;
- (id)preflightStackByPoppingMechanism;
- (id)topMechanism;
- (unint64_t)hash;
@end

@implementation IDSPreflightStack

- (IDSPreflightStack)initWithIMSI:(id)a3 PLMN:(id)a4 validationMechanisms:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = IDSPreflightStack;
  v11 = [(IDSPreflightStack *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    IMSI = v11->_IMSI;
    v11->_IMSI = v12;

    v14 = [v9 copy];
    PLMN = v11->_PLMN;
    v11->_PLMN = v14;

    v16 = [v10 copy];
    validationMechanisms = v11->_validationMechanisms;
    v11->_validationMechanisms = v16;
  }

  return v11;
}

- (BOOL)matchesIMSI:(id)a3 PLMN:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IDSPreflightStack *)self IMSI];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v10 = [(IDSPreflightStack *)self PLMN];
    v11 = [v10 isEqualToString:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)containsMechanisms
{
  v2 = [(IDSPreflightStack *)self validationMechanisms];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)topMechanism
{
  v2 = [(IDSPreflightStack *)self validationMechanisms];
  v3 = [v2 firstObject];

  return v3;
}

- (id)preflightStackByPoppingMechanism
{
  v3 = [(IDSPreflightStack *)self validationMechanisms];
  v4 = [v3 mutableCopy];

  if ([v4 count])
  {
    [v4 removeFirstObject];
  }

  v5 = [IDSPreflightStack alloc];
  v6 = [(IDSPreflightStack *)self IMSI];
  v7 = [(IDSPreflightStack *)self PLMN];
  v8 = [(IDSPreflightStack *)v5 initWithIMSI:v6 PLMN:v7 validationMechanisms:v4];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IDSPreflightStack *)self IMSI];
    v7 = [v5 IMSI];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(IDSPreflightStack *)self IMSI];
      v9 = [v5 IMSI];
      v10 = [v8 isEqual:v9];
    }

    v12 = [(IDSPreflightStack *)self PLMN];
    v13 = [v5 PLMN];
    if (v12 == v13)
    {
      v16 = 1;
    }

    else
    {
      v14 = [(IDSPreflightStack *)self PLMN];
      v15 = [v5 PLMN];
      v16 = [v14 isEqual:v15];
    }

    v17 = [(IDSPreflightStack *)self validationMechanisms];
    v18 = [v5 validationMechanisms];
    if (v17 == v18)
    {
      v21 = 1;
    }

    else
    {
      v19 = [(IDSPreflightStack *)self validationMechanisms];
      v20 = [v5 validationMechanisms];
      v21 = [v19 isEqual:v20];
    }

    v11 = v10 & v16 & v21;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(IDSPreflightStack *)self IMSI];
  v4 = [v3 hash];
  v5 = [(IDSPreflightStack *)self PLMN];
  v6 = [v5 hash] ^ v4;
  v7 = [(IDSPreflightStack *)self validationMechanisms];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = [(IDSPreflightStack *)self IMSI];
  v4 = [(IDSPreflightStack *)self PLMN];
  v5 = [(IDSPreflightStack *)self validationMechanisms];
  v6 = [NSString stringWithFormat:@"IDSPreflightStack { IMSI: %@, PLMN: %@, mechanisms: %@ }", v3, v4, v5];

  return v6;
}

@end