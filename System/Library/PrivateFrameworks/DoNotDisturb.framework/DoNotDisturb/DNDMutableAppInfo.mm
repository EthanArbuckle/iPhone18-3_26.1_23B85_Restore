@interface DNDMutableAppInfo
- (id)copyWithZone:(_NSZone *)zone;
- (void)setApplicationIdentifier:(id)identifier;
- (void)setCachedIconURL:(id)l;
- (void)setDisplayName:(id)name;
- (void)setStoreIconURL:(id)l;
@end

@implementation DNDMutableAppInfo

- (void)setStoreIconURL:(id)l
{
  v4 = [l copy];
  storeIconURL = self->super._storeIconURL;
  self->super._storeIconURL = v4;

  MEMORY[0x2821F96F8](v4, storeIconURL);
}

- (void)setCachedIconURL:(id)l
{
  v4 = [l copy];
  cachedIconURL = self->super._cachedIconURL;
  self->super._cachedIconURL = v4;

  MEMORY[0x2821F96F8](v4, cachedIconURL);
}

- (void)setDisplayName:(id)name
{
  v4 = [name copy];
  displayName = self->super._displayName;
  self->super._displayName = v4;

  MEMORY[0x2821F96F8](v4, displayName);
}

- (void)setApplicationIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationIdentifier = self->super._applicationIdentifier;
  self->super._applicationIdentifier = v4;

  MEMORY[0x2821F96F8](v4, applicationIdentifier);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDAppInfo allocWithZone:zone];

  return [(DNDAppInfo *)v4 _initWithAppInfo:self];
}

@end