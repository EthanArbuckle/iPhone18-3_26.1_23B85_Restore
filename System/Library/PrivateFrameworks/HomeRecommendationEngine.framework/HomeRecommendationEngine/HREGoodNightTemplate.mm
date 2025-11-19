@interface HREGoodNightTemplate
- (HREGoodNightTemplate)init;
- (id)_lazy_actionMap;
- (id)extraInvolvedTypes;
@end

@implementation HREGoodNightTemplate

- (HREGoodNightTemplate)init
{
  v8.receiver = self;
  v8.super_class = HREGoodNightTemplate;
  v2 = [(HREActionSetTemplate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(HREActionSetTemplate *)v2 setActionSetType:*MEMORY[0x277CCF198]];
    v4 = objc_alloc(MEMORY[0x277D14728]);
    v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13AB8]];
    [(HREActionSetTemplate *)v3 setIconDescriptor:v5];

    if (_MergedGlobals_14 != -1)
    {
      dispatch_once(&_MergedGlobals_14, &__block_literal_global_3_0);
    }

    v6 = qword_27F5F96B0;
    [(HRETemplate *)v3 setIdentifier:v6];

    [(HRETemplate *)v3 setSortingPriority:1.0];
    [(HRETemplate *)v3 setStarterRank:1.6];
  }

  return v3;
}

void __28__HREGoodNightTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F96B0;
  qword_27F5F96B0 = @"goodNight";
}

- (id)extraInvolvedTypes
{
  if (qword_27F5F96B8 != -1)
  {
    dispatch_once(&qword_27F5F96B8, &__block_literal_global_8_0);
  }

  v3 = qword_27F5F96C0;

  return v3;
}

void __42__HREGoodNightTemplate_extraInvolvedTypes__block_invoke_2()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E48];
  v7[0] = *MEMORY[0x277CD0EA0];
  v7[1] = v1;
  v7[2] = *MEMORY[0x277CD0F20];
  v2 = HRETelevisionProfileType();
  v7[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = qword_27F5F96C0;
  qword_27F5F96C0 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_lazy_actionMap
{
  v50[9] = *MEMORY[0x277D85DE8];
  v43[0] = @"HREServiceTypeAll";
  v2 = *MEMORY[0x277CCF748];
  v41[0] = *MEMORY[0x277CCF9F0];
  v41[1] = v2;
  v42[0] = MEMORY[0x277CBEC28];
  v42[1] = &unk_28665D748;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v25 = [HRECharacteristicActionMap characteristicActionMap:v26];
  v50[0] = v25;
  v43[1] = *MEMORY[0x277CD0E30];
  v39 = *MEMORY[0x277CCFB50];
  v3 = v39;
  v40 = &unk_28665D760;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v23 = [HRECharacteristicActionMap characteristicActionMap:v24];
  v50[1] = v23;
  v43[2] = *MEMORY[0x277CD0F58];
  v37 = v3;
  v38 = &unk_28665D760;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v21 = [HRECharacteristicActionMap characteristicActionMap:v22];
  v50[2] = v21;
  v44 = *MEMORY[0x277CD0ED8];
  v4 = v44;
  v35 = *MEMORY[0x277CCFB60];
  v5 = v35;
  v36 = &unk_28665D748;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v19 = [HRECharacteristicActionMap characteristicActionMap:v20];
  v50[3] = v19;
  v45 = *MEMORY[0x277CD0E58];
  v33 = *MEMORY[0x277CCFB08];
  v34 = &unk_28665D778;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v17 = [HRECharacteristicActionMap characteristicActionMap:v18];
  v50[4] = v17;
  v46 = *MEMORY[0x277CD0F60];
  v31 = v3;
  v32 = &unk_28665D760;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v7 = [HRECharacteristicActionMap characteristicActionMap:v6];
  v50[5] = v7;
  v47 = *MEMORY[0x277CD0EB0];
  v29 = *MEMORY[0x277CCFB40];
  v30 = &unk_28665D778;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v9 = [HRECharacteristicActionMap characteristicActionMap:v8];
  v50[6] = v9;
  v48 = v4;
  v27 = v5;
  v28 = &unk_28665D790;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v11 = [HRECharacteristicActionMap characteristicActionMap:v10];
  v50[7] = v11;
  v12 = NSStringFromProtocol(&unk_28666EF10);
  v49 = v12;
  v13 = [HREMediaPlaybackActionMap actionMapWithState:2 volume:0 playbackArchive:0];
  v50[8] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v43 count:9];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end