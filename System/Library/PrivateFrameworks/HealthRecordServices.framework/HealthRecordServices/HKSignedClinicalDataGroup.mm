@interface HKSignedClinicalDataGroup
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataGroup)init;
- (HKSignedClinicalDataGroup)initWithCoder:(id)coder;
- (HKSignedClinicalDataGroup)initWithOptions:(unint64_t)options mainRecord:(id)record medicalRecords:(id)records clinicalRecords:(id)clinicalRecords QRRepresentation:(id)representation;
- (void)encodeWithCoder:(id)coder;
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

- (HKSignedClinicalDataGroup)initWithOptions:(unint64_t)options mainRecord:(id)record medicalRecords:(id)records clinicalRecords:(id)clinicalRecords QRRepresentation:(id)representation
{
  recordCopy = record;
  recordsCopy = records;
  clinicalRecordsCopy = clinicalRecords;
  representationCopy = representation;
  v27.receiver = self;
  v27.super_class = HKSignedClinicalDataGroup;
  v16 = [(HKSignedClinicalDataGroup *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_options = options;
    v18 = [recordCopy copy];
    mainRecord = v17->_mainRecord;
    v17->_mainRecord = v18;

    v20 = [recordsCopy copy];
    medicalRecords = v17->_medicalRecords;
    v17->_medicalRecords = v20;

    v22 = [clinicalRecordsCopy copy];
    clinicalRecords = v17->_clinicalRecords;
    v17->_clinicalRecords = v22;

    v24 = [representationCopy copy];
    QRRepresentation = v17->_QRRepresentation;
    v17->_QRRepresentation = v24;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (options = self->_options, options != [(HKSignedClinicalDataGroup *)v7 options]))
    {
      LOBYTE(medicalRecords2) = 0;
LABEL_43:

      goto LABEL_44;
    }

    mainRecord = self->_mainRecord;
    mainRecord = [(HKSignedClinicalDataGroup *)v7 mainRecord];
    if (mainRecord != mainRecord)
    {
      mainRecord2 = [(HKSignedClinicalDataGroup *)v7 mainRecord];
      if (!mainRecord2)
      {
        LOBYTE(medicalRecords2) = 0;
        goto LABEL_42;
      }

      v3 = mainRecord2;
      v12 = self->_mainRecord;
      mainRecord3 = [(HKSignedClinicalDataGroup *)v7 mainRecord];
      if (![(HKSignedClinicalDataRecord *)v12 isEqual:mainRecord3])
      {
        LOBYTE(medicalRecords2) = 0;
LABEL_41:

        goto LABEL_42;
      }

      v42 = mainRecord3;
    }

    medicalRecords = self->_medicalRecords;
    medicalRecords = [(HKSignedClinicalDataGroup *)v7 medicalRecords];
    if (medicalRecords == medicalRecords)
    {
      v41 = medicalRecords;
    }

    else
    {
      medicalRecords2 = [(HKSignedClinicalDataGroup *)v7 medicalRecords];
      if (!medicalRecords2)
      {
        goto LABEL_39;
      }

      v41 = medicalRecords;
      v17 = self->_medicalRecords;
      medicalRecords3 = [(HKSignedClinicalDataGroup *)v7 medicalRecords];
      if (![(NSArray *)v17 isEqualToArray:medicalRecords3])
      {

        LOBYTE(medicalRecords2) = 0;
        goto LABEL_40;
      }

      v38 = medicalRecords3;
      v39 = medicalRecords2;
    }

    clinicalRecords = self->_clinicalRecords;
    clinicalRecords = [(HKSignedClinicalDataGroup *)v7 clinicalRecords];
    if (clinicalRecords == clinicalRecords)
    {
      v37 = v3;
    }

    else
    {
      medicalRecords2 = [(HKSignedClinicalDataGroup *)v7 clinicalRecords];
      if (!medicalRecords2)
      {
        v31 = v38;
        v32 = v39;
        v30 = clinicalRecords;
        goto LABEL_31;
      }

      v20 = self->_clinicalRecords;
      clinicalRecords2 = [(HKSignedClinicalDataGroup *)v7 clinicalRecords];
      v22 = v20;
      v23 = clinicalRecords2;
      if (![(NSArray *)v22 isEqualToArray:clinicalRecords2])
      {

        LOBYTE(medicalRecords2) = 0;
        v29 = v41 == medicalRecords;
        goto LABEL_34;
      }

      v34 = v23;
      v36 = medicalRecords2;
      v37 = v3;
    }

    QRRepresentation = self->_QRRepresentation;
    qRRepresentation = [(HKSignedClinicalDataGroup *)v7 QRRepresentation];
    LOBYTE(medicalRecords2) = QRRepresentation == qRRepresentation;
    if (QRRepresentation != qRRepresentation)
    {
      qRRepresentation2 = [(HKSignedClinicalDataGroup *)v7 QRRepresentation];
      if (qRRepresentation2)
      {
        v27 = qRRepresentation2;
        medicalRecords2 = self->_QRRepresentation;
        qRRepresentation3 = [(HKSignedClinicalDataGroup *)v7 QRRepresentation];
        LOBYTE(medicalRecords2) = [medicalRecords2 isEqual:qRRepresentation3];

        if (clinicalRecords != clinicalRecords)
        {
        }

        v29 = v41 == medicalRecords;
        v3 = v37;
LABEL_34:
        v32 = v39;
        if (!v29)
        {

LABEL_38:
        }

LABEL_39:

LABEL_40:
        mainRecord3 = v42;
        if (mainRecord != mainRecord)
        {
          goto LABEL_41;
        }

LABEL_42:

        goto LABEL_43;
      }
    }

    v30 = clinicalRecords;
    if (clinicalRecords == clinicalRecords)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v41 == medicalRecords)
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

    if (v41 == medicalRecords)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  LOBYTE(medicalRecords2) = 1;
LABEL_44:

  return medicalRecords2;
}

- (void)encodeWithCoder:(id)coder
{
  options = self->_options;
  coderCopy = coder;
  [coderCopy encodeInteger:options forKey:@"options"];
  [coderCopy encodeObject:self->_mainRecord forKey:@"mainRecord"];
  [coderCopy encodeObject:self->_medicalRecords forKey:@"medicalRecords"];
  [coderCopy encodeObject:self->_clinicalRecords forKey:@"clinicalRecords"];
  [coderCopy encodeObject:self->_QRRepresentation forKey:@"QRRepresentation"];
}

- (HKSignedClinicalDataGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"options"])
  {
    v5 = [coderCopy decodeIntegerForKey:@"options"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mainRecord"];
    v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"medicalRecords"];
    v9 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"clinicalRecords"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"QRRepresentation"];
    self = [(HKSignedClinicalDataGroup *)self initWithOptions:v5 mainRecord:v6 medicalRecords:v8 clinicalRecords:v10 QRRepresentation:v11];

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