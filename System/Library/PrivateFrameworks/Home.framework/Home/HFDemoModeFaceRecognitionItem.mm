@interface HFDemoModeFaceRecognitionItem
+ (id)dateFormatter;
- (HFDemoModeFaceRecognitionItem)init;
- (HFDemoModeFaceRecognitionItem)initWithRecentsData:(id)data home:(id)home;
- (HMPerson)person;
- (HMPersonManager)personManager;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
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

- (HFDemoModeFaceRecognitionItem)initWithRecentsData:(id)data home:(id)home
{
  dataCopy = data;
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HFDemoModeFaceRecognitionItem;
  v9 = [(HFDemoModeFaceRecognitionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_demoRecentsEntry, data);
    objc_storeStrong(&v10->_home, home);
  }

  return v10;
}

- (HFDemoModeFaceRecognitionItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRecentsData_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFDemoModeFaceRecognitionItem.m" lineNumber:50 description:{@"%s is unavailable; use %@ instead", "-[HFDemoModeFaceRecognitionItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFDemoModeFaceRecognitionItem alloc];
  demoRecentsEntry = [(HFDemoModeFaceRecognitionItem *)self demoRecentsEntry];
  home = [(HFDemoModeFaceRecognitionItem *)self home];
  v7 = [(HFDemoModeFaceRecognitionItem *)v4 initWithRecentsData:demoRecentsEntry home:home];

  [(HFItem *)v7 copyLatestResultsFromItem:self];
  return v7;
}

- (HMPerson)person
{
  demoRecentsEntry = [(HFDemoModeFaceRecognitionItem *)self demoRecentsEntry];
  person = [demoRecentsEntry person];

  return person;
}

- (HMPersonManager)personManager
{
  NSLog(&cfstr_DemoModeShould.isa, a2);
  home = [(HFDemoModeFaceRecognitionItem *)self home];
  personManager = [home personManager];

  return personManager;
}

- (id)_subclass_updateWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  demoRecentsEntry = [(HFDemoModeFaceRecognitionItem *)self demoRecentsEntry];
  faceCrop = [demoRecentsEntry faceCrop];

  v7 = objc_alloc(MEMORY[0x277D755B8]);
  dataRepresentation = [faceCrop dataRepresentation];
  v9 = [v7 initWithData:dataRepresentation];

  if (v9)
  {
    [dictionary setObject:v9 forKeyedSubscript:@"HFPersonResultFaceCropImageKey"];
    dateCreated = [faceCrop dateCreated];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];

    if (dateCreated != distantFuture)
    {
      [dictionary na_safeSetObject:dateCreated forKey:@"HFPersonResultFaceCropDateKey"];
      [dictionary na_safeSetObject:dateCreated forKey:@"HFResultCameraSignificantEventDateKey"];
      dateFormatter = [objc_opt_class() dateFormatter];
      v13 = [dateFormatter stringFromDate:dateCreated];
      [dictionary setObject:v13 forKeyedSubscript:@"description"];
    }

    v14 = MEMORY[0x277CBEB98];
    demoRecentsEntry2 = [(HFDemoModeFaceRecognitionItem *)self demoRecentsEntry];
    faceCrop2 = [demoRecentsEntry2 faceCrop];
    uUID = [faceCrop2 UUID];
    v18 = [v14 na_setWithSafeObject:uUID];
    [dictionary setObject:v18 forKeyedSubscript:@"HFPersonResultFaceCropIdentifiersKey"];
  }

  [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"HFPersonResultIsHomeOriginatedKey"];
  demoRecentsEntry3 = [(HFDemoModeFaceRecognitionItem *)self demoRecentsEntry];
  person = [demoRecentsEntry3 person];

  if (person)
  {
    name = [person name];
    [dictionary na_safeSetObject:name forKey:@"title"];

    uUID2 = [person UUID];
    [dictionary na_safeSetObject:uUID2 forKey:@"personIdentifier"];
  }

  v23 = MEMORY[0x277D2C900];
  v24 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
  v25 = [v23 futureWithResult:v24];

  return v25;
}

@end