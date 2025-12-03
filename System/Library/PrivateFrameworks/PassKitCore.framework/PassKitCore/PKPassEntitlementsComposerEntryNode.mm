@interface PKPassEntitlementsComposerEntryNode
- (BOOL)enabled;
- (BOOL)hasEnabledEntitlements;
- (BOOL)intraAccountSharingEnabled;
- (BOOL)isManagingEntitlementConfiguration;
- (BOOL)isManagingTimeConfiguration;
- (NSArray)allPossibleCapabilitySets;
- (PKPassEntitlementsComposerEntryNode)initWithIdentifier:(id)identifier parentEntitlementComposer:(id)composer;
- (PKPassEntitlementsComposerEntryNode)parent;
- (PKPassShareTimeConfiguration)possibleTimeConfiguration;
- (PKPassShareTimeConfiguration)timeConfiguration;
- (id)_allPossibleCapabilityForAccumulateBlock:(id)block;
- (id)_effectiveValueForProperty:(unint64_t)property ofType:(Class)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)_leastRestrictivePossibleCapabilityForAccumulateBlock:(id)block maxCapability:(unint64_t)capability;
- (unint64_t)_mostRestrictiveCapabilityForAccumulateBlock:(id)block maxCapability:(unint64_t)capability;
- (unint64_t)manageability;
- (unint64_t)maxSelectionCount;
- (unint64_t)shareability;
- (unint64_t)visibility;
- (void)_mutateCapability:(id)capability;
- (void)childEntryNodeDidSetProperty:(unint64_t)property updatedChildNode:(id)node;
- (void)enumerateEntitlementEntries:(id)entries;
- (void)parentEntryNodeWillSetProperty:(unint64_t)property updatedParentNode:(id)node;
- (void)resetCapabilities;
- (void)setEnabled:(BOOL)enabled notifyIfRoot:(BOOL)root;
- (void)setIntraAccountSharingEnabled:(BOOL)enabled;
- (void)setIsManagingEntitlementConfiguration:(BOOL)configuration;
- (void)setIsManagingTimeConfiguration:(BOOL)configuration;
- (void)setManageability:(unint64_t)manageability;
- (void)setShareability:(unint64_t)shareability;
- (void)setTimeConfiguration:(id)configuration;
- (void)setVisibility:(unint64_t)visibility;
- (void)updateCapabilitiesWithSet:(id)set;
@end

@implementation PKPassEntitlementsComposerEntryNode

- (PKPassEntitlementsComposerEntryNode)initWithIdentifier:(id)identifier parentEntitlementComposer:(id)composer
{
  identifierCopy = identifier;
  composerCopy = composer;
  v16.receiver = self;
  v16.super_class = PKPassEntitlementsComposerEntryNode;
  v9 = [(PKPassEntitlementsComposerEntryNode *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeWeak(&v10->_parentEntitlementComposer, composerCopy);
    v10->_editable = 1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v10->_properties;
    v10->_properties = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    children = v10->_children;
    v10->_children = v13;
  }

  return v10;
}

id __59__PKPassEntitlementsComposerEntryNode_possibleShareability__block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "possibleShareability")}];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

id __57__PKPassEntitlementsComposerEntryNode_possibleVisibility__block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "possibleVisibility")}];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

id __60__PKPassEntitlementsComposerEntryNode_possibleManageability__block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "possibleManageability")}];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

id __66__PKPassEntitlementsComposerEntryNode_possibleIntraAccountSharing__block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "possibleIntraAccountSharing")}];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (NSArray)allPossibleCapabilitySets
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEntitlementComposer);
  v4 = [WeakRetained _allPossibleCapabilitySetsForView:self];

  return v4;
}

- (PKPassShareTimeConfiguration)possibleTimeConfiguration
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_children;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        possibleTimeConfiguration = [*(*(&v13 + 1) + 8 * i) possibleTimeConfiguration];
        v9 = possibleTimeConfiguration;
        if (possibleTimeConfiguration)
        {
          if (v5)
          {
            v10 = [v5 intersect:possibleTimeConfiguration];

            v5 = v10;
          }

          else
          {
            v5 = possibleTimeConfiguration;
          }
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if ([v5 support])
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)shareability
{
  v3 = [(PKPassEntitlementsComposerEntryNode *)self _effectiveValueForProperty:1 ofType:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    shareability = [v3 shareability];
  }

  else
  {
    shareability = [(PKPassEntitlementsComposerEntryNode *)self _mostRestrictiveCapabilityForAccumulateBlock:&__block_literal_global_119 maxCapability:999];
  }

  v6 = shareability;

  return v6;
}

