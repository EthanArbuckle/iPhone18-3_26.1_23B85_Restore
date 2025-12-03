@interface CardDAVAddressBookContainer
+ (id)copyPropertyMappingsForParser;
- (BOOL)isAddressBook;
- (BOOL)isSearchAddressBook;
- (BOOL)isSharedAddressBook;
- (id)description;
- (void)applyParsedProperties:(id)properties;
@end

@implementation CardDAVAddressBookContainer

+ (id)copyPropertyMappingsForParser
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CardDAVAddressBookContainer;
  v2 = objc_msgSendSuper2(&v5, sel_copyPropertyMappingsForParser);
  v3 = [v2 mutableCopy];
  [v3 CDVAddItemParserMappingWithNameSpace:@"urn:ietf:params:xml:ns:carddav" name:@"max-resource-size" parseClass:objc_opt_class()];
  [v3 CDVAddItemParserMappingWithNameSpace:@"urn:ietf:params:xml:ns:carddav" name:@"max-image-size" parseClass:objc_opt_class()];
  [v3 CDVAddItemParserMappingWithNameSpace:@"http://me.com/_namespace/" name:@"guardian-restricted" parseClass:objc_opt_class()];
  [v3 CDVAddItemParserMappingWithNameSpace:@"http://calendarserver.org/ns/" name:@"me-card" parseClass:objc_opt_class()];
  [v3 CDVAddItemParserMappingWithNameSpace:@"urn:mobileme:davservices" name:@"quota-available" parseClass:objc_opt_class()];
  [v3 CDVAddItemParserMappingWithNameSpace:@"urn:mobileme:davservices" name:@"quota-used" parseClass:objc_opt_class()];

  return v3;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = CardDAVAddressBookContainer;
  v3 = [(CoreDAVContainer *)&v11 description];
  v4 = MEMORY[0x277CCAB68];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"%@ %p: ", v6, self];

  [v7 appendFormat:@" PARENT CLASS: %@", v3];
  maxResourceSize = [(CardDAVAddressBookContainer *)self maxResourceSize];
  [v7 appendFormat:@"\n\tmaxResourceSize: %@", maxResourceSize];

  maxImageSize = [(CardDAVAddressBookContainer *)self maxImageSize];
  [v7 appendFormat:@"\n\tmaxImageSize: %@", maxImageSize];

  return v7;
}

- (void)applyParsedProperties:(id)properties
{
  v17.receiver = self;
  v17.super_class = CardDAVAddressBookContainer;
  propertiesCopy = properties;
  [(CoreDAVContainer *)&v17 applyParsedProperties:propertiesCopy];
  v5 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"urn:ietf:params:xml:ns:carddav" andName:{@"max-resource-size", v17.receiver, v17.super_class}];
  payloadAsString = [v5 payloadAsString];
  [(CardDAVAddressBookContainer *)self setMaxResourceSize:payloadAsString];

  v7 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"urn:ietf:params:xml:ns:carddav" andName:@"max-image-size"];
  payloadAsString2 = [v7 payloadAsString];
  [(CardDAVAddressBookContainer *)self setMaxImageSize:payloadAsString2];

  v9 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"me-card"];
  href = [v9 href];
  payloadAsFullURL = [href payloadAsFullURL];
  [(CardDAVAddressBookContainer *)self setMeCardURL:payloadAsFullURL];

  v12 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"http://me.com/_namespace/" andName:@"guardian-restricted"];
  payloadAsString3 = [v12 payloadAsString];
  -[CardDAVAddressBookContainer setIsGuardianRestricted:](self, "setIsGuardianRestricted:", [payloadAsString3 isEqualToString:@"true"]);

  v14 = [propertiesCopy CDVObjectForKeyWithNameSpace:@"urn:mobileme:davservices" andName:@"quota-available"];

  if (v14)
  {
    otherBytes = [v14 otherBytes];
    if (otherBytes)
    {
      otherBytes2 = [v14 otherBytes];
      -[CardDAVAddressBookContainer setIsImageUploadRestricted:](self, "setIsImageUploadRestricted:", [otherBytes2 payloadAsNSInteger] < 1);
    }

    else
    {
      [(CardDAVAddressBookContainer *)self setIsImageUploadRestricted:0];
    }
  }

  else
  {
    [(CardDAVAddressBookContainer *)self setIsImageUploadRestricted:0];
  }
}

- (BOOL)isAddressBook
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    addressBook = [resourceType2 addressBook];
    v6 = addressBook != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSearchAddressBook
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    searchAddressBook = [resourceType2 searchAddressBook];
    if (searchAddressBook)
    {
      v6 = 1;
    }

    else
    {
      resourceType3 = [(CoreDAVContainer *)self resourceType];
      v6 = [resourceType3 isTypeWithNameSpace:@"urn:ietf:params:xml:ns:carddav" andName:@"directory"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSharedAddressBook
{
  if (![(CardDAVAddressBookContainer *)self isAddressBook])
  {
    return 0;
  }

  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    shared = [resourceType2 shared];
    v6 = shared != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end