@interface DIDocUploadSettings
- (DIDocUploadSettings)initWithCertificateChain:(id)chain container:(int64_t)container recipient:(id)recipient encryptionVersion:(id)version base64EncodingEnabled:(BOOL)enabled;
- (DIDocUploadSettings)initWithCoder:(id)coder;
- (DIDocUploadSettings)initWithContainer:(int64_t)container;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIDocUploadSettings

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  certificateChain = [(DIDocUploadSettings *)self certificateChain];
  [coderCopy encodeObject:certificateChain forKey:@"certificateChain"];

  encryptionVersion = [(DIDocUploadSettings *)self encryptionVersion];
  [coderCopy encodeObject:encryptionVersion forKey:@"encryptionVersion"];

  recipient = [(DIDocUploadSettings *)self recipient];
  [coderCopy encodeObject:recipient forKey:@"recipient"];

  [coderCopy encodeBool:-[DIDocUploadSettings base64EncodingEnabled](self forKey:{"base64EncodingEnabled"), @"base64EncodingEnabled"}];
  [coderCopy encodeInteger:-[DIDocUploadSettings container](self forKey:{"container"), @"container"}];
}

- (DIDocUploadSettings)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"certificateChain"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionVersion"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipient"];
  v11 = [coderCopy decodeBoolForKey:@"base64EncodingEnabled"];
  v12 = [coderCopy decodeIntegerForKey:@"container"];

  selfCopy = 0;
  if (v8 && v10)
  {
    self = [(DIDocUploadSettings *)self initWithCertificateChain:v8 container:v12 recipient:v10 encryptionVersion:v9 base64EncodingEnabled:v11];
    selfCopy = self;
  }

  v14 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (DIDocUploadSettings)initWithCertificateChain:(id)chain container:(int64_t)container recipient:(id)recipient encryptionVersion:(id)version base64EncodingEnabled:(BOOL)enabled
{
  chainCopy = chain;
  recipientCopy = recipient;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = DIDocUploadSettings;
  v16 = [(DIDocUploadSettings *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_certificateChain, chain);
    v17->_container = container;
    objc_storeStrong(&v17->_recipient, recipient);
    objc_storeStrong(&v17->_encryptionVersion, version);
    v17->_base64EncodingEnabled = enabled;
  }

  return v17;
}

- (DIDocUploadSettings)initWithContainer:(int64_t)container
{
  v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v6 = [(DIDocUploadSettings *)self initWithCertificateChain:v5 container:container recipient:&stru_282E746B8 encryptionVersion:&stru_282E746B8 base64EncodingEnabled:1];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  encryptionVersion = [(DIDocUploadSettings *)self encryptionVersion];
  v5 = encryptionVersion;
  if (encryptionVersion)
  {
    v6 = encryptionVersion;
  }

  else
  {
    v6 = @"nil";
  }

  recipient = [(DIDocUploadSettings *)self recipient];
  if ([(DIDocUploadSettings *)self base64EncodingEnabled])
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  certificateChain = [(DIDocUploadSettings *)self certificateChain];
  v10 = [certificateChain description];
  v11 = [v3 stringWithFormat:@"DIDocUploadSettings: encryptionVersion=%@, recipient=%@, base64EncodingEnabled=%@, certificateChain=%@, container=%lu", v6, recipient, v8, v10, -[DIDocUploadSettings container](self, "container")];

  return v11;
}

@end