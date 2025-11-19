@interface SUUIViewElement
- (BOOL)canMoveWithinCollection;
- (BOOL)descendsFromElementWithType:(unint64_t)a3;
- (BOOL)handlesBackgroundColorDirectly;
- (BOOL)isDescendentFromViewElement:(id)a3;
- (BOOL)isEnabled;
- (BOOL)rendersWithParallax;
- (BOOL)rendersWithPerspective;
- (IKEntityValueProviding)entityValueProvider;
- (NSArray)flattenedChildren;
- (NSCopying)uniquingMapKey;
- (NSSet)entityValueProperties;
- (NSSet)personalizationLibraryItems;
- (NSString)indexBarEntryID;
- (SUUIEntityProviding)entityProvider;
- (SUUIEntityProviding)explicitEntityProvider;
- (SUUIViewElement)elementWithIdentifier:(id)a3;
- (SUUIViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)ancestorElementMatchingPredicate:(id)a3;
- (id)ancestorElementOfType:(unint64_t)a3;
- (id)applyUpdatesWithElement:(id)a3;
- (id)expandableLabelElementForWidth:(double)a3 context:(id)a4;
- (id)featureWithName:(id)a3;
- (id)firstChildForElementName:(id)a3;
- (id)firstChildForElementType:(unint64_t)a3;
- (id)firstDescendentWithIndexBarEntryID:(id)a3;
- (void)_entityProviderDidInvalidateNotification:(id)a3;
- (void)_entityValueProviderDidChange;
- (void)_registerForNotificationsForEntityProvider:(id)a3;
- (void)_unregisterForNotificationsForEntityProvider:(id)a3;
- (void)dealloc;
- (void)enumerateChildrenUsingBlock:(id)a3;
- (void)enumerateViewElementsWithDictionary:(id)a3 factory:(id)a4 usingBlock:(id)a5;
- (void)setEntityValueProvider:(id)a3;
@end

@implementation SUUIViewElement

- (id)expandableLabelElementForWidth:(double)a3 context:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__16;
  v18 = __Block_byref_object_dispose__16;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SUUIViewElement_SUUIReviewListPageSection__expandableLabelElementForWidth_context___block_invoke;
  v10[3] = &unk_2798F5E50;
  v7 = v6;
  v13 = a3;
  v11 = v7;
  v12 = &v14;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __85__SUUIViewElement_SUUIReviewListPageSection__expandableLabelElementForWidth_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ([v8 elementType] == 138 && objc_msgSend(v8, "labelViewStyle") == 1)
  {
    v6 = [*(a1 + 32) editorialLayoutForLabelElement:v8 width:*(a1 + 48)];
    if (([*(a1 + 32) isEditorialLayoutExpanded:v6] & 1) == 0)
    {
      v7 = [v6 bodyTextLayoutForOrientation:0];
      if ([v7 requiresTruncation])
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *a3 = 1;
      }
    }
  }
}

- (SUUIViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = SUUIViewElement;
  v9 = [(SUUIViewElement *)&v15 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"pin"];
    if ([v10 isEqualToString:@"alone"])
    {
      v11 = 2;
    }

    else if ([v10 isEqualToString:@"group"])
    {
      v11 = 3;
    }

    else if ([v10 isEqualToString:@"rubberband"])
    {
      v11 = 4;
    }

    else if ([v10 isEqualToString:@"group-rubberband"])
    {
      v11 = 5;
    }

    else
    {
      if (![v10 length])
      {
LABEL_14:
        v13 = [v8 getAttribute:@"pinGroup"];
        v9->_pinGroup = [v13 isEqualToString:@"before-top"];

        goto LABEL_15;
      }

      v12 = [v10 BOOLValue];
      v11 = 1;
      if (v12)
      {
        v11 = 2;
      }
    }

    v9->_pinStyle = v11;
    goto LABEL_14;
  }

LABEL_15:

  return v9;
}

- (void)dealloc
{
  if (self->_entityProvider)
  {
    [(SUUIViewElement *)self _unregisterForNotificationsForEntityProvider:?];
  }

  v3.receiver = self;
  v3.super_class = SUUIViewElement;
  [(SUUIViewElement *)&v3 dealloc];
}

