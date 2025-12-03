@interface HKDismissedDrugInteractionResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDrugInteractionResult:(id)result;
- (HKDismissedDrugInteractionResult)init;
- (HKDismissedDrugInteractionResult)initWithCoder:(id)coder;
- (id)_initWithDrugInteractionResult:(id)result;
- (id)_initWithInteractionIdentifier:(id)identifier firstDrugClassIdentifier:(id)classIdentifier firstDrugClassAncestorIdentifier:(id)ancestorIdentifier secondDrugClassIdentifier:(id)drugClassIdentifier secondDrugClassAncestorIdentifier:(id)classAncestorIdentifier creationDate:(id)date;
- (uint64_t)hasEquivalentFirstDrugClassIdentifier:(void *)identifier firstDrugClassAncestorIdentifier:(void *)ancestorIdentifier secondDrugClassIdentifier:(void *)classIdentifier secondDrugClassAncestorIdentifier:;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (id)_initWithDrugInteractionResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    [HKDismissedDrugInteractionResult _initWithDrugInteractionResult:];
  }

  firstInteractionClass = [resultCopy firstInteractionClass];
  identifier = [firstInteractionClass identifier];
  rawIdentifier = [identifier rawIdentifier];
  secondInteractionClass = [resultCopy secondInteractionClass];
  identifier2 = [secondInteractionClass identifier];
  rawIdentifier2 = [identifier2 rawIdentifier];

  if (rawIdentifier <= rawIdentifier2)
  {
    firstInteractionClass2 = [resultCopy firstInteractionClass];
    [resultCopy secondInteractionClass];
  }

  else
  {
    firstInteractionClass2 = [resultCopy secondInteractionClass];
    [resultCopy firstInteractionClass];
  }
  v12 = ;
  identifier3 = [resultCopy identifier];
  identifier4 = [firstInteractionClass2 identifier];
  ancestorIdentifier = [firstInteractionClass2 ancestorIdentifier];
  identifier5 = [v12 identifier];
  ancestorIdentifier2 = [v12 ancestorIdentifier];
  date = [MEMORY[0x277CBEAA8] date];
  v19 = [(HKDismissedDrugInteractionResult *)self _initWithInteractionIdentifier:identifier3 firstDrugClassIdentifier:identifier4 firstDrugClassAncestorIdentifier:ancestorIdentifier secondDrugClassIdentifier:identifier5 secondDrugClassAncestorIdentifier:ancestorIdentifier2 creationDate:date];

  return v19;
}

