@interface HRETemplateRecommendationGenerator
+ (id)allAvailableTemplates;
- (HRETemplateRecommendationGenerator)initWithTemplates:(id)templates;
- (id)_filterTemplates:(id)templates options:(unint64_t)options;
- (void)setupProcess:(id)process;
@end

@implementation HRETemplateRecommendationGenerator

- (HRETemplateRecommendationGenerator)initWithTemplates:(id)templates
{
  templatesCopy = templates;
  v9.receiver = self;
  v9.super_class = HRETemplateRecommendationGenerator;
  v6 = [(HREStandardAsyncRecommendationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templates, templates);
  }

  return v7;
}

- (id)_filterTemplates:(id)templates options:(unint64_t)options
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HRETemplateRecommendationGenerator__filterTemplates_options___block_invoke;
  v6[3] = &__block_descriptor_35_e21_B16__0__HRETemplate_8l;
  v7 = (options & 2) != 0;
  v8 = options & 1;
  v9 = (options & 4) != 0;
  v4 = [templates na_filter:v6];

  return v4;
}

BOOL __63__HRETemplateRecommendationGenerator__filterTemplates_options___block_invoke(_BYTE *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v5 = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) != 0 && (a1[32] & 1) != 0 || (v5 & 1) != 0 && (a1[33] & 1) != 0 || (v6 & 1) != 0 && (a1[34] & 1) != 0;
}

- (void)setupProcess:(id)process
{
  processCopy = process;
  v17.receiver = self;
  v17.super_class = HRETemplateRecommendationGenerator;
  [(HREStandardAsyncRecommendationSource *)&v17 setupProcess:processCopy];
  objc_opt_class();
  v5 = processCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  home = [v5 home];
  rooms = [home rooms];
  v10 = [rooms mutableCopy];

  home2 = [v5 home];
  roomForEntireHome = [home2 roomForEntireHome];

  if (roomForEntireHome)
  {
    home3 = [v5 home];
    roomForEntireHome2 = [home3 roomForEntireHome];
    [v10 addObject:roomForEntireHome2];
  }

  [v7 setRooms:v10];
  templates = [(HRETemplateRecommendationGenerator *)self templates];
  v16 = -[HRETemplateRecommendationGenerator _filterTemplates:options:](self, "_filterTemplates:options:", templates, [v5 options]);
  [v7 setActiveTemplates:v16];
}

+ (id)allAvailableTemplates
{
  if (qword_27F5F97D0 != -1)
  {
    dispatch_once(&qword_27F5F97D0, &__block_literal_global_4);
  }

  v3 = _MergedGlobals_4;

  return v3;
}

void __59__HRETemplateRecommendationGenerator_allAvailableTemplates__block_invoke()
{
  v14[11] = *MEMORY[0x277D85DE8];
  v13 = objc_alloc_init(HREArriveHomeTemplate);
  v14[0] = v13;
  v0 = objc_alloc_init(HREGoodNightTemplate);
  v14[1] = v0;
  v1 = objc_alloc_init(HREGoodMorningTemplate);
  v14[2] = v1;
  v2 = objc_alloc_init(HRELeaveHomeTemplate);
  v14[3] = v2;
  v3 = objc_alloc_init(HREAutoArriveHomeTemplate);
  v14[4] = v3;
  v4 = objc_alloc_init(HREAutoLeaveHomeTemplate);
  v14[5] = v4;
  v5 = objc_alloc_init(HREAutoLightsOnUnlockTemplate);
  v14[6] = v5;
  v6 = objc_alloc_init(HRELockWhenDoorClosedTemplate);
  v14[7] = v6;
  v7 = objc_alloc_init(HREMotionSensorLightsTemplate);
  v14[8] = v7;
  v8 = objc_alloc_init(HRELightsAllOffContextActionTemplate);
  v14[9] = v8;
  v9 = objc_alloc_init(HREMediaPauseAllContextActionTemplate);
  v14[10] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:11];
  v11 = _MergedGlobals_4;
  _MergedGlobals_4 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

@end