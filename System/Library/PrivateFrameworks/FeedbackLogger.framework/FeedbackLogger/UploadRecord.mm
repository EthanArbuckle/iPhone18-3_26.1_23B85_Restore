@interface UploadRecord
- (id)outcomeTelemetryDictionary;
@end

@implementation UploadRecord

- (id)outcomeTelemetryDictionary
{
  v26[5] = *MEMORY[0x277D85DE8];
  dateUploaded = [(UploadRecord *)self dateUploaded];
  v4 = dateUploaded;
  if (dateUploaded)
  {
    v5 = dateUploaded;
  }

  else
  {
    dateLastProcessed = [(UploadRecord *)self dateLastProcessed];
    v7 = dateLastProcessed;
    if (dateLastProcessed)
    {
      date = dateLastProcessed;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v5 = date;
  }

  dateCreated = [(UploadRecord *)self dateCreated];
  [dateCreated timeIntervalSinceDate:v5];
  v11 = v10;

  v12 = v11 / -3600;
  v13 = ([(UploadRecord *)self size]+ 1023) >> 10;
  uploadStatus = [(UploadRecord *)self uploadStatus];
  if (uploadStatus < 6)
  {
    v15 = uploadStatus + 1;
  }

  else
  {
    v15 = 999;
  }

  v25[0] = @"age";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  v26[0] = v16;
  v25[1] = @"bundle_id";
  applicationIdentifier = [(UploadRecord *)self applicationIdentifier];
  v18 = applicationIdentifier;
  v19 = &stru_285E18D78;
  if (applicationIdentifier)
  {
    v19 = applicationIdentifier;
  }

  v26[1] = v19;
  v26[2] = &unk_285E1AE80;
  v25[2] = @"category";
  v25[3] = @"outcome";
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v26[3] = v20;
  v25[4] = @"size";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v26[4] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end