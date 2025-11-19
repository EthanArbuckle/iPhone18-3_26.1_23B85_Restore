@interface HMCRedirectorChange
- (id)description;
- (id)descriptionLines;
- (void)dumpForLoggingWithPrefix:(id)a3 logType:(unsigned __int8)a4;
@end

@implementation HMCRedirectorChange

- (void)dumpForLoggingWithPrefix:(id)a3 logType:(unsigned __int8)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMCRedirectorChange *)self descriptionLines];
  v8 = [v6 mutableCopy];
  v9 = __descriptionHeader(self);
  [v8 appendString:v9];

  if ([v7 count])
  {
    [v8 appendString:@"\n"];
    v10 = [v7 componentsJoinedByString:@"\n"];
    [v8 appendString:v10];
  }

  else
  {
    [v8 appendString:@" (NO CHANGES)"];
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, a4))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v14;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_229538000, v13, a4, "%{public}@%@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = *MEMORY[0x277D85DE8];
}

- (id)descriptionLines
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMCRedirectorChange *)self inserts];
  v5 = [v4 count];

  if (v5)
  {
    [v3 addObject:@"inserts:"];
    v6 = [(HMCRedirectorChange *)self inserts];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__HMCRedirectorChange_descriptionLines__block_invoke;
    v19[3] = &unk_278687FD8;
    v20 = v3;
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v19];
  }

  v7 = [(HMCRedirectorChange *)self updates];
  v8 = [v7 count];

  if (v8)
  {
    [v3 addObject:@"updates:"];
    v9 = [(HMCRedirectorChange *)self updates];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __39__HMCRedirectorChange_descriptionLines__block_invoke_2;
    v17[3] = &unk_278687FD8;
    v18 = v3;
    [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];
  }

  v10 = [(HMCRedirectorChange *)self deletes];
  v11 = [v10 count];

  if (v11)
  {
    [v3 addObject:@"deletes:"];
    v12 = [(HMCRedirectorChange *)self deletes];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__HMCRedirectorChange_descriptionLines__block_invoke_3;
    v15[3] = &unk_278687FD8;
    v16 = v3;
    [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
  }

  v13 = [v3 copy];

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
  v3 = [(HMCRedirectorChange *)self descriptionLines];
  v4 = [v3 count];
  v5 = MEMORY[0x277CCACA8];
  v6 = __descriptionHeader(self);
  v7 = v6;
  if (v4)
  {
    v8 = [v3 componentsJoinedByString:@"\n"];
    v9 = [v5 stringWithFormat:@"HMCRedirectorChange %@\n%@>", v7, v8];
  }

  else
  {
    v9 = [v5 stringWithFormat:@"HMCRedirectorChange %@ (NO CHANGES)>", v6];
  }

  return v9;
}

@end