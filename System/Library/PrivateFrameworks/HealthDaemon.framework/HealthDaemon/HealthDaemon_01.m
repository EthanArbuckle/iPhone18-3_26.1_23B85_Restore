id HDSourceEntityPredicateForSourceWithUUID(void *a1, int a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [a1 hk_dataForUUIDBytes];
  v5 = [v3 predicateWithProperty:@"uuid" equalToValue:v4];

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = _HDSourceEntityPredicateForNotDeletedWithPredicate(v5);
  }

  v7 = v6;

  return v7;
}

void HDVersionFromBuildStringForProductType(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v9 = a1;
  v5 = a2;
  if ([v9 isEqualToString:@"UnknownBuild"])
  {
    goto LABEL_2;
  }

  if ([v9 isEqualToString:{@"[8.0, 8.2"}]))
  {
    v6 = &HDDataProvenanceOperatingSystemVersion8_0_0;
    goto LABEL_7;
  }

  if ([v9 isEqualToString:{@"[8.2, 9.0"}]))
  {
    v6 = &HDDataProvenanceOperatingSystemVersion8_2_0;
    goto LABEL_7;
  }

  if ([v5 hasPrefix:@"iPhone"])
  {
    if (qword_280D67A98 != -1)
    {
      dispatch_once(&qword_280D67A98, &__block_literal_global_461);
    }

    v7 = v9;
    v8 = qword_280D67A90;
  }

  else
  {
    if (![v5 hasPrefix:@"Watch"])
    {
LABEL_2:
      v6 = &HDDataProvenanceOperatingSystemVersionUnknown;
LABEL_7:
      *a3 = *v6;
      a3[2] = *(v6 + 2);
      goto LABEL_8;
    }

    if (qword_280D67AA8 != -1)
    {
      dispatch_once(&qword_280D67AA8, &__block_literal_global_466);
    }

    v7 = v9;
    v8 = qword_280D67AA0;
  }

  versionFromBuildString(a3, v7, v8);
LABEL_8:
}

void __iOSSortedBuildStrings_block_invoke()
{
  v0 = qword_280D67A90;
  qword_280D67A90 = &unk_283CAE590;
}

void versionFromBuildString(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 count];
  if (qword_280D67A88 != -1)
  {
    dispatch_once(&qword_280D67A88, &__block_literal_global_302);
  }

  v7 = _MergedGlobals_194;
  v8 = [v7 objectForKey:v14];
  v9 = v8;
  if (v8)
  {
    objc_copyStruct(a1, (v8 + 8), 24, 1, 0);
  }

  else
  {
    v10 = [v5 indexOfObject:v14 inSortedRange:0 options:v6 usingComparator:{1024, &__block_literal_global_4}];
    if (v10 >= v6)
    {
      *a1 = HDDataProvenanceOperatingSystemVersionUnknown;
      a1[2] = 0;
    }

    else
    {
      v11 = [v5 objectAtIndexedSubscript:v10];
      v12 = [v7 objectForKeyedSubscript:v11];
      v13 = v12;
      if (v12)
      {
        objc_copyStruct(a1, (v12 + 8), 24, 1, 0);
      }

      else
      {
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }
    }
  }
}

void __buildStringToVersionMap_block_invoke()
{
  v56[52] = *MEMORY[0x277D85DE8];
  v55[0] = @"13A0";
  v54 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[0] = v54;
  v55[1] = @"13A344";
  v53 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[1] = v53;
  v55[2] = @"13A405";
  v52 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:1 patch:?];
  v56[2] = v52;
  v55[3] = @"13A452";
  v51 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:2 patch:?];
  v56[3] = v51;
  v55[4] = @"13A5325c";
  v50 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[4] = v50;
  v55[5] = @"13B143";
  v49 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v56[5] = v49;
  v55[6] = @"13B5130b";
  v48 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v56[6] = v48;
  v55[7] = @"13C5060d";
  v47 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:0 patch:?];
  v56[7] = v47;
  v55[8] = @"13D20";
  v46 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:1 patch:?];
  v56[8] = v46;
  v55[9] = @"13E237";
  v45 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:0 patch:?];
  v56[9] = v45;
  v55[10] = @"13E238";
  v44 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:1 patch:?];
  v56[10] = v44;
  v55[11] = @"13E5234a";
  v43 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:0 patch:?];
  v56[11] = v43;
  v55[12] = @"13F69";
  v42 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:2 patch:?];
  v56[12] = v42;
  v55[13] = @"13G34";
  v41 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:3 patch:?];
  v56[13] = v41;
  v55[14] = @"13G35";
  v40 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:4 patch:?];
  v56[14] = v40;
  v55[15] = @"13G36";
  v39 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:5 patch:?];
  v56[15] = v39;
  v55[16] = @"14A0";
  v38 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[16] = v38;
  v55[17] = @"14A346";
  v37 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[17] = v37;
  v55[18] = @"14A403";
  v36 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:1 patch:?];
  v56[18] = v36;
  v55[19] = @"14A456";
  v35 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:2 patch:?];
  v56[19] = v35;
  v55[20] = @"14A551";
  v34 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:3 patch:?];
  v56[20] = v34;
  v55[21] = @"14A5346a";
  v33 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[21] = v33;
  v55[22] = @"14B99999";
  v32 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v56[22] = v32;
  v55[23] = @"14C99999";
  v31 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:0 patch:?];
  v56[23] = v31;
  v55[24] = @"14E0";
  v30 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[24] = v30;
  v55[25] = @"14E99999";
  v29 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:0 patch:?];
  v56[25] = v29;
  v55[26] = @"150";
  v28 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[26] = v28;
  v55[27] = @"15A99999";
  v27 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[27] = v27;
  v55[28] = @"12S0";
  v26 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[28] = v26;
  v55[29] = @"12S507";
  v25 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[29] = v25;
  v55[30] = @"12S632";
  v24 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:1 patch:?];
  v56[30] = v24;
  v55[31] = @"13S0";
  v23 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[31] = v23;
  v55[32] = @"13S344";
  v22 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[32] = v22;
  v55[33] = @"13S428";
  v21 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:1 patch:?];
  v56[33] = v21;
  v55[34] = @"13S661";
  v20 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v56[34] = v20;
  v55[35] = @"13S5325c";
  v19 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[35] = v19;
  v55[36] = @"13V0";
  v18 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[36] = v18;
  v55[37] = @"13V144";
  v17 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:0 patch:?];
  v56[37] = v17;
  v55[38] = @"13V420";
  v16 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:1 patch:?];
  v56[38] = v16;
  v55[39] = @"13V604";
  v15 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:2 patch:?];
  v56[39] = v15;
  v55[40] = @"13V5143a";
  v14 = [HDNSOperatingSystemVersion versionWithMajor:2 minor:0 patch:?];
  v56[40] = v14;
  v55[41] = @"14B0";
  v13 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[41] = v13;
  v55[42] = @"14B471";
  v0 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v56[42] = v0;
  v55[43] = @"14S0";
  v1 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[43] = v1;
  v55[44] = @"14S326";
  v2 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[44] = v2;
  v55[45] = @"14S471";
  v3 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:0 patch:?];
  v56[45] = v3;
  v55[46] = @"14S1000";
  v4 = [HDNSOperatingSystemVersion versionWithMajor:1 minor:1 patch:?];
  v56[46] = v4;
  v55[47] = @"14S5869b";
  v5 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[47] = v5;
  v55[48] = @"14V0";
  v6 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[48] = v6;
  v55[49] = @"14V9999";
  v7 = [HDNSOperatingSystemVersion versionWithMajor:3 minor:0 patch:?];
  v56[49] = v7;
  v55[50] = @"15R0";
  v8 = +[HDNSOperatingSystemVersion unknownVersion];
  v56[50] = v8;
  v55[51] = @"15R9999";
  v9 = [HDNSOperatingSystemVersion versionWithMajor:0 minor:0 patch:?];
  v56[51] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:52];
  v11 = _MergedGlobals_194;
  _MergedGlobals_194 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __allowedClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  qword_280D67DE8 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

void HDPowerLog(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v7 = [a2 mutableCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v7 setObject:v6 forKeyedSubscript:@"status"];

  PLLogRegisteredEvent();
}