- (void)setShareability:(unint64_t)shareability
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__PKPassEntitlementsComposerEntryNode_setShareability___block_invoke;
  v3[3] = &__block_descriptor_40_e47_v16__0__PKMutablePassEntitlementCapabilitySet_8l;
  v3[4] = shareability;
  [(PKPassEntitlementsComposerEntryNode *)self _mutateCapability:v3];
}

- (unint64_t)visibility
{
  v3 = [(PKPassEntitlementsComposerEntryNode *)self _effectiveValueForProperty:1 ofType:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    visibility = [v3 visibility];
  }

  else
  {
    visibility = [(PKPassEntitlementsComposerEntryNode *)self _mostRestrictiveCapabilityForAccumulateBlock:&__block_literal_global_123_3 maxCapability:2];
  }

  v6 = visibility;

  return v6;
}

- (void)setVisibility:(unint64_t)visibility
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__PKPassEntitlementsComposerEntryNode_setVisibility___block_invoke;
  v3[3] = &__block_descriptor_40_e47_v16__0__PKMutablePassEntitlementCapabilitySet_8l;
  v3[4] = visibility;
  [(PKPassEntitlementsComposerEntryNode *)self _mutateCapability:v3];
}

- (unint64_t)manageability
{
  v3 = [(PKPassEntitlementsComposerEntryNode *)self _effectiveValueForProperty:1 ofType:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    manageability = [v3 manageability];
  }

  else
  {
    manageability = [(PKPassEntitlementsComposerEntryNode *)self _mostRestrictiveCapabilityForAccumulateBlock:&__block_literal_global_125_3 maxCapability:-1];
  }

  v6 = manageability;

  return v6;
}

- (void)setManageability:(unint64_t)manageability
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PKPassEntitlementsComposerEntryNode_setManageability___block_invoke;
  v3[3] = &__block_descriptor_40_e47_v16__0__PKMutablePassEntitlementCapabilitySet_8l;
  v3[4] = manageability;
  [(PKPassEntitlementsComposerEntryNode *)self _mutateCapability:v3];
}

- (BOOL)intraAccountSharingEnabled
{
  v3 = [(PKPassEntitlementsComposerEntryNode *)self _effectiveValueForProperty:1 ofType:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    intraAccountSharingEnabled = [v3 intraAccountSharingEnabled];
  }

  else
  {
    intraAccountSharingEnabled = [(PKPassEntitlementsComposerEntryNode *)self _mostRestrictiveCapabilityForAccumulateBlock:&__block_literal_global_127_0 maxCapability:1]== 1;
  }

  return intraAccountSharingEnabled;
}

- (void)setIntraAccountSharingEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__PKPassEntitlementsComposerEntryNode_setIntraAccountSharingEnabled___block_invoke;
  v3[3] = &__block_descriptor_33_e47_v16__0__PKMutablePassEntitlementCapabilitySet_8l;
  enabledCopy = enabled;
  [(PKPassEntitlementsComposerEntryNode *)self _mutateCapability:v3];
}

- (void)updateCapabilitiesWithSet:(id)set
{
  setCopy = set;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKPassEntitlementsComposerEntryNode_updateCapabilitiesWithSet___block_invoke;
  v6[3] = &unk_1E79E2AA8;
  v7 = setCopy;
  v5 = setCopy;
  [(PKPassEntitlementsComposerEntryNode *)self _mutateCapability:v6];
}

void __65__PKPassEntitlementsComposerEntryNode_updateCapabilitiesWithSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setShareability:{objc_msgSend(v3, "shareability")}];
  [v4 setVisibility:{objc_msgSend(*(a1 + 32), "visibility")}];
  [v4 setManageability:{objc_msgSend(*(a1 + 32), "manageability")}];
  [v4 setIntraAccountSharingEnabled:{objc_msgSend(*(a1 + 32), "intraAccountSharingEnabled")}];
}

- (void)resetCapabilities
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56__PKPassEntitlementsComposerEntryNode_resetCapabilities__block_invoke;
  v2[3] = &unk_1E79E2AA8;
  v2[4] = self;
  [(PKPassEntitlementsComposerEntryNode *)self _mutateCapability:v2];
}

void __56__PKPassEntitlementsComposerEntryNode_resetCapabilities__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setShareability:{objc_msgSend(v3, "possibleShareability")}];
  [v4 setVisibility:{objc_msgSend(*(a1 + 32), "possibleVisibility")}];
  [v4 setManageability:{objc_msgSend(*(a1 + 32), "possibleManageability")}];
  [v4 setIntraAccountSharingEnabled:{objc_msgSend(*(a1 + 32), "possibleIntraAccountSharing")}];
}

- (PKPassShareTimeConfiguration)timeConfiguration
{
  v3 = objc_opt_class();

  return [(PKPassEntitlementsComposerEntryNode *)self _effectiveValueForProperty:2 ofType:v3];
}

