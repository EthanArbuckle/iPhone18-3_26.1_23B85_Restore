@interface IKDOMConditional
- (BOOL)passesForDataItem:(id)a3 default:(BOOL)a4;
- (IKDOMConditional)initWithDOMElement:(id)a3;
- (IKDOMElement)domElement;
- (NSArray)exclusionExpressions;
- (NSArray)inclusionExpressions;
- (NSSet)dependentPathStrings;
- (void)mutateWithDOMElement:(id)a3;
@end

@implementation IKDOMConditional

- (IKDOMConditional)initWithDOMElement:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IKDOMConditional;
  v5 = [(IKDOMConditional *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_domElement, v4);
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = v8;
  }

  return v6;
}

- (NSArray)inclusionExpressions
{
  inclusionExpressions = self->_inclusionExpressions;
  if (!inclusionExpressions)
  {
    v4 = [(IKDOMConditional *)self domElement];
    v5 = [v4 getAttribute:@"state"];
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
    v4 = [(IKDOMConditional *)self domElement];
    v5 = [v4 getAttribute:@"notInState"];
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
    v5 = [(IKDOMConditional *)self inclusionExpressions];
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v25 + 1) + 8 * v9) dependentPathStrings];
          [v4 unionSet:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [(IKDOMConditional *)self exclusionExpressions];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * v15) dependentPathStrings];
          [v4 unionSet:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (BOOL)passesForDataItem:(id)a3 default:(BOOL)a4
{
  v6 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__IKDOMConditional_passesForDataItem_default___block_invoke;
  v17[3] = &unk_279799548;
  v18 = v6;
  v7 = v6;
  v8 = MEMORY[0x259C21BA0](v17);
  v9 = [(IKDOMConditional *)self inclusionExpressions];
  v10 = [v9 count];

  v11 = [(IKDOMConditional *)self exclusionExpressions];
  v12 = [v11 count];

  if (v12)
  {
    a4 = 0;
  }

  if (v10)
  {
    v13 = [(IKDOMConditional *)self inclusionExpressions];
    a4 = (v8)[2](v8, v13);
  }

  v14 = v12 != 0 || a4;
  if (v12 && !a4)
  {
    v15 = [(IKDOMConditional *)self exclusionExpressions];
    v14 = (v8)[2](v8, v15) ^ 1;
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

- (void)mutateWithDOMElement:(id)a3
{
  v4 = a3;
  v5 = [(IKDOMConditional *)self domElement];
  v6 = [v5 parentNode];
  v7 = [(IKDOMConditional *)self domElement];
  v8 = [v6 replaceChild:v4 :v7];

  objc_storeWeak(&self->_domElement, v4);
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