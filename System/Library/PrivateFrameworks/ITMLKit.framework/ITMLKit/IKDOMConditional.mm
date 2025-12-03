@interface IKDOMConditional
- (BOOL)passesForDataItem:(id)item default:(BOOL)default;
- (IKDOMConditional)initWithDOMElement:(id)element;
- (IKDOMElement)domElement;
- (NSArray)exclusionExpressions;
- (NSArray)inclusionExpressions;
- (NSSet)dependentPathStrings;
- (void)mutateWithDOMElement:(id)element;
@end

@implementation IKDOMConditional

- (IKDOMConditional)initWithDOMElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = IKDOMConditional;
  v5 = [(IKDOMConditional *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_domElement, elementCopy);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = uUIDString;
  }

  return v6;
}

- (NSArray)inclusionExpressions
{
  inclusionExpressions = self->_inclusionExpressions;
  if (!inclusionExpressions)
  {
    domElement = [(IKDOMConditional *)self domElement];
    v5 = [domElement getAttribute:@"state"];
    v6 = [_IKDOMConditionalExpression parseExpressionsFromString:v5];
    v7 = self->_inclusionExpressions;
    self->_inclusionExpressions = v6;

    inclusionExpressions = self->_inclusionExpressions;
  }

  return inclusionExpressions;
}

- (NSArray)exclusionExpressions
{
  exclusionExpressions = self->_exclusionExpressions;
  if (!exclusionExpressions)
  {
    domElement = [(IKDOMConditional *)self domElement];
    v5 = [domElement getAttribute:@"notInState"];
    v6 = [_IKDOMConditionalExpression parseExpressionsFromString:v5];
    v7 = self->_exclusionExpressions;
    self->_exclusionExpressions = v6;

    exclusionExpressions = self->_exclusionExpressions;
  }

  return exclusionExpressions;
}

- (NSSet)dependentPathStrings
{
  v31 = *MEMORY[0x277D85DE8];
  dependentPathStrings = self->_dependentPathStrings;
  if (!dependentPathStrings)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    inclusionExpressions = [(IKDOMConditional *)self inclusionExpressions];
    v6 = [inclusionExpressions countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(inclusionExpressions);
          }

          dependentPathStrings = [*(*(&v25 + 1) + 8 * v9) dependentPathStrings];
          [v4 unionSet:dependentPathStrings];

          ++v9;
        }

        while (v7 != v9);
        v7 = [inclusionExpressions countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    exclusionExpressions = [(IKDOMConditional *)self exclusionExpressions];
    v12 = [exclusionExpressions countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(exclusionExpressions);
          }

          dependentPathStrings2 = [*(*(&v21 + 1) + 8 * v15) dependentPathStrings];
          [v4 unionSet:dependentPathStrings2];

          ++v15;
        }

        while (v13 != v15);
        v13 = [exclusionExpressions countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v13);
    }

    v17 = [v4 copy];
    v18 = self->_dependentPathStrings;
    self->_dependentPathStrings = v17;

    dependentPathStrings = self->_dependentPathStrings;
  }

  v19 = *MEMORY[0x277D85DE8];

  return dependentPathStrings;
}

- (BOOL)passesForDataItem:(id)item default:(BOOL)default
{
  itemCopy = item;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__IKDOMConditional_passesForDataItem_default___block_invoke;
  v17[3] = &unk_279799548;
  v18 = itemCopy;
  v7 = itemCopy;
  v8 = MEMORY[0x259C21BA0](v17);
  inclusionExpressions = [(IKDOMConditional *)self inclusionExpressions];
  v10 = [inclusionExpressions count];

  exclusionExpressions = [(IKDOMConditional *)self exclusionExpressions];
  v12 = [exclusionExpressions count];

  if (v12)
  {
    default = 0;
  }

  if (v10)
  {
    inclusionExpressions2 = [(IKDOMConditional *)self inclusionExpressions];
    default = (v8)[2](v8, inclusionExpressions2);
  }

  v14 = v12 != 0 || default;
  if (v12 && !default)
  {
    exclusionExpressions2 = [(IKDOMConditional *)self exclusionExpressions];
    v14 = (v8)[2](v8, exclusionExpressions2) ^ 1;
  }

  return v14 & 1;
}

uint64_t __46__IKDOMConditional_passesForDataItem_default___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * v7) passesForDataItem:{*(a1 + 32), v11}])
        {
          v8 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)mutateWithDOMElement:(id)element
{
  elementCopy = element;
  domElement = [(IKDOMConditional *)self domElement];
  parentNode = [domElement parentNode];
  domElement2 = [(IKDOMConditional *)self domElement];
  v8 = [parentNode replaceChild:elementCopy :domElement2];

  objc_storeWeak(&self->_domElement, elementCopy);
  inclusionExpressions = self->_inclusionExpressions;
  self->_inclusionExpressions = 0;

  exclusionExpressions = self->_exclusionExpressions;
  self->_exclusionExpressions = 0;

  dependentPathStrings = self->_dependentPathStrings;
  self->_dependentPathStrings = 0;
}

- (IKDOMElement)domElement
{
  WeakRetained = objc_loadWeakRetained(&self->_domElement);

  return WeakRetained;
}

@end