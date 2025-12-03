@interface DTKPKDebugCodes
+ (id)codesFromURL:(id)l error:(id *)error;
+ (id)localKDebugCodes:(id *)codes;
+ (void)initialize;
- (DTKPKDebugCodes)initWithCodeMapping:(id)mapping;
- (DTKPKDebugCodes)initWithCodes:(id)codes;
@end

@implementation DTKPKDebugCodes

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = dispatch_semaphore_create(1);
    v3 = qword_27EE84460;
    qword_27EE84460 = v2;

    v4 = qword_27EE84468;
    qword_27EE84468 = 0;

    DTKPSetupLogging();
  }
}

+ (id)localKDebugCodes:(id *)codes
{
  dispatch_semaphore_wait(qword_27EE84460, 0xFFFFFFFFFFFFFFFFLL);
  if ((byte_27EE84470 & 1) == 0)
  {
    byte_27EE84470 = 1;
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/usr/share/misc/trace.codes"];
    v5 = sub_247FEB244(v4, codes);
    v6 = [[DTKPKDebugCodes alloc] initWithCodes:v5];
    v7 = qword_27EE84468;
    qword_27EE84468 = v6;
  }

  dispatch_semaphore_signal(qword_27EE84460);
  v8 = qword_27EE84468;

  return v8;
}

+ (id)codesFromURL:(id)l error:(id *)error
{
  v4 = sub_247FEB244(l, error);
  v5 = [[DTKPKDebugCodes alloc] initWithCodes:v4];

  return v5;
}

- (DTKPKDebugCodes)initWithCodeMapping:(id)mapping
{
  mappingCopy = mapping;
  v20.receiver = self;
  v20.super_class = DTKPKDebugCodes;
  v5 = [(DTKPKDebugCodes *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_new();
    codeMap = v5->_codeMap;
    v5->_codeMap = v6;

    v8 = objc_opt_new();
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_247FEB5F4;
    v17 = &unk_278EF3EC8;
    v9 = v5;
    v18 = v9;
    v19 = v8;
    v10 = v8;
    [mappingCopy enumerateObjectsAndIntegerKeys:&v14];
    v11 = [v10 copy];
    allKDebugCodes = v9->_allKDebugCodes;
    v9->_allKDebugCodes = v11;
  }

  return v5;
}

- (DTKPKDebugCodes)initWithCodes:(id)codes
{
  codesCopy = codes;
  v13.receiver = self;
  v13.super_class = DTKPKDebugCodes;
  v5 = [(DTKPKDebugCodes *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_new();
    codeMap = v5->_codeMap;
    v5->_codeMap = v6;

    v8 = [codesCopy copy];
    allKDebugCodes = v5->_allKDebugCodes;
    v5->_allKDebugCodes = v8;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247FEB770;
    v11[3] = &unk_278EF3EF0;
    v12 = v5;
    [codesCopy enumerateObjectsUsingBlock:v11];
  }

  return v5;
}

@end