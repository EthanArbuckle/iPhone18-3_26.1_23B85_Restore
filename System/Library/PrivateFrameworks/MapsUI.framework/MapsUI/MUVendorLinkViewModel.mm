@interface MUVendorLinkViewModel
- (MUVendorLinkViewModel)initWithPartnerId:(id)id linkType:(int)type artworkURL:(id)l providerName:(id)name appAdamId:(id)adamId appShortName:(id)shortName actionName:(id)actionName fallbackSymbolName:(id)self0;
- (NSString)linkTypeString;
- (NSString)uniqueIdentifier;
- (id)description;
@end

@implementation MUVendorLinkViewModel

- (NSString)linkTypeString
{
  v2 = [(MUVendorLinkViewModel *)self linkType]- 1;
  if (v2 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return &off_1E821A498[v2]->isa;
  }
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  uniqueIdentifier = [(MUVendorLinkViewModel *)self uniqueIdentifier];
  v4 = [v2 stringWithFormat:@"Unique Identifier: %@", uniqueIdentifier];

  return v4;
}

- (NSString)uniqueIdentifier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  linkType = [(MUVendorLinkViewModel *)self linkType];
  if (linkType > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E821A470[linkType];
  }

  [v3 addObject:v5];
  providerName = [(MUVendorLinkViewModel *)self providerName];
  v7 = [providerName length];

  if (v7)
  {
    providerName2 = [(MUVendorLinkViewModel *)self providerName];
    [v3 addObject:providerName2];
  }

  appAdamId = [(MUVendorLinkViewModel *)self appAdamId];
  v10 = [appAdamId length];

  if (v10)
  {
    appAdamId2 = [(MUVendorLinkViewModel *)self appAdamId];
    [v3 addObject:appAdamId2];
  }

  actionName = [(MUVendorLinkViewModel *)self actionName];
  v13 = [actionName length];

  if (v13)
  {
    actionName2 = [(MUVendorLinkViewModel *)self actionName];
    [v3 addObject:actionName2];
  }

  v15 = [v3 componentsJoinedByString:@"-"];

  return v15;
}

- (MUVendorLinkViewModel)initWithPartnerId:(id)id linkType:(int)type artworkURL:(id)l providerName:(id)name appAdamId:(id)adamId appShortName:(id)shortName actionName:(id)actionName fallbackSymbolName:(id)self0
{
  idCopy = id;
  lCopy = l;
  nameCopy = name;
  adamIdCopy = adamId;
  shortNameCopy = shortName;
  actionNameCopy = actionName;
  symbolNameCopy = symbolName;
  v27.receiver = self;
  v27.super_class = MUVendorLinkViewModel;
  v18 = [(MUVendorLinkViewModel *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_partnerId, id);
    objc_storeStrong(&v19->_artworkURL, l);
    objc_storeStrong(&v19->_providerName, name);
    v19->_linkType = type;
    objc_storeStrong(&v19->_appAdamId, adamId);
    objc_storeStrong(&v19->_appShortName, shortName);
    objc_storeStrong(&v19->_actionName, actionName);
    objc_storeStrong(&v19->_fallbackSymbolName, symbolName);
  }

  return v19;
}

@end