- (void)setTimeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(PKPassEntitlementsComposerEntryNode *)self parentEntryNodeWillSetProperty:2 updatedParentNode:self];
  if (configurationCopy)
  {
    [(NSMutableDictionary *)self->_properties setObject:configurationCopy forKeyedSubscript:&unk_1F23B5870];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)self->_properties setObject:null forKeyedSubscript:&unk_1F23B5870];
  }

  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained childEntryNodeDidSetProperty:2 updatedChildNode:self];
}

- (BOOL)isManagingTimeConfiguration
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:&unk_1F23B5870];
  v3 = v2 != 0;

  return v3;
}

- (void)setIsManagingTimeConfiguration:(BOOL)configuration
{
  v15 = *MEMORY[0x1E69E9840];
  if (configuration)
  {

    [(PKPassEntitlementsComposerEntryNode *)self setTimeConfiguration:0];
  }

  else
  {
    [(NSMutableDictionary *)self->_properties setObject:0 forKeyedSubscript:&unk_1F23B5870];
    possibleTimeConfiguration = [(PKPassEntitlementsComposerEntryNode *)self possibleTimeConfiguration];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_children;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) setTimeConfiguration:{possibleTimeConfiguration, v10}];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)isManagingEntitlementConfiguration
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:&unk_1F23B5888];
  v3 = v2 != 0;

  return v3;
}

- (void)setIsManagingEntitlementConfiguration:(BOOL)configuration
{
  v15 = *MEMORY[0x1E69E9840];
  if (configuration)
  {

    [(PKPassEntitlementsComposerEntryNode *)self resetCapabilities];
  }

  else
  {
    v4 = [[PKPassEntitlementCapabilitySet alloc] initWithLocalizedName:&stru_1F227FD28 isOwner:0 shareability:[(PKPassEntitlementsComposerEntryNode *)self shareability] manageability:[(PKPassEntitlementsComposerEntryNode *)self manageability] visibility:[(PKPassEntitlementsComposerEntryNode *)self visibility]];
    [(NSMutableDictionary *)self->_properties setObject:0 forKeyedSubscript:&unk_1F23B5888];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_children;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) updateCapabilitiesWithSet:{v4, v10}];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)enabled
{
  v2 = [(PKPassEntitlementsComposerEntryNode *)self _effectiveValueForProperty:0 ofType:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setEnabled:(BOOL)enabled notifyIfRoot:(BOOL)root
{
  rootCopy = root;
  enabledCopy = enabled;
  [(PKPassEntitlementsComposerEntryNode *)self parentEntryNodeWillSetProperty:0 updatedParentNode:self];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [(NSMutableDictionary *)self->_properties setObject:v7 forKeyedSubscript:&unk_1F23B58A0];

  WeakRetained = objc_loadWeakRetained(&self->_parent);
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_parent);
    [v9 childEntryNodeDidSetProperty:0 updatedChildNode:self];
  }

  else
  {
    if (!rootCopy)
    {
      return;
    }

    v9 = objc_loadWeakRetained(&self->_parentEntitlementComposer);
    [v9 _rootEntryNodeDidSetEnabled:self];
  }
}

- (unint64_t)maxSelectionCount
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEntitlementComposer);
  maxSelectionCount = [WeakRetained maxSelectionCount];

  return maxSelectionCount;
}

- (void)enumerateEntitlementEntries:(id)entries
{
  v15 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_children;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) enumerateEntitlementEntries:{entriesCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)parentEntryNodeWillSetProperty:(unint64_t)property updatedParentNode:(id)node
{
  v20 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  v7 = nodeCopy;
  if (self->_editable)
  {
    if (self != nodeCopy)
    {
      properties = self->_properties;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:property];
      [(NSMutableDictionary *)properties setObject:0 forKeyedSubscript:v9];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = self->_children;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14++) parentEntryNodeWillSetProperty:property updatedParentNode:self];
        }

        while (v12 != v14);
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKPassEntitlementsComposer: '%lu' should not be updated on non editable composer", property}];
  }
}

- (void)childEntryNodeDidSetProperty:(unint64_t)property updatedChildNode:(id)node
{
  v29 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  if (self->_editable)
  {
    properties = self->_properties;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:property];
    v9 = [(NSMutableDictionary *)properties objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = self->_properties;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:property];
      v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];

      v13 = self->_properties;
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:property];
      [(NSMutableDictionary *)v13 setObject:0 forKeyedSubscript:v14];

      WeakRetained = objc_loadWeakRetained(&self->_parent);
      [WeakRetained childEntryNodeDidSetProperty:property updatedChildNode:self];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v16 = self->_children;
      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        do
        {
          v20 = 0;
          do
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v24 + 1) + 8 * v20);
            if (v21 != nodeCopy)
            {
              v22 = v21[2];
              v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:property];
              [v22 setObject:v12 forKeyedSubscript:v23];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v18);
      }
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKPassEntitlementsComposer: '%lu' should not be updated on non editable composer", property}];
  }
}

