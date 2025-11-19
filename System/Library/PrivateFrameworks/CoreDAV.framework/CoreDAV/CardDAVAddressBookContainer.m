@interface CardDAVAddressBookContainer
+ (id)copyPropertyMappingsForParser;
- (BOOL)isAddressBook;
- (BOOL)isSearchAddressBook;
- (BOOL)isSharedAddressBook;
- (id)description;
- (void)applyParsedProperties:(id)a3;
@end

@implementation CardDAVAddressBookContainer

+ (id)copyPropertyMappingsForParser
{
  v5.receiver = a1;
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
  v8 = [(CardDAVAddressBookContainer *)self maxResourceSize];
  [v7 appendFormat:@"\n\tmaxResourceSize: %@", v8];

  v9 = [(CardDAVAddressBookContainer *)self maxImageSize];
  [v7 appendFormat:@"\n\tmaxImageSize: %@", v9];

  return v7;
}

- (void)applyParsedProperties:(id)a3
{
  v17.receiver = self;
  v17.super_class = CardDAVAddressBookContainer;
  v4 = a3;
  [(CoreDAVContainer *)&v17 applyParsedProperties:v4];
  v5 = [v4 CDVObjectForKeyWithNameSpace:@"urn:ietf:params:xml:ns:carddav" andName:{@"max-resource-size", v17.receiver, v17.super_class}];
  v6 = [v5 payloadAsString];
  [(CardDAVAddressBookContainer *)self setMaxResourceSize:v6];

  v7 = [v4 CDVObjectForKeyWithNameSpace:@"urn:ietf:params:xml:ns:carddav" andName:@"max-image-size"];
  v8 = [v7 payloadAsString];
  [(CardDAVAddressBookContainer *)self setMaxImageSize:v8];

  v9 = [v4 CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"me-card"];
  v10 = [v9 href];
  v11 = [v10 payloadAsFullURL];
  [(CardDAVAddressBookContainer *)self setMeCardURL:v11];

  v12 = [v4 CDVObjectForKeyWithNameSpace:@"http://me.com/_namespace/" andName:@"guardian-restricted"];
  v13 = [v12 payloadAsString];
  -[CardDAVAddressBookContainer setIsGuardianRestricted:](self, "setIsGuardianRestricted:", [v13 isEqualToString:@"true"]);

  v14 = [v4 CDVObjectForKeyWithNameSpace:@"urn:mobileme:davservices" andName:@"quota-available"];

  if (v14)
  {
    v15 = [v14 otherBytes];
    if (v15)
    {
      v16 = [v14 otherBytes];
      -[CardDAVAddressBookContainer setIsImageUploadRestricted:](self, "setIsImageUploadRestricted:", [v16 payloadAsNSInteger] < 1);
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
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 addressBook];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSearchAddressBook
{
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 searchAddressBook];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v7 = [(CoreDAVContainer *)self resourceType];
      v6 = [v7 isTypeWithNameSpace:@"urn:ietf:params:xml:ns:carddav" andName:@"directory"];
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

  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 shared];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end