- (BOOL)canMoveWithinCollection
{
  v2 = [(SUUIViewElement *)self attributes];
  v3 = [v2 objectForKey:@"canMoveWithinCollection"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)ancestorElementMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(SUUIViewElement *)self parent];
  if (v5)
  {
    while (!v4[2](v4, v5))
    {
      v6 = [v5 parent];

      v5 = v6;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v5 = v5;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v5;
}

- (id)ancestorElementOfType:(unint64_t)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SUUIViewElement_ancestorElementOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e25_B16__0__SUUIViewElement_8l;
  v5[4] = a3;
  v3 = [(SUUIViewElement *)self ancestorElementMatchingPredicate:v5];

  return v3;
}

- (BOOL)descendsFromElementWithType:(unint64_t)a3
{
  v4 = [(SUUIViewElement *)self parent];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  do
  {
    v6 = [v5 elementType];
    v7 = [v5 parent];

    v5 = v7;
    v8 = v6 == a3;
  }

  while (!v8 && v7);

  return v8;
}

- (BOOL)isDescendentFromViewElement:(id)a3
{
  v4 = self;
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  do
  {
    v6 = [(SUUIViewElement *)v5 parent];

    v7 = v5 == a3;
    v8 = v5 == a3;
    v5 = v6;
  }

  while (!v7 && v6);

  return v8;
}

- (SUUIViewElement)elementWithIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__36;
  v19 = __Block_byref_object_dispose__36;
  v20 = 0;
  v5 = [(SUUIViewElement *)self itmlID];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = v16;
    v8 = self;
    v9 = v7[5];
    v7[5] = v8;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__SUUIViewElement_elementWithIdentifier___block_invoke;
    v12[3] = &unk_2798F7E80;
    v14 = &v15;
    v13 = v4;
    [(SUUIViewElement *)self enumerateChildrenUsingBlock:v12];
    v9 = v13;
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __41__SUUIViewElement_elementWithIdentifier___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = [a2 elementWithIdentifier:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (SUUIEntityProviding)entityProvider
{
  v3 = [(SUUIViewElement *)self explicitEntityProvider];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SUUIViewElement *)self parent];
    v5 = [v6 entityProvider];
  }

  return v5;
}

- (IKEntityValueProviding)entityValueProvider
{
  v3 = [(SUUIViewElement *)self explicitEntityValueProvider];
  if (!v3)
  {
    v4 = [(SUUIViewElement *)self entityProvider];
    v5 = [(SUUIViewElement *)self parent];
    if (v5)
    {
      while (1)
      {
        v6 = [v5 entityProvider];
        if (v4 != v6 && ([v4 isEqual:v6] & 1) == 0)
        {
          break;
        }

        v7 = [v5 explicitEntityValueProvider];
        if (v7)
        {
          goto LABEL_12;
        }

        v8 = [v5 parent];

        v5 = v8;
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_9:
    if ([v4 numberOfSections] && objc_msgSend(v4, "numberOfEntitiesInSection:", 0))
    {
      v6 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      v7 = [v4 entityValueProviderAtIndexPath:v6];
LABEL_12:
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (SUUIEntityProviding)explicitEntityProvider
{
  if (!self->_hasValidEntityProvider)
  {
    self->_hasValidEntityProvider = 1;
    v3 = [(SUUIViewElement *)self attributes];
    v4 = [v3 objectForKey:@"entityProviderID"];

    if ([v4 length])
    {
      v5 = [(IKViewElement *)self entityProviderList];
      v6 = [v5 entityProviderWithIdentifier:v4];
      entityProvider = self->_entityProvider;
      self->_entityProvider = v6;

      if (self->_entityProvider)
      {
        [(SUUIViewElement *)self _registerForNotificationsForEntityProvider:?];
      }

      else
      {
        v8 = [(SUUIViewElement *)self description];
        NSLog(&cfstr_ErrorNoEntityP.isa, v4, v8);
      }
    }
  }

  v9 = self->_entityProvider;

  return v9;
}

- (NSSet)entityValueProperties
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(SUUIViewElement *)self children];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) entityValueProperties];
        if (v8)
        {
          if (!v5)
          {
            v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          [v5 unionSet:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)enumerateChildrenUsingBlock:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SUUIViewElement *)self children];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v6)
  {
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __47__SUUIViewElement_enumerateChildrenUsingBlock___block_invoke;
        v10[3] = &unk_2798F91A8;
        v11 = v4;
        v12 = &v17;
        [v9 enumerateChildrenUsingBlock:v10];
      }

      else
      {
        (*(v4 + 2))(v4, v9, v18 + 3);
      }

      if (v18[3])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __47__SUUIViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)enumerateViewElementsWithDictionary:(id)a3 factory:(id)a4 usingBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 objectForKey:@"c"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SUUIViewElement_enumerateViewElementsWithDictionary_factory_usingBlock___block_invoke;
  v13[3] = &unk_2798F91D0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  [v10 enumerateObjectsUsingBlock:v13];
}

