@interface CESRSpeechProfileSite
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSpeechProfileSite:(id)a3;
- (BOOL)isEquivalentSpeechProfileSiteURL:(id)a3;
- (BOOL)recordMaintenance:(id *)a3;
- (BOOL)recordRebuild:(id *)a3;
- (BOOL)recordReset:(id *)a3;
- (BOOL)removeInstance:(id)a3 error:(id *)a4;
- (CESRSpeechProfileSite)init;
@end

@implementation CESRSpeechProfileSite

- (BOOL)isEquivalentSpeechProfileSiteURL:(id)a3
{
  speechProfileSiteURL = self->_speechProfileSiteURL;
  v4 = a3;
  v5 = [(NSURL *)speechProfileSiteURL path];
  v6 = [v4 path];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqualToSpeechProfileSite:(id)a3
{
  v4 = [a3 speechProfileSiteURL];
  LOBYTE(self) = [(CESRSpeechProfileSite *)self isEquivalentSpeechProfileSiteURL:v4];

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CESRSpeechProfileSite *)self isEqualToSpeechProfileSite:v5];
  }

  return v6;
}

- (BOOL)removeInstance:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 remove:a4];
  if (v7)
  {
    [(NSMutableArray *)self->_instances removeObject:v6];
  }

  return v7;
}

- (BOOL)recordReset:(id *)a3
{
  log = self->_log;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(a3) = [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"lastReset" error:a3];

  return a3;
}

- (BOOL)recordMaintenance:(id *)a3
{
  log = self->_log;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(a3) = [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"lastMaintenance" error:a3];

  return a3;
}

- (BOOL)recordRebuild:(id *)a3
{
  log = self->_log;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(a3) = [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"lastRebuild" error:a3];

  return a3;
}

- (CESRSpeechProfileSite)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

@end