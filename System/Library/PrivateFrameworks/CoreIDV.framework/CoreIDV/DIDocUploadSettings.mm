@interface DIDocUploadSettings
- (DIDocUploadSettings)initWithCertificateChain:(id)a3 container:(int64_t)a4 recipient:(id)a5 encryptionVersion:(id)a6 base64EncodingEnabled:(BOOL)a7;
- (DIDocUploadSettings)initWithCoder:(id)a3;
- (DIDocUploadSettings)initWithContainer:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIDocUploadSettings

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(DIDocUploadSettings *)self certificateChain];
  [v7 encodeObject:v4 forKey:@"certificateChain"];

  v5 = [(DIDocUploadSettings *)self encryptionVersion];
  [v7 encodeObject:v5 forKey:@"encryptionVersion"];

  v6 = [(DIDocUploadSettings *)self recipient];
  [v7 encodeObject:v6 forKey:@"recipient"];

  [v7 encodeBool:-[DIDocUploadSettings base64EncodingEnabled](self forKey:{"base64EncodingEnabled"), @"base64EncodingEnabled"}];
  [v7 encodeInteger:-[DIDocUploadSettings container](self forKey:{"container"), @"container"}];
}

- (DIDocUploadSettings)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"certificateChain"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionVersion"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"recipient"];
  v11 = [v5 decodeBoolForKey:@"base64EncodingEnabled"];
  v12 = [v5 decodeIntegerForKey:@"container"];

  v13 = 0;
  if (v8 && v10)
  {
    self = [(DIDocUploadSettings *)self initWithCertificateChain:v8 container:v12 recipient:v10 encryptionVersion:v9 base64EncodingEnabled:v11];
    v13 = self;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (DIDocUploadSettings)initWithCertificateChain:(id)a3 container:(int64_t)a4 recipient:(id)a5 encryptionVersion:(id)a6 base64EncodingEnabled:(BOOL)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = DIDocUploadSettings;
  v16 = [(DIDocUploadSettings *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_certificateChain, a3);
    v17->_container = a4;
    objc_storeStrong(&v17->_recipient, a5);
    objc_storeStrong(&v17->_encryptionVersion, a6);
    v17->_base64EncodingEnabled = a7;
  }

  return v17;
}

- (DIDocUploadSettings)initWithContainer:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v6 = [(DIDocUploadSettings *)self initWithCertificateChain:v5 container:a3 recipient:&stru_282E746B8 encryptionVersion:&stru_282E746B8 base64EncodingEnabled:1];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DIDocUploadSettings *)self encryptionVersion];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"nil";
  }

  v7 = [(DIDocUploadSettings *)self recipient];
  if ([(DIDocUploadSettings *)self base64EncodingEnabled])
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  v9 = [(DIDocUploadSettings *)self certificateChain];
  v10 = [v9 description];
  v11 = [v3 stringWithFormat:@"DIDocUploadSettings: encryptionVersion=%@, recipient=%@, base64EncodingEnabled=%@, certificateChain=%@, container=%lu", v6, v7, v8, v10, -[DIDocUploadSettings container](self, "container")];

  return v11;
}

@end