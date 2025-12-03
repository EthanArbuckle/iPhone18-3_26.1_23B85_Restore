@interface HFAccessoryType
+ (NAIdentity)na_identity;
+ (id)_cache;
+ (id)categoryType:(id)type;
+ (id)categoryTypeWithCategory:(id)category;
+ (id)matterDeviceType:(id)type;
+ (id)mediaSystemType;
+ (id)serviceType:(id)type subtype:(id)subtype;
+ (id)serviceTypeWithService:(id)service;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)filterAccessoryRepresentableObjects:(id)objects;
- (unint64_t)hash;
@end

@implementation HFAccessoryType

+ (id)_cache
{
  objc_opt_self();
  if (qword_280E02448 != -1)
  {
    dispatch_once(&qword_280E02448, &__block_literal_global_28);
  }

  v0 = _MergedGlobals_29;

  return v0;
}

uint64_t __25__HFAccessoryType__cache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _MergedGlobals_29;
  _MergedGlobals_29 = v0;

  v2 = _MergedGlobals_29;

  return [v2 setName:@"HFAccessoryType-cache"];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HFAccessoryType;
  return [(HFAccessoryType *)&v3 init];
}

+ (id)categoryType:(id)type
{
  typeCopy = type;
  objc_opt_self();
  if (qword_280E02460 != -1)
  {
    dispatch_once(&qword_280E02460, &__block_literal_global_55);
  }

  v5 = qword_280E02468;
  v6 = [v5 objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    v7 = [self serviceType:v6];
  }

  else
  {
    v8 = +[HFAccessoryType _cache];
    v9 = [v8 objectForKey:typeCopy];
    v10 = v9;
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __32__HFAccessoryType_categoryType___block_invoke;
      v12[3] = &unk_277DF4C48;
      v13 = typeCopy;
      selfCopy = self;
      v7 = __32__HFAccessoryType_categoryType___block_invoke(v12);
    }
  }

  return v7;
}

HFCategoryAccessoryType *__32__HFAccessoryType_categoryType___block_invoke(uint64_t a1)
{
  v2 = [[HFCategoryAccessoryType alloc] initWithCategoryType:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = +[HFAccessoryType _cache];
  [v4 setObject:v2 forKey:*(a1 + 32)];

  return v2;
}

+ (id)categoryTypeWithCategory:(id)category
{
  categoryType = [category categoryType];
  v5 = [self categoryType:categoryType];

  return v5;
}

+ (id)serviceType:(id)type subtype:(id)subtype
{
  typeCopy = type;
  subtypeCopy = subtype;
  if ([subtypeCopy isEqualToString:*MEMORY[0x277CD0DB8]])
  {

    v8 = typeCopy;
    subtypeCopy = 0;
  }

  else
  {
    v9 = typeCopy;
    v8 = v9;
    if (subtypeCopy)
    {
      subtypeCopy = [v9 stringByAppendingFormat:@"-%@", subtypeCopy];

      v8 = subtypeCopy;
    }
  }

  v11 = +[HFAccessoryType _cache];
  v12 = [v11 objectForKey:v8];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__HFAccessoryType_serviceType_subtype___block_invoke;
    v16[3] = &unk_277DF4C70;
    v17 = typeCopy;
    v18 = subtypeCopy;
    selfCopy = self;
    v19 = v8;
    v14 = __39__HFAccessoryType_serviceType_subtype___block_invoke(v16);
  }

  return v14;
}

HFServiceAccessoryType *__39__HFAccessoryType_serviceType_subtype___block_invoke(void *a1)
{
  v2 = [[HFServiceAccessoryType alloc] initWithServiceType:a1[4] subtype:a1[5]];
  v3 = a1[7];
  v4 = +[HFAccessoryType _cache];
  [v4 setObject:v2 forKey:a1[6]];

  return v2;
}

+ (id)serviceTypeWithService:(id)service
{
  serviceCopy = service;
  associatedServiceType = [serviceCopy associatedServiceType];
  serviceType = associatedServiceType;
  if (!associatedServiceType)
  {
    serviceType = [serviceCopy serviceType];
  }

  serviceSubtype = [serviceCopy serviceSubtype];
  v8 = [self serviceType:serviceType subtype:serviceSubtype];

  if (!associatedServiceType)
  {
  }

  return v8;
}

+ (id)matterDeviceType:(id)type
{
  typeCopy = type;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"matterDeviceType-%i", objc_msgSend(typeCopy, "intValue")];
  v6 = +[HFAccessoryType _cache];
  v7 = [v6 objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__HFAccessoryType_matterDeviceType___block_invoke;
    v11[3] = &unk_277DF4C98;
    v12 = typeCopy;
    selfCopy = self;
    v13 = v5;
    v9 = __36__HFAccessoryType_matterDeviceType___block_invoke(v11);
  }

  return v9;
}

