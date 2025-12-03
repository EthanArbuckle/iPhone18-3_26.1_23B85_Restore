@interface HDDrugInteractionEngineTaskServer
+ (id)requiredEntitlements;
- (void)remote_interactionClassForLifestyleFactor:(unint64_t)factor completion:(id)completion;
- (void)remote_interactionClassesForConceptWithIdentifier:(id)identifier completion:(id)completion;
- (void)remote_interactionClassesForMedication:(id)medication completion:(id)completion;
- (void)remote_interactionResultForFirstMedication:(id)medication secondMedication:(id)secondMedication completion:(id)completion;
- (void)remote_interactionResultForMedication:(id)medication lifestyleFactor:(unint64_t)factor completion:(id)completion;
- (void)remote_interactionResultsForInteractionClasses:(id)classes completion:(id)completion;
- (void)remote_interactionResultsForMedications:(id)medications lifestyleFactors:(id)factors completion:(id)completion;
- (void)remote_numberOfInteractionsForConceptWithIdentifier:(id)identifier completion:(id)completion;
- (void)remote_numberOfInteractionsForMedication:(id)medication completion:(id)completion;
@end

@implementation HDDrugInteractionEngineTaskServer

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)remote_interactionClassesForConceptWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  profile = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDrugInteractionEngine interactionClassesForConceptWithIdentifier:identifierCopy profile:profile error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_interactionClassesForMedication:(id)medication completion:(id)completion
{
  completionCopy = completion;
  medicationCopy = medication;
  profile = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDrugInteractionEngine interactionClassesForMedication:medicationCopy profile:profile error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_numberOfInteractionsForConceptWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  profile = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDrugInteractionEngine numberOfInteractionsForConceptWithIdentifier:identifierCopy profile:profile error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_numberOfInteractionsForMedication:(id)medication completion:(id)completion
{
  completionCopy = completion;
  medicationCopy = medication;
  profile = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDrugInteractionEngine numberOfInteractionsForMedication:medicationCopy profile:profile error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_interactionClassForLifestyleFactor:(unint64_t)factor completion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v12 = 0;
  LODWORD(factor) = [HDDrugInteractionEngine interactionClassForLifestyleFactor:factor profile:profile interactionClassOut:&v12 error:&v11];
  v8 = v12;
  v9 = v11;

  if (factor)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  (completionCopy)[2](completionCopy, v10, v9);
}

- (void)remote_interactionResultsForInteractionClasses:(id)classes completion:(id)completion
{
  completionCopy = completion;
  classesCopy = classes;
  profile = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDrugInteractionEngine interactionResultsForInteractionClasses:classesCopy profile:profile error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_interactionResultForFirstMedication:(id)medication secondMedication:(id)secondMedication completion:(id)completion
{
  completionCopy = completion;
  secondMedicationCopy = secondMedication;
  medicationCopy = medication;
  profile = [(HDStandardTaskServer *)self profile];
  v16 = 0;
  v17 = 0;
  v12 = [HDDrugInteractionEngine interactionResultForFirstMedication:medicationCopy secondMedication:secondMedicationCopy profile:profile interactionResultOut:&v17 error:&v16];

  v13 = v17;
  v14 = v16;

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  (completionCopy)[2](completionCopy, v15, v14);
}

- (void)remote_interactionResultForMedication:(id)medication lifestyleFactor:(unint64_t)factor completion:(id)completion
{
  completionCopy = completion;
  medicationCopy = medication;
  profile = [(HDStandardTaskServer *)self profile];
  v14 = 0;
  v15 = 0;
  LODWORD(factor) = [HDDrugInteractionEngine interactionResultForMedication:medicationCopy lifestyleFactor:factor profile:profile interactionResultOut:&v15 error:&v14];

  v11 = v15;
  v12 = v14;

  if (factor)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  (completionCopy)[2](completionCopy, v13, v12);
}

- (void)remote_interactionResultsForMedications:(id)medications lifestyleFactors:(id)factors completion:(id)completion
{
  completionCopy = completion;
  factorsCopy = factors;
  medicationsCopy = medications;
  profile = [(HDStandardTaskServer *)self profile];
  v14 = 0;
  v12 = [HDDrugInteractionEngine interactionResultsForMedications:medicationsCopy lifestyleFactors:factorsCopy profile:profile error:&v14];

  v13 = v14;
  completionCopy[2](completionCopy, v12, v13);
}

@end