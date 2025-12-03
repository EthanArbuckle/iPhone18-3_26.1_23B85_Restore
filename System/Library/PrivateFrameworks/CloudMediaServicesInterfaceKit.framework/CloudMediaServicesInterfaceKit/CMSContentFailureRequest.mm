@interface CMSContentFailureRequest
- (CMSContentFailureRequest)initWithContentFailure:(id)failure whilePlaying:(id)playing previousContentURL:(id)l nextContentURL:(id)rL userActivityDictionary:(id)dictionary;
- (NSString)description;
- (id)cmsCoded;
@end

@implementation CMSContentFailureRequest

- (CMSContentFailureRequest)initWithContentFailure:(id)failure whilePlaying:(id)playing previousContentURL:(id)l nextContentURL:(id)rL userActivityDictionary:(id)dictionary
{
  failureCopy = failure;
  playingCopy = playing;
  lCopy = l;
  rLCopy = rL;
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = CMSContentFailureRequest;
  v17 = [(CMSContentFailureRequest *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contentFailure, failure);
    objc_storeStrong(&v18->_whilePlaying, playing);
    objc_storeStrong(&v18->_previousContentURL, l);
    objc_storeStrong(&v18->_nextContentURL, rL);
    objc_storeStrong(&v18->_userActivityDictionary, dictionary);
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v18->_timestamp;
    v18->_timestamp = date;
  }

  return v18;
}

- (id)cmsCoded
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:9];
  v4 = CMSCloudExtensionSpecVersion();
  [v3 setObject:v4 forKey:@"version"];

  cmsCoded = [(CMSContentFailure *)self->_contentFailure cmsCoded];
  [v3 setObject:cmsCoded forKey:@"contentFailure"];

  [v3 cmsSetOptionalCodedObject:self->_whilePlaying forKey:@"whilePlaying"];
  absoluteString = [(NSURL *)self->_previousContentURL absoluteString];
  [v3 cmsSetNullableObject:absoluteString forKey:@"previousContentUrl"];

  absoluteString2 = [(NSURL *)self->_nextContentURL absoluteString];
  [v3 cmsSetNullableObject:absoluteString2 forKey:@"nextContentUrl"];

  cmsCoded2 = [(NSDate *)self->_timestamp cmsCoded];
  [v3 setObject:cmsCoded2 forKey:@"timestamp"];

  [v3 cmsSetNullableObject:self->_userActivityDictionary forKey:@"userActivity"];
  [v3 cmsSetOptionalObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [v3 cmsSetOptionalObject:self->_constraints forKey:@"constraints"];

  return v3;
}

- (NSString)description
{
  cmsCoded = [(CMSContentFailureRequest *)self cmsCoded];
  v3 = [cmsCoded description];

  return v3;
}

@end