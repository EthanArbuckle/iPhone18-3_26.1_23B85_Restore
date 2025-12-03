@interface CESRSpeechProfileSite
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSpeechProfileSite:(id)site;
- (BOOL)isEquivalentSpeechProfileSiteURL:(id)l;
- (BOOL)recordMaintenance:(id *)maintenance;
- (BOOL)recordRebuild:(id *)rebuild;
- (BOOL)recordReset:(id *)reset;
- (BOOL)removeInstance:(id)instance error:(id *)error;
- (CESRSpeechProfileSite)init;
@end

@implementation CESRSpeechProfileSite

- (BOOL)isEquivalentSpeechProfileSiteURL:(id)l
{
  speechProfileSiteURL = self->_speechProfileSiteURL;
  lCopy = l;
  path = [(NSURL *)speechProfileSiteURL path];
  path2 = [lCopy path];

  LOBYTE(lCopy) = [path isEqual:path2];
  return lCopy;
}

- (BOOL)isEqualToSpeechProfileSite:(id)site
{
  speechProfileSiteURL = [site speechProfileSiteURL];
  LOBYTE(self) = [(CESRSpeechProfileSite *)self isEquivalentSpeechProfileSiteURL:speechProfileSiteURL];

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CESRSpeechProfileSite *)self isEqualToSpeechProfileSite:v5];
  }

  return v6;
}

- (BOOL)removeInstance:(id)instance error:(id *)error
{
  instanceCopy = instance;
  v7 = [instanceCopy remove:error];
  if (v7)
  {
    [(NSMutableArray *)self->_instances removeObject:instanceCopy];
  }

  return v7;
}

- (BOOL)recordReset:(id *)reset
{
  log = self->_log;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(reset) = [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"lastReset" error:reset];

  return reset;
}

- (BOOL)recordMaintenance:(id *)maintenance
{
  log = self->_log;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(maintenance) = [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"lastMaintenance" error:maintenance];

  return maintenance;
}

- (BOOL)recordRebuild:(id *)rebuild
{
  log = self->_log;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(rebuild) = [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"lastRebuild" error:rebuild];

  return rebuild;
}

- (CESRSpeechProfileSite)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

@end