uint64_t __74__SUUIViewElement_enumerateViewElementsWithDictionary_factory_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) elementForDictionary:a2 parent:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 48) + 16))();
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)featureWithName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SUUIViewElement *)self features];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 featureName];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)firstChildForElementType:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__36;
  v10 = __Block_byref_object_dispose__36;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SUUIViewElement_firstChildForElementType___block_invoke;
  v5[3] = &unk_2798F6968;
  v5[4] = &v6;
  v5[5] = a3;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__SUUIViewElement_firstChildForElementType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 elementType] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)firstChildForElementName:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__36;
  v15 = __Block_byref_object_dispose__36;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SUUIViewElement_firstChildForElementName___block_invoke;
  v8[3] = &unk_2798F91F8;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __44__SUUIViewElement_firstChildForElementName___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = [a2 elementName];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)flattenedChildren
{
  flattenedChildren = self->_flattenedChildren;
  if (!flattenedChildren)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_flattenedChildren;
    self->_flattenedChildren = v4;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SUUIViewElement_flattenedChildren__block_invoke;
    v7[3] = &unk_2798F5B20;
    v7[4] = self;
    [(SUUIViewElement *)self enumerateChildrenUsingBlock:v7];
    flattenedChildren = self->_flattenedChildren;
  }

  return flattenedChildren;
}

- (BOOL)isEnabled
{
  v2 = [(SUUIViewElement *)self parent];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isEnabled];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSSet)personalizationLibraryItems
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(SUUIViewElement *)self children];
  SUUIViewElementAccumulatePersonalizationLibraryItemsForChildren(v3, v4);

  return v3;
}

- (BOOL)rendersWithPerspective
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SUUIViewElement *)self children];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        if ([*(*(&v7 + 1) + 8 * i) rendersWithPerspective])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (BOOL)rendersWithParallax
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SUUIViewElement *)self children];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        if ([*(*(&v7 + 1) + 8 * i) rendersWithParallax])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (void)setEntityValueProvider:(id)a3
{
  v5 = a3;
  entityValueProvider = self->_entityValueProvider;
  if (entityValueProvider != v5)
  {
    v7 = v5;
    entityValueProvider = [entityValueProvider isEqual:v5];
    v5 = v7;
    if ((entityValueProvider & 1) == 0)
    {
      objc_storeStrong(&self->_entityValueProvider, a3);
      entityValueProvider = [(SUUIViewElement *)self _entityValueProviderDidChange];
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](entityValueProvider, v5);
}

- (NSCopying)uniquingMapKey
{
  v2 = [(SUUIViewElement *)self parent];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 uniquingMapKey];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SUUIViewElement;
  v5 = [(SUUIViewElement *)&v17 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self)
  {
    if (!v4)
    {
      goto LABEL_17;
    }

LABEL_6:
    self->_hasValidEntityProvider = 0;
    if (self->_entityProvider)
    {
      [(SUUIViewElement *)self _unregisterForNotificationsForEntityProvider:?];
      entityProvider = self->_entityProvider;
      self->_entityProvider = 0;
    }

    flattenedChildren = self->_flattenedChildren;
    self->_flattenedChildren = 0;

    self->_pinStyle = [(SUUIViewElement *)v4 pinStyle];
    v10 = [(SUUIViewElement *)v4 explicitEntityValueProvider];
    entityValueProvider = self->_entityValueProvider;
    if (entityValueProvider == v10 || ([(IKEntityValueProviding *)entityValueProvider isEqual:v10]& 1) != 0)
    {
      v12 = 0;
    }

    else
    {
      objc_storeStrong(&self->_entityValueProvider, v10);
      v12 = 1;
    }

    v13 = [(SUUIViewElement *)v4 explicitEntityProvider];
    v14 = self->_entityProvider;
    if (v14 == v13 || ([(SUUIEntityProviding *)v14 isEqual:v13]& 1) != 0)
    {
      if (!v12)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      if (self->_entityProvider)
      {
        [(SUUIViewElement *)self _unregisterForNotificationsForEntityProvider:?];
      }

      objc_storeStrong(&self->_entityProvider, v13);
      if (self->_entityProvider)
      {
        [(SUUIViewElement *)self _registerForNotificationsForEntityProvider:?];
      }

      if (self->_entityValueProvider)
      {
        v16 = v12;
      }

      else
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    [(SUUIViewElement *)self _entityValueProviderDidChange];
    goto LABEL_16;
  }

  v7 = [v5 updateType];
  if (v4 && v7)
  {
    goto LABEL_6;
  }

LABEL_17:

  return v6;
}

- (void)_entityProviderDidInvalidateNotification:(id)a3
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__SUUIViewElement__entityProviderDidInvalidateNotification___block_invoke;
  aBlock[3] = &unk_2798F5BE8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }
}

