@interface HAPCharacteristicValueTransitionControl(NaturalLighting)
- (id)naturalLightingActiveTransitionContextForCharacteristic:()NaturalLighting;
- (uint64_t)naturalLightingEnabledForCharacteristic:()NaturalLighting;
@end

@implementation HAPCharacteristicValueTransitionControl(NaturalLighting)

- (id)naturalLightingActiveTransitionContextForCharacteristic:()NaturalLighting
{
  v4 = a3;
  transitionStart = [self transitionStart];
  transitions = [transitionStart transitions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __116__HAPCharacteristicValueTransitionControl_NaturalLighting__naturalLightingActiveTransitionContextForCharacteristic___block_invoke;
  v11[3] = &unk_2786811C8;
  v7 = v4;
  v12 = v7;
  v8 = [transitions na_firstObjectPassingTest:v11];

  if (v8)
  {
    v9 = [v8 naturalLightingActiveTransitionContextForCharacteristic:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)naturalLightingEnabledForCharacteristic:()NaturalLighting
{
  v4 = a3;
  transitionStart = [self transitionStart];
  transitions = [transitionStart transitions];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__HAPCharacteristicValueTransitionControl_NaturalLighting__naturalLightingEnabledForCharacteristic___block_invoke;
  v14[3] = &unk_2786811C8;
  v7 = v4;
  v15 = v7;
  v8 = [transitions na_firstObjectPassingTest:v14];

  if (v8)
  {
    controllerContext = [v8 controllerContext];
    if (controllerContext || ([v8 endBehavior], (controllerContext = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "linearTransition"), (controllerContext = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      linearDerivedTransition = [v8 linearDerivedTransition];

      if (!linearDerivedTransition)
      {
        v11 = MEMORY[0x277CBEC28];
        goto LABEL_10;
      }
    }

    v10 = [v8 naturalLightingActiveTransitionContextForCharacteristic:v7];

    if (v10)
    {
      v11 = MEMORY[0x277CBEC38];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_10:

  return v11;
}

@end