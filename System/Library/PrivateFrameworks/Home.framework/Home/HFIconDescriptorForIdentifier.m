@interface HFIconDescriptorForIdentifier
@end

@implementation HFIconDescriptorForIdentifier

void ___HFIconDescriptorForIdentifier_block_invoke()
{
  v53 = *MEMORY[0x277D85DE8];
  v47[0] = @"lightbulb.fill";
  v0 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
  v1 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"lightbulb.fill" configuration:v0];
  v2 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"lightbulb.slash.fill" configuration:v0];
  v49 = &unk_282524180;
  v50 = &unk_282524168;
  v51 = v1;
  v52 = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v49 count:2];
  v46 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v3];

  v48[0] = v46;
  v47[1] = @"fanblades.fill";
  v4 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
  v5 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"fanblades.fill" configuration:v4];
  v6 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"fanblades.slash.fill" configuration:v4];
  v49 = &unk_282524180;
  v50 = &unk_282524168;
  v51 = v5;
  v52 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v49 count:2];
  v45 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v7];

  v48[1] = v45;
  v47[2] = @"arrow.clockwise";
  v8 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
  v9 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"arrow.clockwise" configuration:v8];
  v10 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"arrow.counterclockwise" configuration:v8];
  v49 = &unk_282524180;
  v50 = &unk_282524168;
  v51 = v9;
  v52 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v49 count:2];
  v44 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v11];

  v48[2] = v44;
  v47[3] = @"lock.fill";
  v12 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
  v13 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"lock.open.fill" configuration:v12];
  v14 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"lock.fill" configuration:v12];
  v49 = &unk_282524180;
  v50 = &unk_282524168;
  v51 = v13;
  v52 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v49 count:2];
  v43 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v15];

  v48[3] = v43;
  v47[4] = @"door.garage.closed";
  v16 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
  v17 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"door.garage.open" configuration:v16];
  v18 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"door.garage.closed" configuration:v16];
  v49 = &unk_282524180;
  v50 = &unk_282524168;
  v51 = v17;
  v52 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v49 count:2];
  v42 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v19];

  v48[4] = v42;
  v47[5] = @"door.right.hand.closed";
  v20 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
  v21 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"door.right.hand.open" configuration:v20];
  v22 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"door.right.hand.closed" configuration:v20];
  v49 = &unk_282524180;
  v50 = &unk_282524168;
  v51 = v21;
  v52 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v49 count:2];
  v41 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v23];

  v48[5] = v41;
  v47[6] = @"window.awning.closed";
  v24 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
  v25 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"window.vertical.open" configuration:v24];
  v26 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"window.awning.closed" configuration:v24];
  v49 = &unk_282524180;
  v50 = &unk_282524168;
  v51 = v25;
  v52 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v49 count:2];
  v28 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v27];

  v48[6] = v28;
  v47[7] = @"roller.shade.closed";
  v29 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
  v30 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"roller.shade.open" configuration:v29];
  v31 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"roller.shade.closed" configuration:v29];
  v49 = &unk_282524180;
  v50 = &unk_282524168;
  v51 = v30;
  v52 = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v49 count:2];
  v33 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v32];

  v48[7] = v33;
  v47[8] = @"light.beacon.min.fill";
  v34 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
  v35 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"light.beacon.min.fill" configuration:v34];
  v49 = &unk_282524180;
  v50 = &unk_282524168;
  v51 = v35;
  v52 = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v49 count:2];
  v37 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v36];

  v48[8] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:9];
  v39 = _MergedGlobals_268;
  _MergedGlobals_268 = v38;

  v40 = *MEMORY[0x277D85DE8];
}

@end