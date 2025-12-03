@interface HMCRedirectorChange
- (id)description;
- (id)descriptionLines;
- (void)dumpForLoggingWithPrefix:(id)prefix logType:(unsigned __int8)type;
@end

@implementation HMCRedirectorChange

- (void)dumpForLoggingWithPrefix:(id)prefix logType:(unsigned __int8)type
{
  v20 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  descriptionLines = [(HMCRedirectorChange *)self descriptionLines];
  v8 = [prefixCopy mutableCopy];
  v9 = __descriptionHeader(self);
  [v8 appendString:v9];

  if ([descriptionLines count])
  {
    [v8 appendString:@"\n"];
    v10 = [descriptionLines componentsJoinedByString:@"\n"];
    [v8 appendString:v10];
  }

  else
  {
    [v8 appendString:@" (NO CHANGES)"];
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, type))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v14;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_229538000, v13, type, "%{public}@%@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = *MEMORY[0x277D85DE8];
}

- (id)descriptionLines
{
  array = [MEMORY[0x277CBEB18] array];
  inserts = [(HMCRedirectorChange *)self inserts];
  v5 = [inserts count];

  if (v5)
  {
    [array addObject:@"inserts:"];
    inserts2 = [(HMCRedirectorChange *)self inserts];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__HMCRedirectorChange_descriptionLines__block_invoke;
    v19[3] = &unk_278687FD8;
    v20 = array;
    [inserts2 hmf_enumerateWithAutoreleasePoolUsingBlock:v19];
  }

  updates = [(HMCRedirectorChange *)self updates];
  v8 = [updates count];

  if (v8)
  {
    [array addObject:@"updates:"];
    updates2 = [(HMCRedirectorChange *)self updates];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __39__HMCRedirectorChange_descriptionLines__block_invoke_2;
    v17[3] = &unk_278687FD8;
    v18 = array;
    [updates2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];
  }

  deletes = [(HMCRedirectorChange *)self deletes];
  v11 = [deletes count];

  if (v11)
  {
    [array addObject:@"deletes:"];
    deletes2 = [(HMCRedirectorChange *)self deletes];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__HMCRedirectorChange_descriptionLines__block_invoke_3;
    v15[3] = &unk_278687FD8;
    v16 = array;
    [deletes2 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
  }

  v13 = [array copy];

  return v13;
}

void __39__HMCRedirectorChange_descriptionLines__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 addObject:v3];
}

void __39__HMCRedirectorChange_descriptionLines__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 addObject:v3];
}

void __39__HMCRedirectorChange_descriptionLines__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 addObject:v3];
}

- (id)description
{
  descriptionLines = [(HMCRedirectorChange *)self descriptionLines];
  v4 = [descriptionLines count];
  v5 = MEMORY[0x277CCACA8];
  v6 = __descriptionHeader(self);
  v7 = v6;
  if (v4)
  {
    v8 = [descriptionLines componentsJoinedByString:@"\n"];
    v9 = [v5 stringWithFormat:@"HMCRedirectorChange %@\n%@>", v7, v8];
  }

  else
  {
    v9 = [v5 stringWithFormat:@"HMCRedirectorChange %@ (NO CHANGES)>", v6];
  }

  return v9;
}

@end