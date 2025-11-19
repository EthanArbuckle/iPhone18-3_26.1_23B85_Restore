@interface HRELeaveHomeTemplate
- (HRELeaveHomeTemplate)init;
- (id)_lazy_actionMap;
- (id)extraInvolvedTypes;
@end

@implementation HRELeaveHomeTemplate

- (HRELeaveHomeTemplate)init
{
  v8.receiver = self;
  v8.super_class = HRELeaveHomeTemplate;
  v2 = [(HREActionSetTemplate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(HREActionSetTemplate *)v2 setActionSetType:*MEMORY[0x277CCF188]];
    v4 = objc_alloc(MEMORY[0x277D14728]);
    v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13A98]];
    [(HREActionSetTemplate *)v3 setIconDescriptor:v5];

    if (_MergedGlobals_13 != -1)
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_3);
    }

    v6 = qword_27F5F9690;
    [(HRETemplate *)v3 setIdentifier:v6];

    [(HRETemplate *)v3 setSortingPriority:4.0];
    [(HRETemplate *)v3 setStarterRank:2.2];
  }

  return v3;
}

void __28__HRELeaveHomeTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F9690;
  qword_27F5F9690 = @"leaveHome";
}

- (id)extraInvolvedTypes
{
  if (qword_27F5F9698 != -1)
  {
    dispatch_once(&qword_27F5F9698, &__block_literal_global_8);
  }

  v3 = qword_27F5F96A0;

  return v3;
}

void __42__HRELeaveHomeTemplate_extraInvolvedTypes__block_invoke_2()
{
  v9[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E40];
  v9[0] = *MEMORY[0x277CD0EA0];
  v9[1] = v1;
  v2 = *MEMORY[0x277CD0E48];
  v9[2] = *MEMORY[0x277CD0F40];
  v9[3] = v2;
  v3 = *MEMORY[0x277CD0E68];
  v9[4] = *MEMORY[0x277CD0F20];
  v9[5] = v3;
  v9[6] = *MEMORY[0x277CD0DD8];
  v4 = HRETelevisionProfileType();
  v9[7] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:8];
  v6 = [v0 setWithArray:v5];
  v7 = qword_27F5F96A0;
  qword_27F5F96A0 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_lazy_actionMap
{
  v46[9] = *MEMORY[0x277D85DE8];
  v45[0] = @"HREServiceTypeAll";
  v2 = *MEMORY[0x277CCF748];
  v43[0] = *MEMORY[0x277CCF9F0];
  v43[1] = v2;
  v44[0] = MEMORY[0x277CBEC28];
  v44[1] = &unk_28665D700;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v28 = [HRECharacteristicActionMap characteristicActionMap:v29];
  v46[0] = v28;
  v45[1] = *MEMORY[0x277CD0E30];
  v41 = *MEMORY[0x277CCFB50];
  v3 = v41;
  v42 = &unk_28665D718;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v26 = [HRECharacteristicActionMap characteristicActionMap:v27];
  v46[1] = v26;
  v45[2] = *MEMORY[0x277CD0F60];
  v39 = v3;
  v40 = &unk_28665D718;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v24 = [HRECharacteristicActionMap characteristicActionMap:v25];
  v46[2] = v24;
  v45[3] = *MEMORY[0x277CD0E60];
  v37 = *MEMORY[0x277CCFB18];
  v38 = &unk_28665D700;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v22 = [HRECharacteristicActionMap characteristicActionMap:v23];
  v46[3] = v22;
  v45[4] = *MEMORY[0x277CD0E58];
  v35 = *MEMORY[0x277CCFB08];
  v36 = &unk_28665D730;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v20 = [HRECharacteristicActionMap characteristicActionMap:v21];
  v46[4] = v20;
  v45[5] = *MEMORY[0x277CD0EB0];
  v33 = *MEMORY[0x277CCFB40];
  v34 = &unk_28665D730;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v18 = [HRECharacteristicActionMap characteristicActionMap:v19];
  v46[5] = v18;
  v45[6] = *MEMORY[0x277CD0ED8];
  v31 = *MEMORY[0x277CCFB60];
  v32 = &unk_28665D730;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v5 = [HRECharacteristicActionMap characteristicActionMap:v4];
  v46[6] = v5;
  v6 = NSStringFromProtocol(&unk_28666EF10);
  v45[7] = v6;
  v7 = [HREMediaPlaybackActionMap actionMapWithState:2 volume:0 playbackArchive:0];
  v46[7] = v7;
  v8 = HREMatterRVCType();
  v45[8] = v8;
  v9 = [HREMatterCommandActionMap alloc];
  v10 = +[HREMatterCommandMap vacuumAndMop];
  v30[0] = v10;
  v11 = +[HREMatterCommandMap selectAllRooms];
  v30[1] = v11;
  v12 = +[HREMatterCommandMap startCleaning];
  v30[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v14 = [(HREMatterCommandActionMap *)v9 initWithCommands:v13];
  v46[8] = v14;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:9];

  v15 = *MEMORY[0x277D85DE8];

  return v17;
}

@end