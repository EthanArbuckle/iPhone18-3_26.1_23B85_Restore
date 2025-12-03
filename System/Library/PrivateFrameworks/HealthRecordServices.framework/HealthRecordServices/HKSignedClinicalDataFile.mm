@interface HKSignedClinicalDataFile
+ (id)signedClinicalDataFileWithURL:(id)l sourceURL:(id)rL receivedDate:(id)date countryOfOrigin:(id)origin error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataFile)init;
- (HKSignedClinicalDataFile)initWithCoder:(id)coder;
- (HKSignedClinicalDataFile)initWithFileURL:(id)l fileHandle:(id)handle sourceURL:(id)rL receivedDate:(id)date metadata:(id)metadata;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSignedClinicalDataFile

- (HKSignedClinicalDataFile)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSignedClinicalDataFile)initWithFileURL:(id)l fileHandle:(id)handle sourceURL:(id)rL receivedDate:(id)date metadata:(id)metadata
{
  lCopy = l;
  handleCopy = handle;
  rLCopy = rL;
  dateCopy = date;
  metadataCopy = metadata;
  v29.receiver = self;
  v29.super_class = HKSignedClinicalDataFile;
  v17 = [(HKSignedClinicalDataFile *)&v29 init];
  if (v17)
  {
    v18 = [lCopy copy];
    fileURL = v17->_fileURL;
    v17->_fileURL = v18;

    v20 = [handleCopy copy];
    fileHandle = v17->_fileHandle;
    v17->_fileHandle = v20;

    v22 = [rLCopy copy];
    sourceURL = v17->_sourceURL;
    v17->_sourceURL = v22;

    v24 = [dateCopy copy];
    receivedDate = v17->_receivedDate;
    v17->_receivedDate = v24;

    v26 = [metadataCopy copy];
    metadata = v17->_metadata;
    v17->_metadata = v26;
  }

  return v17;
}

+ (id)signedClinicalDataFileWithURL:(id)l sourceURL:(id)rL receivedDate:(id)date countryOfOrigin:(id)origin error:(id *)error
{
  v25[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  dateCopy = date;
  originCopy = origin;
  v16 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:lCopy error:error];
  if (v16)
  {
    v24[0] = @"Filename";
    lastPathComponent = [lCopy lastPathComponent];
    v18 = lastPathComponent;
    v24[1] = @"CountryOfOrigin";
    v19 = *MEMORY[0x277CCBBC8];
    if (originCopy)
    {
      v19 = originCopy;
    }

    v25[0] = lastPathComponent;
    v25[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

    v21 = [[self alloc] initWithFileURL:lCopy fileHandle:v16 sourceURL:rLCopy receivedDate:dateCopy metadata:v20];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  fileURL = self->_fileURL;
  coderCopy = coder;
  [coderCopy encodeObject:fileURL forKey:@"FileURL"];
  [coderCopy encodeObject:self->_fileHandle forKey:@"FileHandle"];
  [coderCopy encodeObject:self->_sourceURL forKey:@"SourceURL"];
  [coderCopy encodeObject:self->_receivedDate forKey:@"ReceivedDate"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKSignedClinicalDataFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileURL"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileHandle"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReceivedDate"];
      if (v8)
      {
        hk_secureCodingClasses = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
        v10 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"Metadata"];

        if (v10)
        {
          self = [(HKSignedClinicalDataFile *)self initWithFileURL:v5 fileHandle:v6 sourceURL:v7 receivedDate:v8 metadata:v10];
          selfCopy = self;
        }

        else
        {
          [coderCopy hrs_failWithCocoaValueNotFoundError];
          selfCopy = 0;
        }
      }

      else
      {
        [coderCopy hrs_failWithCocoaValueNotFoundError];
        selfCopy = 0;
      }
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy = 0;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
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
      LOBYTE(sourceURL3) = 0;
LABEL_42:

      goto LABEL_43;
    }

    fileURL = self->_fileURL;
    fileURL = [(HKSignedClinicalDataFile *)v7 fileURL];
    if (fileURL != fileURL)
    {
      fileURL2 = [(HKSignedClinicalDataFile *)v7 fileURL];
      if (!fileURL2)
      {
        LOBYTE(sourceURL3) = 0;
        goto LABEL_41;
      }

      v3 = fileURL2;
      v11 = self->_fileURL;
      fileURL3 = [(HKSignedClinicalDataFile *)v7 fileURL];
      if (![(NSURL *)v11 isEqual:fileURL3])
      {
        LOBYTE(sourceURL3) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = fileURL3;
    }

    sourceURL = self->_sourceURL;
    sourceURL = [(HKSignedClinicalDataFile *)v7 sourceURL];
    v42 = sourceURL;
    if (sourceURL != sourceURL)
    {
      sourceURL2 = [(HKSignedClinicalDataFile *)v7 sourceURL];
      if (!sourceURL2)
      {
        LOBYTE(sourceURL3) = 0;
        goto LABEL_38;
      }

      v17 = sourceURL2;
      v18 = self->_sourceURL;
      sourceURL3 = [(HKSignedClinicalDataFile *)v7 sourceURL];
      if (([(NSURL *)v18 isEqual:sourceURL3]& 1) == 0)
      {

        LOBYTE(sourceURL3) = 0;
        goto LABEL_39;
      }

      v38 = sourceURL3;
      v39 = v17;
    }

    receivedDate = self->_receivedDate;
    receivedDate = [(HKSignedClinicalDataFile *)v7 receivedDate];
    if (receivedDate == receivedDate)
    {
      v37 = v3;
    }

    else
    {
      sourceURL3 = [(HKSignedClinicalDataFile *)v7 receivedDate];
      if (!sourceURL3)
      {
        v31 = v38;
        v32 = v39;
        v30 = receivedDate;
        goto LABEL_30;
      }

      v20 = self->_receivedDate;
      receivedDate2 = [(HKSignedClinicalDataFile *)v7 receivedDate];
      v22 = v20;
      v23 = receivedDate2;
      if (([(NSDate *)v22 isEqual:receivedDate2]& 1) == 0)
      {

        LOBYTE(sourceURL3) = 0;
        v29 = v42 == sourceURL;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = sourceURL3;
      v37 = v3;
    }

    metadata = self->_metadata;
    metadata = [(HKSignedClinicalDataFile *)v7 metadata];
    LOBYTE(sourceURL3) = metadata == metadata;
    if (metadata != metadata)
    {
      metadata2 = [(HKSignedClinicalDataFile *)v7 metadata];
      if (metadata2)
      {
        v27 = metadata2;
        sourceURL3 = self->_metadata;
        metadata3 = [(HKSignedClinicalDataFile *)v7 metadata];
        LOBYTE(sourceURL3) = [sourceURL3 isEqual:metadata3];

        if (receivedDate != receivedDate)
        {
        }

        v29 = v42 == sourceURL;
        v3 = v37;
LABEL_33:
        v32 = v39;
        if (!v29)
        {

LABEL_37:
        }

LABEL_38:

LABEL_39:
        fileURL3 = v41;
        if (fileURL != fileURL)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = receivedDate;
    if (receivedDate == receivedDate)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v42 == sourceURL)
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

    if (v42 == sourceURL)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  LOBYTE(sourceURL3) = 1;
LABEL_43:

  return sourceURL3;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_fileURL hash];
  v4 = [(NSURL *)self->_sourceURL hash]^ v3;
  v5 = [(NSDate *)self->_receivedDate hash];
  return v4 ^ v5 ^ [(NSDictionary *)self->_metadata hash];
}

@end