uint64_t sub_2289AAEB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AAEF0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AAF28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AAF60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AAF9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AAFE8()
{
  MEMORY[0x22AAC9900](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB020()
{
  MEMORY[0x22AAC9900](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB058()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2289AB0B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB0E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB138()
{
  MEMORY[0x22AAC9900](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB170()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB1A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2289C88D8();
  *a2 = result;
  return result;
}

uint64_t sub_2289AB1D4(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker);
  *(*a2 + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_2289AB220()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB258()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v3 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2289AB2B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB2E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB328()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB360()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2289AB3A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB3F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2289AB44C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB48C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB4C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB4FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB534()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB56C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB5A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB5DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB6E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB718()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB750()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB790()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB7C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB80C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AB844()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB8EC(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_2289AB920(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2289AB968()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2289AB9BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AB9F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289ABA2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289ABA64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289ABAD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289ABB08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289ABB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22911B88C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2289ABBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22911B88C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2289ABC1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BADC();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABC70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BA0C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABCC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BA2C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABD18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911B9EC();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABD6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BB1C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABDC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BA4C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABE14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BA6C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABE68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BAAC();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABEBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BA8C();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABF10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22911BAFC();
  *a1 = result;
  return result;
}

uint64_t sub_2289ABF64()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2289ABFB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289ABFEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2289AC034@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12HealthDaemon37HDWorkoutBackgroundActivityController_currentAttribution;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2289AC0A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AC0D8()
{
  MEMORY[0x22AAC9900](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2289AC110()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2289AC150()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2289ACBE4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2289ACBF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2289ACC14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2289ACC34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2289ACC80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2289ACCA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2289ACCFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2289ACD1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_2289ACD58(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t DatabaseJournalMetrics.loggingDescription.getter()
{
  v1 = OBJC_IVAR___HDDatabaseJournalMetrics_store;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + v1);

  for (i = 0; v5; result = )
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (v10 << 10) | (16 * v11);
    v13 = (*(v2 + 48) + v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = (*(v2 + 56) + v12);
    v17 = *v16;
    v18 = v16[1];

    sub_22911C83C();
    MEMORY[0x22AAC5FC0](9, 0xE100000000000000);
    MEMORY[0x22AAC5FC0](v14, v15);

    MEMORY[0x22AAC5FC0](8250, 0xE200000000000000);
    v19 = sub_22911CAAC();
    MEMORY[0x22AAC5FC0](v19);

    MEMORY[0x22AAC5FC0](0x202C736574796220, 0xE800000000000000);
    sub_22911C4FC();
    MEMORY[0x22AAC5FC0](175336736, 0xE400000000000000);
    MEMORY[0x22AAC5FC0](0, 0xE000000000000000);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return 0;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DatabaseJournalMetrics.add(className:size:duration:)(Swift::String className, Swift::Int size, Swift::Double duration)
{
  v4 = v3;
  object = className._object;
  countAndFlagsBits = className._countAndFlagsBits;
  v9 = OBJC_IVAR___HDDatabaseJournalMetrics_store;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (!*(v10 + 16) || (v11 = sub_2289AD318(countAndFlagsBits, object), (v12 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_6;
  }

  v13 = *(v10 + 56) + 16 * v11;
  v14 = *v13;
  v15 = *(v13 + 8);
  swift_endAccess();
  v16 = __OFADD__(v14, size);
  size += v14;
  if (!v16)
  {
    duration = v15 + duration;
LABEL_6:
    swift_beginAccess();
    v17 = *(v4 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v4 + v9);
    *(v4 + v9) = 0x8000000000000000;
    sub_2289AFD9C(size, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native, duration);
    *(v4 + v9) = v19;
    swift_endAccess();
    return;
  }

  __break(1u);
}

id DatabaseJournalMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DatabaseJournalMetrics.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___HDDatabaseJournalMetrics_store;
  *&v0[v2] = sub_2289B21B0(MEMORY[0x277D84F90]);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id DatabaseJournalMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2289AD318(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22911CB7C();
  sub_22911C3DC();
  v6 = sub_22911CB9C();

  return sub_2289AD864(a1, a2, v6);
}

unint64_t sub_2289AD390(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22911BE5C();
  v5 = MEMORY[0x277CCB418];
  sub_2289B2394(&qword_27D8629C0, MEMORY[0x277CCB418]);
  v6 = sub_22911C2FC();
  return sub_2289AD988(a1, v6, MEMORY[0x277CCB418], &qword_27D8629C8, v5, MEMORY[0x277CCB428]);
}

unint64_t sub_2289AD464(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22911C0DC();
  v5 = MEMORY[0x277CCB558];
  sub_2289B2394(&qword_27D862A98, MEMORY[0x277CCB558]);
  v6 = sub_22911C2FC();
  return sub_2289AD988(a1, v6, MEMORY[0x277CCB558], &qword_27D862AA0, v5, MEMORY[0x277CCB568]);
}

unint64_t sub_2289AD538(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22911BD4C();
  v5 = MEMORY[0x277CCB3C0];
  sub_2289B2394(&qword_27D862A78, MEMORY[0x277CCB3C0]);
  v6 = sub_22911C2FC();
  return sub_2289AD988(a1, v6, MEMORY[0x277CCB3C0], &qword_27D862A80, v5, MEMORY[0x277CCB3D0]);
}

unint64_t sub_2289AD60C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22911CB6C();

  return sub_2289AD91C(a1, v4);
}

unint64_t sub_2289AD650(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22911C6AC();
  return sub_2289ADB28(a1, v5, &unk_280D679B0, 0x277CCABB0);
}

unint64_t sub_2289AD6A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22911B8DC();
  v5 = MEMORY[0x277CC95F0];
  sub_2289B2394(&qword_27D8629D8, MEMORY[0x277CC95F0]);
  v6 = sub_22911C2FC();
  return sub_2289AD988(a1, v6, MEMORY[0x277CC95F0], &qword_27D8629E0, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_2289AD774(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22911C6AC();
  return sub_2289ADB28(a1, v5, &qword_27D862A20, 0x277CBC5D0);
}

unint64_t sub_2289AD7C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22911C6AC();
  return sub_2289ADB28(a1, v5, &qword_27D862A08, off_27860F5C8);
}

unint64_t sub_2289AD814(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22911C6AC();
  return sub_2289ADB28(a1, v5, &qword_27D862A40, off_27860E1E8);
}

unint64_t sub_2289AD864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22911CADC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2289AD91C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2289AD988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_2289B2394(v24, v25);
      v20 = sub_22911C33C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_2289ADB28(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_2289B3D00(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22911C6BC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_2289ADBF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2289B3D48(0, &qword_27D862B00, sub_2289B3DAC);
  v42 = a2;
  result = sub_22911CA6C();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = *v27;
      v29 = v27[1];
      if ((v42 & 1) == 0)
      {
        v30 = v24[1];
      }

      v31 = *(v8 + 40);
      sub_22911CB7C();
      sub_22911C3DC();
      result = sub_22911CB9C();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v28;
      v19[1] = v29;
      ++*(v8 + 16);
      v5 = v41;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2289ADEC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2289B3B18();
  v36 = a2;
  result = sub_22911CA6C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_2289B3C48(v25, v37);
      }

      else
      {
        sub_2289B3CA4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22911CB7C();
      sub_22911C3DC();
      result = sub_22911CB9C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2289B3C48(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2289AE170(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22911BE5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_2289B22F8();
  v44 = a2;
  result = sub_22911CA6C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_2289B2394(&qword_27D8629C0, MEMORY[0x277CCB418]);
      result = sub_22911C2FC();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2289AE524(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_2289B3894(0, a3, a4, a5);
  v42 = a2;
  result = sub_22911CA6C();
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v6;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v8 + 56) + 8 * v24);
      if ((v42 & 1) == 0)
      {
        v29 = v25[1];

        v30 = v28;
      }

      v31 = *(v11 + 40);
      sub_22911CB7C();
      sub_22911C3DC();
      result = sub_22911CB9C();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v8 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v6 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v8 + 32);
    v6 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

uint64_t sub_2289AE7C8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22911BD4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_2289B36DC();
  v43 = a2;
  result = sub_22911CA6C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v7 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2289B2394(&qword_27D862A78, MEMORY[0x277CCB3C0]);
      result = sub_22911C2FC();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v7 = v41;
      v11 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2289AEB94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2289B37A4(0, &qword_27D862A88, MEMORY[0x277D84460]);
  result = sub_22911CA6C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_22911CB6C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2289AEE3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2289B3574();
  result = sub_22911CA6C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_22911C6AC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2289AF098(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2289B334C();
  result = sub_22911CA6C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_22911C6AC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2289AF2FC(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = sub_22911C00C();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_2289B3448();
  v42 = a2;
  result = sub_22911CA6C();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v42)
      {
        (*v19)(v43, v28, v44);
      }

      else
      {
        (*v40)(v43, v28, v44);
        v29 = v26;
      }

      v30 = *(v12 + 40);
      result = sub_22911C6AC();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v43, v44);
      ++*(v12 + 16);
      v6 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2289AF63C(uint64_t a1, int a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v61 = a3(0);
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v49 - v13;
  v14 = sub_22911B8DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v19 = *(*v8 + 24);
  }

  sub_2289B3630(0, a4, a5);
  v56 = a2;
  result = sub_22911CA6C();
  v21 = result;
  if (*(v18 + 16))
  {
    v22 = 0;
    v23 = (v18 + 64);
    v24 = 1 << *(v18 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v15;
    v27 = v25 & *(v18 + 64);
    v28 = (v24 + 63) >> 6;
    v52 = (v26 + 16);
    v53 = v26;
    v50 = v8;
    v51 = v11 + 16;
    v54 = v18;
    v55 = v11;
    v57 = (v11 + 32);
    v58 = (v26 + 32);
    v29 = result + 64;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v22 << 6);
      v35 = *(v18 + 48);
      v59 = *(v26 + 72);
      v36 = v35 + v59 * v34;
      if (v56)
      {
        (*v58)(v62, v36, v14);
        v37 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 32))(v60, v37 + v38 * v34, v61);
      }

      else
      {
        (*v52)(v62, v36, v14);
        v39 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 16))(v60, v39 + v38 * v34, v61);
      }

      v40 = *(v21 + 40);
      sub_2289B2394(&qword_27D8629D8, MEMORY[0x277CC95F0]);
      result = sub_22911C2FC();
      v41 = -1 << *(v21 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v29 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v29 + 8 * v43);
          if (v47 != -1)
          {
            v30 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v42) & ~*(v29 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      (*v58)((*(v21 + 48) + v59 * v30), v62, v14);
      result = (*v57)(*(v21 + 56) + v38 * v30, v60, v61);
      ++*(v21 + 16);
      v26 = v53;
      v18 = v54;
    }

    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v22 >= v28)
      {
        break;
      }

      v33 = v23[v22];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v8 = v50;
      goto LABEL_36;
    }

    v48 = 1 << *(v18 + 32);
    v8 = v50;
    if (v48 >= 64)
    {
      bzero(v23, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v23 = -1 << v48;
    }

    *(v18 + 16) = 0;
  }

LABEL_36:
  *v8 = v21;
  return result;
}

uint64_t sub_2289AFAE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2289B3D48(0, &qword_27D8629F0, sub_2289B2618);
  v38 = a2;
  result = sub_22911CA6C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22911CB7C();
      sub_22911C3DC();
      result = sub_22911CB9C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_2289AFD9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_2289AD318(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_2289ADBF4(v18, a4 & 1);
      v22 = *v6;
      result = sub_2289AD318(a2, a3);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_22911CB1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_2289B0DAC();
      result = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * result;
    *v25 = a1;
    *(v25 + 8) = a5;
    return result;
  }

  v24[(result >> 6) + 8] |= 1 << result;
  v26 = (v24[6] + 16 * result);
  *v26 = a2;
  v26[1] = a3;
  v27 = v24[7] + 16 * result;
  *v27 = a1;
  *(v27 + 8) = a5;
  v28 = v24[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24[2] = v29;
}

_OWORD *sub_2289AFF24(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2289AD318(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2289B0F34();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2289ADEC4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2289AD318(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22911CB1C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_2289B3C48(a1, v23);
  }

  else
  {
    sub_2289B0AE8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2289B00AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2289AD318(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_2289AE524(v22, a4 & 1, a5, a6, a7);
      v26 = *v11;
      v17 = sub_2289AD318(a2, a3);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        sub_22911CB1C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v25 = v17;
      sub_2289B1384(a5, a6, a7);
      v17 = v25;
    }
  }

  v28 = *v11;
  if (v23)
  {
    v29 = v28[7];
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v31 = (v28[6] + 16 * v17);
  *v31 = a2;
  v31[1] = a3;
  *(v28[7] + 8 * v17) = a1;
  v32 = v28[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v33;
}

uint64_t sub_2289B0254(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22911BE5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2289AD390(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_2289B1104();
    goto LABEL_7;
  }

  sub_2289AE170(result, a3 & 1);
  v22 = *v4;
  result = sub_2289AD390(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22911CB1C();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_2289B0B54(v15, v12, a1, v21);
}

id sub_2289B040C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2289AD7C4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2289AF098(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_2289AD7C4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_2289B3D00(0, &qword_27D862A08, off_27860F5C8);
        result = sub_22911CB1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_2289B18EC();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

id sub_2289B0588(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_2289AD774(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_2289B1A44();
      goto LABEL_7;
    }

    sub_2289AF2FC(v12, a3 & 1);
    v23 = *v4;
    v24 = sub_2289AD774(a2);
    if ((v13 & 1) == (v25 & 1))
    {
      v9 = v24;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_2289B3D00(0, &qword_27D862A20, 0x277CBC5D0);
    result = sub_22911CB1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_22911C00C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_2289B0C0C(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_2289B0708(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22911B8DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2289AD6A0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2289B1CD4(MEMORY[0x277CCB510], &qword_27D8629E8, MEMORY[0x277CCB510]);
      goto LABEL_7;
    }

    sub_2289AF63C(v18, a3 & 1, MEMORY[0x277CCB510], &qword_27D8629E8, MEMORY[0x277CCB510]);
    v29 = *v4;
    v30 = sub_2289AD6A0(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2289B0CB8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_22911CB1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_22911C00C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_2289B096C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2289AD318(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2289AFAE4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2289AD318(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22911CB1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2289B2030();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_2289B0AE8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2289B3C48(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2289B0B54(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22911BE5C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2289B0C0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22911C00C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2289B0CB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22911B8DC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_22911C00C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_2289B0DAC()
{
  v1 = v0;
  sub_2289B3D48(0, &qword_27D862B00, sub_2289B3DAC);
  v2 = *v0;
  v3 = sub_22911CA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2289B0F34()
{
  v1 = v0;
  sub_2289B3B18();
  v2 = *v0;
  v3 = sub_22911CA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2289B3CA4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2289B3C48(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2289B1104()
{
  v1 = v0;
  v32 = sub_22911BE5C();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B22F8();
  v4 = *v0;
  v5 = sub_22911CA5C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v28, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    v16 = v6;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v20 = v17 | (v10 << 6);
        v21 = v34;
        v22 = *(v34 + 72) * v20;
        v24 = v31;
        v23 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v22, v32);
        v25 = *(*(v4 + 56) + 8 * v20);
        result = (*(v21 + 32))(*(v16 + 48) + v22, v24, v23);
        *(*(v16 + 56) + 8 * v20) = v25;
        v14 = v35;
      }

      while (v35);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_21;
      }

      v19 = *(v28 + v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

id sub_2289B1384(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  sub_2289B3894(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_22911CA5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = v23;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_2289B14F0()
{
  v1 = v0;
  v32 = sub_22911BD4C();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B36DC();
  v4 = *v0;
  v5 = sub_22911CA5C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v28, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_21;
      }

      v18 = *(v28 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_2289B175C()
{
  v1 = v0;
  sub_2289B37A4(0, &qword_27D862A88, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_22911CA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2289B18EC()
{
  v1 = v0;
  sub_2289B334C();
  v2 = *v0;
  v3 = sub_22911CA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2289B1A44()
{
  v1 = v0;
  v31 = sub_22911C00C();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B3448();
  v4 = *v0;
  v5 = sub_22911CA5C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v28[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    v28[1] = v33 + 32;
    v28[2] = v33 + 16;
    for (i = v4; v15; v4 = i)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = v17 | (v11 << 6);
      v21 = *(v4 + 56);
      v22 = *(*(v4 + 48) + 8 * v20);
      v23 = v33;
      v24 = *(v33 + 72) * v20;
      v26 = v30;
      v25 = v31;
      (*(v33 + 16))(v30, v21 + v24, v31);
      v27 = v32;
      *(*(v32 + 48) + 8 * v20) = v22;
      (*(v23 + 32))(*(v27 + 56) + v24, v26, v25);
      result = v22;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v28[0];
        v6 = v32;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

char *sub_2289B1CD4(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v6 = v3;
  v48 = a1(0);
  v51 = *(v48 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - v8;
  v46 = sub_22911B8DC();
  v50 = *(v46 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B3630(0, a2, a3);
  v11 = *v3;
  v12 = sub_22911CA5C();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v6;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v13;
  }

  return result;
}

void *sub_2289B2030()
{
  v1 = v0;
  sub_2289B3D48(0, &qword_27D8629F0, sub_2289B2618);
  v2 = *v0;
  v3 = sub_22911CA5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2289B21B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2289B3D48(0, &qword_27D862B00, sub_2289B3DAC);
    v3 = sub_22911CA7C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2289AD318(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2289B22F8()
{
  if (!qword_27D8629B8)
  {
    sub_22911BE5C();
    sub_2289B2394(&qword_27D8629C0, MEMORY[0x277CCB418]);
    v0 = sub_22911CA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8629B8);
    }
  }
}

uint64_t sub_2289B2394(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2289B23DC(uint64_t a1)
{
  sub_2289B25B0();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2289B22F8();
    v9 = sub_22911CA7C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2289B3B7C(v11, v7, sub_2289B25B0);
      result = sub_2289AD390(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_22911BE5C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2289B25B0()
{
  if (!qword_27D8629D0)
  {
    sub_22911BE5C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8629D0);
    }
  }
}

void sub_2289B2618()
{
  if (!qword_27D8629F8)
  {
    sub_22911C00C();
    v0 = sub_22911C4BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8629F8);
    }
  }
}

unint64_t sub_2289B26A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2289B3B18();
    v3 = sub_22911CA7C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2289B3B7C(v4, &v13, sub_2289B3BE4);
      v5 = v13;
      v6 = v14;
      result = sub_2289AD318(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2289B3C48(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B27F8(uint64_t a1)
{
  sub_2289B38FC(0, &qword_27D862AA8, MEMORY[0x277CCB558], sub_2289B3978);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2289B39E4();
    v9 = sub_22911CA7C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2289B3A90(v11, v7, &qword_27D862AA8, MEMORY[0x277CCB558], sub_2289B3978);
      result = sub_2289AD464(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_22911C0DC();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      result = sub_2289B3B00(&v7[v10], (v9[7] + 48 * v15));
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B2A38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2289B3894(0, a2, a3, a4);
    v6 = sub_22911CA7C();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_2289AD318(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B2B30(uint64_t a1)
{
  sub_2289B3808();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2289B36DC();
    v9 = sub_22911CA7C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2289B3B7C(v11, v7, sub_2289B3808);
      result = sub_2289AD538(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_22911BD4C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B2D04(uint64_t a1)
{
  sub_2289B34F4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2289B3448();
    v9 = sub_22911CA7C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2289B3B7C(v11, v7, sub_2289B34F4);
      v13 = *v7;
      result = sub_2289AD774(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v13;
      v17 = v9[7];
      v18 = sub_22911C00C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v7 + v10, v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B2ED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2289B334C();
    v3 = sub_22911CA7C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2289AD7C4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B2FC4(uint64_t a1)
{
  sub_2289B38FC(0, &qword_27D862A00, MEMORY[0x277CC95F0], MEMORY[0x277CCB510]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2289B3630(0, &qword_27D8629E8, MEMORY[0x277CCB510]);
    v9 = sub_22911CA7C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2289B3A90(v11, v7, &qword_27D862A00, MEMORY[0x277CC95F0], MEMORY[0x277CCB510]);
      result = sub_2289AD6A0(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_22911B8DC();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = sub_22911C00C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, &v7[v10], v19);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2289B3238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2289B3D48(0, &qword_27D8629F0, sub_2289B2618);
    v3 = sub_22911CA7C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2289AD318(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2289B334C()
{
  if (!qword_27D862A10)
  {
    sub_2289B3D00(255, &qword_27D862A08, off_27860F5C8);
    sub_2289B2618();
    sub_2289B33F8(&qword_27D862A18, &qword_27D862A08, off_27860F5C8);
    v0 = sub_22911CA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862A10);
    }
  }
}

uint64_t sub_2289B33F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2289B3D00(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2289B3448()
{
  if (!qword_27D862A28)
  {
    sub_2289B3D00(255, &qword_27D862A20, 0x277CBC5D0);
    sub_22911C00C();
    sub_2289B33F8(&qword_27D862A30, &qword_27D862A20, 0x277CBC5D0);
    v0 = sub_22911CA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862A28);
    }
  }
}

void sub_2289B34F4()
{
  if (!qword_27D862A38)
  {
    sub_2289B3D00(255, &qword_27D862A20, 0x277CBC5D0);
    sub_22911C00C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862A38);
    }
  }
}

void sub_2289B3574()
{
  if (!qword_27D862A48)
  {
    sub_2289B3D00(255, &qword_27D862A40, off_27860E1E8);
    sub_2289B3D00(255, &qword_27D862A50, off_27860DB28);
    sub_2289B33F8(&qword_27D862A58, &qword_27D862A40, off_27860E1E8);
    v0 = sub_22911CA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862A48);
    }
  }
}

void sub_2289B3630(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_22911B8DC();
    a3(255);
    sub_2289B2394(&qword_27D8629D8, MEMORY[0x277CC95F0]);
    v5 = sub_22911CA8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2289B36DC()
{
  if (!qword_27D862A68)
  {
    sub_22911BD4C();
    sub_2289B37A4(255, &qword_27D862A70, MEMORY[0x277D834F8]);
    sub_2289B2394(&qword_27D862A78, MEMORY[0x277CCB3C0]);
    v0 = sub_22911CA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862A68);
    }
  }
}

void sub_2289B37A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D83B88], MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2289B3808()
{
  if (!qword_27D862A90)
  {
    sub_22911BD4C();
    sub_2289B37A4(255, &qword_27D862A70, MEMORY[0x277D834F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862A90);
    }
  }
}

void sub_2289B3894(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2289B3D00(255, a3, a4);
    v5 = sub_22911CA8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2289B38FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2289B3978()
{
  result = qword_27D862AB0;
  if (!qword_27D862AB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D862AB0);
  }

  return result;
}

void sub_2289B39E4()
{
  if (!qword_27D862AB8)
  {
    sub_22911C0DC();
    sub_2289B3978();
    sub_2289B2394(&qword_27D862A98, MEMORY[0x277CCB558]);
    v0 = sub_22911CA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862AB8);
    }
  }
}

uint64_t sub_2289B3A90(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_2289B38FC(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

_OWORD *sub_2289B3B00(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_2289B3B18()
{
  if (!qword_27D862AC0)
  {
    v0 = sub_22911CA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862AC0);
    }
  }
}

uint64_t sub_2289B3B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2289B3BE4()
{
  if (!qword_27D862AC8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862AC8);
    }
  }
}

_OWORD *sub_2289B3C48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2289B3CA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2289B3D00(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2289B3D48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911CA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2289B3DAC()
{
  if (!qword_27D862B08)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862B08);
    }
  }
}

void sub_2289B3E10(uint64_t *a1@<X8>)
{
  sub_2289B4304();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22911B8DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289B435C();
  v73 = v12;
  v13 = v12[12];
  v14 = [v1 contactIdentifier];
  v15 = sub_22911C35C();
  v17 = v16;

  *a1 = v15;
  a1[1] = v17;
  v18 = [v1 UUID];
  sub_22911B8CC();

  (*(v8 + 32))(a1 + v13, v11, v7);
  v19 = [v1 invitationUUID];
  if (v19)
  {
    v20 = v19;
    sub_22911B8CC();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v8 + 56))(v6, v21, 1, v7);
  v22 = v73;
  sub_2289B453C(v6, a1 + v73[16]);
  v23 = [v1 relationshipStatus];
  if (v23)
  {
    v24 = v23;
    [v23 longLongValue];

    v25 = HKStringForSharingStatus();
    v26 = sub_22911C35C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = (a1 + v22[20]);
  *v29 = v26;
  v29[1] = v28;
  v30 = [v1 relationshipDirection];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 longLongValue];

    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    v33 = HKStringForMessageDirection();
    v34 = sub_22911C35C();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = (a1 + v22[24]);
  *v37 = v34;
  v37[1] = v36;
  v38 = [v1 relationshipType];
  if (v38)
  {
    v39 = v38;
    [v38 longLongValue];

    v40 = HKStringForSharingType();
    v41 = sub_22911C35C();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = (a1 + v22[28]);
  *v44 = v41;
  v44[1] = v43;
  v45 = [v1 notificationStatus];
  if (v45)
  {
    v46 = v45;
    [v45 longLongValue];

    v47 = HKStringForNotificationStatus();
    v48 = sub_22911C35C();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v51 = (a1 + v22[32]);
  *v51 = v48;
  v51[1] = v50;
  v52 = [v1 lastName];
  if (v52)
  {
    v53 = v52;
    v54 = sub_22911C35C();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v57 = (a1 + v22[36]);
  *v57 = v54;
  v57[1] = v56;
  v58 = [v1 firstName];
  if (v58)
  {
    v59 = v58;
    v60 = sub_22911C35C();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  v63 = (a1 + v22[40]);
  *v63 = v60;
  v63[1] = v62;
  v64 = [v1 cloudKitIdentifier];
  if (v64)
  {
    v65 = v64;
    v66 = sub_22911C35C();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v69 = (a1 + v22[44]);
  *v69 = v66;
  v69[1] = v68;
  v70 = *MEMORY[0x277CCB490];
  v71 = sub_22911BF0C();
  (*(*(v71 - 8) + 104))(a1, v70, v71);
}

void sub_2289B4304()
{
  if (!qword_27D8630C0)
  {
    sub_22911B8DC();
    v0 = sub_22911C6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8630C0);
    }
  }
}

void sub_2289B435C()
{
  if (!qword_27D862B10)
  {
    MEMORY[0x28223BE20]();
    sub_22911B8DC();
    sub_2289B4304();
    sub_2289B44EC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862B10);
    }
  }
}

void sub_2289B44EC()
{
  if (!qword_27D862B18)
  {
    v0 = sub_22911C6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862B18);
    }
  }
}

uint64_t sub_2289B453C(uint64_t a1, uint64_t a2)
{
  sub_2289B4304();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2289B45A0@<X0>(void *a1@<X8>)
{
  result = [type metadata accessor for HDHRDomainSnapshotEntity() defaultForeignKey];
  *a1 = 0xD000000000000017;
  a1[1] = 0x8000000229181F40;
  a1[2] = 0xD000000000000012;
  a1[3] = 0x8000000229181F60;
  a1[4] = result;
  return result;
}

id HDHRDomainSnapshotMEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRDomainSnapshotMEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRDomainSnapshotMEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRDomainSnapshotMEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRDomainSnapshotMEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRDomainSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRDomainSnapshotMEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRDomainSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2289B47F0()
{
  sub_2289B3D00(0, &qword_27D862B28, off_27860DF68);
  sub_2289B4AE8();
  v1 = v0;
  if (swift_dynamicCast())
  {
    sub_2289B4C00(v5, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v3 + 8))(v2, v3);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_2289B4B4C(v5);
    result = sub_22911CA2C();
    __break(1u);
  }

  return result;
}

HDCloudSyncRecordPrintDescription __swiftcall HDCloudSyncRecordPrintDescription.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_2289B4AE8()
{
  result = qword_27D862B30;
  if (!qword_27D862B30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D862B30);
  }

  return result;
}

uint64_t sub_2289B4B4C(uint64_t a1)
{
  sub_2289B4BA8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2289B4BA8()
{
  if (!qword_27D862B38)
  {
    sub_2289B4AE8();
    v0 = sub_22911C6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862B38);
    }
  }
}

uint64_t sub_2289B4C00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_2289B4C5C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_22911B88C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22911BF9C();
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 medicalIDData];
  if (v11)
  {
    v12 = v11;
    if ([v11 hasDateSaved])
    {
      [v12 dateSaved];
      v13 = HDDecodeDateForValue();
      sub_22911B86C();

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  (*(v3 + 56))(v33, v14, 1, v2);
  v15 = [v1 medicalIDLogs];
  if (!v15)
  {
    v21 = 0;
LABEL_27:
    sub_2289B50C0();
    v29 = v33;
    *(v33 + *(v28 + 48)) = v21;
    v30 = *MEMORY[0x277CCB4D8];
    v31 = sub_22911BF0C();
    return (*(*(v31 - 8) + 104))(v29, v30, v31);
  }

  v16 = v15;
  sub_2289B5228();
  v17 = sub_22911C45C();

  if (v17 >> 62)
  {
    goto LABEL_25;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_26:

    v21 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  while (1)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_2289FD398(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      break;
    }

    v20 = 0;
    v21 = v41;
    v34 = v17 & 0xFFFFFFFFFFFFFF8;
    v35 = v39 + 32;
    v36 = v17 & 0xC000000000000001;
    while (!__OFADD__(v20, 1))
    {
      v40 = v20 + 1;
      if (v36)
      {
        v22 = MEMORY[0x22AAC6410](v20, v17);
      }

      else
      {
        if (v20 >= *(v34 + 16))
        {
          goto LABEL_24;
        }

        v22 = *(v17 + 8 * v20 + 32);
      }

      v23 = v22;
      result = [v22 event];
      if (!result)
      {
        goto LABEL_29;
      }

      v24 = result;
      sub_22911C35C();

      [v23 timeStamp];
      v25 = HDDecodeDateForValue();
      sub_22911B86C();

      sub_22911BF8C();
      v41 = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2289FD398(v26 > 1, v27 + 1, 1);
        v21 = v41;
      }

      *(v21 + 16) = v27 + 1;
      (*(v39 + 32))(v21 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27, v10, v38);
      ++v20;
      if (v40 == v18)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v18 = sub_22911C78C();
    if (!v18)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_2289B50C0()
{
  if (!qword_27D862B40)
  {
    v0 = MEMORY[0x277D83D88];
    sub_2289B51C4(255, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_2289B51C4(255, &qword_27D862B50, sub_2289B5190, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862B40);
    }
  }
}

void sub_2289B51C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2289B5228()
{
  result = qword_27D862B60;
  if (!qword_27D862B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D862B60);
  }

  return result;
}

uint64_t static HDHRDemoEntity.properties.getter()
{
  sub_2289B5AD4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_229163C50;
  *(v0 + 32) = sub_22911C35C();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0x7461645F6F6D6564;
  *(v0 + 56) = 0xE900000000000061;
  return v0;
}

id HDHRDemoEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRDemoEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRDemoEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRDemoEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRDemoEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRDemoEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRDemoEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRDemoEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12HealthDaemon14HDHRDemoEntityC7columnsSaySo014HDSQLiteSchemaD0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v24 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v5 = *(sub_22911C68C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = 2 * *(v5 + 72);
  v7 = swift_allocObject();
  v25 = v7;
  *(v7 + 16) = xmmword_229163C60;
  v23 = v7 + v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000021;
  *(v8 + 24) = 0x80000002291820F0;
  *v4 = v8;
  v9 = *(v1 + 104);
  v9(v4, *MEMORY[0x277D109D0], v0);
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C();
  v11 = v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  *v13 = 0xD000000000000010;
  *(v13 + 1) = 0x8000000229182120;
  v16 = *MEMORY[0x277D109B8];
  v17 = sub_22911C64C();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v4 = v12;
  v18 = v24;
  v9(v4, *MEMORY[0x277D109C8], v24);
  sub_22911C67C();
  v19 = sub_22911C65C();
  v20 = swift_allocBox();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D109D8], v19);
  *v4 = v20;
  v9(v4, *MEMORY[0x277D109E8], v18);
  sub_22911C67C();
  return v25;
}

void sub_2289B5A00()
{
  if (!qword_27D862B70)
  {
    sub_2289B3D00(255, &qword_27D862AF8, 0x277D10B38);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862B70);
    }
  }
}

uint64_t sub_2289B5A78(uint64_t a1)
{
  sub_2289B5A00();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2289B5AD4()
{
  if (!qword_27D862B80)
  {
    v0 = sub_22911CABC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862B80);
    }
  }
}

void sub_2289B5B48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911CABC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2289B5B9C()
{
  if (!qword_27D862B90)
  {
    sub_22911C64C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D862B90);
    }
  }
}

Swift::Void __swiftcall HDAnalyticsSubmissionCoordinator.maintenanceCoordinator_reportCoreAnalytics(operationName:database:pendingOperationsCount:activeOperationsCount:timeUntilStart:canceled:timedOut:elapsedTime:isImmediateRequest:async:)(Swift::String operationName, Swift::String database, Swift::Int pendingOperationsCount, Swift::Int activeOperationsCount, Swift::Int timeUntilStart, Swift::Bool canceled, Swift::Bool timedOut, Swift::Int elapsedTime, Swift::Bool isImmediateRequest, Swift::Bool async)
{
  object = database._object;
  countAndFlagsBits = database._countAndFlagsBits;
  v14 = operationName._object;
  v15 = operationName._countAndFlagsBits;
  v20 = sub_22911C34C();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  *(v16 + 32) = countAndFlagsBits;
  *(v16 + 40) = object;
  *(v16 + 48) = pendingOperationsCount;
  *(v16 + 56) = activeOperationsCount;
  *(v16 + 64) = timeUntilStart;
  *(v16 + 72) = canceled;
  *(v16 + 73) = timedOut;
  *(v16 + 80) = elapsedTime;
  *(v16 + 88) = isImmediateRequest;
  *(v16 + 89) = async;
  aBlock[4] = sub_2289B6000;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289B6004;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  [v21 sendEvent:v20 block:v17];
  _Block_release(v17);
}

unint64_t sub_2289B5D84()
{
  sub_2289B62D4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163CD0;
  strcpy((inited + 32), "operationName");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_22911C34C();
  *(inited + 56) = 0x6573616261746164;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_22911C34C();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000002291821D0;
  *(inited + 96) = sub_22911C56C();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x80000002291821F0;
  *(inited + 120) = sub_22911C56C();
  strcpy((inited + 128), "timeUntilStart");
  *(inited + 143) = -18;
  *(inited + 144) = sub_22911C56C();
  *(inited + 152) = 0x64656C65636E6163;
  *(inited + 160) = 0xE800000000000000;
  sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
  *(inited + 168) = sub_22911C69C();
  *(inited + 176) = 0x74754F64656D6974;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = sub_22911C69C();
  *(inited + 200) = 0x5464657370616C65;
  *(inited + 208) = 0xEB00000000656D69;
  *(inited + 216) = sub_22911C56C();
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x8000000229182210;
  *(inited + 240) = sub_22911C69C();
  *(inited + 248) = 0x636E797361;
  *(inited + 256) = 0xE500000000000000;
  *(inited + 264) = sub_22911C69C();
  v1 = sub_2289B268C(inited);
  swift_setDeallocating();
  sub_2289B632C();
  swift_arrayDestroy();
  return v1;
}

id sub_2289B6004(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  sub_2289B3D00(0, &qword_280D678B0, 0x277D82BB8);
  v4 = sub_22911C2BC();

  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

unint64_t sub_2289B6280()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v13 = *(v0 + 89);
  v12 = *(v0 + 88);
  v11 = *(v0 + 80);
  v10 = *(v0 + 73);
  return sub_2289B5D84();
}

void sub_2289B62D4()
{
  if (!qword_280D67898)
  {
    sub_2289B632C();
    v0 = sub_22911CABC();
    if (!v1)
    {
      atomic_store(v0, &qword_280D67898);
    }
  }
}

void sub_2289B632C()
{
  if (!qword_280D678A0)
  {
    sub_2289B3D00(255, &qword_280D678B0, 0x277D82BB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280D678A0);
    }
  }
}

uint64_t sub_2289B63B0()
{
  v0 = sub_22911B95C();
  __swift_allocate_value_buffer(v0, qword_27D86A948);
  __swift_project_value_buffer(v0, qword_27D86A948);
  _HKInitializeLogging();
  v1 = HKLogWorkoutsCategory();
  return sub_22911B96C();
}

id HDSwimmingEventCollector.__allocating_init(profile:delegate:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithProfile:a1 delegate:a2];

  swift_unknownObjectRelease();
  return v4;
}

id HDSwimmingEventCollector.init(profile:delegate:)(void *a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HDSwimmingEventCollector();
  v5 = objc_msgSendSuper2(&v7, sel_initWithProfile_delegate_, a1, a2);

  swift_unknownObjectRelease();
  return v5;
}

void sub_2289B6550(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v9 = sub_22911B95C();
  __swift_project_value_buffer(v9, qword_27D86A948);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_22911B94C();
  v11 = sub_22911C5FC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136446466;
    v15 = sub_22911CBAC();
    v17 = sub_2289B9170(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_2289B98BC(&qword_27D862B98, MEMORY[0x277CC95F0]);
    v18 = sub_22911CAAC();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    v21 = sub_2289B9170(v18, v20, &v26);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_228986000, v10, v11, "%{public}s Starting swimming event collector for sessionID: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v14, -1, -1);
    v22 = v13;
    v2 = v25;
    MEMORY[0x22AAC9830](v22, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v23 = sub_22911B8BC();
  v24 = type metadata accessor for HDSwimmingEventCollector();
  v27.receiver = v2;
  v27.super_class = v24;
  objc_msgSendSuper2(&v27, sel_startWithSessionId_, v23);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_2289B6960()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27D862780 != -1)
  {
    swift_once();
  }

  v2 = sub_22911B95C();
  __swift_project_value_buffer(v2, qword_27D86A948);
  v3 = sub_22911B94C();
  v4 = sub_22911C5FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_22911CBAC();
    v9 = sub_2289B9170(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_228986000, v3, v4, "%{public}s Stopping swimming event collector", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAC9830](v6, -1, -1);
    MEMORY[0x22AAC9830](v5, -1, -1);
  }

  v10 = type metadata accessor for HDSwimmingEventCollector();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, sel_stop);
}

void sub_2289B6B24(unint64_t a1, void *a2)
{
  swift_getObjectType();
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }

    v33 = a2;
    goto LABEL_4;
  }

  if (sub_22911C78C() > 0)
  {
    v33 = a2;
    v28 = sub_22911C78C();
    if (v28)
    {
      v4 = v28;
      if (v28 < 1)
      {
        __break(1u);
        return;
      }

LABEL_4:
      v5 = a2;
      swift_beginAccess();
      v6 = 0;
      v7 = 0;
      v29 = v4;
      while ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AAC6410](v7, a1);
        if (v6)
        {
          goto LABEL_8;
        }

LABEL_9:
        v9 = qword_27D862780;
        v10 = v8;
        if (v9 != -1)
        {
          swift_once();
        }

        v11 = sub_22911B95C();
        __swift_project_value_buffer(v11, qword_27D86A948);
        v12 = sub_22911B94C();
        v13 = sub_22911C5FC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = v31;
          *v14 = 136446722;
          v16 = sub_22911CBAC();
          log = v12;
          v18 = sub_2289B9170(v16, v17, &v32);

          *(v14 + 4) = v18;
          *(v14 + 12) = 2112;
          *(v14 + 14) = v5;
          *(v14 + 22) = 2112;
          *(v14 + 24) = v10;
          *v15 = v5;
          v15[1] = v10;
          v19 = v10;
          v20 = v5;
          _os_log_impl(&dword_228986000, log, v13, "%{public}s Calculating difference for prior swim data %@ and current swim data %@", v14, 0x20u);
          sub_2289B9904(0, &qword_27D862BA0, sub_2289B9700, MEMORY[0x277D83D88]);
          swift_arrayDestroy();
          MEMORY[0x22AAC9830](v15, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x22AAC9830](v31, -1, -1);
          v21 = v14;
          v4 = v29;
          MEMORY[0x22AAC9830](v21, -1, -1);
        }

        else
        {
        }

        v22 = v10;
        v23 = v5;
        v24 = sub_2289B75A0(v23, v22);

        if (v24)
        {
          sub_2289B6F58(v24, 5);
        }

        v25 = v22;
        v26 = v23;
        v27 = sub_2289B82F8(v26, v25);

        if (v27)
        {
          sub_2289B6F58(v27, 9);
        }

        ++v7;

        v33 = v25;
        v5 = v25;

        v6 = 1;
        if (v4 == v7)
        {

          return;
        }
      }

      v8 = *(a1 + 8 * v7 + 32);
      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:

      goto LABEL_9;
    }
  }
}

void sub_2289B6F58(void *a1, uint64_t *a2)
{
  v3 = v2;
  v60 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_22911B7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  (MEMORY[0x28223BE20])();
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22911B8DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = (MEMORY[0x28223BE20])();
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v55 - v17;
  v19 = [v3 sessionId];
  if (v19)
  {
    v55[1] = ObjectType;
    v59 = v3;
    v20 = v19;
    sub_22911B8CC();

    v21 = *(v12 + 16);
    v58 = v11;
    v21(v16, v18, v11);
    v22 = [a1 dateInterval];
    sub_22911B7BC();

    v23 = [a1 metadata];
    v56 = v12;
    v57 = v18;
    if (v23)
    {
      v24 = v23;
      v25 = sub_22911C2CC();
    }

    else
    {
      v25 = 0;
    }

    v33 = sub_22911B8BC();
    v34 = sub_22911B7AC();
    if (v25)
    {
      v35 = sub_22911C2BC();
    }

    else
    {
      v35 = 0;
    }

    v36 = objc_allocWithZone(MEMORY[0x277CCDE58]);
    v37 = [v36 initWithEventType:v60 sessionId:v33 dateInterval:v34 metadata:v35];

    (*(v7 + 8))(v10, v6);
    v38 = *(v56 + 8);
    v39 = v16;
    v40 = v58;
    v38(v39, v58);
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v41 = sub_22911B95C();
    __swift_project_value_buffer(v41, qword_27D86A948);
    v42 = v37;
    v43 = sub_22911B94C();
    v44 = sub_22911C5FC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = v60;
      *v45 = 136446466;
      v47 = sub_22911CBAC();
      v49 = sub_2289B9170(v47, v48, &v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2112;
      *(v45 + 14) = v42;
      *v46 = v42;
      v50 = v42;
      _os_log_impl(&dword_228986000, v43, v44, "%{public}s Created workout event %@", v45, 0x16u);
      sub_2289B97CC(v46, &qword_27D862BA0, sub_2289B9700);
      MEMORY[0x22AAC9830](v46, -1, -1);
      v51 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x22AAC9830](v51, -1, -1);
      MEMORY[0x22AAC9830](v45, -1, -1);
    }

    v52 = v57;
    v53 = [v59 delegate];
    if (v53)
    {
      [v53 receivedWorkoutEvent_];

      swift_unknownObjectRelease();
      v38(v52, v40);
    }

    else
    {
      v38(v52, v40);
    }
  }

  else
  {
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v26 = sub_22911B95C();
    __swift_project_value_buffer(v26, qword_27D86A948);
    v60 = sub_22911B94C();
    v27 = sub_22911C5EC();
    if (os_log_type_enabled(v60, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v61 = v29;
      *v28 = 136446210;
      v30 = sub_22911CBAC();
      v32 = sub_2289B9170(v30, v31, &v61);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_228986000, v60, v27, "%{public}s Failed creating event. SessionId cannot be nil", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAC9830](v29, -1, -1);
      MEMORY[0x22AAC9830](v28, -1, -1);
    }

    else
    {
      v54 = v60;
    }
  }
}

id sub_2289B75A0(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_22911B7DC();
  v113 = *(v3 - 8);
  v4 = *(v113 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v110 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v112 = (&v104 - v7);
  v8 = MEMORY[0x277D83D88];
  sub_2289B9904(0, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v115 = &v104 - v11;
  v117 = sub_22911B8DC();
  v116 = *(v117 - 8);
  v12 = *(v116 + 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277CC9578];
  sub_2289B9904(0, &qword_27D862B48, MEMORY[0x277CC9578], v8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v104 - v20;
  v22 = sub_22911B88C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v109 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v108 = &v104 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v118 = &v104 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v104 - v31;
  v33 = a2;
  sub_2289B983C(a2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v21, &qword_27D862B48, v14);
  v34 = *(v23 + 48);
  if (v34(v21, 1, v22) == 1)
  {
    v35 = &qword_27D862B48;
    v36 = MEMORY[0x277CC9578];
    v37 = v21;
LABEL_7:
    sub_2289B97CC(v37, v35, v36);
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v45 = sub_22911B95C();
    __swift_project_value_buffer(v45, qword_27D86A948);
    v46 = sub_22911B94C();
    v47 = sub_22911C5EC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v122 = v49;
      *v48 = 136446210;
      v50 = sub_22911CBAC();
      v52 = sub_2289B9170(v50, v51, &v122);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_228986000, v46, v47, "%{public}s Unable to calculate lap difference for prior swim data. start, end or sourceID is nil", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AAC9830](v49, -1, -1);
      MEMORY[0x22AAC9830](v48, -1, -1);
    }

    return 0;
  }

  v107 = v3;
  v38 = *(v23 + 32);
  v38(v32, v21, v22);
  sub_2289B983C(v33 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v19, &qword_27D862B48, MEMORY[0x277CC9578]);
  v39 = v22;
  if (v34(v19, 1, v22) == 1)
  {
    (*(v23 + 8))(v32, v22);
    v35 = &qword_27D862B48;
    v36 = MEMORY[0x277CC9578];
    v37 = v19;
    goto LABEL_7;
  }

  v106 = v32;
  v105 = v23;
  v40 = v118;
  v38(v118, v19, v39);
  v41 = v115;
  sub_2289B983C(v33 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, v115, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v42 = v116;
  v43 = v117;
  if ((*(v116 + 6))(v41, 1, v117) == 1)
  {
    v44 = *(v105 + 8);
    v44(v40, v39);
    v44(v106, v39);
    v35 = &qword_27D8630C0;
    v36 = MEMORY[0x277CC95F0];
    v37 = v41;
    goto LABEL_7;
  }

  v54 = v33;
  v42[4](v114, v41, v43);
  v55 = *(v33 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount);
  v56 = *(v111 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount);
  v57 = v55 - v56;
  v58 = v105;
  v59 = v106;
  if (__OFSUB__(v55, v56))
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_16;
  }

  v33 = v107;
  if (v57 < 1)
  {
    (v42[1])(v114, v43);
    v81 = *(v58 + 8);
    v81(v118, v39);
    v81(v59, v39);
    return 0;
  }

  v60 = *(v105 + 16);
  v60(v108, v106, v39);
  v60(v109, v118, v39);
  v42 = v112;
  sub_22911B7CC();
  v61 = [objc_opt_self() countUnit];
  v57 = [objc_opt_self() quantityWithUnit:v61 doubleValue:v57];

  if (qword_27D862780 != -1)
  {
    goto LABEL_24;
  }

LABEL_16:
  v115 = v39;
  v62 = sub_22911B95C();
  __swift_project_value_buffer(v62, qword_27D86A948);
  v63 = v113;
  v64 = v110;
  (*(v113 + 16))(v110, v42, v33);
  v65 = v57;
  v66 = sub_22911B94C();
  v67 = sub_22911C5FC();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *&v122 = v111;
    *v68 = 136446722;
    v69 = sub_22911CBAC();
    v71 = sub_2289B9170(v69, v70, &v122);

    *(v68 + 4) = v71;
    *(v68 + 12) = 2080;
    sub_2289B98BC(&qword_27D862BA8, MEMORY[0x277CC88A8]);
    v72 = sub_22911CAAC();
    v74 = v73;
    v75 = *(v63 + 8);
    v75(v64, v33);
    v76 = sub_2289B9170(v72, v74, &v122);

    *(v68 + 14) = v76;
    *(v68 + 22) = 2112;
    *(v68 + 24) = v65;
    v77 = v109;
    *v109 = v65;
    v78 = v65;
    _os_log_impl(&dword_228986000, v66, v67, "%{public}s Creating lap datum with date interval %s and quantity %@", v68, 0x20u);
    sub_2289B97CC(v77, &qword_27D862BA0, sub_2289B9700);
    MEMORY[0x22AAC9830](v77, -1, -1);
    v79 = v111;
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v79, -1, -1);
    MEMORY[0x22AAC9830](v68, -1, -1);
  }

  else
  {

    v75 = *(v63 + 8);
    v75(v64, v33);
  }

  v80 = v33;
  sub_2289B9904(0, &qword_27D863220, sub_2289B3BE4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  v83 = *MEMORY[0x277CCC518];
  *(inited + 32) = sub_22911C35C();
  *(inited + 40) = v84;
  v85 = sub_2289DDE04();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v85;
  v86 = sub_2289B26A8(inited);
  swift_setDeallocating();
  sub_2289B9968(inited + 32);
  v87 = *(v54 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data);
  if ([v87 isSWOLFValid])
  {
    [v87 SWOLF];
    v89 = v88;
    v90 = *MEMORY[0x277CCC500];
    v91 = sub_22911C35C();
    v93 = v92;
    v123 = MEMORY[0x277D839F8];
    *&v122 = v89;
    sub_2289B3C48(&v122, v121);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v86;
    sub_2289AFF24(v121, v91, v93, isUniquelyReferenced_nonNull_native);
  }

  v95 = objc_allocWithZone(HDQuantityDatum);
  v96 = v114;
  v97 = sub_22911B8BC();
  v98 = v112;
  v99 = sub_22911B7AC();
  v100 = sub_22911C2BC();

  v101 = [v95 initWithIdentifier:v97 dateInterval:v99 quantity:v65 metadata:v100 resumeContextProvider:0];

  v75(v98, v80);
  (*(v116 + 1))(v96, v117);
  v102 = *(v105 + 8);
  v103 = v115;
  v102(v118, v115);
  v102(v106, v103);
  return v101;
}

id sub_2289B82F8(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  ObjectType = swift_getObjectType();
  v107 = sub_22911B7DC();
  v111 = *(v107 - 8);
  v3 = *(v111 + 8);
  v4 = MEMORY[0x28223BE20](v107);
  v106 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v112 = &v106 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_2289B9904(0, &qword_27D8630C0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v113 = &v106 - v10;
  v11 = sub_22911B8DC();
  v116 = *(v11 - 8);
  v117 = v11;
  v12 = *(v116 + 64);
  MEMORY[0x28223BE20](v11);
  v114 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277CC9578];
  sub_2289B9904(0, &qword_27D862B48, MEMORY[0x277CC9578], v7);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = (&v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v106 - v20;
  v22 = sub_22911B88C();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v106 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v115 = &v106 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v106 - v33;
  v110 = a1;
  sub_2289B983C(a1 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v21, &qword_27D862B48, v14);
  v35 = v23[6];
  if (v35(v21, 1, v22) == 1)
  {
    sub_2289B97CC(v21, &qword_27D862B48, MEMORY[0x277CC9578]);
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v36 = sub_22911B95C();
    __swift_project_value_buffer(v36, qword_27D86A948);
    v37 = sub_22911B94C();
    v38 = sub_22911C5EC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v122 = v40;
      *v39 = 136446210;
      v41 = sub_22911CBAC();
      v43 = sub_2289B9170(v41, v42, &v122);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_228986000, v37, v38, "%{public}s Unable to calculate segment prior end date is nil", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAC9830](v40, -1, -1);
      MEMORY[0x22AAC9830](v39, -1, -1);
    }

    return 0;
  }

  v109 = v23;
  v44 = v23[4];
  v108 = v34;
  v44();
  v45 = v119;
  sub_2289B983C(v119 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v19, &qword_27D862B48, MEMORY[0x277CC9578]);
  v46 = v22;
  if (v35(v19, 1, v22) == 1)
  {
    sub_2289B97CC(v19, &qword_27D862B48, MEMORY[0x277CC9578]);
    v47 = v109;
LABEL_11:
    v52 = v108;
    if (qword_27D862780 != -1)
    {
      swift_once();
    }

    v53 = sub_22911B95C();
    __swift_project_value_buffer(v53, qword_27D86A948);
    v54 = sub_22911B94C();
    v55 = sub_22911C5EC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v122 = v57;
      *v56 = 136446210;
      v58 = sub_22911CBAC();
      v60 = v46;
      v61 = sub_2289B9170(v58, v59, &v122);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_228986000, v54, v55, "%{public}s Unable to calculate segment difference for prior swim data. start or sourceID is nil", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AAC9830](v57, -1, -1);
      MEMORY[0x22AAC9830](v56, -1, -1);

      (v47[1])(v52, v60);
    }

    else
    {

      (v47[1])(v52, v46);
    }

    return 0;
  }

  v48 = v115;
  (v44)(v115, v19, v22);
  v49 = v113;
  sub_2289B983C(v45 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, v113, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v51 = v116;
  v50 = v117;
  if ((*(v116 + 48))(v49, 1, v117) == 1)
  {
    v47 = v109;
    (v109[1])(v48, v22);
    sub_2289B97CC(v49, &qword_27D8630C0, MEMORY[0x277CC95F0]);
    goto LABEL_11;
  }

  (*(v51 + 32))(v114, v49, v50);
  v63 = *(v45 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment);
  v64 = *(v110 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment);
  v65 = v63 - v64;
  v66 = v109;
  v67 = v108;
  if (__OFSUB__(v63, v64))
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_20;
  }

  v19 = v111;
  if (v65 < 1)
  {
    (*(v51 + 8))(v114, v50);
    v89 = v66[1];
    v89(v48, v46);
    v89(v67, v46);
    return 0;
  }

  v68 = v109[2];
  v68(v30, v48, v46);
  v113 = v46;
  v68(v27, v67, v46);
  v50 = v112;
  sub_22911B7CC();
  v69 = [objc_opt_self() countUnit];
  v65 = [objc_opt_self() quantityWithUnit:v69 doubleValue:v65];

  if (qword_27D862780 != -1)
  {
    goto LABEL_32;
  }

LABEL_20:
  v70 = sub_22911B95C();
  __swift_project_value_buffer(v70, qword_27D86A948);
  v71 = v106;
  v72 = v50;
  v73 = v107;
  v19[2](v106, v72, v107);
  v74 = v65;
  v75 = sub_22911B94C();
  v76 = sub_22911C5FC();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *&v122 = v110;
    *v77 = 136446722;
    v79 = sub_22911CBAC();
    v81 = sub_2289B9170(v79, v80, &v122);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2080;
    sub_2289B98BC(&qword_27D862BA8, MEMORY[0x277CC88A8]);
    v82 = sub_22911CAAC();
    v84 = v83;
    v85 = *(v111 + 1);
    (v85)(v71, v73);
    v86 = sub_2289B9170(v82, v84, &v122);

    *(v77 + 14) = v86;
    *(v77 + 22) = 2112;
    *(v77 + 24) = v74;
    *v78 = v74;
    v87 = v74;
    _os_log_impl(&dword_228986000, v75, v76, "%{public}s Creating segment datum with date interval %s and quantity %@", v77, 0x20u);
    sub_2289B97CC(v78, &qword_27D862BA0, sub_2289B9700);
    MEMORY[0x22AAC9830](v78, -1, -1);
    v88 = v110;
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v88, -1, -1);
    MEMORY[0x22AAC9830](v77, -1, -1);
  }

  else
  {

    v85 = v19[1];
    (v85)(v71, v73);
  }

  v90 = *(v119 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data);
  if ([v90 isSegmentSWOLFValid])
  {
    [v90 segmentSWOLF];
    v92 = v91;
    v93 = sub_2289B26A8(MEMORY[0x277D84F90]);
    v94 = *MEMORY[0x277CCC500];
    v95 = sub_22911C35C();
    v97 = v96;
    v123 = MEMORY[0x277D839F8];
    *&v122 = v92;
    sub_2289B3C48(&v122, v121);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v93;
    sub_2289AFF24(v121, v95, v97, isUniquelyReferenced_nonNull_native);

    v99 = v120;
  }

  else
  {
    v99 = 0;
  }

  v100 = sub_22911B8BC();
  v101 = sub_22911B7AC();
  if (v99)
  {
    v102 = sub_22911C2BC();
  }

  else
  {
    v102 = 0;
  }

  v103 = [objc_allocWithZone(HDQuantityDatum) initWithIdentifier:v100 dateInterval:v101 quantity:v74 metadata:v102 resumeContextProvider:0];

  (v85)(v112, v73);
  (*(v116 + 8))(v114, v117);
  v104 = v109[1];
  v105 = v113;
  v104(v115, v113);
  v104(v108, v105);

  return v103;
}

id HDSwimmingEventCollector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDSwimmingEventCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDSwimmingEventCollector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2289B9170(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2289B923C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2289B3CA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2289B923C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2289B9348(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22911C87C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2289B9348(uint64_t a1, unint64_t a2)
{
  v4 = sub_2289B9394(a1, a2);
  sub_2289B94C4(&unk_283BE3630);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2289B9394(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2289B95B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22911C87C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22911C40C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2289B95B0(v10, 0);
        result = sub_22911C82C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2289B94C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2289B9618(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2289B95B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2289B99C4();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2289B9618(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2289B99C4();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2289B9700()
{
  result = qword_280D678B0;
  if (!qword_280D678B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D678B0);
  }

  return result;
}

uint64_t sub_2289B97CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2289B9904(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2289B983C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2289B9904(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2289B98BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2289B9904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2289B9968(uint64_t a1)
{
  sub_2289B3BE4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2289B99C4()
{
  if (!qword_27D862BB0)
  {
    v0 = sub_22911CABC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862BB0);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t EpochBasedSyncStateUpdaterDelegate.domain.getter()
{
  v0 = sub_2289BA8B4();

  return v0;
}

id sub_2289B9AE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();

  v3 = sub_22911C34C();

  return v3;
}

uint64_t EpochBasedSyncStateUpdaterDelegate.key.getter()
{
  v0 = sub_2289BA8E4();

  return v0;
}

id EpochBasedSyncStateUpdaterDelegate.__allocating_init(logger:key:supportedSyncVersionRange:domain:store:maxDataSizeInBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18 = objc_allocWithZone(v9);
  v19 = sub_2289BA914(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(*(v9 + 10) - 8) + 8))(a7);
  return v19;
}

id EpochBasedSyncStateUpdaterDelegate.init(logger:key:supportedSyncVersionRange:domain:store:maxDataSizeInBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  v11 = *MEMORY[0x277D85000];
  v12 = sub_2289BA914(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(*((v11 & v10) + 0x50) - 8) + 8))(a7);
  return v12;
}

uint64_t sub_2289B9D98(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_2289BCE40();
  return sub_22911C3AC();
}

uint64_t sub_2289B9DEC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, id *a8)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = a6;
  v16 = a7;
  v17 = a1;
  v18 = sub_2289BAB34(a3, a4, a5, a8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v18;
}

uint64_t sub_2289B9E9C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & v6) + 0x58);
  v40 = *((*MEMORY[0x277D85000] & v6) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_dynamicCastUnknownClass();
  v11 = *((v7 & v6) + 0x68);
  swift_unknownObjectRetain();
  v12 = sub_22911B94C();
  if (v10)
  {
    v13 = sub_22911C5DC();
    if (os_log_type_enabled(v12, v13))
    {
      log = v12;
      v14 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41[0] = v37;
      *v14 = 136446466;
      v15 = sub_22911CBAC();
      v17 = sub_2289B9170(v15, v16, v41);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v19 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v21 = sub_2289B9170(v19, v20, v41);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_228986000, log, v13, "[%{public}s] Syncing merged state: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v37, -1, -1);
      MEMORY[0x22AAC9830](v14, -1, -1);
    }

    else
    {
    }

    [a1 setCodableObject:v10 version:*(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x80)) profile:{a3, log}];
    return swift_unknownObjectRelease();
  }

  else
  {
    v22 = sub_22911C5EC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41[0] = v24;
      *v23 = 136446466;
      v25 = sub_22911CBAC();
      v27 = sub_2289B9170(v25, v26, v41);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      swift_getObjectType();
      v41[5] = a2;
      swift_unknownObjectRetain();
      v28 = sub_22911C3AC();
      v30 = sub_2289B9170(v28, v29, v41);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_228986000, v12, v22, "[%{public}s] Unexpected object type: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v24, -1, -1);
      MEMORY[0x22AAC9830](v23, -1, -1);
    }

    v41[3] = swift_getObjectType();
    v41[0] = a2;
    swift_unknownObjectRetain();
    v31 = sub_2289B9D98(v41);
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_0(v41);
    type metadata accessor for EpochBasedSyncStateUpdaterDelegate.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v34 = v31;
    v34[1] = v33;
    return swift_willThrow();
  }
}

uint64_t sub_2289BA2CC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = a1;
  sub_2289B9E9C(v8, a4, v9);

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_2289BA3A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = a1;
  sub_2289BBD44(a3);

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_2289BA470(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = a1;
  sub_2289BC1B0(a3);

  return 1;
}

uint64_t sub_2289BA524(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a4;
  v11 = a5;
  v12 = a1;
  v13 = sub_2289BC450(a3, v10, a6);

  return v13;
}

id EpochBasedSyncStateUpdaterDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void EpochBasedSyncStateUpdaterDelegate.init()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_2289BC964();
}

void sub_2289BA60C(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2289BC964();
}

id EpochBasedSyncStateUpdaterDelegate.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EpochBasedSyncStateUpdaterDelegate();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2289BA6BC(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  v6 = sub_22911B95C();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *&a1[*((*v3 & *a1) + 0x70) + 8];

  v8 = *&a1[*((*v3 & *a1) + 0x78) + 8];

  v9 = *(*(*((v4 & v2) + 0x50) - 8) + 8);
  v10 = &a1[*((*v3 & *a1) + 0x88)];

  return v9(v10);
}

unint64_t sub_2289BA800(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xD000000000000030;
  }

  sub_22911C83C();

  MEMORY[0x22AAC5FC0](a1, a2);
  return 0xD00000000000002CLL;
}

uint64_t sub_2289BA8B4()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x70));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_2289BA8E4()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  result = *v1;
  v3 = v1[1];
  return result;
}

id sub_2289BA914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v8;
  v13 = MEMORY[0x277D85000];
  v14 = *MEMORY[0x277D85000];
  v15 = *((*MEMORY[0x277D85000] & *v8) + 0x68);
  v16 = sub_22911B95C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v8[v15], a1, v16);
  v18 = &v8[*((*v13 & *v8) + 0x78)];
  *v18 = a2;
  *(v18 + 1) = a3;
  *&v8[*((*v13 & *v8) + 0x80)] = a4;
  v19 = &v8[*((*v13 & *v8) + 0x70)];
  *v19 = a5;
  *(v19 + 1) = a6;
  (*(*(*((v14 & v12) + 0x50) - 8) + 16))(&v8[*((*v13 & *v8) + 0x88)], a7, *((v14 & v12) + 0x50));
  *&v8[*((*v13 & *v8) + 0x60)] = a8;
  v20 = *((v14 & v12) + 0x58);
  v28.receiver = v8;
  v28.super_class = type metadata accessor for EpochBasedSyncStateUpdaterDelegate();
  v21 = objc_msgSendSuper2(&v28, sel_init);
  (*(v17 + 8))(a1, v16);
  return v21;
}

