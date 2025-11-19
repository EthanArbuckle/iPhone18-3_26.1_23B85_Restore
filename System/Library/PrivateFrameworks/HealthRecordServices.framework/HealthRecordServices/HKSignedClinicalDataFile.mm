@interface HKSignedClinicalDataFile
+ (id)signedClinicalDataFileWithURL:(id)a3 sourceURL:(id)a4 receivedDate:(id)a5 countryOfOrigin:(id)a6 error:(id *)a7;
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataFile)init;
- (HKSignedClinicalDataFile)initWithCoder:(id)a3;
- (HKSignedClinicalDataFile)initWithFileURL:(id)a3 fileHandle:(id)a4 sourceURL:(id)a5 receivedDate:(id)a6 metadata:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKSignedClinicalDataFile)initWithFileURL:(id)a3 fileHandle:(id)a4 sourceURL:(id)a5 receivedDate:(id)a6 metadata:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HKSignedClinicalDataFile;
  v17 = [(HKSignedClinicalDataFile *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    fileURL = v17->_fileURL;
    v17->_fileURL = v18;

    v20 = [v13 copy];
    fileHandle = v17->_fileHandle;
    v17->_fileHandle = v20;

    v22 = [v14 copy];
    sourceURL = v17->_sourceURL;
    v17->_sourceURL = v22;

    v24 = [v15 copy];
    receivedDate = v17->_receivedDate;
    v17->_receivedDate = v24;

    v26 = [v16 copy];
    metadata = v17->_metadata;
    v17->_metadata = v26;
  }

  return v17;
}

+ (id)signedClinicalDataFileWithURL:(id)a3 sourceURL:(id)a4 receivedDate:(id)a5 countryOfOrigin:(id)a6 error:(id *)a7
{
  v25[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v12 error:a7];
  if (v16)
  {
    v24[0] = @"Filename";
    v17 = [v12 lastPathComponent];
    v18 = v17;
    v24[1] = @"CountryOfOrigin";
    v19 = *MEMORY[0x277CCBBC8];
    if (v15)
    {
      v19 = v15;
    }

    v25[0] = v17;
    v25[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

    v21 = [[a1 alloc] initWithFileURL:v12 fileHandle:v16 sourceURL:v13 receivedDate:v14 metadata:v20];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  fileURL = self->_fileURL;
  v5 = a3;
  [v5 encodeObject:fileURL forKey:@"FileURL"];
  [v5 encodeObject:self->_fileHandle forKey:@"FileHandle"];
  [v5 encodeObject:self->_sourceURL forKey:@"SourceURL"];
  [v5 encodeObject:self->_receivedDate forKey:@"ReceivedDate"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKSignedClinicalDataFile)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FileURL"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FileHandle"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReceivedDate"];
      if (v8)
      {
        v9 = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
        v10 = [v4 decodeObjectOfClasses:v9 forKey:@"Metadata"];

        if (v10)
        {
          self = [(HKSignedClinicalDataFile *)self initWithFileURL:v5 fileHandle:v6 sourceURL:v7 receivedDate:v8 metadata:v10];
          v11 = self;
        }

        else
        {
          [v4 hrs_failWithCocoaValueNotFoundError];
          v11 = 0;
        }
      }

      else
      {
        [v4 hrs_failWithCocoaValueNotFoundError];
        v11 = 0;
      }
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v11 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v11 = 0;
  }

  return v11;
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

    fileURL = self->_fileURL;
    v9 = [(HKSignedClinicalDataFile *)v7 fileURL];
    if (fileURL != v9)
    {
      v10 = [(HKSignedClinicalDataFile *)v7 fileURL];
      if (!v10)
      {
        LOBYTE(v13) = 0;
        goto LABEL_41;
      }

      v3 = v10;
      v11 = self->_fileURL;
      v12 = [(HKSignedClinicalDataFile *)v7 fileURL];
      if (![(NSURL *)v11 isEqual:v12])
      {
        LOBYTE(v13) = 0;
LABEL_40:

        goto LABEL_41;
      }

      v41 = v12;
    }

    sourceURL = self->_sourceURL;
    v15 = [(HKSignedClinicalDataFile *)v7 sourceURL];
    v42 = sourceURL;
    if (sourceURL != v15)
    {
      v16 = [(HKSignedClinicalDataFile *)v7 sourceURL];
      if (!v16)
      {
        LOBYTE(v13) = 0;
        goto LABEL_38;
      }

      v17 = v16;
      v18 = self->_sourceURL;
      v13 = [(HKSignedClinicalDataFile *)v7 sourceURL];
      if (([(NSURL *)v18 isEqual:v13]& 1) == 0)
      {

        LOBYTE(v13) = 0;
        goto LABEL_39;
      }

      v38 = v13;
      v39 = v17;
    }

    receivedDate = self->_receivedDate;
    v40 = [(HKSignedClinicalDataFile *)v7 receivedDate];
    if (receivedDate == v40)
    {
      v37 = v3;
    }

    else
    {
      v13 = [(HKSignedClinicalDataFile *)v7 receivedDate];
      if (!v13)
      {
        v31 = v38;
        v32 = v39;
        v30 = v40;
        goto LABEL_30;
      }

      v20 = self->_receivedDate;
      v21 = [(HKSignedClinicalDataFile *)v7 receivedDate];
      v22 = v20;
      v23 = v21;
      if (([(NSDate *)v22 isEqual:v21]& 1) == 0)
      {

        LOBYTE(v13) = 0;
        v29 = v42 == v15;
        goto LABEL_33;
      }

      v34 = v23;
      v36 = v13;
      v37 = v3;
    }

    metadata = self->_metadata;
    v25 = [(HKSignedClinicalDataFile *)v7 metadata];
    LOBYTE(v13) = metadata == v25;
    if (metadata != v25)
    {
      v26 = [(HKSignedClinicalDataFile *)v7 metadata];
      if (v26)
      {
        v27 = v26;
        v13 = self->_metadata;
        v28 = [(HKSignedClinicalDataFile *)v7 metadata];
        LOBYTE(v13) = [v13 isEqual:v28];

        if (receivedDate != v40)
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
        if (fileURL != v9)
        {
          goto LABEL_40;
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = v40;
    if (receivedDate == v40)
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
  v3 = [(NSURL *)self->_fileURL hash];
  v4 = [(NSURL *)self->_sourceURL hash]^ v3;
  v5 = [(NSDate *)self->_receivedDate hash];
  return v4 ^ v5 ^ [(NSDictionary *)self->_metadata hash];
}

@end