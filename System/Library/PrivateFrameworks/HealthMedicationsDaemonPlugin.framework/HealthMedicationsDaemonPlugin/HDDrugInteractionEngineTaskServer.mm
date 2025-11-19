@interface HDDrugInteractionEngineTaskServer
+ (id)requiredEntitlements;
- (void)remote_interactionClassForLifestyleFactor:(unint64_t)a3 completion:(id)a4;
- (void)remote_interactionClassesForConceptWithIdentifier:(id)a3 completion:(id)a4;
- (void)remote_interactionClassesForMedication:(id)a3 completion:(id)a4;
- (void)remote_interactionResultForFirstMedication:(id)a3 secondMedication:(id)a4 completion:(id)a5;
- (void)remote_interactionResultForMedication:(id)a3 lifestyleFactor:(unint64_t)a4 completion:(id)a5;
- (void)remote_interactionResultsForInteractionClasses:(id)a3 completion:(id)a4;
- (void)remote_interactionResultsForMedications:(id)a3 lifestyleFactors:(id)a4 completion:(id)a5;
- (void)remote_numberOfInteractionsForConceptWithIdentifier:(id)a3 completion:(id)a4;
- (void)remote_numberOfInteractionsForMedication:(id)a3 completion:(id)a4;
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

- (void)remote_interactionClassesForConceptWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDrugInteractionEngine interactionClassesForConceptWithIdentifier:v7 profile:v8 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)remote_interactionClassesForMedication:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDrugInteractionEngine interactionClassesForMedication:v7 profile:v8 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)remote_numberOfInteractionsForConceptWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDrugInteractionEngine numberOfInteractionsForConceptWithIdentifier:v7 profile:v8 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)remote_numberOfInteractionsForMedication:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDrugInteractionEngine numberOfInteractionsForMedication:v7 profile:v8 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)remote_interactionClassForLifestyleFactor:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v12 = 0;
  LODWORD(a3) = [HDDrugInteractionEngine interactionClassForLifestyleFactor:a3 profile:v7 interactionClassOut:&v12 error:&v11];
  v8 = v12;
  v9 = v11;

  if (a3)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  (v6)[2](v6, v10, v9);
}

- (void)remote_interactionResultsForInteractionClasses:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDrugInteractionEngine interactionResultsForInteractionClasses:v7 profile:v8 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)remote_interactionResultForFirstMedication:(id)a3 secondMedication:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HDStandardTaskServer *)self profile];
  v16 = 0;
  v17 = 0;
  v12 = [HDDrugInteractionEngine interactionResultForFirstMedication:v10 secondMedication:v9 profile:v11 interactionResultOut:&v17 error:&v16];

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

  (v8)[2](v8, v15, v14);
}

- (void)remote_interactionResultForMedication:(id)a3 lifestyleFactor:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(HDStandardTaskServer *)self profile];
  v14 = 0;
  v15 = 0;
  LODWORD(a4) = [HDDrugInteractionEngine interactionResultForMedication:v9 lifestyleFactor:a4 profile:v10 interactionResultOut:&v15 error:&v14];

  v11 = v15;
  v12 = v14;

  if (a4)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  (v8)[2](v8, v13, v12);
}

- (void)remote_interactionResultsForMedications:(id)a3 lifestyleFactors:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HDStandardTaskServer *)self profile];
  v14 = 0;
  v12 = [HDDrugInteractionEngine interactionResultsForMedications:v10 lifestyleFactors:v9 profile:v11 error:&v14];

  v13 = v14;
  v8[2](v8, v12, v13);
}

@end