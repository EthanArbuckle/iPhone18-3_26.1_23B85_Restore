@interface SUUILibraryItemState
- (NSString)itemStateVariantIdentifier;
- (SUUILibraryItemState)initWithApplication:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newJavaScriptRepresentation;
@end

@implementation SUUILibraryItemState

- (SUUILibraryItemState)initWithApplication:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SUUILibraryItemState;
  v5 = [(SUUILibraryItemState *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_availability = 2;
    v7 = [v4 valueForProperty:*MEMORY[0x277D6A5B0]];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    v9 = [v4 valueForProperty:*MEMORY[0x277D6A5B8]];
    bundleVersion = v6->_bundleVersion;
    v6->_bundleVersion = v9;

    v11 = [v4 valueForProperty:*MEMORY[0x277D6A5C8]];
    storeAccountIdentifier = v6->_storeAccountIdentifier;
    v6->_storeAccountIdentifier = v11;

    storePlatformKind = v6->_storePlatformKind;
    v6->_storePlatformKind = @"iosSoftware";

    v14 = [v4 valueForProperty:*MEMORY[0x277D6A5D8]];
    storeVersionIdentifier = v6->_storeVersionIdentifier;
    v6->_storeVersionIdentifier = v14;
  }

  return v6;
}

- (NSString)itemStateVariantIdentifier
{
  if ((self->_avTypes & 5) != 0)
  {
    v3 = @"buy_HD";
    v4 = @"buy";
    if (self->_rental)
    {
      v3 = @"rent_HD";
      v4 = @"rent";
    }

    if (self->_highDefinition)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newJavaScriptRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v3 setObject:bundleIdentifier forKey:@"bundleId"];
  }

  bundleVersion = self->_bundleVersion;
  if (bundleVersion)
  {
    [v4 setObject:bundleVersion forKey:@"version"];
  }

  if (self->_highDefinition)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"isHD"];
  }

  if (self->_preview)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"preview"];
  }

  if (self->_rental)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"rental"];
  }

  storeAccountIdentifier = self->_storeAccountIdentifier;
  if (storeAccountIdentifier)
  {
    v8 = [(NSNumber *)storeAccountIdentifier stringValue];
    [v4 setObject:v8 forKey:@"ownerDSID"];
  }

  storeFlavorIdentifier = self->_storeFlavorIdentifier;
  if (storeFlavorIdentifier)
  {
    [v4 setObject:storeFlavorIdentifier forKey:@"flavor"];
  }

  storeVersionIdentifier = self->_storeVersionIdentifier;
  if (storeVersionIdentifier)
  {
    v11 = [(NSNumber *)storeVersionIdentifier stringValue];
    [v4 setObject:v11 forKey:@"versionExternalId"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_availability;
  *(v5 + 16) = self->_avTypes;
  v6 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_bundleVersion copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 40) = self->_highDefinition;
  *(v5 + 41) = self->_preview;
  *(v5 + 42) = self->_rental;
  v10 = [(NSNumber *)self->_storeAccountIdentifier copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_storeFlavorIdentifier copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_storePlatformKind copyWithZone:a3];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(NSNumber *)self->_storeVersionIdentifier copyWithZone:a3];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  return v5;
}

@end