- (id)_initWithInteractionIdentifier:(id)identifier firstDrugClassIdentifier:(id)classIdentifier firstDrugClassAncestorIdentifier:(id)ancestorIdentifier secondDrugClassIdentifier:(id)drugClassIdentifier secondDrugClassAncestorIdentifier:(id)classAncestorIdentifier creationDate:(id)date
{
  identifierCopy = identifier;
  classIdentifierCopy = classIdentifier;
  ancestorIdentifierCopy = ancestorIdentifier;
  drugClassIdentifierCopy = drugClassIdentifier;
  classAncestorIdentifierCopy = classAncestorIdentifier;
  dateCopy = date;
  if (identifierCopy)
  {
    if (classIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
    if (classIdentifierCopy)
    {
LABEL_3:
      if (ancestorIdentifierCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
  if (ancestorIdentifierCopy)
  {
LABEL_4:
    if (drugClassIdentifierCopy)
    {
      goto LABEL_5;
    }

LABEL_14:
    [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
    if (classAncestorIdentifierCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_13:
  [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
  if (!drugClassIdentifierCopy)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (classAncestorIdentifierCopy)
  {
    goto LABEL_6;
  }

LABEL_15:
  [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
LABEL_6:
  rawIdentifier = [classIdentifierCopy rawIdentifier];
  if (rawIdentifier >= [drugClassIdentifierCopy rawIdentifier])
  {
    [HKDismissedDrugInteractionResult _initWithInteractionIdentifier:firstDrugClassIdentifier:firstDrugClassAncestorIdentifier:secondDrugClassIdentifier:secondDrugClassAncestorIdentifier:creationDate:];
    if (dateCopy)
    {
      goto LABEL_8;
    }
  }

  else if (dateCopy)
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
    v22 = [identifierCopy copy];
    interactionIdentifier = v21->_interactionIdentifier;
    v21->_interactionIdentifier = v22;

    v24 = [classIdentifierCopy copy];
    firstDrugClassIdentifier = v21->_firstDrugClassIdentifier;
    v21->_firstDrugClassIdentifier = v24;

    v26 = [ancestorIdentifierCopy copy];
    firstDrugClassAncestorIdentifier = v21->_firstDrugClassAncestorIdentifier;
    v21->_firstDrugClassAncestorIdentifier = v26;

    v28 = [drugClassIdentifierCopy copy];
    secondDrugClassIdentifier = v21->_secondDrugClassIdentifier;
    v21->_secondDrugClassIdentifier = v28;

    v30 = [classAncestorIdentifierCopy copy];
    secondDrugClassAncestorIdentifier = v21->_secondDrugClassAncestorIdentifier;
    v21->_secondDrugClassAncestorIdentifier = v30;

    objc_storeStrong(&v21->_creationDate, date);
  }

  return v21;
}

- (BOOL)isEqualToDrugInteractionResult:(id)result
{
  resultCopy = result;
  v5 = [[HKDismissedDrugInteractionResult alloc] _initWithDrugInteractionResult:resultCopy];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  interactionIdentifier = self->_interactionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:interactionIdentifier forKey:@"InteractionIdentifier"];
  [coderCopy encodeObject:self->_firstDrugClassIdentifier forKey:@"FirstDrugClassIdentifier"];
  [coderCopy encodeObject:self->_firstDrugClassAncestorIdentifier forKey:@"FirstDrugClassAncestorIdentifier"];
  [coderCopy encodeObject:self->_secondDrugClassIdentifier forKey:@"SecondDrugClassIdentifier"];
  [coderCopy encodeObject:self->_secondDrugClassAncestorIdentifier forKey:@"SecondDrugClassAncestorIdentifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
}

- (HKDismissedDrugInteractionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = HKDismissedDrugInteractionResult;
  v5 = [(HKDismissedDrugInteractionResult *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InteractionIdentifier"];
    interactionIdentifier = v5->_interactionIdentifier;
    v5->_interactionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstDrugClassIdentifier"];
    firstDrugClassIdentifier = v5->_firstDrugClassIdentifier;
    v5->_firstDrugClassIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstDrugClassAncestorIdentifier"];
    firstDrugClassAncestorIdentifier = v5->_firstDrugClassAncestorIdentifier;
    v5->_firstDrugClassAncestorIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SecondDrugClassIdentifier"];
    secondDrugClassIdentifier = v5->_secondDrugClassIdentifier;
    v5->_secondDrugClassIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SecondDrugClassAncestorIdentifier"];
    secondDrugClassAncestorIdentifier = v5->_secondDrugClassAncestorIdentifier;
    v5->_secondDrugClassAncestorIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
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

- (uint64_t)hasEquivalentFirstDrugClassIdentifier:(void *)identifier firstDrugClassAncestorIdentifier:(void *)ancestorIdentifier secondDrugClassIdentifier:(void *)classIdentifier secondDrugClassAncestorIdentifier:
{
  v9 = a2;
  identifierCopy = identifier;
  ancestorIdentifierCopy = ancestorIdentifier;
  classIdentifierCopy = classIdentifier;
  if (!self)
  {
    goto LABEL_45;
  }

  v13 = *(self + 16);
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

  v15 = *(self + 24);
  if (v15 == identifierCopy)
  {
    v16 = 0;
  }

  else if (identifierCopy)
  {
    v16 = [v15 isEqual:identifierCopy] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = *(self + 32);
  if (v17 == ancestorIdentifierCopy)
  {
    v18 = 0;
  }

  else if (ancestorIdentifierCopy)
  {
    v18 = [v17 isEqual:ancestorIdentifierCopy] ^ 1;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(self + 40);
  if (v19 == classIdentifierCopy)
  {
    v20 = 0;
    goto LABEL_21;
  }

  if (classIdentifierCopy)
  {
    v20 = [v19 isEqual:classIdentifierCopy] ^ 1;
LABEL_21:
    if (((v14 | v16 | v18) & 1) == 0 && !v20)
    {
      self = 1;
      goto LABEL_45;
    }
  }

  v21 = *(self + 32);
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

  v23 = *(self + 40);
  if (v23 == identifierCopy)
  {
    v24 = 1;
  }

  else if (identifierCopy)
  {
    v24 = [v23 isEqual:identifierCopy];
  }

  else
  {
    v24 = 0;
  }

  v25 = *(self + 16);
  if (v25 == ancestorIdentifierCopy)
  {
    v26 = 1;
  }

  else if (ancestorIdentifierCopy)
  {
    v26 = [v25 isEqual:ancestorIdentifierCopy];
  }

  else
  {
    v26 = 0;
  }

  v27 = *(self + 24);
  if (v27 == classIdentifierCopy)
  {
    v28 = 1;
  }

  else if (classIdentifierCopy)
  {
    v28 = [v27 isEqual:classIdentifierCopy];
  }

  else
  {
    v28 = 0;
  }

  self = v22 & v24 & v26 & v28;
LABEL_45:

  return self;
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