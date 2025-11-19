@interface HKClinicalGatewayEndpointSchemaParameter
- (BOOL)isEqual:(id)a3;
- (BOOL)useWithQueryMode:(int64_t)a3;
- (HKClinicalGatewayEndpointSchemaParameter)init;
- (HKClinicalGatewayEndpointSchemaParameter)initWithCoder:(id)a3;
- (HKClinicalGatewayEndpointSchemaParameter)initWithParam:(id)a3 literal:(id)a4 variable:(id)a5 mode:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalGatewayEndpointSchemaParameter

- (HKClinicalGatewayEndpointSchemaParameter)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalGatewayEndpointSchemaParameter)initWithParam:(id)a3 literal:(id)a4 variable:(id)a5 mode:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKClinicalGatewayEndpointSchemaParameter;
  v14 = [(HKClinicalGatewayEndpointSchemaParameter *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    param = v14->_param;
    v14->_param = v15;

    v17 = [v11 copy];
    literal = v14->_literal;
    v14->_literal = v17;

    v19 = [v12 copy];
    variable = v14->_variable;
    v14->_variable = v19;

    v21 = [v13 copy];
    mode = v14->_mode;
    v14->_mode = v21;
  }

  return v14;
}

- (BOOL)useWithQueryMode:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_mode;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (HKFHIRResourceQueryModeFromNSString(*(*(&v12 + 1) + 8 * i)) == a3)
          {
            v9 = 1;
            goto LABEL_12;
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v13) = 0;
LABEL_42:

      goto LABEL_43;
    }

    param = self->_param;
    v9 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 param];
    if (param != v9)
    {
      v10 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 param];
      if (!v10)
      {
        LOBYTE(v13) = 0;
        goto LABEL_41;
      }

      v3 = v10;
      v11 = self->_param;
      v12 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 param];
      if (![(NSString *)v11 isEqualToString:v12])
      {
        LOBYTE(v13) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = v12;
    }

    literal = self->_literal;
    v15 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 literal];
    v42 = literal;
    if (literal != v15)
    {
      v16 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 literal];
      if (!v16)
      {
        LOBYTE(v13) = 0;
        goto LABEL_38;
      }

      v17 = v16;
      v18 = self->_literal;
      v13 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 literal];
      if (![(NSString *)v18 isEqualToString:v13])
      {

        LOBYTE(v13) = 0;
        goto LABEL_39;
      }

      v38 = v13;
      v39 = v17;
    }

    variable = self->_variable;
    v40 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 variable];
    if (variable == v40)
    {
      v37 = v3;
    }

    else
    {
      v13 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 variable];
      if (!v13)
      {
        v31 = v38;
        v32 = v39;
        v30 = v40;
        goto LABEL_30;
      }

      v20 = self->_variable;
      v21 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 variable];
      v22 = v20;
      v23 = v21;
      if (![(NSString *)v22 isEqualToString:v21])
      {

        LOBYTE(v13) = 0;
        v29 = v42 == v15;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = v13;
      v37 = v3;
    }

    mode = self->_mode;
    v25 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 mode];
    LOBYTE(v13) = mode == v25;
    if (mode != v25)
    {
      v26 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 mode];
      if (v26)
      {
        v27 = v26;
        v13 = self->_mode;
        v28 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 mode];
        LOBYTE(v13) = [v13 isEqualToArray:v28];

        if (variable != v40)
        {
        }

        v29 = v42 == v15;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        v12 = v41;
        if (param != v9)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = v40;
    if (variable == v40)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == v15)
      {
        goto LABEL_38;
      }

LABEL_36:

      goto LABEL_37;
    }

    v3 = v37;
    v31 = v38;
    v32 = v39;
LABEL_30:

    if (v42 == v15)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(v13) = 1;
LABEL_43:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_param hash];
  v4 = [(NSString *)self->_literal hash]^ v3;
  v5 = [(NSString *)self->_variable hash];
  return v4 ^ v5 ^ [(NSArray *)self->_mode hash];
}

- (void)encodeWithCoder:(id)a3
{
  param = self->_param;
  v5 = a3;
  [v5 encodeObject:param forKey:@"param"];
  [v5 encodeObject:self->_literal forKey:@"literal"];
  [v5 encodeObject:self->_variable forKey:@"variable"];
  [v5 encodeObject:self->_mode forKey:@"mode"];
}

- (HKClinicalGatewayEndpointSchemaParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"param"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"literal"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"variable"];
    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mode"];
    self = [(HKClinicalGatewayEndpointSchemaParameter *)self initWithParam:v5 literal:v6 variable:v7 mode:v8];

    v9 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v9 = 0;
  }

  return v9;
}

@end