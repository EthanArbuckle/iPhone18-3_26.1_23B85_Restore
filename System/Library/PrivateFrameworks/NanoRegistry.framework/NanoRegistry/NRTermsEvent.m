@interface NRTermsEvent
+ (id)digestFromData:(id)a3;
+ (id)eventWithProtobuf:(id)a3;
+ (id)loadTermsWithPath:(id)a3;
+ (id)pathToTermsCache;
+ (id)pathToTermsWithDigest:(uint64_t)a1;
+ (uint64_t)shouldAllowArchivingOfTermsTextToFile;
- (BOOL)isTermsAlreadyArchived;
- (NRTermsEvent)initWithCoder:(id)a3;
- (NRTermsEvent)initWithDeviceID:(id)a3;
- (id)description;
- (id)termsText;
- (void)_setEventType:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)saveEventTextToFileIfNeeded;
- (void)saveTerms;
- (void)setAcknowledgedDeviceName:(id)a3;
- (void)setAcknowledgedDeviceSerialNumber:(id)a3;
- (void)setDisplayDeviceName:(id)a3;
- (void)setDisplayDeviceSerialNumber:(id)a3;
- (void)setDocumentationID:(id)a3;
- (void)setEventDate:(double)a3;
- (void)setLoggingProcessName:(id)a3;
- (void)setPresentationReason:(id)a3;
- (void)setTermsText:(id)a3;
- (void)updateEventDate;
@end

@implementation NRTermsEvent

+ (id)pathToTermsCache
{
  objc_opt_self();
  v0 = MEMORY[0x1E695DFF8];
  v1 = +[NRDataFilePaths pathToNanoRegistryStateDirectory];
  v2 = [v0 fileURLWithPath:v1];

  v3 = [v2 URLByAppendingPathComponent:@"termsCache"];

  return v3;
}

+ (id)pathToTermsWithDigest:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v4 = [v3 mutableCopy];

  [v4 addCharactersInString:@"%."];
  v5 = [v2 stringByAppendingString:@".termsText"];

  v6 = +[NRTermsEvent pathToTermsCache];
  v7 = [v6 URLByAppendingPathComponent:v5];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AB78];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->super._eventDate];
  v6 = [v4 localizedStringFromDate:v5 dateStyle:1 timeStyle:1];
  eventType = self->super._eventType;
  objc_opt_self();
  if ((eventType - 1) > 4)
  {
    v8 = @"Not Set";
  }

  else
  {
    v8 = off_1E86DAD78[eventType - 1];
  }

  v9 = v8;
  v10 = [(NRTermsEvent *)self termsText];
  v11 = [NRTermsEvent digestFromData:v10];
  acknowledgedDeviceName = self->super._acknowledgedDeviceName;
  v13 = [v3 stringWithFormat:@"NRTermsEvent[%@] %@: digest(%@) docID(%@) process(%@) displayDeviceName(%@) acknowlegedDeviceName(%@) presentationReason(%@)", v6, v9, v11, self->super._documentationID, self->super._loggingProcessName, self->super._displayDeviceName, acknowledgedDeviceName, self->super._presentationReason];

  return v13;
}

+ (id)digestFromData:(id)a3
{
  v3 = [a3 NRSHA256];
  v4 = [v3 base64EncodedStringWithOptions:0];
  v5 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v5];

  return v6;
}

- (BOOL)isTermsAlreadyArchived
{
  v2 = *&self->_flaggedForSend;
  if (!v2)
  {
    return 0;
  }

  v3 = [NRTermsEvent pathToTermsWithDigest:v2];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  return v6;
}

- (id)termsText
{
  termsText = self->super._termsText;
  if (!termsText)
  {
    if ((+[NRTermsEvent shouldAllowArchivingOfTermsTextToFile]& 1) != 0)
    {
      v4 = [NRTermsEvent pathToTermsWithDigest:?];
      v5 = [objc_opt_class() loadTermsWithPath:v4];

      goto LABEL_6;
    }

    termsText = self->super._termsText;
  }

  v5 = termsText;
LABEL_6:

  return v5;
}

