@interface OCPPackageRelationship
- (OCPPackageRelationship)initWithXmlElement:(_xmlNode *)element baseLocation:(id)location;
- (void)readFromElement:(_xmlNode *)element baseLocation:(id)location;
@end

@implementation OCPPackageRelationship

- (OCPPackageRelationship)initWithXmlElement:(_xmlNode *)element baseLocation:(id)location
{
  locationCopy = location;
  self->mTargetMode = 0;
  [(OCPPackageRelationship *)self readFromElement:element baseLocation:locationCopy];

  return self;
}

- (void)readFromElement:(_xmlNode *)element baseLocation:(id)location
{
  locationCopy = location;
  properties = element->properties;
  for (i = 0; properties; properties = properties->next)
  {
    if (!properties->ns)
    {
      if (xmlStrEqual(properties->name, "Id"))
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:properties];
        mIdentifier = self->mIdentifier;
        self->mIdentifier = v8;
LABEL_7:

        continue;
      }

      if (xmlStrEqual(properties->name, "Type"))
      {
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:properties];
        mIdentifier = self->mType;
        self->mType = v10;
        goto LABEL_7;
      }

      if (xmlStrEqual(properties->name, "Target"))
      {
        v11 = [objc_alloc(MEMORY[0x277CCAB68]) tc_initWithValueOfXmlAttribute:properties];
        if (([v11 isEqualToString:@"NULL"] & 1) == 0)
        {
          [v11 replaceOccurrencesOfString:@"\\" withString:@"/" options:0 range:{0, objc_msgSend(v11, "length"")}];
          v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11 relativeToURL:locationCopy];
          mTargetLocation = self->mTargetLocation;
          self->mTargetLocation = v12;
        }

        i = 1;
        continue;
      }

      if (xmlStrEqual(properties->name, "TargetMode"))
      {
        String = xmlNodeListGetString(properties->doc, properties->children, 1);
        if (xmlStrEqual(String, "External"))
        {
          v15 = 1;
          goto LABEL_19;
        }

        if (xmlStrEqual(String, "Internal"))
        {
          v15 = 0;
LABEL_19:
          self->mTargetMode = v15;
        }

        else
        {
          [OCPException raise:@"OCPPackageRelationshipError" format:@"Unexpected target mode value: %s", String];
        }

        free(String);
      }
    }
  }

  if (!self->mIdentifier || ((self->mType != 0) & i) == 0)
  {
    [OCPException raise:@"OCPPackageRelationshipError" format:@"Could not find required relationship attributes"];
  }
}

@end