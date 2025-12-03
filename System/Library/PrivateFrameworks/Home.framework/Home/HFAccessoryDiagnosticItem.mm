@interface HFAccessoryDiagnosticItem
- (BOOL)isEligibleForUpload;
- (HFAccessoryDiagnosticItem)initWithLogMetadata:(id)metadata accessory:(id)accessory;
- (NSString)path;
- (NSURL)fileURL;
- (NSURL)privacyPolicyURL;
- (id)_subclass_updateWithOptions:(id)options;
- (int64_t)consentVersion;
- (int64_t)uploadType;
@end

@implementation HFAccessoryDiagnosticItem

- (HFAccessoryDiagnosticItem)initWithLogMetadata:(id)metadata accessory:(id)accessory
{
  metadataCopy = metadata;
  accessoryCopy = accessory;
  v18.receiver = self;
  v18.super_class = HFAccessoryDiagnosticItem;
  v9 = [(HFAccessoryDiagnosticItem *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, metadata);
    snapshotPath = [metadataCopy snapshotPath];
    lastPathComponent = [snapshotPath lastPathComponent];
    filename = v10->_filename;
    v10->_filename = lastPathComponent;

    manufacturer = [accessoryCopy manufacturer];
    v15 = [manufacturer copy];
    manufacturer = v10->_manufacturer;
    v10->_manufacturer = v15;
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"title";
  filename = [(HFAccessoryDiagnosticItem *)self filename];
  v10[1] = @"hidden";
  v11[0] = filename;
  v11[1] = MEMORY[0x277CBEC28];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v5 = MEMORY[0x277D2C900];
  v6 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v7 = [v5 futureWithResult:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSURL)privacyPolicyURL
{
  metadata = [(HFAccessoryDiagnosticItem *)self metadata];
  privacyPolicyURL = [metadata privacyPolicyURL];

  return privacyPolicyURL;
}

- (int64_t)consentVersion
{
  metadata = [(HFAccessoryDiagnosticItem *)self metadata];
  consentVersion = [metadata consentVersion];
  integerValue = [consentVersion integerValue];

  return integerValue;
}

- (int64_t)uploadType
{
  metadata = [(HFAccessoryDiagnosticItem *)self metadata];
  uploadType = [metadata uploadType];
  integerValue = [uploadType integerValue];

  return integerValue;
}

- (NSString)path
{
  metadata = [(HFAccessoryDiagnosticItem *)self metadata];
  snapshotPath = [metadata snapshotPath];

  return snapshotPath;
}

- (BOOL)isEligibleForUpload
{
  metadata = [(HFAccessoryDiagnosticItem *)self metadata];
  uploadDestination = [metadata uploadDestination];

  absoluteString = [uploadDestination absoluteString];
  v6 = [absoluteString length] && -[HFAccessoryDiagnosticItem consentVersion](self, "consentVersion") == 1 && -[HFAccessoryDiagnosticItem uploadType](self, "uploadType") == 0;

  return v6;
}

- (NSURL)fileURL
{
  metadata = [(HFAccessoryDiagnosticItem *)self metadata];
  snapshotPath = [metadata snapshotPath];

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:snapshotPath];

  return v4;
}

@end