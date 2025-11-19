@interface HKSignedClinicalDataGroup
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataGroup)init;
- (HKSignedClinicalDataGroup)initWithCoder:(id)a3;
- (HKSignedClinicalDataGroup)initWithOptions:(unint64_t)a3 mainRecord:(id)a4 medicalRecords:(id)a5 clinicalRecords:(id)a6 QRRepresentation:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataGroup

- (HKSignedClinicalDataGroup)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSignedClinicalDataGroup)initWithOptions:(unint64_t)a3 mainRecord:(id)a4 medicalRecords:(id)a5 clinicalRecords:(id)a6 QRRepresentation:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = HKSignedClinicalDataGroup;
  v16 = [(HKSignedClinicalDataGroup *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_options = a3;
    v18 = [v12 copy];
    mainRecord = v17->_mainRecord;
    v17->_mainRecord = v18;

    v20 = [v13 copy];
    medicalRecords = v17->_medicalRecords;
    v17->_medicalRecords = v20;

    v22 = [v14 copy];
    clinicalRecords = v17->_clinicalRecords;
    v17->_clinicalRecords = v22;

    v24 = [v15 copy];
    QRRepresentation = v17->_QRRepresentation;
    v17->_QRRepresentation = v24;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (options = self->_options, options != [(HKSignedClinicalDataGroup *)v7 options]))
    {
      LOBYTE(v14) = 0;
LABEL_43:

      goto LABEL_44;
    }

    mainRecord = self->_mainRecord;
    v10 = [(HKSignedClinicalDataGroup *)v7 mainRecord];
    if (mainRecord != v10)
    {
      v11 = [(HKSignedClinicalDataGroup *)v7 mainRecord];
      if (!v11)
      {
        LOBYTE(v14) = 0;
        goto LABEL_42;
      }

      v3 = v11;
      v12 = self->_mainRecord;
      v13 = [(HKSignedClinicalDataGroup *)v7 mainRecord];
      if (![(HKSignedClinicalDataRecord *)v12 isEqual:v13])
      {
        LOBYTE(v14) = 0;
LABEL_41:

        goto LABEL_42;
      }

      v42 = v13;
    }

    medicalRecords = self->_medicalRecords;
    v16 = [(HKSignedClinicalDataGroup *)v7 medicalRecords];
    if (medicalRecords == v16)
    {
      v41 = medicalRecords;
    }

    else
    {
      v14 = [(HKSignedClinicalDataGroup *)v7 medicalRecords];
      if (!v14)
      {
        goto LABEL_39;
      }

      v41 = medicalRecords;
      v17 = self->_medicalRecords;
      v18 = [(HKSignedClinicalDataGroup *)v7 medicalRecords];
      if (![(NSArray *)v17 isEqualToArray:v18])
      {

        LOBYTE(v14) = 0;
        goto LABEL_40;
      }

      v38 = v18;
      v39 = v14;
    }

    clinicalRecords = self->_clinicalRecords;
    v40 = [(HKSignedClinicalDataGroup *)v7 clinicalRecords];
    if (clinicalRecords == v40)
    {
      v37 = v3;
    }

    else
    {
      v14 = [(HKSignedClinicalDataGroup *)v7 clinicalRecords];
      if (!v14)
      {
        v31 = v38;
        v32 = v39;
        v30 = v40;
        goto LABEL_31;
      }

      v20 = self->_clinicalRecords;
      v21 = [(HKSignedClinicalDataGroup *)v7 clinicalRecords];
      v22 = v20;
      v23 = v21;
      if (![(NSArray *)v22 isEqualToArray:v21])
      {

        LOBYTE(v14) = 0;
        v29 = v41 == v16;
        goto LABEL_34;
      }

      v34 = v23;
      v36 = v14;
      v37 = v3;
    }

    QRRepresentation = self->_QRRepresentation;
    v25 = [(HKSignedClinicalDataGroup *)v7 QRRepresentation];
    LOBYTE(v14) = QRRepresentation == v25;
    if (QRRepresentation != v25)
    {
      v26 = [(HKSignedClinicalDataGroup *)v7 QRRepresentation];
      if (v26)
      {
        v27 = v26;
        v14 = self->_QRRepresentation;
        v28 = [(HKSignedClinicalDataGroup *)v7 QRRepresentation];
        LOBYTE(v14) = [v14 isEqual:v28];

        if (clinicalRecords != v40)
        {
        }

        v29 = v41 == v16;
        v3 = v37;
LABEL_34:
        v32 = v39;
        if (!v29)
        {

LABEL_38:
        }

LABEL_39:

LABEL_40:
        v13 = v42;
        if (mainRecord != v10)
        {
          goto LABEL_41;
        }

LABEL_42:

        goto LABEL_43;
      }
    }

    v30 = v40;
    if (clinicalRecords == v40)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v41 == v16)
      {
        goto LABEL_39;
      }

LABEL_37:

      goto LABEL_38;
    }

    v3 = v37;
    v31 = v38;
    v32 = v39;
LABEL_31:

    if (v41 == v16)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  LOBYTE(v14) = 1;
LABEL_44:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  options = self->_options;
  v5 = a3;
  [v5 encodeInteger:options forKey:@"options"];
  [v5 encodeObject:self->_mainRecord forKey:@"mainRecord"];
  [v5 encodeObject:self->_medicalRecords forKey:@"medicalRecords"];
  [v5 encodeObject:self->_clinicalRecords forKey:@"clinicalRecords"];
  [v5 encodeObject:self->_QRRepresentation forKey:@"QRRepresentation"];
}

- (HKSignedClinicalDataGroup)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"options"])
  {
    v5 = [v4 decodeIntegerForKey:@"options"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mainRecord"];
    v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"medicalRecords"];
    v9 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"clinicalRecords"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"QRRepresentation"];
    self = [(HKSignedClinicalDataGroup *)self initWithOptions:v5 mainRecord:v6 medicalRecords:v8 clinicalRecords:v10 QRRepresentation:v11];

    v12 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v12 = 0;
  }

  return v12;
}

@end