- (void)_entityValueProviderDidChange
{
  [(SUUIViewElement *)self entityValueProviderDidChange];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__36;
  v6[4] = __Block_byref_object_dispose__36;
  v7 = 0;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SUUIViewElement__entityValueProviderDidChange__block_invoke;
  v3[3] = &unk_2798F9220;
  v3[5] = v4;
  v3[6] = v6;
  v3[4] = self;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v3];
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(v6, 8);
}

void __48__SUUIViewElement__entityValueProviderDidChange__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 explicitEntityValueProvider];

  v4 = v11;
  if (!v3)
  {
    v5 = *(*(a1 + 40) + 8);
    if ((*(v5 + 24) & 1) == 0)
    {
      *(v5 + 24) = 1;
      v6 = [*(a1 + 32) entityProvider];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v9 = [v11 entityProvider];
    v10 = *(*(*(a1 + 48) + 8) + 40);
    if (v10 == v9 || [v10 isEqual:v9])
    {
      [v11 _entityValueProviderDidChange];
    }

    v4 = v11;
  }
}

- (void)_registerForNotificationsForEntityProvider:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAB98];
    v5 = a3;
    v6 = [v4 defaultCenter];
    [v6 addObserver:self selector:sel__entityProviderDidInvalidateNotification_ name:*MEMORY[0x277D1AF58] object:v5];
  }
}

- (void)_unregisterForNotificationsForEntityProvider:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAB98];
    v5 = a3;
    v6 = [v4 defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x277D1AF58] object:v5];
  }
}

- (id)firstDescendentWithIndexBarEntryID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(SUUIViewElement *)self indexBarEntryID];
    v6 = [v5 isEqualToString:v4];

    if (v6)
    {
      v7 = self;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__37;
      v16 = __Block_byref_object_dispose__37;
      v17 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __77__SUUIViewElement_SUUIIndexBarAdditions__firstDescendentWithIndexBarEntryID___block_invoke;
      v9[3] = &unk_2798F91F8;
      v10 = v4;
      v11 = &v12;
      [(SUUIViewElement *)self enumerateChildrenUsingBlock:v9];
      v7 = v13[5];

      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __77__SUUIViewElement_SUUIIndexBarAdditions__firstDescendentWithIndexBarEntryID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v6 = [v11 indexBarEntryID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v8 = [v11 firstDescendentWithIndexBarEntryID:*(a1 + 32)];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_5;
    }
  }

  *a3 = 1;
LABEL_5:
}

- (NSString)indexBarEntryID
{
  v2 = [(SUUIViewElement *)self attributes];
  v3 = [v2 objectForKey:@"indexBarEntryID"];

  if (v3 && ![v3 length])
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)handlesBackgroundColorDirectly
{
  if ([(SUUIViewElement *)self elementType]== 66)
  {
    v3 = self;
    if ([(SUUIViewElement *)v3 lockupViewType]== 7)
    {

      return 1;
    }

    v4 = [(SUUIViewElement *)v3 lockupViewType];

    if (v4 == 6)
    {
      return 1;
    }
  }

  return 0;
}

@end