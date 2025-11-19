@interface PKProvisioningAnalyticsArchive
+ (id)createArchiveFromArchiveData:(id)a3;
+ (id)createArchiveWithState:(id)a3 provisioningSubjectHandle:(id)a4 marketingSubjectHandle:(id)a5 campaignAttributionSubjectHandle:(id)a6;
- (PKProvisioningAnalyticsArchive)initWithCoder:(id)a3;
- (PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle)campaignAttributionSubjectHandle;
- (PKProvisioningAnalyticsSessionMarketingSubjectHandle)marketingSubjectHandle;
- (PKProvisioningAnalyticsSessionProvisioningSubjectHandle)provisioningSubjectHandle;
- (id)_init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKProvisioningAnalyticsArchive

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKProvisioningAnalyticsArchive;
  return [(PKProvisioningAnalyticsArchive *)&v3 init];
}

+ (id)createArchiveWithState:(id)a3 provisioningSubjectHandle:(id)a4 marketingSubjectHandle:(id)a5 campaignAttributionSubjectHandle:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[PKProvisioningAnalyticsArchive alloc] _init];
  v14 = v13[4];
  v13[4] = v9;
  v15 = v9;

  v16 = [v12 archivedParentToken];

  v17 = v13[1];
  v13[1] = v16;

  v18 = [v10 archivedParentToken];

  v19 = v13[3];
  v13[3] = v18;

  v20 = [v11 archivedParentToken];

  v21 = v13[2];
  v13[2] = v20;

  v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];

  return v22;
}

+ (id)createArchiveFromArchiveData:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];

  return v5;
}

- (PKProvisioningAnalyticsSessionProvisioningSubjectHandle)provisioningSubjectHandle
{
  v2 = [[PKProvisioningAnalyticsSessionProvisioningSubjectHandle alloc] initWithArchivedParent:self->_provisioningSubjectToken];

  return v2;
}

- (PKProvisioningAnalyticsSessionMarketingSubjectHandle)marketingSubjectHandle
{
  if (self->_provisioningMarketingSubjectToken)
  {
    v3 = [[PKProvisioningAnalyticsSessionMarketingSubjectHandle alloc] initWithArchivedParent:self->_provisioningMarketingSubjectToken];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle)campaignAttributionSubjectHandle
{
  if (self->_campaignAttributionSubjectToken)
  {
    v3 = [[PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle alloc] initWithArchivedParent:self->_campaignAttributionSubjectToken];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeObject:state forKey:@"state"];
  [v5 encodeObject:self->_provisioningSubjectToken forKey:@"provisioningSubjectToken"];
  [v5 encodeObject:self->_provisioningMarketingSubjectToken forKey:@"provisioningMarketingSubjectToken"];
  [v5 encodeObject:self->_campaignAttributionSubjectToken forKey:@"campaignAttributionSubjectToken"];
}

- (PKProvisioningAnalyticsArchive)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  if (v5)
  {
    v15.receiver = self;
    v15.super_class = PKProvisioningAnalyticsArchive;
    v6 = [(PKProvisioningAnalyticsArchive *)&v15 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_state, v5);
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningSubjectToken"];
      provisioningSubjectToken = v7->_provisioningSubjectToken;
      v7->_provisioningSubjectToken = v8;

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningMarketingSubjectToken"];
      provisioningMarketingSubjectToken = v7->_provisioningMarketingSubjectToken;
      v7->_provisioningMarketingSubjectToken = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"campaignAttributionSubjectToken"];
      campaignAttributionSubjectToken = v7->_campaignAttributionSubjectToken;
      v7->_campaignAttributionSubjectToken = v12;
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

@end