- (void)_mutateCapability:(id)capability
{
  capabilityCopy = capability;
  [(PKPassEntitlementsComposerEntryNode *)self parentEntryNodeWillSetProperty:1 updatedParentNode:self];
  v5 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:&unk_1F23B5888];
  if (!v5)
  {
    v5 = [(PKPassEntitlementCapabilitySet *)[PKMutablePassEntitlementCapabilitySet alloc] initWithLocalizedName:&stru_1F227FD28 isOwner:0 shareability:[(PKPassEntitlementsComposerEntryNode *)self possibleShareability] manageability:[(PKPassEntitlementsComposerEntryNode *)self possibleManageability] visibility:[(PKPassEntitlementsComposerEntryNode *)self possibleVisibility]];
  }

  v7 = v5;
  [(NSMutableDictionary *)self->_properties setObject:0 forKeyedSubscript:&unk_1F23B5888];
  capabilityCopy[2](capabilityCopy, v7);

  [(NSMutableDictionary *)self->_properties setObject:v7 forKeyedSubscript:&unk_1F23B5888];
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained childEntryNodeDidSetProperty:1 updatedChildNode:self];
}

- (unint64_t)_mostRestrictiveCapabilityForAccumulateBlock:(id)block maxCapability:(unint64_t)capability
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([(PKPassEntitlementsComposerEntryNode *)self hasEnabledEntitlements])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_children;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 enabled])
          {
            v13 = blockCopy[2](blockCopy, v12);
            if (v13 < capability)
            {
              capability = v13;
            }
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    capability = 0;
  }

  return capability;
}

- (unint64_t)_leastRestrictivePossibleCapabilityForAccumulateBlock:(id)block maxCapability:(unint64_t)capability
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_children;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = blockCopy[2](blockCopy, *(*(&v25 + 1) + 8 * i));
        v11 = v10;
        if (v10 && (v23 = 0u, v24 = 0u, v21 = 0u, v22 = 0u, (v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16]) != 0))
        {
          v13 = v12;
          v14 = 0;
          v15 = *v22;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(v11);
              }

              unsignedIntegerValue = [*(*(&v21 + 1) + 8 * j) unsignedIntegerValue];
              if (v14 <= unsignedIntegerValue)
              {
                v14 = unsignedIntegerValue;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        if (capability >= v14)
        {
          capability = v14;
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  return capability;
}

- (id)_allPossibleCapabilityForAccumulateBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_children;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x1E695DFD8]);
        v12 = blockCopy[2](blockCopy, v10);
        v13 = [v11 initWithArray:v12];

        if (v7)
        {
          [v7 intersectSet:v13];
        }

        else
        {
          v7 = [v13 mutableCopy];
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  allObjects = [v7 allObjects];
  v15 = [allObjects sortedArrayUsingComparator:&__block_literal_global_147_0];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  v18 = v17;

  return v17;
}

- (BOOL)hasEnabledEntitlements
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_children;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) enabled])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)_effectiveValueForProperty:(unint64_t)property ofType:(Class)type
{
  selfCopy = self;
  if (!selfCopy)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_12;
  }

  v6 = selfCopy;
  v7 = *MEMORY[0x1E695D930];
  while (1)
  {
    properties = v6->_properties;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:property];
    v10 = [(NSMutableDictionary *)properties objectForKeyedSubscript:v9];

    if (v10)
    {
      break;
    }

LABEL_7:
    WeakRetained = objc_loadWeakRetained(&v6->_parent);

    v6 = WeakRetained;
    if (!WeakRetained)
    {
      goto LABEL_8;
    }
  }

  null = [MEMORY[0x1E695DFB0] null];

  if (v10 == null)
  {
    v13 = 0;
    goto LABEL_11;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:v7 format:{@"PKPassEntitlementsComposer: Found unexpected value %@ for property '%lu'", v10, property}];
    goto LABEL_7;
  }

  v13 = v10;
LABEL_11:

LABEL_12:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  WeakRetained = objc_loadWeakRetained(&self->_parentEntitlementComposer);
  v7 = [v4 initWithIdentifier:identifier parentEntitlementComposer:WeakRetained];

  *(v7 + 24) = self->_editable;
  v8 = [(NSMutableDictionary *)self->_properties mutableCopy];
  v9 = *(v7 + 16);
  *(v7 + 16) = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = *(v7 + 48);
  *(v7 + 48) = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_children;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copy];
        objc_storeWeak(v17 + 5, v7);
        [*(v7 + 48) addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v7;
}

- (PKPassEntitlementsComposerEntryNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end