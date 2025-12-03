@interface OCPPackage
- (OCPPackage)initWithRelationshipsXml:(_xmlDoc *)xml corePropertiesXml:(_xmlDoc *)propertiesXml appPropertiesXml:(_xmlDoc *)appPropertiesXml contentTypesXml:(_xmlDoc *)typesXml;
- (id)contentTypeForPartLocation:(id)location;
- (id)mainDocumentPart;
- (id)partByRelationshipType:(id)type;
- (id)relationshipForIdentifier:(id)identifier;
- (id)relationshipsByType:(id)type;
- (void)readContentTypeOverrideFromElement:(_xmlNode *)element;
- (void)readContentTypesXml:(_xmlDoc *)xml;
- (void)readDefaultContentTypeFromElement:(_xmlNode *)element;
@end

@implementation OCPPackage

- (id)relationshipForIdentifier:(id)identifier
{
  v3 = [(OCPPackageRelationshipCollection *)self->mRelationships relationshipForIdentifier:identifier];

  return v3;
}

- (id)relationshipsByType:(id)type
{
  v3 = [(OCPPackageRelationshipCollection *)self->mRelationships relationshipsByType:type];

  return v3;
}

- (id)partByRelationshipType:(id)type
{
  v4 = [(OCPPackageRelationshipCollection *)self->mRelationships relationshipsByType:type];
  v5 = [v4 objectAtIndex:0];
  targetLocation = [v5 targetLocation];
  v7 = [(OCPPackage *)self partForLocation:targetLocation];

  return v7;
}

- (id)mainDocumentPart
{
  v3 = [(OCPPackage *)self relationshipsByType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"];
  v4 = [v3 count];

  if (v4)
  {
    v5 = @"http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument";
  }

  else
  {
    v5 = @"http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument";
  }

  v6 = [(OCPPackage *)self partByRelationshipType:v5];

  return v6;
}

- (OCPPackage)initWithRelationshipsXml:(_xmlDoc *)xml corePropertiesXml:(_xmlDoc *)propertiesXml appPropertiesXml:(_xmlDoc *)appPropertiesXml contentTypesXml:(_xmlDoc *)typesXml
{
  v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"/"];
  v12 = [[OCPPackageRelationshipCollection alloc] initWithRelationshipsXml:xml baseLocation:v11];
  mRelationships = self->mRelationships;
  self->mRelationships = v12;

  if (propertiesXml)
  {
    v14 = [[OCPPackageProperties alloc] initWithCoreXml:propertiesXml appXml:appPropertiesXml];
    mProperties = self->mProperties;
    self->mProperties = v14;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mDefaultContentTypes = self->mDefaultContentTypes;
  self->mDefaultContentTypes = v16;

  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mContentTypeOverrides = self->mContentTypeOverrides;
  self->mContentTypeOverrides = v18;

  [(OCPPackage *)self readContentTypesXml:typesXml];
  return self;
}

- (id)contentTypeForPartLocation:(id)location
{
  path = [location path];
  v5 = [(NSMutableDictionary *)self->mContentTypeOverrides objectForKey:path];
  if (!v5)
  {
    mDefaultContentTypes = self->mDefaultContentTypes;
    pathExtension = [path pathExtension];
    v5 = [(NSMutableDictionary *)mDefaultContentTypes objectForKey:pathExtension];

    if (!v5)
    {
      v8 = self->mDefaultContentTypes;
      pathExtension2 = [path pathExtension];
      lowercaseString = [pathExtension2 lowercaseString];
      v5 = [(NSMutableDictionary *)v8 objectForKey:lowercaseString];

      if (!v5)
      {
        v11 = self->mDefaultContentTypes;
        pathExtension3 = [path pathExtension];
        uppercaseString = [pathExtension3 uppercaseString];
        v14 = [(NSMutableDictionary *)v11 objectForKey:uppercaseString];

        if (v14)
        {
          v5 = v14;
        }

        else
        {
          v5 = @"application/octet-stream";
        }
      }
    }
  }

  return v5;
}

- (void)readContentTypesXml:(_xmlDoc *)xml
{
  RootElement = xmlDocGetRootElement(xml);
  if (!RootElement)
  {
    [OCPException raise:@"OCPPackageError" format:@"No content types root element"];
  }

  v6 = xmlSearchNsByHref(xml, RootElement, "http://schemas.openxmlformats.org/package/2006/content-types");
  if (v6)
  {
    if (RootElement)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [OCPException raise:@"OCPPackageError" format:@"Could not find content types namespace"];
    if (RootElement)
    {
LABEL_5:
      ns = RootElement->ns;
      if (!ns || !xmlStrEqual(ns->href, v6->href) || !xmlStrEqual(RootElement->name, "Types"))
      {
        [OCPException raise:@"OCPPackageError" format:@"Could not find content types root"];
      }

      for (i = RootElement->children; i; i = i->next)
      {
        if (i->type == XML_ELEMENT_NODE && i->ns == v6)
        {
          if (xmlStrEqual(i->name, "Default"))
          {
            [(OCPPackage *)self readDefaultContentTypeFromElement:i];
          }

          else if (xmlStrEqual(i->name, "Override"))
          {
            [(OCPPackage *)self readContentTypeOverrideFromElement:i];
          }
        }
      }

      return;
    }
  }

  [OCPException raise:@"OCPPackageError" format:@"Could not find content types root"];
}

- (void)readDefaultContentTypeFromElement:(_xmlNode *)element
{
  properties = element->properties;
  if (!properties)
  {
    v9 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  v9 = 0;
  v5 = 0;
  do
  {
    if (properties->ns)
    {
      goto LABEL_9;
    }

    if (xmlStrEqual(properties->name, "Extension"))
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:properties];
      v7 = v9;
      v9 = v6;
    }

    else
    {
      if (!xmlStrEqual(properties->name, "ContentType"))
      {
        goto LABEL_9;
      }

      v8 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:properties];
      v7 = v5;
      v5 = v8;
    }

LABEL_9:
    properties = properties->next;
  }

  while (properties);
  if (v9 && v5)
  {
    [(NSMutableDictionary *)self->mDefaultContentTypes setObject:v5 forKey:v9];
    goto LABEL_15;
  }

LABEL_14:
  [OCPException raise:@"OCPPackageError" format:@"Could not find required content type attributes"];
LABEL_15:
}

- (void)readContentTypeOverrideFromElement:(_xmlNode *)element
{
  properties = element->properties;
  if (!properties)
  {
    v9 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  v9 = 0;
  v5 = 0;
  do
  {
    if (properties->ns)
    {
      goto LABEL_9;
    }

    if (xmlStrEqual(properties->name, "PartName"))
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:properties];
      v7 = v9;
      v9 = v6;
    }

    else
    {
      if (!xmlStrEqual(properties->name, "ContentType"))
      {
        goto LABEL_9;
      }

      v8 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:properties];
      v7 = v5;
      v5 = v8;
    }

LABEL_9:
    properties = properties->next;
  }

  while (properties);
  if (v9 && v5)
  {
    [(NSMutableDictionary *)self->mContentTypeOverrides setObject:v5 forKey:v9];
    goto LABEL_15;
  }

LABEL_14:
  [OCPException raise:@"OCPPackageError" format:@"Could not find required content type attributes"];
LABEL_15:
}

@end