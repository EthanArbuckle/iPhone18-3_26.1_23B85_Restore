@interface MFMessageFileWrapper(ArchivingSupport)
- (char)initWithCoder:()ArchivingSupport;
- (void)encodeWithCoder:()ArchivingSupport;
@end

@implementation MFMessageFileWrapper(ArchivingSupport)

- (void)encodeWithCoder:()ArchivingSupport
{
  v4 = *(a1 + *MEMORY[0x277D25020]);
  v5 = a3;
  [v5 encodeObject:v4 forKey:@"path"];
  [v5 encodeObject:*(a1 + *MEMORY[0x277D25010]) forKey:@"filename"];
  [v5 encodeObject:*(a1 + *MEMORY[0x277D25028]) forKey:@"preferredFilename"];
  [v5 encodeObject:*(a1 + *MEMORY[0x277D25008]) forKey:@"data"];
  [v5 encodeObject:*(a1 + *MEMORY[0x277D25000]) forKey:@"attributes"];
  [v5 encodeObject:*(a1 + *MEMORY[0x277D25018]) forKey:@"linkDestination"];
  [v5 encodeObject:*(a1 + *MEMORY[0x277D25030]) forKey:@"url"];
}

- (char)initWithCoder:()ArchivingSupport
{
  v4 = a3;
  v29.receiver = a1;
  v29.super_class = &off_286E39B68;
  v5 = objc_msgSendSuper2(&v29, sel_init);
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"path"];
    v7 = *MEMORY[0x277D25020];
    v8 = *&v5[v7];
    *&v5[v7] = v6;

    v9 = [v4 decodeObjectForKey:@"filename"];
    v10 = *MEMORY[0x277D25010];
    v11 = *&v5[v10];
    *&v5[v10] = v9;

    v12 = [v4 decodeObjectForKey:@"preferredFilename"];
    v13 = *MEMORY[0x277D25028];
    v14 = *&v5[v13];
    *&v5[v13] = v12;

    v15 = [v4 decodeObjectForKey:@"data"];
    v16 = [objc_alloc(MEMORY[0x277D24F00]) initWithImmutableData:v15];
    v17 = *MEMORY[0x277D25008];
    v18 = *&v5[v17];
    *&v5[v17] = v16;

    v19 = [v4 decodeObjectForKey:@"attributes"];
    v20 = *MEMORY[0x277D25000];
    v21 = *&v5[v20];
    *&v5[v20] = v19;

    v22 = [v4 decodeObjectForKey:@"linkDestination"];
    v23 = *MEMORY[0x277D25018];
    v24 = *&v5[v23];
    *&v5[v23] = v22;

    v25 = [v4 decodeObjectForKey:@"url"];
    v26 = *MEMORY[0x277D25030];
    v27 = *&v5[v26];
    *&v5[v26] = v25;
  }

  return v5;
}

@end