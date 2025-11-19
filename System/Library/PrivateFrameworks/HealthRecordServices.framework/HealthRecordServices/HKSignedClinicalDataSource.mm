@interface HKSignedClinicalDataSource
+ (id)sourceWithQRCodeValue:(id)a3 passcode:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataSource)init;
- (HKSignedClinicalDataSource)initWithCoder:(id)a3;
- (HKSignedClinicalDataSource)initWithFile:(id)a3 type:(int64_t)a4;
- (HKSignedClinicalDataSource)initWithQRRepresentation:(id)a3 passcode:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataSource

- (HKSignedClinicalDataSource)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSignedClinicalDataSource)initWithFile:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HKSignedClinicalDataSource;
  v7 = [(HKSignedClinicalDataSource *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    file = v7->_file;
    v7->_file = v8;

    v7->_type = a4;
  }

  return v7;
}

- (HKSignedClinicalDataSource)initWithQRRepresentation:(id)a3 passcode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKSignedClinicalDataSource;
  v8 = [(HKSignedClinicalDataSource *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    QRRepresentation = v8->_QRRepresentation;
    v8->_QRRepresentation = v9;

    v8->_type = [v6 sourceType];
    v11 = [v7 copy];
    passcode = v8->_passcode;
    v8->_passcode = v11;
  }

  return v8;
}

+ (id)sourceWithQRCodeValue:(id)a3 passcode:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  if ([v9 hk_isRewrittenHealthCardQRCodeURL])
  {
    v10 = [v9 fragment];

    if (v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [v9 fragment];
      [v11 stringWithFormat:@"%@%@", @"shc:/", v12];
    }

    else
    {
      v13 = [v9 path];
      v12 = [v13 substringFromIndex:{objc_msgSend(*MEMORY[0x277CCCD98], "length") + 2}];

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"shc:/", v12];
    }
    v14 = ;

    v7 = v14;
  }

  if (![v9 hk_isRewrittenEUDigitalCOVIDCertificateQRCodeURL])
  {
    goto LABEL_9;
  }

  v15 = [v9 fragment];

  if (!v15)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"invalid EU-DCC payload"];
LABEL_14:

    goto LABEL_15;
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = [v9 fragment];
  v18 = [v16 stringWithFormat:@"%@%@", @"HC1:", v17];

  v7 = [v18 stringByRemovingPercentEncoding];

  if (v7)
  {
LABEL_9:
    v19 = [HKSignedClinicalDataQRSegment segmentFromQRCodeValue:v7 error:a5];
    if (v19)
    {
      v20 = [HKSignedClinicalDataQRRepresentation representationWithQRSegment:v19];
      v15 = [[HKSignedClinicalDataSource alloc] initWithQRRepresentation:v20 passcode:v8];
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_14;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"could not reverse encoding of EU-DCC payload"];
  v15 = 0;
LABEL_15:

  return v15;
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
      v13 = 0;
LABEL_32:

      goto LABEL_33;
    }

    file = self->_file;
    v9 = [(HKSignedClinicalDataSource *)v7 file];
    if (file != v9)
    {
      v10 = [(HKSignedClinicalDataSource *)v7 file];
      if (!v10)
      {
        v13 = 0;
        goto LABEL_31;
      }

      v3 = v10;
      v11 = self->_file;
      v12 = [(HKSignedClinicalDataSource *)v7 file];
      if (![(HKSignedClinicalDataFile *)v11 isEqual:v12])
      {
        v13 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v37 = v12;
    }

    QRRepresentation = self->_QRRepresentation;
    v15 = [(HKSignedClinicalDataSource *)v7 QRRepresentation];
    if (QRRepresentation != v15)
    {
      v16 = [(HKSignedClinicalDataSource *)v7 QRRepresentation];
      if (!v16)
      {
        goto LABEL_27;
      }

      v17 = v16;
      v18 = self->_QRRepresentation;
      v19 = [(HKSignedClinicalDataSource *)v7 QRRepresentation];
      v20 = v18;
      v21 = v19;
      if (![(HKSignedClinicalDataQRRepresentation *)v20 isEqual:v19])
      {
        v13 = 0;
LABEL_23:

LABEL_24:
LABEL_28:
        v32 = file == v9;
        goto LABEL_29;
      }

      v35 = v21;
      v36 = v17;
    }

    passcode = self->_passcode;
    v23 = [(HKSignedClinicalDataSource *)v7 passcode];
    if (passcode == v23)
    {
      type = self->_type;
      v13 = type == [(HKSignedClinicalDataSource *)v7 type];

      v21 = v35;
      v17 = v36;
      if (QRRepresentation == v15)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v24 = [(HKSignedClinicalDataSource *)v7 passcode];
    if (v24)
    {
      v25 = v24;
      v34 = v3;
      v26 = self->_passcode;
      v27 = [(HKSignedClinicalDataSource *)v7 passcode];
      v28 = v26;
      v29 = v27;
      if ([(NSString *)v28 isEqual:?])
      {
        v30 = self->_type;
        v13 = v30 == [(HKSignedClinicalDataSource *)v7 type];

        if (QRRepresentation == v15)
        {

          v32 = file == v9;
          v3 = v34;
LABEL_29:
          v12 = v37;
          if (!v32)
          {
            goto LABEL_30;
          }

LABEL_31:

          goto LABEL_32;
        }

        v3 = v34;
        v21 = v35;
        v17 = v36;
        goto LABEL_23;
      }

      v3 = v34;
      if (QRRepresentation == v15)
      {
LABEL_35:
        v13 = 0;
        goto LABEL_24;
      }
    }

    else
    {

      if (QRRepresentation == v15)
      {
        goto LABEL_35;
      }
    }

LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  v13 = 1;
LABEL_33:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(HKSignedClinicalDataFile *)self->_file hash];
  v4 = [(HKSignedClinicalDataQRRepresentation *)self->_QRRepresentation hash]^ v3;
  return v4 ^ [(NSString *)self->_passcode hash]^ self->_type;
}

- (void)encodeWithCoder:(id)a3
{
  file = self->_file;
  v5 = a3;
  [v5 encodeObject:file forKey:@"file"];
  [v5 encodeObject:self->_QRRepresentation forKey:@"QRRepresentation"];
  [v5 encodeObject:self->_passcode forKey:@"passcode"];
  [v5 encodeInteger:self->_type forKey:@"type"];
}

- (HKSignedClinicalDataSource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file"];
  if (v5)
  {
    if ([v4 containsValueForKey:@"type"])
    {
      self = -[HKSignedClinicalDataSource initWithFile:type:](self, "initWithFile:type:", v5, [v4 decodeIntegerForKey:@"type"]);
      v6 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v6 = 0;
    }
  }

  else
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"QRRepresentation"];
    if (v7)
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];
      self = [(HKSignedClinicalDataSource *)self initWithQRRepresentation:v7 passcode:v8];

      v6 = self;
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [HKSignedClinicalDataSource initWithCoder:v9];
      }

      [v4 hrs_failWithCocoaInvalidValueError];
      v6 = 0;
    }
  }

  return v6;
}

@end