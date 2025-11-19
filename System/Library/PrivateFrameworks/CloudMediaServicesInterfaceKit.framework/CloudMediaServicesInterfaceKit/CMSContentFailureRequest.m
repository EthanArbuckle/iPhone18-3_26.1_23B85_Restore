@interface CMSContentFailureRequest
- (CMSContentFailureRequest)initWithContentFailure:(id)a3 whilePlaying:(id)a4 previousContentURL:(id)a5 nextContentURL:(id)a6 userActivityDictionary:(id)a7;
- (NSString)description;
- (id)cmsCoded;
@end

@implementation CMSContentFailureRequest

- (CMSContentFailureRequest)initWithContentFailure:(id)a3 whilePlaying:(id)a4 previousContentURL:(id)a5 nextContentURL:(id)a6 userActivityDictionary:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = CMSContentFailureRequest;
  v17 = [(CMSContentFailureRequest *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contentFailure, a3);
    objc_storeStrong(&v18->_whilePlaying, a4);
    objc_storeStrong(&v18->_previousContentURL, a5);
    objc_storeStrong(&v18->_nextContentURL, a6);
    objc_storeStrong(&v18->_userActivityDictionary, a7);
    v19 = [MEMORY[0x277CBEAA8] date];
    timestamp = v18->_timestamp;
    v18->_timestamp = v19;
  }

  return v18;
}

- (id)cmsCoded
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:9];
  v4 = CMSCloudExtensionSpecVersion();
  [v3 setObject:v4 forKey:@"version"];

  v5 = [(CMSContentFailure *)self->_contentFailure cmsCoded];
  [v3 setObject:v5 forKey:@"contentFailure"];

  [v3 cmsSetOptionalCodedObject:self->_whilePlaying forKey:@"whilePlaying"];
  v6 = [(NSURL *)self->_previousContentURL absoluteString];
  [v3 cmsSetNullableObject:v6 forKey:@"previousContentUrl"];

  v7 = [(NSURL *)self->_nextContentURL absoluteString];
  [v3 cmsSetNullableObject:v7 forKey:@"nextContentUrl"];

  v8 = [(NSDate *)self->_timestamp cmsCoded];
  [v3 setObject:v8 forKey:@"timestamp"];

  [v3 cmsSetNullableObject:self->_userActivityDictionary forKey:@"userActivity"];
  [v3 cmsSetOptionalObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [v3 cmsSetOptionalObject:self->_constraints forKey:@"constraints"];

  return v3;
}

- (NSString)description
{
  v2 = [(CMSContentFailureRequest *)self cmsCoded];
  v3 = [v2 description];

  return v3;
}

@end