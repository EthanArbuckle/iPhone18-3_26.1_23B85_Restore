@interface HKClinicalGatewayEndpointSchemaParameter
- (BOOL)isEqual:(id)equal;
- (BOOL)useWithQueryMode:(int64_t)mode;
- (HKClinicalGatewayEndpointSchemaParameter)init;
- (HKClinicalGatewayEndpointSchemaParameter)initWithCoder:(id)coder;
- (HKClinicalGatewayEndpointSchemaParameter)initWithParam:(id)param literal:(id)literal variable:(id)variable mode:(id)mode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKClinicalGatewayEndpointSchemaParameter)initWithParam:(id)param literal:(id)literal variable:(id)variable mode:(id)mode
{
  paramCopy = param;
  literalCopy = literal;
  variableCopy = variable;
  modeCopy = mode;
  v24.receiver = self;
  v24.super_class = HKClinicalGatewayEndpointSchemaParameter;
  v14 = [(HKClinicalGatewayEndpointSchemaParameter *)&v24 init];
  if (v14)
  {
    v15 = [paramCopy copy];
    param = v14->_param;
    v14->_param = v15;

    v17 = [literalCopy copy];
    literal = v14->_literal;
    v14->_literal = v17;

    v19 = [variableCopy copy];
    variable = v14->_variable;
    v14->_variable = v19;

    v21 = [modeCopy copy];
    mode = v14->_mode;
    v14->_mode = v21;
  }

  return v14;
}

- (BOOL)useWithQueryMode:(int64_t)mode
{
  v17 = *MEMORY[0x277D85DE8];
  if (mode)
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

          if (HKFHIRResourceQueryModeFromNSString(*(*(&v12 + 1) + 8 * i)) == mode)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(literal3) = 0;
LABEL_42:

      goto LABEL_43;
    }

    param = self->_param;
    param = [(HKClinicalGatewayEndpointSchemaParameter *)v7 param];
    if (param != param)
    {
      param2 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 param];
      if (!param2)
      {
        LOBYTE(literal3) = 0;
        goto LABEL_41;
      }

      v3 = param2;
      v11 = self->_param;
      param3 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 param];
      if (![(NSString *)v11 isEqualToString:param3])
      {
        LOBYTE(literal3) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = param3;
    }

    literal = self->_literal;
    literal = [(HKClinicalGatewayEndpointSchemaParameter *)v7 literal];
    v42 = literal;
    if (literal != literal)
    {
      literal2 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 literal];
      if (!literal2)
      {
        LOBYTE(literal3) = 0;
        goto LABEL_38;
      }

      v17 = literal2;
      v18 = self->_literal;
      literal3 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 literal];
      if (![(NSString *)v18 isEqualToString:literal3])
      {

        LOBYTE(literal3) = 0;
        goto LABEL_39;
      }

      v38 = literal3;
      v39 = v17;
    }

    variable = self->_variable;
    variable = [(HKClinicalGatewayEndpointSchemaParameter *)v7 variable];
    if (variable == variable)
    {
      v37 = v3;
    }

    else
    {
      literal3 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 variable];
      if (!literal3)
      {
        v31 = v38;
        v32 = v39;
        v30 = variable;
        goto LABEL_30;
      }

      v20 = self->_variable;
      variable2 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 variable];
      v22 = v20;
      v23 = variable2;
      if (![(NSString *)v22 isEqualToString:variable2])
      {

        LOBYTE(literal3) = 0;
        v29 = v42 == literal;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = literal3;
      v37 = v3;
    }

    mode = self->_mode;
    mode = [(HKClinicalGatewayEndpointSchemaParameter *)v7 mode];
    LOBYTE(literal3) = mode == mode;
    if (mode != mode)
    {
      mode2 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 mode];
      if (mode2)
      {
        v27 = mode2;
        literal3 = self->_mode;
        mode3 = [(HKClinicalGatewayEndpointSchemaParameter *)v7 mode];
        LOBYTE(literal3) = [literal3 isEqualToArray:mode3];

        if (variable != variable)
        {
        }

        v29 = v42 == literal;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        param3 = v41;
        if (param != param)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = variable;
    if (variable == variable)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == literal)
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

    if (v42 == literal)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(literal3) = 1;
LABEL_43:

  return literal3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_param hash];
  v4 = [(NSString *)self->_literal hash]^ v3;
  v5 = [(NSString *)self->_variable hash];
  return v4 ^ v5 ^ [(NSArray *)self->_mode hash];
}

- (void)encodeWithCoder:(id)coder
{
  param = self->_param;
  coderCopy = coder;
  [coderCopy encodeObject:param forKey:@"param"];
  [coderCopy encodeObject:self->_literal forKey:@"literal"];
  [coderCopy encodeObject:self->_variable forKey:@"variable"];
  [coderCopy encodeObject:self->_mode forKey:@"mode"];
}

- (HKClinicalGatewayEndpointSchemaParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"param"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"literal"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"variable"];
    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mode"];
    self = [(HKClinicalGatewayEndpointSchemaParameter *)self initWithParam:v5 literal:v6 variable:v7 mode:v8];

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end