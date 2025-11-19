@interface OCPPackagePart
- (OCPPackage)package;
- (OCPPackagePart)initWithLocation:(id)a3 relationshipsXml:(_xmlDoc *)a4 package:(id)a5;
- (_xmlNode)fallbackNodeForChoiceNode:(_xmlNode *)a3;
- (id)contentType;
- (id)firstPartWithRelationshipOfType:(id)a3;
- (id)relationshipForIdentifier:(id)a3;
- (id)relationshipsByType:(id)a3;
- (void)dealloc;
- (void)setFallbackNode:(_xmlNode *)a3 forChoiceNode:(_xmlNode *)a4;
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
  v4 = [(NSMutableDictionary *)self->mAlternateContentMap allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) pointerValue];
        if (v8)
        {
          xmlFreeNode(v8);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)relationshipForIdentifier:(id)a3
{
  v3 = [(OCPPackageRelationshipCollection *)self->mRelationships relationshipForIdentifier:a3];

  return v3;
}

- (id)relationshipsByType:(id)a3
{
  v3 = [(OCPPackageRelationshipCollection *)self->mRelationships relationshipsByType:a3];

  return v3;
}

- (id)firstPartWithRelationshipOfType:(id)a3
{
  v4 = [(OCPPackagePart *)self relationshipsByType:a3];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectAtIndex:0];
    WeakRetained = objc_loadWeakRetained(&self->mPackage);
    v8 = [v6 targetLocation];
    v9 = [WeakRetained partForLocation:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_xmlNode)fallbackNodeForChoiceNode:(_xmlNode *)a3
{
  mAlternateContentMap = self->mAlternateContentMap;
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:a3];
  v5 = [(NSMutableDictionary *)mAlternateContentMap objectForKey:v4];
  v6 = [v5 pointerValue];

  return v6;
}

- (void)setFallbackNode:(_xmlNode *)a3 forChoiceNode:(_xmlNode *)a4
{
  mAlternateContentMap = self->mAlternateContentMap;
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:a3];
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:a4];
  [(NSMutableDictionary *)mAlternateContentMap setObject:v7 forKey:v6];
}

- (OCPPackagePart)initWithLocation:(id)a3 relationshipsXml:(_xmlDoc *)a4 package:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(OCPPackagePart *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->mLocation, a3);
    v13 = [[OCPPackageRelationshipCollection alloc] initWithRelationshipsXml:a4 baseLocation:v12->mLocation];
    mRelationships = v12->mRelationships;
    v12->mRelationships = v13;

    objc_storeWeak(&v12->mPackage, v10);
    v15 = objc_opt_new();
    mAlternateContentMap = v12->mAlternateContentMap;
    v12->mAlternateContentMap = v15;

    v17 = v12;
  }

  return v12;
}

@end