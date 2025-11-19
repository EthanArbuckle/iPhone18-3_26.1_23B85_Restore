@interface CalDAVPrincipalSearchSupport
+ (id)nameForWellKnownType:(int)a3;
+ (id)namespaceForWellKnownType:(int)a3;
+ (id)parserMappingsWithServerSupportSet:(id)a3 includeEmail:(BOOL)a4;
+ (id)resultTypeForRecordType:(id)a3;
@end

@implementation CalDAVPrincipalSearchSupport

+ (id)nameForWellKnownType:(int)a3
{
  if ((a3 - 1) > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_278D66BB0[a3 - 1];
  }

  return v4;
}

+ (id)namespaceForWellKnownType:(int)a3
{
  if ((a3 - 1) > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_278D66BE8 + (a3 - 1));
  }

  return v4;
}

+ (id)resultTypeForRecordType:(id)a3
{
  v3 = a3;
  v4 = recordToResultMapping;
  if (!recordToResultMapping)
  {
    v5 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [v5 initWithObjectsAndKeys:{CalDAVPrincipalResultType_Person, CalDAVPrincipalRecordType_Users, CalDAVPrincipalResultType_Group, CalDAVPrincipalRecordType_Groups, CalDAVPrincipalResultType_Resource, CalDAVPrincipalRecordType_Resources, CalDAVPrincipalResultType_Room, CalDAVPrincipalRecordType_Locations, 0}];
    v7 = recordToResultMapping;
    recordToResultMapping = v6;

    v4 = recordToResultMapping;
  }

  v8 = [v4 objectForKey:v3];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = CalDAVPrincipalResultType_Unknown;
  }

  v11 = v10;

  return v10;
}

+ (id)parserMappingsWithServerSupportSet:(id)a3 includeEmail:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = objc_alloc(MEMORY[0x277CFDBE8]);
  v8 = [v7 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDFC0] parseClass:objc_opt_class()];
  [v6 addObject:v8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__CalDAVPrincipalSearchSupport_parserMappingsWithServerSupportSet_includeEmail___block_invoke;
  v21[3] = &unk_278D66B90;
  v9 = v5;
  v22 = v9;
  v10 = v6;
  v23 = v10;
  v11 = MEMORY[0x245D182B0](v21);
  v12 = objc_opt_class();
  v11[2](v11, 6, v12, 1);
  v13 = objc_opt_class();
  v11[2](v11, 5, v13, 1);
  v14 = objc_opt_class();
  v11[2](v11, 7, v14, 1);
  if (v4)
  {
    v15 = objc_opt_class();
    v11[2](v11, 4, v15, 0);
  }

  v16 = objc_opt_class();
  v11[2](v11, 3, v16, 0);
  v17 = objc_opt_class();
  v11[2](v11, 1, v17, 0);
  v18 = objc_opt_class();
  v11[2](v11, 2, v18, 0);
  v19 = v10;

  return v10;
}

void __80__CalDAVPrincipalSearchSupport_parserMappingsWithServerSupportSet_includeEmail___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = [CalDAVPrincipalSearchSupport namespaceForWellKnownType:a2];
  v8 = [CalDAVPrincipalSearchSupport nameForWellKnownType:a2];
  if ((a4 & 1) != 0 || (v9 = *(a1 + 32)) == 0 || [v9 supportsPropertyTypeWithNameSpace:v11 andName:v8])
  {
    v10 = [objc_alloc(MEMORY[0x277CFDBE8]) initWithNameSpace:v11 name:v8 parseClass:a3];
    [*(a1 + 40) addObject:v10];
  }
}

@end