+ (uint64_t)shouldAllowArchivingOfTermsTextToFile
{
  objc_opt_self();
  v0 = getpid();
  v2 = NRProcessNameForPID(v0, v1);
  if ([@"nanoregistryd" isEqualToString:v2])
  {
    v3 = 1;
  }

  else
  {
    v3 = [@"pairtool" isEqualToString:v2];
  }

  return v3;
}

- (void)saveTerms
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([(NRTermsEvent *)self isTermsAlreadyArchived])
  {
    goto LABEL_8;
  }

  v18 = *MEMORY[0x1E696A3A0];
  v19[0] = *MEMORY[0x1E696A3A8];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[NRTermsEvent pathToTermsCache];
  v17 = 0;
  [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:v3 error:&v17];
  v6 = v17;

  if (v6)
  {
    v11 = v6;
    goto LABEL_10;
  }

  v7 = [(NRTermsEvent *)self termsText];
  if (v7)
  {
    v8 = [objc_opt_class() digestFromData:v7];
    v9 = *&self->_flaggedForSend;
    *&self->_flaggedForSend = v8;
  }

  v10 = [NRTermsEvent pathToTermsWithDigest:?];
  v16 = 0;
  [v7 writeToURL:v10 options:1073741825 error:&v16];
  v11 = v16;
  if (v11)
  {
LABEL_10:
    objc_exception_throw(v11);
  }

  v12 = [v10 path];
  v13 = [v7 matchesDataAtFilePath:v12];

  if ((v13 & 1) == 0)
  {
    v15 = [NRTermsAcknowledgementRegistry errorWithEnum:2];
    objc_exception_throw(v15);
  }

LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
}

+ (id)loadTermsWithPath:(id)a3
{
  v3 = a3;
  v8 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:0 error:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    objc_exception_throw(v5);
  }

  return v4;
}

- (NRTermsEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NRTermsEvent;
  v5 = [(NRTermsEvent *)&v12 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    if (!v5->super._termsText && +[NRTermsEvent shouldAllowArchivingOfTermsTextToFile])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsDigest"];
      v8 = *&v6->_flaggedForSend;
      *&v6->_flaggedForSend = v7;
    }

    if ((+[NRTermsEvent shouldAllowArchivingOfTermsTextToFile]& 1) == 0)
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsDigest"];

      if (v9)
      {
        v11 = [NRTermsAcknowledgementRegistry errorWithEnum:4];
        objc_exception_throw(v11);
      }
    }
  }

  return v6;
}

+ (id)eventWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setWritable:1];
  [v4 mergeFrom:v3];

  if ([v4 hasTermsText])
  {
    v5 = [v4 termsText];
    v6 = [NRTermsEvent digestFromData:v5];
    [v4 setTermsDigest:v6];
  }

  [v4 setWritable:0];

  return v4;
}

- (void)saveEventTextToFileIfNeeded
{
  if (![(NRTermsEvent *)self isTermsAlreadyArchived])
  {
    v3 = [(NRTermsEvent *)self termsText];
    if (!v3 || self->super._eventDate == 0.0)
    {
      v5 = [NRTermsAcknowledgementRegistry errorWithEnum:3];
      objc_exception_throw(v5);
    }

    v4 = v3;
    if (*&self->_flaggedForSend)
    {
      v6 = v3;
      v3 = +[NRTermsEvent shouldAllowArchivingOfTermsTextToFile];
      v4 = v6;
      if (v3)
      {
        v3 = [(NRTermsEvent *)self saveTerms];
        v4 = v6;
      }
    }

    MEMORY[0x1EEE66BB8](v3, v4);
  }
}

