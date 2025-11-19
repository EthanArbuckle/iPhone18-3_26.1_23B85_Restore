@interface OCPPackageRelationshipCollection
- (OCPPackageRelationshipCollection)initWithRelationshipsXml:(_xmlDoc *)a3 baseLocation:(id)a4;
- (id)relationshipForIdentifier:(id)a3;
- (id)relationshipsByType:(id)a3;
@end

@implementation OCPPackageRelationshipCollection

- (OCPPackageRelationshipCollection)initWithRelationshipsXml:(_xmlDoc *)a3 baseLocation:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mIdentifierMap = self->mIdentifierMap;
  self->mIdentifierMap = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mTypeMap = self->mTypeMap;
  self->mTypeMap = v9;

  if (a3)
  {
    RootElement = xmlDocGetRootElement(a3);
    if (!RootElement)
    {
      [OCPException raise:@"OCPPackageError" format:@"No relationship root element"];
    }

    v12 = xmlSearchNsByHref(a3, RootElement, "http://schemas.openxmlformats.org/package/2006/relationships");
    if (!v12)
    {
      [OCPException raise:@"OCPPackageError" format:@"Could not find relationships namespace"];
    }

    if (!RootElement || (ns = RootElement->ns) == 0 || !xmlStrEqual(ns->href, v12->href) || !xmlStrEqual(RootElement->name, "Relationships"))
    {
      [OCPException raise:@"OCPPackageError" format:@"Could not find relationships root"];
    }

    for (i = RootElement->children; i; i = i->next)
    {
      if (i->type == XML_ELEMENT_NODE && xmlStrEqual(i->ns->href, v12->href) && xmlStrEqual(i->name, "Relationship"))
      {
        v15 = [[OCPPackageRelationship alloc] initWithXmlElement:i baseLocation:v6];
        v16 = [(OCPPackageRelationship *)v15 identifier];
        [(NSMutableDictionary *)self->mIdentifierMap setObject:v15 forKey:v16];
        v17 = [(OCPPackageRelationship *)v15 type];
        v18 = [(NSMutableDictionary *)self->mTypeMap objectForKey:v17];
        if (!v18)
        {
          v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
        }

        [v18 addObject:v15];
      }
    }
  }

  return self;
}

- (id)relationshipForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mIdentifierMap objectForKey:a3];

  return v3;
}

- (id)relationshipsByType:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mTypeMap objectForKey:a3];

  return v3;
}

@end