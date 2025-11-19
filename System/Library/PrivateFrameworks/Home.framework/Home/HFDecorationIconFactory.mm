@interface HFDecorationIconFactory
+ (id)iconDescriptorForCharacteristicType:(id)a3 effectiveServiceType:(id)a4 primaryState:(int64_t)a5;
@end

@implementation HFDecorationIconFactory

+ (id)iconDescriptorForCharacteristicType:(id)a3 effectiveServiceType:(id)a4 primaryState:(int64_t)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 isEqualToString:*MEMORY[0x277CCF788]])
  {
    goto LABEL_2;
  }

  v9 = HFSymbolIconIdentifierDecorationFan;
  if (([v7 isEqualToString:*MEMORY[0x277CCFA20]] & 1) == 0)
  {
    if ([v7 isEqualToString:*MEMORY[0x277CCF9F0]])
    {
      if ([v8 isEqualToString:*MEMORY[0x277CD0EA0]])
      {
LABEL_2:
        v9 = HFSymbolIconIdentifierDecorationLightbulb;
        goto LABEL_15;
      }

      v10 = MEMORY[0x277CD0E40];
      goto LABEL_7;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CCFB08]])
    {
      v11 = [v8 isEqualToString:*MEMORY[0x277CD0E58]];
      v12 = HFSymbolIconIdentifierDecorationGarageDoor;
LABEL_12:
      if (v11)
      {
        v9 = v12;
      }

      else
      {
        v9 = HFSymbolIconIdentifierDecorationDoor;
      }

      goto LABEL_15;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CCFB50]])
    {
      if ([v8 isEqualToString:*MEMORY[0x277CD0F58]])
      {
        v9 = HFSymbolIconIdentifierDecorationWindow;
        goto LABEL_15;
      }

      v11 = [v8 isEqualToString:*MEMORY[0x277CD0F60]];
      v12 = HFSymbolIconIdentifierDecorationWindowCovering;
      goto LABEL_12;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CCFB40]])
    {
      v9 = HFSymbolIconIdentifierDecorationLock;
      goto LABEL_15;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CCFA18]])
    {
      v9 = HFSymbolIconIdentifierDecorationRotationDirection;
      goto LABEL_15;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CCFAF8]])
    {
      v9 = HFImageIconIdentifierDecorationSwing;
      goto LABEL_15;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CCF748]])
    {
      v10 = MEMORY[0x277CD0F40];
LABEL_7:
      if (![v8 isEqualToString:*v10])
      {
        v9 = HFSymbolIconIdentifierDecorationPower;
      }

      goto LABEL_15;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CCFB20]])
    {
      v9 = HFSymbolIconIdentifierDecorationPower;
    }

    else
    {
      if (![v7 isEqualToString:*MEMORY[0x277CCFB60]])
      {
        goto LABEL_39;
      }

      v9 = HFSymbolIconIdentifierDecorationSecuritySystem;
    }
  }

LABEL_15:
  v13 = *v9;
  if (!v13)
  {
LABEL_39:
    v22 = 0;
    goto LABEL_40;
  }

  v14 = v13;
  if (qword_280E030E8 != -1)
  {
    dispatch_once(&qword_280E030E8, &__block_literal_global_123);
  }

  v15 = [_MergedGlobals_268 objectForKeyedSubscript:v14];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v17 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
    v18 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:v14 configuration:v17];
    v27 = &unk_282524168;
    v28[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v16 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v19];

    if (!v16)
    {
      NSLog(&cfstr_Icondescriptor_1.isa, v14);
      v20 = [HFMultistateImageIconDescriptor alloc];
      v25 = &unk_282524168;
      v26 = v14;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v16 = [(HFMultistateImageIconDescriptor *)v20 initWithImageIdentifiersKeyedByPrimaryState:v21];
    }
  }

  v22 = [(HFMultistateImageIconDescriptor *)v16 iconDescriptorForPrimaryState:a5];

LABEL_40:
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end