- (NRTermsEvent)initWithDeviceID:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NRTermsEvent *)self init];
  v6 = v5;
  if (v5)
  {
    *(&v5->super._has + 5) = 1;
    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v8 = [v7 getAllDevicesWithArchivedAltAccountDevicesMatching:&__block_literal_global];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v15 = [v14 valueForProperty:@"pairingID"];
          v16 = [v15 isEqual:v4];

          if (v16)
          {
            v17 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_12:

    v18 = [v17 valueForProperty:@"localizedModel"];
    acknowledgedDeviceName = v6->super._acknowledgedDeviceName;
    v6->super._acknowledgedDeviceName = v18;

    v20 = [v17 valueForProperty:@"serialNumber"];
    acknowledgedDeviceSerialNumber = v6->super._acknowledgedDeviceSerialNumber;
    v6->super._acknowledgedDeviceSerialNumber = v20;

    v22 = MGCopyAnswer();
    displayDeviceName = v6->super._displayDeviceName;
    v6->super._displayDeviceName = v22;

    v24 = MGCopyAnswer();
    displayDeviceSerialNumber = v6->super._displayDeviceSerialNumber;
    v6->super._displayDeviceSerialNumber = v24;

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v39.receiver = v6;
    v39.super_class = NRTermsEvent;
    [(NRPBTermsEvent *)&v39 setEventDate:?];
    v26 = getpid();
    v28 = NRProcessNameForPID(v26, v27);
    loggingProcessName = v6->super._loggingProcessName;
    v6->super._loggingProcessName = v28;

    if (v4 && (!v6->super._acknowledgedDeviceName || !v6->super._acknowledgedDeviceSerialNumber || !v6->super._displayDeviceName || !v6->super._displayDeviceSerialNumber))
    {
      v30 = nr_daemon_log();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

      if (v31)
      {
        v32 = nr_daemon_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v6->super._acknowledgedDeviceName;
          v34 = v6->super._acknowledgedDeviceSerialNumber;
          v35 = v6->super._displayDeviceName;
          v36 = v6->super._displayDeviceSerialNumber;
          *buf = 138413058;
          v45 = v33;
          v46 = 2112;
          v47 = v34;
          v48 = 2112;
          v49 = v35;
          v50 = 2112;
          v51 = v36;
          _os_log_impl(&dword_1E0ADF000, v32, OS_LOG_TYPE_DEFAULT, "_acknowledgedDeviceName: %@ _acknowledgedDeviceSerialNumber: %@ _displayDeviceName:%@ _displayDeviceSerialNumber:%@", buf, 0x2Au);
        }
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->super._acknowledgedDeviceName || !self->super._acknowledgedDeviceSerialNumber || !self->super._displayDeviceName || !self->super._displayDeviceSerialNumber)
  {
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [NRTermsAcknowledgementRegistry errorWithEnum:3];
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_DEFAULT, "Terms saved with missing device info.  This is not fatal: %@", buf, 0xCu);
      }
    }
  }

  v9 = *&self->_flaggedForSend;
  if (v9)
  {
    [v4 encodeObject:v9 forKey:@"termsDigest"];
  }

  v11.receiver = self;
  v11.super_class = NRTermsEvent;
  [(NRTermsEvent *)&v11 encodeWithCoder:v4];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setEventType:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v3 setEventType:a3];
}

- (void)setTermsText:(id)a3
{
  v4 = a3;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setTermsText:v4];
}

- (void)setDocumentationID:(id)a3
{
  v4 = a3;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setDocumentationID:v4];
}

- (void)setPresentationReason:(id)a3
{
  v4 = a3;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setPresentationReason:v4];
}

- (void)setAcknowledgedDeviceName:(id)a3
{
  v4 = a3;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setAcknowledgedDeviceName:v4];
}

- (void)setAcknowledgedDeviceSerialNumber:(id)a3
{
  v4 = a3;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setAcknowledgedDeviceSerialNumber:v4];
}

- (void)setDisplayDeviceName:(id)a3
{
  v4 = a3;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setDisplayDeviceName:v4];
}

- (void)setDisplayDeviceSerialNumber:(id)a3
{
  v4 = a3;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setDisplayDeviceSerialNumber:v4];
}

- (void)setEventDate:(double)a3
{
  if (*(&self->super._has + 5) != 1)
  {
    v3 = [NRTermsAcknowledgementRegistry errorWithEnum:5, a3];
    objc_exception_throw(v3);
  }

  v4.receiver = self;
  v4.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v4 setEventDate:a3];
}

- (void)updateEventDate
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3.receiver = self;
  v3.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v3 setEventDate:?];
}

- (void)setLoggingProcessName:(id)a3
{
  v4 = a3;
  if (*(&self->super._has + 5) != 1)
  {
    v6 = [NRTermsAcknowledgementRegistry errorWithEnum:5];
    objc_exception_throw(v6);
  }

  v5 = v4;
  v7.receiver = self;
  v7.super_class = NRTermsEvent;
  [(NRPBTermsEvent *)&v7 setLoggingProcessName:v4];
}

@end