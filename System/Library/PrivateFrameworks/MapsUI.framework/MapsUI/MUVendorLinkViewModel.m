@interface MUVendorLinkViewModel
- (MUVendorLinkViewModel)initWithPartnerId:(id)a3 linkType:(int)a4 artworkURL:(id)a5 providerName:(id)a6 appAdamId:(id)a7 appShortName:(id)a8 actionName:(id)a9 fallbackSymbolName:(id)a10;
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
  v3 = [(MUVendorLinkViewModel *)self uniqueIdentifier];
  v4 = [v2 stringWithFormat:@"Unique Identifier: %@", v3];

  return v4;
}

- (NSString)uniqueIdentifier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MUVendorLinkViewModel *)self linkType];
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E821A470[v4];
  }

  [v3 addObject:v5];
  v6 = [(MUVendorLinkViewModel *)self providerName];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(MUVendorLinkViewModel *)self providerName];
    [v3 addObject:v8];
  }

  v9 = [(MUVendorLinkViewModel *)self appAdamId];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(MUVendorLinkViewModel *)self appAdamId];
    [v3 addObject:v11];
  }

  v12 = [(MUVendorLinkViewModel *)self actionName];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [(MUVendorLinkViewModel *)self actionName];
    [v3 addObject:v14];
  }

  v15 = [v3 componentsJoinedByString:@"-"];

  return v15;
}

- (MUVendorLinkViewModel)initWithPartnerId:(id)a3 linkType:(int)a4 artworkURL:(id)a5 providerName:(id)a6 appAdamId:(id)a7 appShortName:(id)a8 actionName:(id)a9 fallbackSymbolName:(id)a10
{
  v26 = a3;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v16 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = MUVendorLinkViewModel;
  v18 = [(MUVendorLinkViewModel *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_partnerId, a3);
    objc_storeStrong(&v19->_artworkURL, a5);
    objc_storeStrong(&v19->_providerName, a6);
    v19->_linkType = a4;
    objc_storeStrong(&v19->_appAdamId, a7);
    objc_storeStrong(&v19->_appShortName, a8);
    objc_storeStrong(&v19->_actionName, a9);
    objc_storeStrong(&v19->_fallbackSymbolName, a10);
  }

  return v19;
}

@end