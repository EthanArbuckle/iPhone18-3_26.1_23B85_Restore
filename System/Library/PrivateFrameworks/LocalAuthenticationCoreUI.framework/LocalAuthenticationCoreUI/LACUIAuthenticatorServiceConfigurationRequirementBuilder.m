@interface LACUIAuthenticatorServiceConfigurationRequirementBuilder
+ (id)_biometryEvents;
+ (id)extractAvailableMechanisms:(unint64_t)a3;
+ (unint64_t)buildWithAvailableMechanisms:(id)a3;
@end

@implementation LACUIAuthenticatorServiceConfigurationRequirementBuilder

+ (unint64_t)buildWithAvailableMechanisms:(id)a3
{
  v3 = a3;
  v4 = [[LACUIAvailableMechanismsWrapper alloc] initWithMechanismEvents:v3];

  if ([(LACUIAvailableMechanismsWrapper *)v4 isEmpty])
  {
    goto LABEL_2;
  }

  if ([(LACUIAvailableMechanismsWrapper *)v4 count]!= 1)
  {
    if ([(LACUIAvailableMechanismsWrapper *)v4 count]== 2)
    {
      if ([(LACUIAvailableMechanismsWrapper *)v4 allowsPasscode]&& [(LACUIAvailableMechanismsWrapper *)v4 allowsBiometry])
      {
        v5 = 4;
        goto LABEL_3;
      }

      if (![(LACUIAvailableMechanismsWrapper *)v4 allowsPasscode]|| ![(LACUIAvailableMechanismsWrapper *)v4 allowsWatch])
      {
        goto LABEL_2;
      }
    }

    else if ([(LACUIAvailableMechanismsWrapper *)v4 count]!= 3 || ![(LACUIAvailableMechanismsWrapper *)v4 allowsWatch]|| ![(LACUIAvailableMechanismsWrapper *)v4 allowsBiometry]|| ![(LACUIAvailableMechanismsWrapper *)v4 allowsPasscode])
    {
LABEL_2:
      v5 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_3;
    }

    v5 = 6;
    goto LABEL_3;
  }

  if ([(LACUIAvailableMechanismsWrapper *)v4 allowsBiometry])
  {
    v5 = 1;
  }

  else if ([(LACUIAvailableMechanismsWrapper *)v4 allowsPasscode])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_3:

  return v5;
}

+ (id)extractAvailableMechanisms:(unint64_t)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBF8];
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v4 = +[LACUIAuthenticatorServiceConfigurationRequirementBuilder _biometryEvents];
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F00]];
      v12 = v5;
      v6 = MEMORY[0x277CBEA60];
      v7 = &v12;
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_12;
      }

      v4 = +[LACUIAuthenticatorServiceConfigurationRequirementBuilder _biometryEvents];
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F00]];
      v11 = v5;
      v6 = MEMORY[0x277CBEA60];
      v7 = &v11;
    }

    v8 = [v6 arrayWithObjects:v7 count:{1, v11, v12}];
    v3 = [v4 arrayByAddingObjectsFromArray:v8];
  }

  else
  {
    if (a3 == 1)
    {
      v3 = +[LACUIAuthenticatorServiceConfigurationRequirementBuilder _biometryEvents];
      goto LABEL_12;
    }

    if (a3 != 2)
    {
      goto LABEL_12;
    }

    v4 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F00]];
    v13[0] = v4;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_biometryEvents
{
  v5[2] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F10]];
  v5[0] = v0;
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F08]];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end