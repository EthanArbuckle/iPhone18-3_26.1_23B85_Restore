@interface TestCNUIIDSHandleAvailability
- (BOOL)isEqual:(id)a3;
- (TestCNUIIDSHandleAvailability)initWithHandle:(id)a3 availability:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation TestCNUIIDSHandleAvailability

- (TestCNUIIDSHandleAvailability)initWithHandle:(id)a3 availability:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = TestCNUIIDSHandleAvailability;
  v8 = [(TestCNUIIDSHandleAvailability *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_handle, a3);
    v9->_available = a4;
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__TestCNUIIDSHandleAvailability_isEqual___block_invoke;
  v15[3] = &unk_1E76E7A88;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __41__TestCNUIIDSHandleAvailability_isEqual___block_invoke_2;
  v12 = &unk_1E76E7A88;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self equalToOther:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __41__TestCNUIIDSHandleAvailability_isEqual___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) handle];
  if (!v3)
  {
    v1 = [*(a1 + 40) handle];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) handle];
  v5 = [*(a1 + 40) handle];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__TestCNUIIDSHandleAvailability_hash__block_invoke;
  v7[3] = &unk_1E76E7AB0;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__TestCNUIIDSHandleAvailability_hash__block_invoke_2;
  aBlock[3] = &unk_1E76E7AB0;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __37__TestCNUIIDSHandleAvailability_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) handle];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __37__TestCNUIIDSHandleAvailability_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) available];

  return [v1 BOOLHash:v2];
}

@end