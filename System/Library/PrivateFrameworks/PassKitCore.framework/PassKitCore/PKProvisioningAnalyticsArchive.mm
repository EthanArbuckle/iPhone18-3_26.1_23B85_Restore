@interface PKProvisioningAnalyticsArchive
+ (id)createArchiveFromArchiveData:(id)data;
+ (id)createArchiveWithState:(id)state provisioningSubjectHandle:(id)handle marketingSubjectHandle:(id)subjectHandle campaignAttributionSubjectHandle:(id)attributionSubjectHandle;
- (PKProvisioningAnalyticsArchive)initWithCoder:(id)coder;
- (PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle)campaignAttributionSubjectHandle;
- (PKProvisioningAnalyticsSessionMarketingSubjectHandle)marketingSubjectHandle;
- (PKProvisioningAnalyticsSessionProvisioningSubjectHandle)provisioningSubjectHandle;
- (id)_init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKProvisioningAnalyticsArchive

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKProvisioningAnalyticsArchive;
  return [(PKProvisioningAnalyticsArchive *)&v3 init];
}

+ (id)createArchiveWithState:(id)state provisioningSubjectHandle:(id)handle marketingSubjectHandle:(id)subjectHandle campaignAttributionSubjectHandle:(id)attributionSubjectHandle
{
  stateCopy = state;
  attributionSubjectHandleCopy = attributionSubjectHandle;
  subjectHandleCopy = subjectHandle;
  handleCopy = handle;
  _init = [[PKProvisioningAnalyticsArchive alloc] _init];
  v14 = _init[4];
  _init[4] = stateCopy;
  v15 = stateCopy;

  archivedParentToken = [handleCopy archivedParentToken];

  v17 = _init[1];
  _init[1] = archivedParentToken;

  archivedParentToken2 = [attributionSubjectHandleCopy archivedParentToken];

  v19 = _init[3];
  _init[3] = archivedParentToken2;

  archivedParentToken3 = [subjectHandleCopy archivedParentToken];

  v21 = _init[2];
  _init[2] = archivedParentToken3;

  v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:_init requiringSecureCoding:1 error:0];

  return v22;
}

+ (id)createArchiveFromArchiveData:(id)data
{
  v3 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];

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

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeObject:state forKey:@"state"];
  [coderCopy encodeObject:self->_provisioningSubjectToken forKey:@"provisioningSubjectToken"];
  [coderCopy encodeObject:self->_provisioningMarketingSubjectToken forKey:@"provisioningMarketingSubjectToken"];
  [coderCopy encodeObject:self->_campaignAttributionSubjectToken forKey:@"campaignAttributionSubjectToken"];
}

- (PKProvisioningAnalyticsArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  if (v5)
  {
    v15.receiver = self;
    v15.super_class = PKProvisioningAnalyticsArchive;
    v6 = [(PKProvisioningAnalyticsArchive *)&v15 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_state, v5);
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningSubjectToken"];
      provisioningSubjectToken = v7->_provisioningSubjectToken;
      v7->_provisioningSubjectToken = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningMarketingSubjectToken"];
      provisioningMarketingSubjectToken = v7->_provisioningMarketingSubjectToken;
      v7->_provisioningMarketingSubjectToken = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"campaignAttributionSubjectToken"];
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