@interface KMItemMapper
+ (id)_mapperForObjectClass:(Class)a3 error:(id *)a4;
- (KMItemMapper)init;
- (KMItemMapper)initWithObjectClass:(Class)a3 error:(id *)a4;
- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5;
@end

@implementation KMItemMapper

- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    externalObjectClass = self->_externalObjectClass;
    if (objc_opt_isKindOfClass())
    {
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = [(KMMapper *)self->_mapper itemsFromExternalObject:v8 additionalFields:v9 error:a5];
        goto LABEL_11;
      }

      v23 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA068];
      v24 = MEMORY[0x277CCACA8];
      v25 = objc_opt_class();
      v18 = NSStringFromClass(v25);
      v26 = [v24 stringWithFormat:@"Invalid additional fields: %@ must be %@", v9, v18];
      v32 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v28 = [v23 errorWithDomain:@"com.apple.siri.koa.mapper" code:5 userInfo:v27];
      KVSetError();
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA068];
      v16 = MEMORY[0x277CCACA8];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromClass(self->_externalObjectClass);
      v20 = [v16 stringWithFormat:@"Object class (%@) inconsistent with expected class (%@) provided at initialization", v18, v19];
      v34 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v22 = [v15 errorWithDomain:@"com.apple.siri.koa.mapper" code:3 userInfo:v21];
      KVSetError();
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA068];
    v36[0] = @"Object to be mapped is nil";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.siri.koa.mapper" code:1 userInfo:v13];
    KVSetError();
  }

  v11 = 0;
LABEL_11:

  v29 = *MEMORY[0x277D85DE8];

  return v11;
}

- (KMItemMapper)initWithObjectClass:(Class)a3 error:(id *)a4
{
  v11.receiver = self;
  v11.super_class = KMItemMapper;
  v6 = [(KMItemMapper *)&v11 init];
  if (v6)
  {
    v7 = [objc_opt_class() _mapperForObjectClass:a3 error:a4];
    mapper = v6->_mapper;
    v6->_mapper = v7;

    if (!v6->_mapper)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v6->_externalObjectClass = [objc_opt_class() externalObjectClass];
  }

  v9 = v6;
LABEL_6:

  return v9;
}

- (KMItemMapper)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (id)_mapperForObjectClass:(Class)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (+[KMMapper_SAPerson externalObjectClass]== a3)
  {
    v12 = KMMapper_SAPerson;
  }

  else if (+[KMMapper_SAAppInfo externalObjectClass]== a3)
  {
    v12 = KMMapper_SAAppInfo;
  }

  else if (+[KMMapper_INVocabularyItem externalObjectClass]== a3)
  {
    v12 = KMMapper_INVocabularyItem;
  }

  else if (+[KMMapper_CNContact externalObjectClass]== a3)
  {
    v12 = KMMapper_CNContact;
  }

  else if (+[KMMapper_LSApplicationRecord externalObjectClass]== a3)
  {
    v12 = KMMapper_LSApplicationRecord;
  }

  else if (+[KMMapper_HMHome externalObjectClass]== a3)
  {
    v12 = KMMapper_HMHome;
  }

  else if (+[KMMapper_MPMediaEntity externalObjectClass]== a3)
  {
    v12 = KMMapper_MPMediaEntity;
  }

  else if (+[KMMapper_SASyncSiriKitAppVocabulary externalObjectClass]== a3)
  {
    v12 = KMMapper_SASyncSiriKitAppVocabulary;
  }

  else if (+[KMMapper_RTLocationOfInterest externalObjectClass]== a3)
  {
    v12 = KMMapper_RTLocationOfInterest;
  }

  else if (+[KMMapper_PortraitEntity externalObjectClass]== a3)
  {
    v12 = KMMapper_PortraitEntity;
  }

  else if (+[KMMapper_AppGlobalVocabulary externalObjectClass]== a3)
  {
    v12 = KMMapper_AppGlobalVocabulary;
  }

  else if (+[KMMapper_EKEvent externalObjectClass]== a3)
  {
    v12 = KMMapper_EKEvent;
  }

  else
  {
    if (+[KMMapper_PBSUserProfile externalObjectClass]!= a3)
    {
      v5 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA068];
      v6 = MEMORY[0x277CCACA8];
      v7 = NSStringFromClass(a3);
      v8 = [v6 stringWithFormat:@"Object class (%@) not supported", v7, v15];
      v16[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v10 = [v5 errorWithDomain:@"com.apple.siri.koa.mapper" code:2 userInfo:v9];
      KVSetError();

      v11 = 0;
      goto LABEL_29;
    }

    v12 = KMMapper_PBSUserProfile;
  }

  v11 = objc_alloc_init(v12);
LABEL_29:
  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

@end