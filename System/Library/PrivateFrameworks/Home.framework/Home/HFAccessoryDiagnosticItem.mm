@interface HFAccessoryDiagnosticItem
- (BOOL)isEligibleForUpload;
- (HFAccessoryDiagnosticItem)initWithLogMetadata:(id)a3 accessory:(id)a4;
- (NSString)path;
- (NSURL)fileURL;
- (NSURL)privacyPolicyURL;
- (id)_subclass_updateWithOptions:(id)a3;
- (int64_t)consentVersion;
- (int64_t)uploadType;
@end

@implementation HFAccessoryDiagnosticItem

- (HFAccessoryDiagnosticItem)initWithLogMetadata:(id)a3 accessory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HFAccessoryDiagnosticItem;
  v9 = [(HFAccessoryDiagnosticItem *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, a3);
    v11 = [v7 snapshotPath];
    v12 = [v11 lastPathComponent];
    filename = v10->_filename;
    v10->_filename = v12;

    v14 = [v8 manufacturer];
    v15 = [v14 copy];
    manufacturer = v10->_manufacturer;
    v10->_manufacturer = v15;
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"title";
  v3 = [(HFAccessoryDiagnosticItem *)self filename];
  v10[1] = @"hidden";
  v11[0] = v3;
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
  v2 = [(HFAccessoryDiagnosticItem *)self metadata];
  v3 = [v2 privacyPolicyURL];

  return v3;
}

- (int64_t)consentVersion
{
  v2 = [(HFAccessoryDiagnosticItem *)self metadata];
  v3 = [v2 consentVersion];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)uploadType
{
  v2 = [(HFAccessoryDiagnosticItem *)self metadata];
  v3 = [v2 uploadType];
  v4 = [v3 integerValue];

  return v4;
}

- (NSString)path
{
  v2 = [(HFAccessoryDiagnosticItem *)self metadata];
  v3 = [v2 snapshotPath];

  return v3;
}

- (BOOL)isEligibleForUpload
{
  v3 = [(HFAccessoryDiagnosticItem *)self metadata];
  v4 = [v3 uploadDestination];

  v5 = [v4 absoluteString];
  v6 = [v5 length] && -[HFAccessoryDiagnosticItem consentVersion](self, "consentVersion") == 1 && -[HFAccessoryDiagnosticItem uploadType](self, "uploadType") == 0;

  return v6;
}

- (NSURL)fileURL
{
  v2 = [(HFAccessoryDiagnosticItem *)self metadata];
  v3 = [v2 snapshotPath];

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];

  return v4;
}

@end