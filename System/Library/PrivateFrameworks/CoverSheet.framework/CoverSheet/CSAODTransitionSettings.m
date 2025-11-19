@interface CSAODTransitionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSAODTransitionSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = CSAODTransitionSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(CSAODTransitionSettings *)self _setAodGeneralResponseMultiplier:1.0];
  [(CSAODTransitionSettings *)self _setAodClockResponseMultiplier:1.0];
}

+ (id)settingsControllerModule
{
  v42[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431F0] rowWithTitle:@"Response" valueKeyPath:@"aodGeneralResponse"];
  v39 = [v2 between:0.0 and:1.5];

  v3 = MEMORY[0x277D431A8];
  v4 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_27];
  v38 = [v3 rowWithTitle:@"Shipping" action:v4];

  v5 = MEMORY[0x277D431A8];
  v6 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_14];
  v37 = [v5 rowWithTitle:@"90% Duration" action:v6];

  v7 = MEMORY[0x277D431A8];
  v8 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_19];
  v36 = [v7 rowWithTitle:@"80% Duration" action:v8];

  v9 = MEMORY[0x277D431A8];
  v10 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_24];
  v35 = [v9 rowWithTitle:@"70% Duration" action:v10];

  v11 = MEMORY[0x277D43218];
  v42[0] = v39;
  v42[1] = v38;
  v42[2] = v37;
  v42[3] = v36;
  v42[4] = v35;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:5];
  v34 = [v11 sectionWithRows:v12 title:@"General"];

  v13 = [MEMORY[0x277D431F0] rowWithTitle:@"Response" valueKeyPath:@"aodClockResponse"];
  v14 = [v13 between:0.0 and:1.5];

  v15 = MEMORY[0x277D431A8];
  v16 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_34_1];
  v17 = [v15 rowWithTitle:@"Shipping" action:v16];

  v18 = MEMORY[0x277D431A8];
  v19 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_36_0];
  v20 = [v18 rowWithTitle:@"90% Duration" action:v19];

  v21 = MEMORY[0x277D431A8];
  v22 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_38];
  v23 = [v21 rowWithTitle:@"80% Duration" action:v22];

  v24 = MEMORY[0x277D431A8];
  v25 = [MEMORY[0x277D43248] actionWithHandler:&__block_literal_global_40];
  v26 = [v24 rowWithTitle:@"70% Duration" action:v25];

  v27 = MEMORY[0x277D43218];
  v41[0] = v14;
  v41[1] = v17;
  v41[2] = v20;
  v41[3] = v23;
  v41[4] = v26;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
  v29 = [v27 sectionWithRows:v28 title:@"Clock Specific"];

  v30 = MEMORY[0x277D43218];
  v40[0] = v34;
  v40[1] = v29;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v32 = [v30 moduleWithTitle:@"AOD Transition Settings" contents:v31];

  return v32;
}

uint64_t __51__CSAODTransitionSettings_settingsControllerModule__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setAodGeneralResponseMultiplier:1.0];

  return 1;
}

uint64_t __51__CSAODTransitionSettings_settingsControllerModule__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setAodGeneralResponseMultiplier:0.9];

  return 1;
}

uint64_t __51__CSAODTransitionSettings_settingsControllerModule__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setAodGeneralResponseMultiplier:0.8];

  return 1;
}

uint64_t __51__CSAODTransitionSettings_settingsControllerModule__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setAodGeneralResponseMultiplier:0.7];

  return 1;
}

uint64_t __51__CSAODTransitionSettings_settingsControllerModule__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setAodClockResponseMultiplier:1.0];

  return 1;
}

uint64_t __51__CSAODTransitionSettings_settingsControllerModule__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setAodClockResponseMultiplier:0.9];

  return 1;
}

uint64_t __51__CSAODTransitionSettings_settingsControllerModule__block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setAodClockResponseMultiplier:0.8];

  return 1;
}

uint64_t __51__CSAODTransitionSettings_settingsControllerModule__block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 settings];
  [v3 _setAodClockResponseMultiplier:0.7];

  return 1;
}

@end