HFMatterDeviceAccessoryType *__36__HFAccessoryType_matterDeviceType___block_invoke(void *a1)
{
  v2 = [[HFMatterDeviceAccessoryType alloc] initWithDeviceType:a1[4]];
  v3 = a1[6];
  v4 = +[HFAccessoryType _cache];
  [v4 setObject:v2 forKey:a1[5]];

  return v2;
}

+ (id)mediaSystemType
{
  if (qword_280E02450 != -1)
  {
    dispatch_once(&qword_280E02450, &__block_literal_global_43);
  }

  v3 = qword_280E02458;

  return v3;
}

void __34__HFAccessoryType_mediaSystemType__block_invoke_2()
{
  v0 = [(HFAccessoryType *)[HFMediaSystemAccessoryType alloc] _init];
  v1 = qword_280E02458;
  qword_280E02458 = v0;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

+ (NAIdentity)na_identity
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryType.m" lineNumber:156 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAccessoryType na_identity]", objc_opt_class()}];

  return 0;
}

void __50__HFAccessoryType__accessoryCategoryToServiceType__block_invoke_2()
{
  v33[23] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0E60];
  v1 = *MEMORY[0x277CCE848];
  v32[0] = *MEMORY[0x277CCE840];
  v32[1] = v1;
  v2 = *MEMORY[0x277CD0E68];
  v33[0] = v0;
  v33[1] = v2;
  v3 = *MEMORY[0x277CCE858];
  v32[2] = *MEMORY[0x277CCE850];
  v32[3] = v3;
  v33[2] = v0;
  v33[3] = v2;
  v4 = *MEMORY[0x277CD0DD8];
  v5 = *MEMORY[0x277CCE888];
  v32[4] = *MEMORY[0x277CCE868];
  v32[5] = v5;
  v6 = *MEMORY[0x277CD0E30];
  v33[4] = v4;
  v33[5] = v6;
  v7 = *MEMORY[0x277CD0EB0];
  v8 = *MEMORY[0x277CCE898];
  v32[6] = *MEMORY[0x277CCE890];
  v32[7] = v8;
  v9 = *MEMORY[0x277CD0E40];
  v33[6] = v7;
  v33[7] = v9;
  v10 = *MEMORY[0x277CD0E48];
  v11 = *MEMORY[0x277CCE8C0];
  v32[8] = *MEMORY[0x277CCE8A0];
  v32[9] = v11;
  v12 = *MEMORY[0x277CD0EA0];
  v33[8] = v10;
  v33[9] = v12;
  v13 = *MEMORY[0x277CD0ED0];
  v14 = *MEMORY[0x277CCE8D8];
  v32[10] = *MEMORY[0x277CCE8D0];
  v32[11] = v14;
  v15 = *MEMORY[0x277CD0F00];
  v33[10] = v13;
  v33[11] = v15;
  v16 = *MEMORY[0x277CD0ED8];
  v17 = *MEMORY[0x277CCE8F8];
  v32[12] = *MEMORY[0x277CCE8E8];
  v32[13] = v17;
  v18 = *MEMORY[0x277CD0F38];
  v33[12] = v16;
  v33[13] = v18;
  v19 = *MEMORY[0x277CD0EF0];
  v20 = *MEMORY[0x277CCE908];
  v32[14] = *MEMORY[0x277CCE900];
  v32[15] = v20;
  v21 = *MEMORY[0x277CD0E80];
  v33[14] = v19;
  v33[15] = v21;
  v22 = *MEMORY[0x277CD0F08];
  v23 = *MEMORY[0x277CCE920];
  v32[16] = *MEMORY[0x277CCE910];
  v32[17] = v23;
  v24 = *MEMORY[0x277CD0F20];
  v33[16] = v22;
  v33[17] = v24;
  v25 = *MEMORY[0x277CCE938];
  v32[18] = *MEMORY[0x277CCE930];
  v32[19] = v25;
  v33[18] = v24;
  v33[19] = v24;
  v26 = *MEMORY[0x277CD0F30];
  v27 = *MEMORY[0x277CCE958];
  v32[20] = *MEMORY[0x277CCE940];
  v32[21] = v27;
  v28 = *MEMORY[0x277CD0F58];
  v33[20] = v26;
  v33[21] = v28;
  v32[22] = *MEMORY[0x277CCE960];
  v33[22] = *MEMORY[0x277CD0F60];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:23];
  v30 = qword_280E02468;
  qword_280E02468 = v29;

  v31 = *MEMORY[0x277D85DE8];
}

- (id)filterAccessoryRepresentableObjects:(id)objects
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__HFAccessoryType_Filtering__filterAccessoryRepresentableObjects___block_invoke;
  v5[3] = &unk_277DF5C10;
  v5[4] = self;
  v3 = [objects na_filter:v5];

  return v3;
}

uint64_t __66__HFAccessoryType_Filtering__filterAccessoryRepresentableObjects___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_accessoryType];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end