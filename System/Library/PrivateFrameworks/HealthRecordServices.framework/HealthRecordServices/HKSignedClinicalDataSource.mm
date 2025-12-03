@interface HKSignedClinicalDataSource
+ (id)sourceWithQRCodeValue:(id)value passcode:(id)passcode error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataSource)init;
- (HKSignedClinicalDataSource)initWithCoder:(id)coder;
- (HKSignedClinicalDataSource)initWithFile:(id)file type:(int64_t)type;
- (HKSignedClinicalDataSource)initWithQRRepresentation:(id)representation passcode:(id)passcode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKSignedClinicalDataSource)initWithFile:(id)file type:(int64_t)type
{
  fileCopy = file;
  v11.receiver = self;
  v11.super_class = HKSignedClinicalDataSource;
  v7 = [(HKSignedClinicalDataSource *)&v11 init];
  if (v7)
  {
    v8 = [fileCopy copy];
    file = v7->_file;
    v7->_file = v8;

    v7->_type = type;
  }

  return v7;
}

- (HKSignedClinicalDataSource)initWithQRRepresentation:(id)representation passcode:(id)passcode
{
  representationCopy = representation;
  passcodeCopy = passcode;
  v14.receiver = self;
  v14.super_class = HKSignedClinicalDataSource;
  v8 = [(HKSignedClinicalDataSource *)&v14 init];
  if (v8)
  {
    v9 = [representationCopy copy];
    QRRepresentation = v8->_QRRepresentation;
    v8->_QRRepresentation = v9;

    v8->_type = [representationCopy sourceType];
    v11 = [passcodeCopy copy];
    passcode = v8->_passcode;
    v8->_passcode = v11;
  }

  return v8;
}

+ (id)sourceWithQRCodeValue:(id)value passcode:(id)passcode error:(id *)error
{
  valueCopy = value;
  passcodeCopy = passcode;
  v9 = [MEMORY[0x277CBEBC0] URLWithString:valueCopy];
  if ([v9 hk_isRewrittenHealthCardQRCodeURL])
  {
    fragment = [v9 fragment];

    if (fragment)
    {
      v11 = MEMORY[0x277CCACA8];
      fragment2 = [v9 fragment];
      [v11 stringWithFormat:@"%@%@", @"shc:/", fragment2];
    }

    else
    {
      path = [v9 path];
      fragment2 = [path substringFromIndex:{objc_msgSend(*MEMORY[0x277CCCD98], "length") + 2}];

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"shc:/", fragment2];
    }
    v14 = ;

    valueCopy = v14;
  }

  if (![v9 hk_isRewrittenEUDigitalCOVIDCertificateQRCodeURL])
  {
    goto LABEL_9;
  }

  fragment3 = [v9 fragment];

  if (!fragment3)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"invalid EU-DCC payload"];
LABEL_14:

    goto LABEL_15;
  }

  v16 = MEMORY[0x277CCACA8];
  fragment4 = [v9 fragment];
  v18 = [v16 stringWithFormat:@"%@%@", @"HC1:", fragment4];

  valueCopy = [v18 stringByRemovingPercentEncoding];

  if (valueCopy)
  {
LABEL_9:
    v19 = [HKSignedClinicalDataQRSegment segmentFromQRCodeValue:valueCopy error:error];
    if (v19)
    {
      v20 = [HKSignedClinicalDataQRRepresentation representationWithQRSegment:v19];
      fragment3 = [[HKSignedClinicalDataSource alloc] initWithQRRepresentation:v20 passcode:passcodeCopy];
    }

    else
    {
      fragment3 = 0;
    }

    goto LABEL_14;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"could not reverse encoding of EU-DCC payload"];
  fragment3 = 0;
LABEL_15:

  return fragment3;
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
      v13 = 0;
LABEL_32:

      goto LABEL_33;
    }

    file = self->_file;
    file = [(HKSignedClinicalDataSource *)v7 file];
    if (file != file)
    {
      file2 = [(HKSignedClinicalDataSource *)v7 file];
      if (!file2)
      {
        v13 = 0;
        goto LABEL_31;
      }

      v3 = file2;
      v11 = self->_file;
      file3 = [(HKSignedClinicalDataSource *)v7 file];
      if (![(HKSignedClinicalDataFile *)v11 isEqual:file3])
      {
        v13 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v37 = file3;
    }

    QRRepresentation = self->_QRRepresentation;
    qRRepresentation = [(HKSignedClinicalDataSource *)v7 QRRepresentation];
    if (QRRepresentation != qRRepresentation)
    {
      qRRepresentation2 = [(HKSignedClinicalDataSource *)v7 QRRepresentation];
      if (!qRRepresentation2)
      {
        goto LABEL_27;
      }

      v17 = qRRepresentation2;
      v18 = self->_QRRepresentation;
      qRRepresentation3 = [(HKSignedClinicalDataSource *)v7 QRRepresentation];
      v20 = v18;
      v21 = qRRepresentation3;
      if (![(HKSignedClinicalDataQRRepresentation *)v20 isEqual:qRRepresentation3])
      {
        v13 = 0;
LABEL_23:

LABEL_24:
LABEL_28:
        v32 = file == file;
        goto LABEL_29;
      }

      v35 = v21;
      v36 = v17;
    }

    passcode = self->_passcode;
    passcode = [(HKSignedClinicalDataSource *)v7 passcode];
    if (passcode == passcode)
    {
      type = self->_type;
      v13 = type == [(HKSignedClinicalDataSource *)v7 type];

      v21 = v35;
      v17 = v36;
      if (QRRepresentation == qRRepresentation)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    passcode2 = [(HKSignedClinicalDataSource *)v7 passcode];
    if (passcode2)
    {
      v25 = passcode2;
      v34 = v3;
      v26 = self->_passcode;
      passcode3 = [(HKSignedClinicalDataSource *)v7 passcode];
      v28 = v26;
      v29 = passcode3;
      if ([(NSString *)v28 isEqual:?])
      {
        v30 = self->_type;
        v13 = v30 == [(HKSignedClinicalDataSource *)v7 type];

        if (QRRepresentation == qRRepresentation)
        {

          v32 = file == file;
          v3 = v34;
LABEL_29:
          file3 = v37;
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
      if (QRRepresentation == qRRepresentation)
      {
LABEL_35:
        v13 = 0;
        goto LABEL_24;
      }
    }

    else
    {

      if (QRRepresentation == qRRepresentation)
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

- (void)encodeWithCoder:(id)coder
{
  file = self->_file;
  coderCopy = coder;
  [coderCopy encodeObject:file forKey:@"file"];
  [coderCopy encodeObject:self->_QRRepresentation forKey:@"QRRepresentation"];
  [coderCopy encodeObject:self->_passcode forKey:@"passcode"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (HKSignedClinicalDataSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"file"];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"type"])
    {
      self = -[HKSignedClinicalDataSource initWithFile:type:](self, "initWithFile:type:", v5, [coderCopy decodeIntegerForKey:@"type"]);
      selfCopy2 = self;
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy2 = 0;
    }
  }

  else
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"QRRepresentation"];
    if (v7)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];
      self = [(HKSignedClinicalDataSource *)self initWithQRRepresentation:v7 passcode:v8];

      selfCopy2 = self;
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [HKSignedClinicalDataSource initWithCoder:v9];
      }

      [coderCopy hrs_failWithCocoaInvalidValueError];
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

@end