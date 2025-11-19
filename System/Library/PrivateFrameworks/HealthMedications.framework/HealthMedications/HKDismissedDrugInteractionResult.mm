@interface HKDismissedDrugInteractionResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDrugInteractionResult:(id)a3;
- (HKDismissedDrugInteractionResult)init;
- (HKDismissedDrugInteractionResult)initWithCoder:(id)a3;
- (id)_initWithDrugInteractionResult:(id)a3;
- (id)_initWithInteractionIdentifier:(id)a3 firstDrugClassIdentifier:(id)a4 firstDrugClassAncestorIdentifier:(id)a5 secondDrugClassIdentifier:(id)a6 secondDrugClassAncestorIdentifier:(id)a7 creationDate:(id)a8;
- (uint64_t)hasEquivalentFirstDrugClassIdentifier:(void *)a3 firstDrugClassAncestorIdentifier:(void *)a4 secondDrugClassIdentifier:(void *)a5 secondDrugClassAncestorIdentifier:;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDismissedDrugInteractionResult

- (HKDismissedDrugInteractionResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithDrugInteractionResult:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [HKDismissedDrugInteractionResult _initWithDrugInteractionResult:];
  }

  v5 = [v4 firstInteractionClass];
  v6 = [v5 identifier];
  v7 = [v6 rawIdentifier];
  v8 = [v4 secondInteractionClass];
  v9 = [v8 identifier];
  v10 = [v9 rawIdentifier];

  if (v7 <= v10)
  {
    v11 = [v4 firstInteractionClass];
    [v4 secondInteractionClass];
  }

  else
  {
    v11 = [v4 secondInteractionClass];
    [v4 firstInteractionClass];
  }
  v12 = ;
  v13 = [v4 identifier];
  v14 = [v11 identifier];
  v15 = [v11 ancestorIdentifier];
  v16 = [v12 identifier];
  v17 = [v12 ancestorIdentifier];
  v18 = [MEMORY[0x277CBEAA8] date];
  v19 = [(HKDismissedDrugInteractionResult *)self _initWithInteractionIdentifier:v13 firstDrugClassIdentifier:v14 firstDrugClassAncestorIdentifier:v15 secondDrugClassIdentifier:v16 secondDrugClassAncestorIdentifier:v17 creationDate:v18];

  return v19;
}

