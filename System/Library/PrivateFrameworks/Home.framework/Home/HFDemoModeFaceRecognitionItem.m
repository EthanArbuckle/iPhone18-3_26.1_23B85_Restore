@interface HFDemoModeFaceRecognitionItem
+ (id)dateFormatter;
- (HFDemoModeFaceRecognitionItem)init;
- (HFDemoModeFaceRecognitionItem)initWithRecentsData:(id)a3 home:(id)a4;
- (HMPerson)person;
- (HMPersonManager)personManager;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFDemoModeFaceRecognitionItem

+ (id)dateFormatter
{
  if (qword_280E026F8 != -1)
  {
    dispatch_once(&qword_280E026F8, &__block_literal_global_68);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

uint64_t __46__HFDemoModeFaceRecognitionItem_dateFormatter__block_invoke()
{
  v0 = +[HFFormatterManager sharedInstance];
  v1 = [v0 relativeDateFormatter];
  v2 = _MergedGlobals_1;
  _MergedGlobals_1 = v1;

  v3 = _MergedGlobals_1;

  return [v3 setTimeStyle:0];
}

- (HFDemoModeFaceRecognitionItem)initWithRecentsData:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFDemoModeFaceRecognitionItem;
  v9 = [(HFDemoModeFaceRecognitionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_demoRecentsEntry, a3);
    objc_storeStrong(&v10->_home, a4);
  }

  return v10;
}

- (HFDemoModeFaceRecognitionItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRecentsData_home_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFDemoModeFaceRecognitionItem.m" lineNumber:50 description:{@"%s is unavailable; use %@ instead", "-[HFDemoModeFaceRecognitionItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFDemoModeFaceRecognitionItem alloc];
  v5 = [(HFDemoModeFaceRecognitionItem *)self demoRecentsEntry];
  v6 = [(HFDemoModeFaceRecognitionItem *)self home];
  v7 = [(HFDemoModeFaceRecognitionItem *)v4 initWithRecentsData:v5 home:v6];

  [(HFItem *)v7 copyLatestResultsFromItem:self];
  return v7;
}

- (HMPerson)person
{
  v2 = [(HFDemoModeFaceRecognitionItem *)self demoRecentsEntry];
  v3 = [v2 person];

  return v3;
}

- (HMPersonManager)personManager
{
  NSLog(&cfstr_DemoModeShould.isa, a2);
  v3 = [(HFDemoModeFaceRecognitionItem *)self home];
  v4 = [v3 personManager];

  return v4;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HFDemoModeFaceRecognitionItem *)self demoRecentsEntry];
  v6 = [v5 faceCrop];

  v7 = objc_alloc(MEMORY[0x277D755B8]);
  v8 = [v6 dataRepresentation];
  v9 = [v7 initWithData:v8];

  if (v9)
  {
    [v4 setObject:v9 forKeyedSubscript:@"HFPersonResultFaceCropImageKey"];
    v10 = [v6 dateCreated];
    v11 = [MEMORY[0x277CBEAA8] distantFuture];

    if (v10 != v11)
    {
      [v4 na_safeSetObject:v10 forKey:@"HFPersonResultFaceCropDateKey"];
      [v4 na_safeSetObject:v10 forKey:@"HFResultCameraSignificantEventDateKey"];
      v12 = [objc_opt_class() dateFormatter];
      v13 = [v12 stringFromDate:v10];
      [v4 setObject:v13 forKeyedSubscript:@"description"];
    }

    v14 = MEMORY[0x277CBEB98];
    v15 = [(HFDemoModeFaceRecognitionItem *)self demoRecentsEntry];
    v16 = [v15 faceCrop];
    v17 = [v16 UUID];
    v18 = [v14 na_setWithSafeObject:v17];
    [v4 setObject:v18 forKeyedSubscript:@"HFPersonResultFaceCropIdentifiersKey"];
  }

  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"HFPersonResultIsHomeOriginatedKey"];
  v19 = [(HFDemoModeFaceRecognitionItem *)self demoRecentsEntry];
  v20 = [v19 person];

  if (v20)
  {
    v21 = [v20 name];
    [v4 na_safeSetObject:v21 forKey:@"title"];

    v22 = [v20 UUID];
    [v4 na_safeSetObject:v22 forKey:@"personIdentifier"];
  }

  v23 = MEMORY[0x277D2C900];
  v24 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v25 = [v23 futureWithResult:v24];

  return v25;
}

@end