uint64_t sub_2289BAB34(void *a1, void *a2, void *a3, id *a4)
{
  v5 = v4;
  swift_getObjectType();
  v9 = *v4;
  v10 = *MEMORY[0x277D85000] & *v4;
  v11 = *((*MEMORY[0x277D85000] & v9) + 0x58);
  v12 = *((*MEMORY[0x277D85000] & v9) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v150 = swift_dynamicCastUnknownClass();
  if (!v150 || (v14 = swift_dynamicCastUnknownClass()) == 0)
  {
    v30 = *(v10 + 104);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v31 = sub_22911B94C();
    v32 = sub_22911C5EC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = a2;
      v34 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v154[0] = v151;
      *v34 = 136446722;
      v35 = sub_22911CBAC();
      v145 = a4;
      v37 = sub_2289B9170(v35, v36, v154);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v38 = sub_22911C3AC();
      v40 = sub_2289B9170(v38, v39, v154);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2080;
      swift_getObjectType();
      v153 = a3;
      swift_unknownObjectRetain();
      v41 = sub_22911C3AC();
      v43 = sub_2289B9170(v41, v42, v154);

      *(v34 + 24) = v43;
      a4 = v145;
      _os_log_impl(&dword_228986000, v31, v32, "[%{public}s] Unexpected type for object, cloud: %s local: %s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v151, -1, -1);
      v44 = v34;
      a2 = v33;
      MEMORY[0x22AAC9830](v44, -1, -1);
    }

    v154[3] = swift_getObjectType();
    v154[0] = a2;
    swift_unknownObjectRetain();
    v45 = sub_2289B9D98(v154);
    v47 = v46;
    __swift_destroy_boxed_opaque_existential_0(v154);
    type metadata accessor for EpochBasedSyncStateUpdaterDelegate.Failure();
    swift_getWitnessTable();
    v48 = swift_allocError();
    *v49 = v45;
    v49[1] = v47;
    swift_willThrow();
    v154[0] = v48;
    sub_2289BCE8C();
    sub_2289BCEF0();
    swift_dynamicCast();
    v50 = v153;
    if (a4)
    {
      v51 = v153;
      *a4 = v153;
      v52 = v50;
    }

    v53 = *((*MEMORY[0x277D85000] & *v5) + 0x68);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v54 = v50;
    v55 = sub_22911B94C();
    v56 = sub_22911C5EC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v152 = v58;
      *v57 = 136446978;
      v59 = sub_22911CBAC();
      v61 = sub_2289B9170(v59, v60, &v152);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = [v54 localizedDescription];
      v63 = sub_22911C35C();
      v65 = v64;

      v66 = sub_2289B9170(v63, v65, &v152);

      *(v57 + 14) = v66;
      *(v57 + 22) = 2080;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v67 = sub_22911C3AC();
      v69 = sub_2289B9170(v67, v68, &v152);

      *(v57 + 24) = v69;
      *(v57 + 32) = 2080;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v70 = sub_22911C3AC();
      v72 = sub_2289B9170(v70, v71, &v152);

      *(v57 + 34) = v72;
      _os_log_impl(&dword_228986000, v55, v56, "[%{public}s] Error when trying to update: %s local: %s cloud: %s", v57, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v58, -1, -1);
      MEMORY[0x22AAC9830](v57, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v15 = v14;
  v143 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = v17(AssociatedTypeWitness, AssociatedConformanceWitness);
  v142 = v17;
  if (v17(AssociatedTypeWitness, AssociatedConformanceWitness) < v18)
  {
    v19 = AssociatedConformanceWitness;
    v20 = *((*MEMORY[0x277D85000] & *v5) + 0x68);
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    v21 = sub_22911B94C();
    v22 = sub_22911C5FC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v154[0] = v144;
      *v23 = 136446722;
      v24 = sub_22911CBAC();
      v148 = v22;
      v26 = sub_2289B9170(v24, v25, v154);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2048;
      v27 = AssociatedTypeWitness;
      v28 = v142(AssociatedTypeWitness, v19);
      swift_unknownObjectRelease();
      *(v23 + 14) = v28;
      swift_unknownObjectRelease();
      *(v23 + 22) = 2048;
      v29 = v142(AssociatedTypeWitness, v19);
      swift_unknownObjectRelease();
      *(v23 + 24) = v29;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_228986000, v21, v148, "[%{public}s] Choosing cloud state, it has a higher epoch (%lld vs %lld)", v23, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v144);
      MEMORY[0x22AAC9830](v144, -1, -1);
      MEMORY[0x22AAC9830](v23, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
      v27 = AssociatedTypeWitness;
    }

    *a1 = (*(v19 + 32))(v27, v19);
    swift_unknownObjectRelease();
LABEL_19:
    swift_unknownObjectRelease();
    return 2;
  }

  v74 = v17(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v17(AssociatedTypeWitness, AssociatedConformanceWitness) < v74)
  {
    v75 = *((*MEMORY[0x277D85000] & *v5) + 0x68);
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    v76 = sub_22911B94C();
    v77 = sub_22911C5FC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v154[0] = v146;
      *v78 = 136446722;
      v79 = sub_22911CBAC();
      v149 = v77;
      v81 = sub_2289B9170(v79, v80, v154);

      *(v78 + 4) = v81;
      *(v78 + 12) = 2048;
      v82 = v142(AssociatedTypeWitness, AssociatedConformanceWitness);
      swift_unknownObjectRelease();
      *(v78 + 14) = v82;
      swift_unknownObjectRelease();
      *(v78 + 22) = 2048;
      v83 = v142(AssociatedTypeWitness, AssociatedConformanceWitness);
      swift_unknownObjectRelease();
      *(v78 + 24) = v83;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_228986000, v76, v149, "[%{public}s] Choosing local state, it has a higher epoch (%lld vs %lld)", v78, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v146);
      MEMORY[0x22AAC9830](v146, -1, -1);
      MEMORY[0x22AAC9830](v78, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
    }

    *a1 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
LABEL_24:
    swift_unknownObjectRelease();
    return 3;
  }

  v84 = v150;
  v85 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v86 = *((*MEMORY[0x277D85000] & *v5) + 0x68);
  swift_unknownObjectRetain_n();
  v87 = sub_22911B94C();
  v88 = sub_22911C5FC();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v154[0] = swift_slowAlloc();
    v90 = AssociatedConformanceWitness;
    v91 = AssociatedTypeWitness;
    v92 = v154[0];
    *v89 = 136446466;
    v93 = sub_22911CBAC();
    v140 = v88;
    v95 = v85;
    v96 = sub_2289B9170(v93, v94, v154);

    *(v89 + 4) = v96;
    v85 = v95;
    v84 = v150;
    *(v89 + 12) = 2048;
    v97 = v142(v91, v90);
    swift_unknownObjectRelease();
    *(v89 + 14) = v97;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_228986000, v87, v140, "[%{public}s] Merging local and cloud state with same epoch (%lld)", v89, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v92);
    v98 = v92;
    AssociatedTypeWitness = v91;
    AssociatedConformanceWitness = v90;
    MEMORY[0x22AAC9830](v98, -1, -1);
    MEMORY[0x22AAC9830](v89, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  (*(AssociatedConformanceWitness + 40))(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  v141 = v15;
  result = [v85 data];
  if (!result)
  {
    goto LABEL_55;
  }

  v99 = result;
  v100 = sub_22911B81C();
  v102 = v101;

  v103 = v102;
  v104 = v102 >> 62;
  if ((v102 >> 62) > 1)
  {
    if (v104 != 2)
    {
      sub_2289BCF3C(v100, v102);
      v105 = 0;
      goto LABEL_37;
    }

    v107 = *(v100 + 16);
    v106 = *(v100 + 24);
    sub_2289BCF3C(v100, v103);
    v105 = v106 - v107;
    if (!__OFSUB__(v106, v107))
    {
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v104)
  {
LABEL_34:
    result = sub_2289BCF3C(v100, v103);
    LODWORD(v105) = HIDWORD(v100) - v100;
    if (!__OFSUB__(HIDWORD(v100), v100))
    {
      v105 = v105;
      goto LABEL_37;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    return result;
  }

  sub_2289BCF3C(v100, v102);
  v105 = BYTE6(v102);
LABEL_37:
  if (*(v143 + *((*MEMORY[0x277D85000] & *v143) + 0x60)) < v105)
  {
    v108 = v85;
    v109 = sub_22911B94C();
    v110 = sub_22911C5EC();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v154[0] = v139;
      *v111 = 136446466;
      v112 = sub_22911CBAC();
      v114 = sub_2289B9170(v112, v113, v154);

      *(v111 + 4) = v114;
      *(v111 + 12) = 2048;
      v115 = v142(AssociatedTypeWitness, AssociatedConformanceWitness);

      *(v111 + 14) = v115;
      _os_log_impl(&dword_228986000, v109, v110, "[%{public}s] Merged state's size above the limit, purge metadata and increment epoch, previous: %lld", v111, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v139);
      MEMORY[0x22AAC9830](v139, -1, -1);
      MEMORY[0x22AAC9830](v111, -1, -1);
    }

    else
    {
    }

    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  v116 = v85;
  *a1 = v116;
  v117 = v116;
  if (([v117 isEqual_] & 1) == 0)
  {
    v127 = sub_22911B94C();
    v128 = sub_22911C5FC();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v154[0] = v130;
      *v129 = 136446210;
      v131 = sub_22911CBAC();
      v133 = sub_2289B9170(v131, v132, v154);

      *(v129 + 4) = v133;
      _os_log_impl(&dword_228986000, v127, v128, "[%{public}s] Update cloud state", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v130);
      MEMORY[0x22AAC9830](v130, -1, -1);
      MEMORY[0x22AAC9830](v129, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v118 = [v117 isEqual_];
  v119 = sub_22911B94C();
  v120 = sub_22911C5FC();
  v121 = os_log_type_enabled(v119, v120);
  if ((v118 & 1) == 0)
  {
    if (v121)
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v154[0] = v135;
      *v134 = 136446210;
      v136 = sub_22911CBAC();
      v138 = sub_2289B9170(v136, v137, v154);

      *(v134 + 4) = v138;
      _os_log_impl(&dword_228986000, v119, v120, "[%{public}s] Update local state", v134, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v135);
      MEMORY[0x22AAC9830](v135, -1, -1);
      MEMORY[0x22AAC9830](v134, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  if (v121)
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v154[0] = v123;
    *v122 = 136446210;
    v124 = sub_22911CBAC();
    v126 = sub_2289B9170(v124, v125, v154);

    *(v122 + 4) = v126;
    _os_log_impl(&dword_228986000, v119, v120, "[%{public}s] No update required", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v123);
    MEMORY[0x22AAC9830](v123, -1, -1);
    MEMORY[0x22AAC9830](v122, -1, -1);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_2289BBD44(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & v4) + 0x58);
  v7 = *((*MEMORY[0x277D85000] & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCastUnknownClass();
  v10 = *((v5 & v4) + 0x68);
  swift_unknownObjectRetain();
  v11 = sub_22911B94C();
  if (v9)
  {
    v12 = sub_22911C5DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37[0] = v36;
      *v13 = 136446466;
      v14 = sub_22911CBAC();
      v16 = sub_2289B9170(v14, v15, v37);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v18 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v20 = sub_2289B9170(v18, v19, v37);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_228986000, v11, v12, "[%{public}s] Persisting cloud state locally: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v36, -1, -1);
      MEMORY[0x22AAC9830](v13, -1, -1);
    }

    v21 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x88);
    (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 24))(v9, *((*MEMORY[0x277D85000] & *v2) + 0x50));
    return swift_unknownObjectRelease();
  }

  else
  {
    v23 = sub_22911C5EC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37[0] = v25;
      *v24 = 136446466;
      v26 = sub_22911CBAC();
      v28 = sub_2289B9170(v26, v27, v37);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      swift_getObjectType();
      v37[5] = a1;
      swift_unknownObjectRetain();
      v29 = sub_22911C3AC();
      v31 = sub_2289B9170(v29, v30, v37);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_228986000, v11, v23, "[%{public}s] returned object is not the expected type: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v25, -1, -1);
      MEMORY[0x22AAC9830](v24, -1, -1);
    }

    v37[3] = swift_getObjectType();
    v37[0] = a1;
    swift_unknownObjectRetain();
    v32 = sub_2289B9D98(v37);
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_0(v37);
    type metadata accessor for EpochBasedSyncStateUpdaterDelegate.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v35 = v32;
    v35[1] = v34;
    return swift_willThrow();
  }
}

void sub_2289BC1B0(void *a1)
{
  v3 = v1;
  swift_getObjectType();
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v7 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v8 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v9 = (*(v6 + 32))(v7, v6);
  if (!v2)
  {
    v10 = v9;
    v11 = *((*v5 & *v3) + 0x68);
    v12 = v9;
    v13 = sub_22911B94C();
    v14 = sub_22911C5FC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v15 = 136446466;
      v16 = sub_22911CBAC();
      v18 = sub_2289B9170(v16, v17, &v29);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      if (v10)
      {
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v27 = v14;
        v20 = a1;
        v21 = *(AssociatedConformanceWitness + 56);
        v22 = swift_checkMetadataState();
        v23 = v21(v22, AssociatedConformanceWitness);
        a1 = v20;
        v14 = v27;
        v25 = v24;
      }

      else
      {
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = sub_2289B9170(v23, v25, &v29);

      *(v15 + 14) = v26;
      _os_log_impl(&dword_228986000, v13, v14, "%{public}s Retrieved local state: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v28, -1, -1);
      MEMORY[0x22AAC9830](v15, -1, -1);
    }

    *a1 = v10;
  }
}

uint64_t sub_2289BC450(void *a1, void *a2, void *a3)
{
  v54[4] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v6 = MEMORY[0x277D85000];
  v7 = *v3;
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v10 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = *(v3 + *((v8 & v7) + 0x80));
  v53 = 0;
  v54[0] = 0;
  v14 = [a2 decodedObjectOfClass:ObjCClassFromMetadata version:v13 decodedObject:v54 error:&v53];
  v16 = v53;
  v15 = v54[0];
  if (!v14)
  {
    v32 = v53;
    swift_unknownObjectRetain();
    v33 = sub_22911B7FC();

    swift_willThrow();
    swift_unknownObjectRelease();
    if (!a3)
    {
LABEL_9:

      result = 0;
      goto LABEL_11;
    }

LABEL_8:
    *a3 = sub_22911B7EC();
    goto LABEL_9;
  }

  if (!v54[0])
  {
    v34 = v53;
    result = 2;
    goto LABEL_11;
  }

  v17 = swift_dynamicCastUnknownClass();
  v18 = *((*v6 & *v3) + 0x68);
  swift_unknownObjectRetain_n();
  if (!v17)
  {
    v36 = v16;
    swift_unknownObjectRetain();
    v37 = sub_22911B94C();
    v38 = sub_22911C5EC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54[0] = v40;
      *v39 = 136446466;
      v41 = sub_22911CBAC();
      v43 = sub_2289B9170(v41, v42, v54);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      swift_getObjectType();
      v53 = v15;
      swift_unknownObjectRetain();
      v44 = sub_22911C3AC();
      v46 = sub_2289B9170(v44, v45, v54);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_228986000, v37, v38, "[%{public}s] object is not of the expected type: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC9830](v40, -1, -1);
      MEMORY[0x22AAC9830](v39, -1, -1);
    }

    v54[3] = swift_getObjectType();
    v54[0] = v15;
    swift_unknownObjectRetain();
    v47 = sub_2289B9D98(v54);
    v49 = v48;
    __swift_destroy_boxed_opaque_existential_0(v54);
    type metadata accessor for EpochBasedSyncStateUpdaterDelegate.Failure();
    swift_getWitnessTable();
    v33 = swift_allocError();
    *v50 = v47;
    v50[1] = v49;
    swift_willThrow();
    swift_unknownObjectRelease_n();
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  swift_unknownObjectRetain_n();
  v19 = v16;
  v20 = sub_22911B94C();
  v21 = sub_22911C5FC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v54[0] = v51;
    *v22 = 136446466;
    v23 = sub_22911CBAC();
    v25 = sub_2289B9170(v23, v24, v54);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v29 = sub_2289B9170(v27, v28, v54);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_228986000, v20, v21, "[%{public}s] Retrieved cloud data: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC9830](v51, -1, -1);
    MEMORY[0x22AAC9830](v22, -1, -1);
  }

  v30 = v17;
  *a1 = v17;
  swift_unknownObjectRelease_n();
  result = 1;
LABEL_11:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2289BCAB0(uint64_t a1)
{
  result = sub_22911B95C();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2289BCD10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2289BCD64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2289BCDB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2289BCE08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2289BCE20(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2289BCE40()
{
  result = qword_27D862D20;
  if (!qword_27D862D20)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D862D20);
  }

  return result;
}

unint64_t sub_2289BCE8C()
{
  result = qword_27D862D28;
  if (!qword_27D862D28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D862D28);
  }

  return result;
}

unint64_t sub_2289BCEF0()
{
  result = qword_27D862D30;
  if (!qword_27D862D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D862D30);
  }

  return result;
}

uint64_t sub_2289BCF3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2289BCFC0(uint64_t a1)
{
  v3 = sub_22911B8DC();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v46 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = v37 - v7;
  v44 = sub_22911BE7C();
  v47 = *(v44 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_22911C78C();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v56 = MEMORY[0x277D84F90];
  sub_2289FD348(0, v11 & ~(v11 >> 63), 0);
  v12 = v56;
  if (v48)
  {
    result = sub_22911C73C();
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    result = sub_22911C6FC();
    v14 = *(a1 + 36);
  }

  v53 = result;
  v54 = v14;
  v55 = v48 != 0;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v37[1] = v1;
    v16 = 0;
    v42 = v47 + 32;
    v43 = a1;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v17 = a1;
    }

    v39 = a1 + 56;
    v40 = v17;
    v38 = a1 + 64;
    v41 = v11;
    while (v16 < v11)
    {
      if (__OFADD__(v16++, 1))
      {
        goto LABEL_37;
      }

      v51 = v53;
      v49 = v54;
      v50 = v55;
      sub_2289E6910(v53, v54, v55, a1);
      v21 = v20;
      v22 = [v20 hardwareIdentifier];
      sub_22911B8CC();

      v23 = [v21 databaseIdentifier];
      sub_22911B8CC();

      v24 = [v21 instanceDiscriminator];
      sub_22911C35C();

      sub_22911BE6C();
      v56 = v12;
      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2289FD348(v25 > 1, v26 + 1, 1);
        v12 = v56;
      }

      *(v12 + 16) = v26 + 1;
      (*(v47 + 32))(v12 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v26, v10, v44);
      if (v48)
      {
        a1 = v43;
        result = v51;
        if (!v50)
        {
          goto LABEL_42;
        }

        if (sub_22911C75C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v11 = v41;
        sub_2289BE620();
        v18 = sub_22911C53C();
        sub_22911C7DC();
        result = v18(v52, 0);
        if (v16 == v11)
        {
LABEL_34:
          sub_2289ACBF4(v53, v54, v55);
          return v12;
        }
      }

      else
      {
        a1 = v43;
        result = v51;
        if (v50)
        {
          goto LABEL_43;
        }

        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v27 = 1 << *(v43 + 32);
        if (v51 >= v27)
        {
          goto LABEL_38;
        }

        v28 = v51 >> 6;
        v29 = *(v39 + 8 * (v51 >> 6));
        if (((v29 >> v51) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v43 + 36) != v49)
        {
          goto LABEL_40;
        }

        v30 = v29 & (-2 << (v51 & 0x3F));
        if (v30)
        {
          v27 = __clz(__rbit64(v30)) | v51 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v28 << 6;
          v32 = v28 + 1;
          v33 = (v38 + 8 * v28);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_2289ACBF4(v51, v49, 0);
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_33;
            }
          }

          result = sub_2289ACBF4(v51, v49, 0);
        }

LABEL_33:
        v36 = *(a1 + 36);
        v53 = v27;
        v54 = v36;
        v55 = 0;
        v11 = v41;
        if (v16 == v41)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

__CFString *sub_2289BD4B0@<X0>(uint64_t a1@<X8>)
{
  sub_2289BE3F0(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v56 - v5;
  v7 = [v1 slot];
  switch(v7)
  {
    case 3:
      v8 = @"Tombstone";
      v11 = @"Tombstone";
      break;
    case 2:
      v8 = @"B";
      v10 = @"B";
      break;
    case 1:
      v8 = @"A";
      v9 = @"A";
      break;
    default:
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v7];
      break;
  }

  result = v8;
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_22911C35C();
  v16 = v15;

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = [v1 isActive];
  v17 = [v1 record];
  v18 = [v17 modificationDate];

  if (v18)
  {
    sub_22911B86C();

    v19 = sub_22911B88C();
    (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  }

  else
  {
    v20 = sub_22911B88C();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  }

  sub_2289BDFAC(0);
  v22 = v21;
  v23 = v21[20];
  v24 = v21[24];
  v25 = v21[28];
  sub_2289BE454(v6, a1 + v21[16]);
  *(a1 + v23) = [v1 baselineEpoch];
  *(a1 + v24) = [v1 changeIndex];
  *(a1 + v25) = [v1 childRecordCount];
  [v1 protocolVersion];
  result = HKSyncProtocolVersionToString();
  if (!result)
  {
    goto LABEL_17;
  }

  v26 = result;
  v27 = (a1 + v22[32]);
  v28 = v22[36];
  v29 = v22[40];
  v30 = v22[44];
  v31 = v22[52];
  v56 = v22[48];
  v57 = v31;
  v32 = sub_22911C35C();
  v34 = v33;

  *v27 = v32;
  v27[1] = v34;
  v35 = [v1 includedIdentifiers];
  sub_22911B8DC();
  sub_2289BE534(&qword_27D8629D8, MEMORY[0x277CC95F0]);
  v36 = sub_22911C51C();

  *(a1 + v28) = v36;
  v37 = [v1 includedSyncIdentities];
  sub_2289BE4E8();
  sub_2289BE534(&qword_27D862A18, sub_2289BE4E8);
  v38 = sub_22911C51C();

  v39 = sub_2289BCFC0(v38);

  v40 = sub_2289DCE9C(v39);

  *(a1 + v29) = v40;
  v41 = [v1 includedChildSyncIdentities];
  v42 = sub_22911C51C();

  v43 = sub_2289BCFC0(v42);

  v44 = sub_2289DCE9C(v43);

  *(a1 + v30) = v44;
  v45 = [v1 syncAnchorMap];
  v46 = swift_allocObject();
  *(v46 + 16) = sub_2289B23DC(MEMORY[0x277D84F90]);
  v62 = sub_2289BE600;
  v63 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_2289BE57C;
  v61 = &block_descriptor_0;
  v47 = _Block_copy(&aBlock);

  [v45 enumerateAnchorsAndEntityIdentifiersWithBlock_];

  _Block_release(v47);
  swift_beginAccess();
  v48 = *(v46 + 16);

  *(a1 + v56) = v48;
  v49 = [v1 frozenSyncAnchorMap];
  if (v49)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = sub_2289B23DC(MEMORY[0x277D84F90]);
    v62 = sub_2289BE6B8;
    v63 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_2289BE57C;
    v61 = &block_descriptor_5;
    v51 = _Block_copy(&aBlock);

    [v49 &selRef_eventType + 3];

    _Block_release(v51);
    swift_beginAccess();
    v49 = *(v50 + 16);
  }

  *(a1 + v57) = v49;
  v52 = v22[56];
  sub_2289BDB98();
  *(a1 + v52) = v53;
  v54 = *MEMORY[0x277CCB4D0];
  v55 = sub_22911BF0C();
  return (*(*(v55 - 8) + 104))(a1, v54, v55);
}

void sub_2289BDB98()
{
  v1 = sub_22911BE5C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22911BE3C();
  v37 = *(v35 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v0;
  v7 = [v0 syncEntityVersionMap];
  v8 = [v7 entityVersionRanges];

  if (v8)
  {
    v9 = [v8 count];
    if (v9 < 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {
      v10 = v9;
      if (!v9)
      {

        return;
      }

      v31 = v8;
      v39 = MEMORY[0x277D84F90];
      sub_2289FD2F8(0, v9, 0);
      v11 = 0;
      v32 = v37 + 32;
      v33 = v6;
      v12 = v39;
      v13 = &selRef_deviceEntityWithDevice_syncIdentity_healthDatabase_error_;
      v34 = v10;
      while (1)
      {
        v14 = [v36 syncEntityVersionMap];
        v15 = [v14 entityVersionRangeAtIndex_];

        if (!v15)
        {
          break;
        }

        v16 = [v15 v13[300]];
        if (!v16)
        {
          goto LABEL_21;
        }

        v17 = v16;
        v18 = [objc_allocWithZone(HDSyncEntityIdentifier) initWithCodableEntityIdentifier_];

        [v18 v13[300]];
        v19 = [v18 schemaIdentifier];
        if (v19)
        {
          v20 = v19;
          sub_22911C35C();
        }

        v21 = [v18 description];
        sub_22911C35C();

        sub_22911BE4C();
        v22 = [v15 versionRange];
        if (!v22)
        {
          goto LABEL_18;
        }

        v23 = v22;
        [v22 current];

        v24 = [v15 versionRange];
        v25 = v34;
        if (!v24)
        {
          goto LABEL_19;
        }

        v26 = v24;
        [v24 minimum];

        v27 = v33;
        sub_22911BE2C();

        v39 = v12;
        v29 = *(v12 + 16);
        v28 = *(v12 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2289FD2F8(v28 > 1, v29 + 1, 1);
          v12 = v39;
        }

        ++v11;
        *(v12 + 16) = v29 + 1;
        (*(v37 + 32))(v12 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29, v27, v35);
        v13 = &selRef_deviceEntityWithDevice_syncIdentity_healthDatabase_error_;
        if (v25 == v11)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_2289BDFAC(uint64_t a1)
{
  if (!qword_27D862D40)
  {
    MEMORY[0x28223BE20](a1);
    v1 = MEMORY[0x277D83D88];
    sub_2289BE3F0(255, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_2289BE1F8();
    sub_2289BE28C();
    sub_2289BE320();
    sub_2289BE3F0(255, &qword_27D862D68, sub_2289BE320, v1);
    sub_2289BE3F0(255, &qword_27D862D70, sub_2289BE3BC, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862D40);
    }
  }
}

void sub_2289BE1F8()
{
  if (!qword_27D862D48)
  {
    sub_22911B8DC();
    sub_2289BE534(&qword_27D8629D8, MEMORY[0x277CC95F0]);
    v0 = sub_22911C55C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862D48);
    }
  }
}

void sub_2289BE28C()
{
  if (!qword_27D862D50)
  {
    sub_22911BE7C();
    sub_2289BE534(&qword_27D862D58, MEMORY[0x277CCB430]);
    v0 = sub_22911C55C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862D50);
    }
  }
}

void sub_2289BE320()
{
  if (!qword_27D862D60)
  {
    sub_22911BE5C();
    sub_2289BE534(&qword_27D8629C0, MEMORY[0x277CCB418]);
    v0 = sub_22911C2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862D60);
    }
  }
}

void sub_2289BE3F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2289BE454(uint64_t a1, uint64_t a2)
{
  sub_2289BE3F0(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2289BE4E8()
{
  result = qword_27D862A08;
  if (!qword_27D862A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D862A08);
  }

  return result;
}

uint64_t sub_2289BE534(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2289BE57C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2289BE620()
{
  if (!qword_27D862D80)
  {
    sub_2289BE4E8();
    sub_2289BE534(&qword_27D862A18, sub_2289BE4E8);
    v0 = sub_22911C54C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862D80);
    }
  }
}

void sub_2289BE6C0(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22911B8DC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = [v1 codableDeviceContext];
  v8 = [v7 productTypeName];

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = sub_22911C35C();
  v11 = v10;

  *a1 = v9;
  a1[1] = v11;
  v12 = [v2 codableDeviceContext];
  v13 = [v12 currentOSName];

  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v14 = sub_22911C35C();
  v16 = v15;

  a1[2] = v14;
  a1[3] = v16;
  v17 = [v2 codableDeviceContext];
  v18 = [v17 currentOSVersion];

  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = sub_22911C35C();
  v21 = v20;

  a1[4] = v19;
  a1[5] = v21;
  v22 = [v2 codableDeviceContext];
  v23 = [v22 syncIdentity];

  if (v23)
  {
    sub_2289BEAC0(0);
    v25 = v24;
    v26 = *(v24 + 80);
    sub_2289BE4E8();
    v27 = sub_2289BEC2C(v23);

    v28 = [v27 hardwareIdentifier];
    sub_22911B8CC();

    v29 = [v27 databaseIdentifier];
    sub_22911B8CC();

    v30 = [v27 instanceDiscriminator];
    sub_22911C35C();

    sub_22911BE6C();
    v31 = sub_22911BE7C();
    (*(*(v31 - 8) + 56))(a1 + v26, 0, 1, v31);
    v32 = *(v25 + 96);
    v33 = [v2 codableDeviceContext];
    [v33 modificationDate];

    v34 = HDDecodeDateForValue();
    sub_22911B86C();

    v35 = *MEMORY[0x277CCB460];
    v36 = sub_22911BF0C();
    (*(*(v36 - 8) + 104))(a1, v35, v36);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2289BEAC0(uint64_t a1)
{
  if (!qword_27D862D88)
  {
    MEMORY[0x28223BE20](a1);
    sub_2289BEBD4();
    sub_22911B88C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D862D88);
    }
  }
}

void sub_2289BEBD4()
{
  if (!qword_27D862D90)
  {
    sub_22911BE7C();
    v0 = sub_22911C6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D862D90);
    }
  }
}

id sub_2289BEC2C(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() syncIdentityWithCodable:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_22911B7FC();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t static HDHRMEntity.columns.getter()
{
  v1 = sub_22911C66C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289BF1C0();
  v6 = *(sub_22911C68C() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v44 = 4 * v7;
  v45 = v7;
  v9 = swift_allocObject();
  v43 = v9;
  *(v9 + 16) = xmmword_229163F30;
  v10 = v9 + v8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000021;
  *(v11 + 24) = 0x80000002291820F0;
  *v5 = v11;
  v12 = *MEMORY[0x277D109D0];
  v13 = *(v2 + 104);
  v42 = v2 + 104;
  v13(v5, v12, v1);
  v40 = v10;
  v14 = sub_22911C67C();
  (*(v0 + 80))(v46, v14);
  v41 = v46[3];

  sub_2289BF3F4(0, &qword_27D862B90, MEMORY[0x277D109C0]);
  v16 = v15;
  v17 = swift_allocBox();
  v19 = v18;
  v20 = *(v16 + 48);
  strcpy(v18, "BLOB NOT NULL");
  *(v18 + 14) = -4864;
  v21 = *MEMORY[0x277D109B0];
  v22 = sub_22911C64C();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v5 = v17;
  v13(v5, *MEMORY[0x277D109C8], v1);
  v39 = v13;
  v23 = v45;
  sub_22911C67C();
  v41 = "Must override by subclass";
  v24 = sub_22911C65C();
  v25 = swift_allocBox();
  v26 = *MEMORY[0x277D109D8];
  v27 = *(*(v24 - 8) + 104);
  v27(v28, v26, v24);
  *v5 = v25;
  v29 = *MEMORY[0x277D109F8];
  v38 = v1;
  v13(v5, v29, v1);
  sub_22911C67C();
  v45 += 2 * v23;
  v30 = swift_allocBox();
  v27(v31, v26, v24);
  *v5 = v30;
  v32 = v1;
  v33 = v39;
  v39(v5, v29, v32);
  sub_22911C67C();
  v34 = swift_allocBox();
  v27(v35, v26, v24);
  *v5 = v34;
  v33(v5, v29, v38);
  sub_22911C67C();
  return v43;
}