- (id)_initWithInteractionIdentifier:(id)a3 firstDrugClassIdentifier:(id)a4 firstDrugClassAncestorIdentifier:(id)a5 secondDrugClassIdentifier:(id)a6 secondDrugClassAncestorIdentifier:(id)a7 creationDate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
    if (v15)
    {
LABEL_3:
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
  if (v16)
  {
LABEL_4:
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_14:
    [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_13:
  [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v18)
  {
    goto LABEL_6;
  }

LABEL_15:
  [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
LABEL_6:
  v20 = [v15 rawIdentifier];
  if (v20 >= [v17 rawIdentifier])
  {
    [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
    if (v19)
    {
      goto LABEL_8;
    }
  }

  else if (v19)
  {
    goto LABEL_8;
  }

  [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
LABEL_8:
  v33.receiver = self;
  v33.super_class = HKDismissedDrugInteractionResult;
  v21 = [(HKDismissedDrugInteractionResult *)&v33 init];
  if (v21)
  {
    v22 = [v14 copy];
    interactionIdentifier = v21->_interactionIdentifier;
    v21->_interactionIdentifier = v22;

    v24 = [v15 copy];
    firstDrugClassIdentifier = v21->_firstDrugClassIdentifier;
    v21->_firstDrugClassIdentifier = v24;

    v26 = [v16 copy];
    firstDrugClassAncestorIdentifier = v21->_firstDrugClassAncestorIdentifier;
    v21->_firstDrugClassAncestorIdentifier = v26;

    v28 = [v17 copy];
    secondDrugClassIdentifier = v21->_secondDrugClassIdentifier;
    v21->_secondDrugClassIdentifier = v28;

    v30 = [v18 copy];
    secondDrugClassAncestorIdentifier = v21->_secondDrugClassAncestorIdentifier;
    v21->_secondDrugClassAncestorIdentifier = v30;

    objc_storeStrong(&v21->_creationDate, a8);
  }

  return v21;
}

- (BOOL)isEqualToDrugInteractionResult:(id)a3
{
  v4 = a3;
  v5 = [[HKDismissedDrugInteractionResult alloc] _initWithDrugInteractionResult:v4];

  LOBYTE(self) = [(HKDismissedDrugInteractionResult *)self isEqual:v5];
  return self;
}

- (unint64_t)hash
{
  v3 = [(HKConceptIdentifier *)self->_interactionIdentifier hash];
  v4 = [(HKConceptIdentifier *)self->_firstDrugClassIdentifier hash]^ v3;
  v5 = [(HKConceptIdentifier *)self->_firstDrugClassAncestorIdentifier hash];
  v6 = v4 ^ v5 ^ [(HKConceptIdentifier *)self->_secondDrugClassIdentifier hash];
  return v6 ^ [(HKConceptIdentifier *)self->_secondDrugClassAncestorIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    if (![(HKDismissedDrugInteractionResult *)self hasEquivalentFirstDrugClassIdentifier:v7->_firstDrugClassAncestorIdentifier firstDrugClassAncestorIdentifier:v7->_secondDrugClassIdentifier secondDrugClassIdentifier:v7->_secondDrugClassAncestorIdentifier secondDrugClassAncestorIdentifier:?])
    {
      goto LABEL_10;
    }

    interactionIdentifier = self->_interactionIdentifier;
    v9 = v7->_interactionIdentifier;
    if (interactionIdentifier == v9)
    {
      v5 = 1;
      goto LABEL_12;
    }

    if (v9)
    {
      v5 = [(HKConceptIdentifier *)interactionIdentifier isEqual:?];
    }

    else
    {
LABEL_10:
      v5 = 0;
    }

LABEL_12:

    goto LABEL_5;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  interactionIdentifier = self->_interactionIdentifier;
  v5 = a3;
  [v5 encodeObject:interactionIdentifier forKey:@"InteractionIdentifier"];
  [v5 encodeObject:self->_firstDrugClassIdentifier forKey:@"FirstDrugClassIdentifier"];
  [v5 encodeObject:self->_firstDrugClassAncestorIdentifier forKey:@"FirstDrugClassAncestorIdentifier"];
  [v5 encodeObject:self->_secondDrugClassIdentifier forKey:@"SecondDrugClassIdentifier"];
  [v5 encodeObject:self->_secondDrugClassAncestorIdentifier forKey:@"SecondDrugClassAncestorIdentifier"];
  [v5 encodeObject:self->_creationDate forKey:@"CreationDate"];
}

- (HKDismissedDrugInteractionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HKDismissedDrugInteractionResult;
  v5 = [(HKDismissedDrugInteractionResult *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InteractionIdentifier"];
    interactionIdentifier = v5->_interactionIdentifier;
    v5->_interactionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FirstDrugClassIdentifier"];
    firstDrugClassIdentifier = v5->_firstDrugClassIdentifier;
    v5->_firstDrugClassIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FirstDrugClassAncestorIdentifier"];
    firstDrugClassAncestorIdentifier = v5->_firstDrugClassAncestorIdentifier;
    v5->_firstDrugClassAncestorIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SecondDrugClassIdentifier"];
    secondDrugClassIdentifier = v5->_secondDrugClassIdentifier;
    v5->_secondDrugClassIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SecondDrugClassAncestorIdentifier"];
    secondDrugClassAncestorIdentifier = v5->_secondDrugClassAncestorIdentifier;
    v5->_secondDrugClassAncestorIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v16;

    if (!v5->_interactionIdentifier)
    {
      [HKDismissedDrugInteractionResult initWithCoder:];
    }

    if (!v5->_firstDrugClassIdentifier)
    {
      [HKDismissedDrugInteractionResult initWithCoder:];
    }

    if (!v5->_firstDrugClassAncestorIdentifier)
    {
      [HKDismissedDrugInteractionResult initWithCoder:];
    }

    if (!v5->_secondDrugClassIdentifier)
    {
      [HKDismissedDrugInteractionResult initWithCoder:];
    }

    if (!v5->_secondDrugClassAncestorIdentifier)
    {
      [HKDismissedDrugInteractionResult initWithCoder:];
    }

    if (!v5->_creationDate)
    {
      [HKDismissedDrugInteractionResult initWithCoder:];
    }
  }

  return v5;
}

- (uint64_t)hasEquivalentFirstDrugClassIdentifier:(void *)a3 firstDrugClassAncestorIdentifier:(void *)a4 secondDrugClassIdentifier:(void *)a5 secondDrugClassAncestorIdentifier:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a1)
  {
    goto LABEL_45;
  }

  v13 = *(a1 + 16);
  if (v13 == v9)
  {
    v14 = 0;
  }

  else if (v9)
  {
    v14 = [v13 isEqual:v9] ^ 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = *(a1 + 24);
  if (v15 == v10)
  {
    v16 = 0;
  }

  else if (v10)
  {
    v16 = [v15 isEqual:v10] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = *(a1 + 32);
  if (v17 == v11)
  {
    v18 = 0;
  }

  else if (v11)
  {
    v18 = [v17 isEqual:v11] ^ 1;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(a1 + 40);
  if (v19 == v12)
  {
    v20 = 0;
    goto LABEL_21;
  }

  if (v12)
  {
    v20 = [v19 isEqual:v12] ^ 1;
LABEL_21:
    if (((v14 | v16 | v18) & 1) == 0 && !v20)
    {
      a1 = 1;
      goto LABEL_45;
    }
  }

  v21 = *(a1 + 32);
  if (v21 == v9)
  {
    v22 = 1;
  }

  else if (v9)
  {
    v22 = [v21 isEqual:v9];
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 40);
  if (v23 == v10)
  {
    v24 = 1;
  }

  else if (v10)
  {
    v24 = [v23 isEqual:v10];
  }

  else
  {
    v24 = 0;
  }

  v25 = *(a1 + 16);
  if (v25 == v11)
  {
    v26 = 1;
  }

  else if (v11)
  {
    v26 = [v25 isEqual:v11];
  }

  else
  {
    v26 = 0;
  }

  v27 = *(a1 + 24);
  if (v27 == v12)
  {
    v28 = 1;
  }

  else if (v12)
  {
    v28 = [v27 isEqual:v12];
  }

  else
  {
    v28 = 0;
  }

  a1 = v22 & v24 & v26 & v28;
LABEL_45:

  return a1;
}

- (void)_initWithDrugInteractionResult:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"drugInteractionResult != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"interactionIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"firstDrugClassIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"firstDrugClassAncestorIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"secondDrugClassIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"secondDrugClassAncestorIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"firstDrugClassIdentifier.rawIdentifier < secondDrugClassIdentifier.rawIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)_initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"creationDate != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end