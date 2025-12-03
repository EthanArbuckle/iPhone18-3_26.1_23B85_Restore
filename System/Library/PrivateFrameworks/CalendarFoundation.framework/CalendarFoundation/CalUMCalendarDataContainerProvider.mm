@interface CalUMCalendarDataContainerProvider
+ (CalUMCalendarDataContainerProvider)sharedInstance;
- (BOOL)accountUsesDataSeparatedContainer:(id)container;
- (BOOL)isEqual:(id)equal;
- (id)containerForAccountIdentifier:(id)identifier;
- (id)containerInfoForAccount:(id)account;
- (id)containerInfoForAccountIdentifier:(id)identifier;
- (id)containerInfoForPersonaIdentifier:(id)identifier;
@end

@implementation CalUMCalendarDataContainerProvider

+ (CalUMCalendarDataContainerProvider)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CalUMCalendarDataContainerProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __52__CalUMCalendarDataContainerProvider_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (id)containerForAccountIdentifier:(id)identifier
{
  v3 = [(CalUMCalendarDataContainerProvider *)self containerInfoForAccountIdentifier:identifier];
  containerURL = [v3 containerURL];

  return containerURL;
}

- (BOOL)accountUsesDataSeparatedContainer:(id)container
{
  v3 = [(CalUMCalendarDataContainerProvider *)self containerInfoForAccountIdentifier:container];
  usesDataSeparatedContainer = [v3 usesDataSeparatedContainer];

  return usesDataSeparatedContainer;
}

- (id)containerInfoForAccountIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = MEMORY[0x1E6959A48];
    identifierCopy = identifier;
    v5 = objc_alloc_init(v3);
    v6 = [v5 accountWithIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  v7 = [[CalUMCalendarDataContainerInfo alloc] initWithAccount:v6];

  return v7;
}

- (id)containerInfoForAccount:(id)account
{
  accountCopy = account;
  v4 = [[CalUMCalendarDataContainerInfo alloc] initWithAccount:accountCopy];

  return v4;
}

- (id)containerInfoForPersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CalUMCalendarDataContainerInfo alloc] initWithPersonaID:identifierCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

@end