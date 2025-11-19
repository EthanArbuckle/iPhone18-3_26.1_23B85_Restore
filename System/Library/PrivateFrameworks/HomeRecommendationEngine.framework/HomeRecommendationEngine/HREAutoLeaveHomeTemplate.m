@interface HREAutoLeaveHomeTemplate
- (HREAutoLeaveHomeTemplate)init;
- (id)_lazy_actionMap;
@end

@implementation HREAutoLeaveHomeTemplate

- (HREAutoLeaveHomeTemplate)init
{
  v17[7] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HREAutoLeaveHomeTemplate;
  v2 = [(HRETemplate *)&v16 init];
  v3 = v2;
  if (v2)
  {
    [(HREPresenceTriggerTemplate *)v2 setPresenceType:4];
    [(HREPresenceTriggerTemplate *)v3 setPresenceUserType:2];
    if (_MergedGlobals_17 != -1)
    {
      dispatch_once(&_MergedGlobals_17, &__block_literal_global_3_2);
    }

    v4 = qword_27F5F9750;
    [(HRETemplate *)v3 setIdentifier:v4];

    [(HRETemplate *)v3 setSortingPriority:0.2];
    [(HRETemplate *)v3 setStarterRank:1.8];
    v5 = objc_alloc(MEMORY[0x277D14728]);
    v6 = [v5 initWithImageIdentifier:*MEMORY[0x277D13A98]];
    [(HRETriggerTemplate *)v3 setDefaultIconDescriptor:v6];

    v7 = MEMORY[0x277CBEB98];
    v8 = *MEMORY[0x277CD0E40];
    v17[0] = *MEMORY[0x277CD0EA0];
    v17[1] = v8;
    v9 = *MEMORY[0x277CD0F20];
    v17[2] = *MEMORY[0x277CD0F40];
    v17[3] = v9;
    v10 = HRETelevisionProfileType();
    v11 = *MEMORY[0x277CD0E68];
    v17[4] = v10;
    v17[5] = v11;
    v17[6] = *MEMORY[0x277CD0DD8];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:7];
    v13 = [v7 setWithArray:v12];
    [(HREActionTemplate *)v3 setExtraInvolvedTypes:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

void __32__HREAutoLeaveHomeTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F9750;
  qword_27F5F9750 = @"autoLeaveHome";
}

- (id)_lazy_actionMap
{
  v42[8] = *MEMORY[0x277D85DE8];
  v41[0] = @"HREServiceTypeAll";
  v2 = *MEMORY[0x277CCF748];
  v39[0] = *MEMORY[0x277CCF9F0];
  v39[1] = v2;
  v40[0] = MEMORY[0x277CBEC28];
  v40[1] = MEMORY[0x277CBEC28];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v26 = [HRECharacteristicActionMap characteristicActionMap:v27];
  v42[0] = v26;
  v41[1] = *MEMORY[0x277CD0E30];
  v37 = *MEMORY[0x277CCFB50];
  v3 = v37;
  v38 = &unk_28665D7A8;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v24 = [HRECharacteristicActionMap characteristicActionMap:v25];
  v42[1] = v24;
  v41[2] = *MEMORY[0x277CD0F60];
  v35 = v3;
  v36 = &unk_28665D7A8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v22 = [HRECharacteristicActionMap characteristicActionMap:v23];
  v42[2] = v22;
  v41[3] = *MEMORY[0x277CD0E60];
  v33 = *MEMORY[0x277CCFB18];
  v34 = &unk_28665D7C0;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v20 = [HRECharacteristicActionMap characteristicActionMap:v21];
  v42[3] = v20;
  v41[4] = *MEMORY[0x277CD0E58];
  v31 = *MEMORY[0x277CCFB08];
  v32 = &unk_28665D7D8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v18 = [HRECharacteristicActionMap characteristicActionMap:v19];
  v42[4] = v18;
  v41[5] = *MEMORY[0x277CD0ED8];
  v29 = *MEMORY[0x277CCFB60];
  v30 = &unk_28665D7D8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v5 = [HRECharacteristicActionMap characteristicActionMap:v4];
  v42[5] = v5;
  v6 = NSStringFromProtocol(&unk_28666EF10);
  v41[6] = v6;
  v7 = [HREMediaPlaybackActionMap actionMapWithState:2 volume:0 playbackArchive:0];
  v42[6] = v7;
  v8 = HREMatterRVCType();
  v41[7] = v8;
  v9 = [HREMatterCommandActionMap alloc];
  v10 = +[HREMatterCommandMap vacuumAndMop];
  v28[0] = v10;
  v11 = +[HREMatterCommandMap selectAllRooms];
  v28[1] = v11;
  v12 = +[HREMatterCommandMap startCleaning];
  v28[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v14 = [(HREMatterCommandActionMap *)v9 initWithCommands:v13];
  v42[7] = v14;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:8];

  v15 = *MEMORY[0x277D85DE8];

  return v17;
}

@end