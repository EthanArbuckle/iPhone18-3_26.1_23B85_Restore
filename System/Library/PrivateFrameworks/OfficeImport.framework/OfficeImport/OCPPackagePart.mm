@interface OCPPackagePart
- (OCPPackage)package;
- (OCPPackagePart)initWithLocation:(id)location relationshipsXml:(_xmlDoc *)xml package:(id)package;
- (_xmlNode)fallbackNodeForChoiceNode:(_xmlNode *)node;
- (id)contentType;
- (id)firstPartWithRelationshipOfType:(id)type;
- (id)relationshipForIdentifier:(id)identifier;
- (id)relationshipsByType:(id)type;
- (void)dealloc;
- (void)setFallbackNode:(_xmlNode *)node forChoiceNode:(_xmlNode *)choiceNode;
@end

@implementation OCPPackagePart

- (OCPPackage)package
{
  WeakRetained = objc_loadWeakRetained(&self->mPackage);

  return WeakRetained;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  mDocument = self->mDocument;
  if (mDocument)
  {
    xmlFreeDoc(mDocument);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->mAlternateContentMap allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        pointerValue = [*(*(&v10 + 1) + 8 * v7) pointerValue];
        if (pointerValue)
        {
          xmlFreeNode(pointerValue);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = OCPPackagePart;
  [(OCPPackagePart *)&v9 dealloc];
}

- (id)contentType
{
  WeakRetained = objc_loadWeakRetained(&self->mPackage);
  v4 = [WeakRetained contentTypeForPartLocation:self->mLocation];

  return v4;
}

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

- (id)firstPartWithRelationshipOfType:(id)type
{
  v4 = [(OCPPackagePart *)self relationshipsByType:type];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectAtIndex:0];
    WeakRetained = objc_loadWeakRetained(&self->mPackage);
    targetLocation = [v6 targetLocation];
    v9 = [WeakRetained partForLocation:targetLocation];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_xmlNode)fallbackNodeForChoiceNode:(_xmlNode *)node
{
  mAlternateContentMap = self->mAlternateContentMap;
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:node];
  v5 = [(NSMutableDictionary *)mAlternateContentMap objectForKey:v4];
  pointerValue = [v5 pointerValue];

  return pointerValue;
}

- (void)setFallbackNode:(_xmlNode *)node forChoiceNode:(_xmlNode *)choiceNode
{
  mAlternateContentMap = self->mAlternateContentMap;
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:node];
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:choiceNode];
  [(NSMutableDictionary *)mAlternateContentMap setObject:v7 forKey:v6];
}

- (OCPPackagePart)initWithLocation:(id)location relationshipsXml:(_xmlDoc *)xml package:(id)package
{
  locationCopy = location;
  packageCopy = package;
  v11 = [(OCPPackagePart *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->mLocation, location);
    v13 = [[OCPPackageRelationshipCollection alloc] initWithRelationshipsXml:xml baseLocation:v12->mLocation];
    mRelationships = v12->mRelationships;
    v12->mRelationships = v13;

    objc_storeWeak(&v12->mPackage, packageCopy);
    v15 = objc_opt_new();
    mAlternateContentMap = v12->mAlternateContentMap;
    v12->mAlternateContentMap = v15;

    v17 = v12;
  }

  return v12;
}

@end