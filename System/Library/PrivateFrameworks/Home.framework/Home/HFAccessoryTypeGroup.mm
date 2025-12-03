@interface HFAccessoryTypeGroup
+ (HFAccessoryTypeGroup)accessoryTypeGroupWithIdentifier:(id)identifier;
+ (id)climateAccessoryTypeGroup;
+ (id)energyAccessoryTypeGroup;
+ (id)hiddenFromScenesAndAutomationsAccessoryTypeGroup;
+ (id)lightAccessoryTypeGroup;
+ (id)mediaAccessoryTypeGroup;
+ (id)otherAccessoryTypeGroup;
+ (id)outletAccessoryTypeGroup;
+ (id)restrictedGuestAccessoryTypeGroups;
+ (id)securityAccessoryTypeGroup;
+ (id)sensorAccessoryTypeGroup;
+ (id)switchAccessoryTypeGroup;
+ (id)unionGroups:(id)groups;
+ (id)waterAccessoryTypeGroup;
+ (void)warmUp;
- (BOOL)containsType:(id)type;
- (BOOL)intersectsGroup:(id)group;
- (HFAccessoryTypeGroup)initWithName:(id)name accessoryTypes:(id)types;
- (NSString)debugDescription;
- (NSString)fullName;
- (id)_initWithIdentifier:(id)identifier name:(id)name set:(id)set;
- (id)_initWithIdentifierString:(id)string name:(id)name accessoryTypes:(id)types;
- (id)_initWithName:(id)name set:(id)set;
- (id)filterAccessoryRepresentableObjects:(id)objects;
- (id)groupByIntersectingGroup:(id)group;
- (id)groupBySubtractingGroup:(id)group;
- (id)groupByUnioningGroup:(id)group;
@end

@implementation HFAccessoryTypeGroup

- (id)_initWithIdentifier:(id)identifier name:(id)name set:(id)set
{
  identifierCopy = identifier;
  nameCopy = name;
  setCopy = set;
  v15.receiver = self;
  v15.super_class = HFAccessoryTypeGroup;
  v12 = [(HFAccessoryTypeGroup *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_uniqueIdentifier, identifier);
    objc_storeStrong(p_isa + 2, name);
    objc_storeStrong(p_isa + 3, set);
  }

  return p_isa;
}

- (id)_initWithName:(id)name set:(id)set
{
  v6 = MEMORY[0x277CCAD78];
  setCopy = set;
  nameCopy = name;
  uUID = [v6 UUID];
  v10 = [(HFAccessoryTypeGroup *)self _initWithIdentifier:uUID name:nameCopy set:setCopy];

  return v10;
}

- (id)_initWithIdentifierString:(id)string name:(id)name accessoryTypes:(id)types
{
  v8 = MEMORY[0x277CCAD78];
  typesCopy = types;
  nameCopy = name;
  stringCopy = string;
  v12 = [[v8 alloc] initWithUUIDString:stringCopy];

  v13 = [MEMORY[0x277CBEB98] setWithArray:typesCopy];

  v14 = [(HFAccessoryTypeGroup *)self _initWithIdentifier:v12 name:nameCopy set:v13];
  return v14;
}

- (HFAccessoryTypeGroup)initWithName:(id)name accessoryTypes:(id)types
{
  v6 = MEMORY[0x277CBEB98];
  nameCopy = name;
  v8 = [v6 setWithArray:types];
  v9 = [(HFAccessoryTypeGroup *)self _initWithName:nameCopy set:v8];

  return v9;
}

+ (id)climateAccessoryTypeGroup
{
  if (qword_280E02470 != -1)
  {
    dispatch_once(&qword_280E02470, &__block_literal_global_122);
  }

  v3 = qword_280E02478;

  return v3;
}

void __49__HFAccessoryTypeGroup_climateAccessoryTypeGroup__block_invoke_2()
{
  v18[12] = *MEMORY[0x277D85DE8];
  v0 = [HFAccessoryTypeGroup alloc];
  v13 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameClimate", @"HFAccessoryTypeGroupNameClimate", 1);
  v17 = [HFAccessoryType categoryType:@"9D302CDA-1467-4E19-ABC9-9ED36BE34508"];
  v18[0] = v17;
  v16 = [HFAccessoryType serviceType:*MEMORY[0x277CD0DD8]];
  v18[1] = v16;
  v15 = [HFAccessoryType serviceType:*MEMORY[0x277CD0DE0]];
  v18[2] = v15;
  v14 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E40]];
  v18[3] = v14;
  v1 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E60]];
  v18[4] = v1;
  v2 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E68]];
  v18[5] = v2;
  v3 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E70]];
  v18[6] = v3;
  v4 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F28]];
  v18[7] = v4;
  v5 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F30]];
  v18[8] = v5;
  v6 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F40]];
  v18[9] = v6;
  v7 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F60]];
  v18[10] = v7;
  v8 = [HFAccessoryType matterDeviceType:&unk_282523580];
  v18[11] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:12];
  v10 = [(HFAccessoryTypeGroup *)v0 _initWithIdentifierString:@"0CA6536B-8EAD-4013-AA62-01754F256DD5" name:v13 accessoryTypes:v9];
  v11 = qword_280E02478;
  qword_280E02478 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)energyAccessoryTypeGroup
{
  if (qword_280E02480 != -1)
  {
    dispatch_once(&qword_280E02480, &__block_literal_global_133_1);
  }

  v3 = qword_280E02488;

  return v3;
}

void __48__HFAccessoryTypeGroup_energyAccessoryTypeGroup__block_invoke_2()
{
  v0 = [HFAccessoryTypeGroup alloc];
  v3 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameEnergy", @"HFAccessoryTypeGroupNameEnergy", 1);
  v1 = [(HFAccessoryTypeGroup *)v0 _initWithIdentifierString:@"b92aceee-dff5-4773-a058-c5e64bc487b2" name:v3 accessoryTypes:MEMORY[0x277CBEBF8]];
  v2 = qword_280E02488;
  qword_280E02488 = v1;
}

+ (id)lightAccessoryTypeGroup
{
  if (qword_280E02490 != -1)
  {
    dispatch_once(&qword_280E02490, &__block_literal_global_140);
  }

  v3 = qword_280E02498;

  return v3;
}

void __47__HFAccessoryTypeGroup_lightAccessoryTypeGroup__block_invoke_2()
{
  v11[5] = *MEMORY[0x277D85DE8];
  v0 = [HFAccessoryTypeGroup alloc];
  v1 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameLights", @"HFAccessoryTypeGroupNameLights", 1);
  v2 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EA0]];
  v3 = [HFAccessoryType matterDeviceType:&unk_282523598, v2];
  v11[1] = v3;
  v4 = [HFAccessoryType matterDeviceType:&unk_2825235B0];
  v11[2] = v4;
  v5 = [HFAccessoryType matterDeviceType:&unk_2825235C8];
  v11[3] = v5;
  v6 = [HFAccessoryType matterDeviceType:&unk_2825235E0];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
  v8 = [(HFAccessoryTypeGroup *)v0 _initWithIdentifierString:@"563F7D20-6AFC-44CE-986D-63B28F62C9E3" name:v1 accessoryTypes:v7];

  v9 = qword_280E02498;
  qword_280E02498 = v8;
  v10 = *MEMORY[0x277D85DE8];
}

+ (id)mediaAccessoryTypeGroup
{
  if (qword_280E024A0 != -1)
  {
    dispatch_once(&qword_280E024A0, &__block_literal_global_158);
  }

  v3 = qword_280E024A8;

  return v3;
}

void __47__HFAccessoryTypeGroup_mediaAccessoryTypeGroup__block_invoke_2()
{
  v14[8] = *MEMORY[0x277D85DE8];
  v13 = [HFAccessoryTypeGroup alloc];
  v0 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameSpeakersAndTVs", @"HFAccessoryTypeGroupNameSpeakersAndTVs", 1);
  v1 = [HFAccessoryType categoryType:*MEMORY[0x277CCE860]];
  v14[0] = v1;
  v2 = [HFAccessoryType categoryType:*MEMORY[0x277CCE870]];
  v14[1] = v2;
  v3 = [HFAccessoryType categoryType:*MEMORY[0x277CCE878]];
  v14[2] = v3;
  v4 = [HFAccessoryType categoryType:*MEMORY[0x277CCE8B0]];
  v14[3] = v4;
  v5 = [HFAccessoryType categoryType:*MEMORY[0x277CCE918]];
  v14[4] = v5;
  v6 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EF0]];
  v14[5] = v6;
  v7 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F20]];
  v14[6] = v7;
  v8 = +[HFAccessoryType mediaSystemType];
  v14[7] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:8];
  v10 = [(HFAccessoryTypeGroup *)v13 _initWithIdentifierString:@"7A5BD1AB-6478-4560-AD68-D91053B75F44" name:v0 accessoryTypes:v9];
  v11 = qword_280E024A8;
  qword_280E024A8 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)securityAccessoryTypeGroup
{
  if (qword_280E024B0 != -1)
  {
    dispatch_once(&qword_280E024B0, &__block_literal_global_165);
  }

  v3 = qword_280E024B8;

  return v3;
}

void __50__HFAccessoryTypeGroup_securityAccessoryTypeGroup__block_invoke_2()
{
  v20[14] = *MEMORY[0x277D85DE8];
  v0 = [HFAccessoryTypeGroup alloc];
  v14 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameSecurity", @"HFAccessoryTypeGroupNameSecurity", 1);
  v19 = [HFAccessoryType categoryType:*MEMORY[0x277CCE8B8]];
  v20[0] = v19;
  v18 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E10]];
  v20[1] = v18;
  v17 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E18]];
  v20[2] = v17;
  v16 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E20]];
  v20[3] = v16;
  v15 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E30]];
  v20[4] = v15;
  v13 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E58]];
  v20[5] = v13;
  v1 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EB0]];
  v20[6] = v1;
  v2 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EA8]];
  v20[7] = v2;
  v3 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EC0]];
  v20[8] = v3;
  v4 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EC8]];
  v20[9] = v4;
  v5 = [HFAccessoryType serviceType:*MEMORY[0x277CD0ED8]];
  v20[10] = v5;
  v6 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EE8]];
  v20[11] = v6;
  v7 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F58]];
  v20[12] = v7;
  v8 = [HFAccessoryType matterDeviceType:&unk_2825235F8];
  v20[13] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:14];
  v10 = [(HFAccessoryTypeGroup *)v0 _initWithIdentifierString:@"430C9F25-44E0-4F7E-BE63-1D00B1500545" name:v14 accessoryTypes:v9];
  v11 = qword_280E024B8;
  qword_280E024B8 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)waterAccessoryTypeGroup
{
  if (qword_280E024C0 != -1)
  {
    dispatch_once(&qword_280E024C0, &__block_literal_global_174_0);
  }

  v3 = qword_280E024C8;

  return v3;
}

void __47__HFAccessoryTypeGroup_waterAccessoryTypeGroup__block_invoke_2()
{
  v15[8] = *MEMORY[0x277D85DE8];
  v14 = [HFAccessoryTypeGroup alloc];
  v0 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameWater", @"HFAccessoryTypeGroupNameWater", 1);
  v1 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E48]];
  v15[0] = v1;
  v2 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E80]];
  v15[1] = v2;
  v3 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E90]];
  v15[2] = v3;
  v4 = *MEMORY[0x277CD0F38];
  v5 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F38]];
  v15[3] = v5;
  v6 = [HFAccessoryType serviceType:v4 subtype:*MEMORY[0x277CD0DA0]];
  v15[4] = v6;
  v7 = [HFAccessoryType serviceType:v4 subtype:*MEMORY[0x277CD0DA8]];
  v15[5] = v7;
  v8 = [HFAccessoryType serviceType:v4 subtype:*MEMORY[0x277CD0DB0]];
  v15[6] = v8;
  v9 = [HFAccessoryType serviceType:v4 subtype:*MEMORY[0x277CD0DC0]];
  v15[7] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:8];
  v11 = [(HFAccessoryTypeGroup *)v14 _initWithIdentifierString:@"3E68745D-F0E1-4B73-8FBD-0E8978A33403" name:v0 accessoryTypes:v10];
  v12 = qword_280E024C8;
  qword_280E024C8 = v11;

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)outletAccessoryTypeGroup
{
  if (qword_280E024D0 != -1)
  {
    dispatch_once(&qword_280E024D0, &__block_literal_global_181);
  }

  v3 = qword_280E024D8;

  return v3;
}

void __48__HFAccessoryTypeGroup_outletAccessoryTypeGroup__block_invoke_2()
{
  v11[4] = *MEMORY[0x277D85DE8];
  v0 = [HFAccessoryTypeGroup alloc];
  v1 = MEMORY[0x277CBEB98];
  v2 = [HFAccessoryType categoryType:@"3047A1A5-8BFC-4112-9888-21314F438FF3"];
  v11[0] = v2;
  v3 = [HFAccessoryType serviceType:*MEMORY[0x277CD0ED0]];
  v11[1] = v3;
  v4 = [HFAccessoryType matterDeviceType:&unk_282523610];
  v11[2] = v4;
  v5 = [HFAccessoryType matterDeviceType:&unk_282523628];
  v11[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v7 = [v1 setWithArray:v6];
  v8 = [(HFAccessoryTypeGroup *)v0 _initWithName:0 set:v7];
  v9 = qword_280E024D8;
  qword_280E024D8 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)sensorAccessoryTypeGroup
{
  if (qword_280E024E0 != -1)
  {
    dispatch_once(&qword_280E024E0, &__block_literal_global_189_0);
  }

  v3 = qword_280E024E8;

  return v3;
}

void __48__HFAccessoryTypeGroup_sensorAccessoryTypeGroup__block_invoke_2()
{
  v18[12] = *MEMORY[0x277D85DE8];
  v0 = [HFAccessoryTypeGroup alloc];
  v13 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameSensors", @"HFAccessoryTypeGroupNameSensors", 1);
  v17 = [HFAccessoryType categoryType:*MEMORY[0x277CCE8F0]];
  v18[0] = v17;
  v16 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E90]];
  v18[1] = v16;
  v15 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E98]];
  v18[2] = v15;
  v14 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EE8]];
  v18[3] = v14;
  v1 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EC0]];
  v18[4] = v1;
  v2 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E20]];
  v18[5] = v2;
  v3 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E70]];
  v18[6] = v3;
  v4 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EC8]];
  v18[7] = v4;
  v5 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F28]];
  v18[8] = v5;
  v6 = [HFAccessoryType serviceType:*MEMORY[0x277CD0DE0]];
  v18[9] = v6;
  v7 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E10]];
  v18[10] = v7;
  v8 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E18]];
  v18[11] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:12];
  v10 = [(HFAccessoryTypeGroup *)v0 _initWithIdentifierString:@"63489665-5E39-4C17-A590-755E1AAC02AE" name:v13 accessoryTypes:v9];
  v11 = qword_280E024E8;
  qword_280E024E8 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)switchAccessoryTypeGroup
{
  if (qword_280E024F0 != -1)
  {
    dispatch_once(&qword_280E024F0, &__block_literal_global_196);
  }

  v3 = qword_280E024F8;

  return v3;
}

void __48__HFAccessoryTypeGroup_switchAccessoryTypeGroup__block_invoke_2()
{
  v12[5] = *MEMORY[0x277D85DE8];
  v0 = [HFAccessoryTypeGroup alloc];
  v1 = MEMORY[0x277CBEB98];
  v2 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F08]];
  v3 = [HFAccessoryType matterDeviceType:&unk_282523640, v2];
  v12[1] = v3;
  v4 = [HFAccessoryType matterDeviceType:&unk_282523658];
  v12[2] = v4;
  v5 = [HFAccessoryType matterDeviceType:&unk_282523670];
  v12[3] = v5;
  v6 = [HFAccessoryType matterDeviceType:&unk_282523688];
  v12[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:5];
  v8 = [v1 setWithArray:v7];
  v9 = [(HFAccessoryTypeGroup *)v0 _initWithName:0 set:v8];
  v10 = qword_280E024F8;
  qword_280E024F8 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)otherAccessoryTypeGroup
{
  if (qword_280E02500 != -1)
  {
    dispatch_once(&qword_280E02500, &__block_literal_global_208_0);
  }

  v3 = qword_280E02508;

  return v3;
}

void __47__HFAccessoryTypeGroup_otherAccessoryTypeGroup__block_invoke_2()
{
  v0 = [HFAccessoryTypeGroup alloc];
  v3 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameOther", @"HFAccessoryTypeGroupNameOther", 1);
  v1 = [(HFAccessoryTypeGroup *)v0 _initWithIdentifierString:@"7FADD792-61A4-4340-A849-215882E2F008" name:v3 accessoryTypes:MEMORY[0x277CBEBF8]];
  v2 = qword_280E02508;
  qword_280E02508 = v1;
}

+ (id)restrictedGuestAccessoryTypeGroups
{
  v2 = objc_opt_new();
  if (qword_280E02510 != -1)
  {
    dispatch_once(&qword_280E02510, &__block_literal_global_216);
  }

  v3 = qword_280E02518;
  if (qword_280E02520 != -1)
  {
    dispatch_once(&qword_280E02520, &__block_literal_global_220);
  }

  v4 = qword_280E02528;
  if (qword_280E02530 != -1)
  {
    dispatch_once(&qword_280E02530, &__block_literal_global_224);
  }

  v5 = qword_280E02538;
  if (qword_280E02540 != -1)
  {
    dispatch_once(&qword_280E02540, &__block_literal_global_228);
  }

  v6 = qword_280E02548;
  [v2 addObject:v3];
  [v2 addObject:v4];
  [v2 addObject:v5];
  [v2 addObject:v6];

  return v2;
}

void __58__HFAccessoryTypeGroup_restrictedGuestAccessoryTypeGroups__block_invoke_2()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [HFAccessoryTypeGroup alloc];
  v1 = [HFAccessoryType categoryType:*MEMORY[0x277CCE888]];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [(HFAccessoryTypeGroup *)v0 initWithAccessoryTypes:v2];
  v4 = qword_280E02518;
  qword_280E02518 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __58__HFAccessoryTypeGroup_restrictedGuestAccessoryTypeGroups__block_invoke_4()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [HFAccessoryTypeGroup alloc];
  v1 = [HFAccessoryType categoryType:*MEMORY[0x277CCE8A8]];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [(HFAccessoryTypeGroup *)v0 initWithAccessoryTypes:v2];
  v4 = qword_280E02528;
  qword_280E02528 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __58__HFAccessoryTypeGroup_restrictedGuestAccessoryTypeGroups__block_invoke_6()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [HFAccessoryTypeGroup alloc];
  v1 = [HFAccessoryType categoryType:*MEMORY[0x277CCE890]];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [(HFAccessoryTypeGroup *)v0 initWithAccessoryTypes:v2];
  v4 = qword_280E02538;
  qword_280E02538 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __58__HFAccessoryTypeGroup_restrictedGuestAccessoryTypeGroups__block_invoke_8()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [HFAccessoryTypeGroup alloc];
  v1 = [HFAccessoryType categoryType:*MEMORY[0x277CCE8E8]];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [(HFAccessoryTypeGroup *)v0 initWithAccessoryTypes:v2];
  v4 = qword_280E02548;
  qword_280E02548 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)hiddenFromScenesAndAutomationsAccessoryTypeGroup
{
  if (qword_280E02550 != -1)
  {
    dispatch_once(&qword_280E02550, &__block_literal_global_232);
  }

  v3 = qword_280E02558;

  return v3;
}

void __72__HFAccessoryTypeGroup_hiddenFromScenesAndAutomationsAccessoryTypeGroup__block_invoke_2()
{
  v18[10] = *MEMORY[0x277D85DE8];
  v15 = [HFAccessoryTypeGroup alloc];
  v0 = MEMORY[0x277CBEB98];
  v17 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E48]];
  v18[0] = v17;
  v16 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E80]];
  v18[1] = v16;
  v1 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E90]];
  v18[2] = v1;
  v2 = *MEMORY[0x277CD0F38];
  v3 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F38]];
  v18[3] = v3;
  v4 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F48]];
  v18[4] = v4;
  v5 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F50]];
  v18[5] = v5;
  v6 = [HFAccessoryType serviceType:v2 subtype:*MEMORY[0x277CD0DA0]];
  v18[6] = v6;
  v7 = [HFAccessoryType serviceType:v2 subtype:*MEMORY[0x277CD0DA8]];
  v18[7] = v7;
  v8 = [HFAccessoryType serviceType:v2 subtype:*MEMORY[0x277CD0DB0]];
  v18[8] = v8;
  v9 = [HFAccessoryType serviceType:v2 subtype:*MEMORY[0x277CD0DC0]];
  v18[9] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:10];
  v11 = [v0 setWithArray:v10];
  v12 = [(HFAccessoryTypeGroup *)v15 _initWithName:0 set:v11];
  v13 = qword_280E02558;
  qword_280E02558 = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  fullName = [(HFAccessoryTypeGroup *)self fullName];
  v6 = [v3 stringWithFormat:@"<%@:%p> %@", v4, self, fullName];

  return v6;
}

+ (id)unionGroups:(id)groups
{
  groupsCopy = groups;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v4 = [HFAccessoryTypeGroup alloc];
  v13 = [(HFAccessoryTypeGroup *)v4 initWithAccessoryTypes:MEMORY[0x277CBEBF8]];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__HFAccessoryTypeGroup_unionGroups___block_invoke;
  v7[3] = &unk_277DF4CC0;
  v7[4] = &v8;
  [groupsCopy na_each:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __36__HFAccessoryTypeGroup_unionGroups___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(*(a1 + 32) + 8) + 40) groupByUnioningGroup:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (HFAccessoryTypeGroup)accessoryTypeGroupWithIdentifier:(id)identifier
{
  v24[10] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = MEMORY[0x277CBEB98];
  climateAccessoryTypeGroup = [self climateAccessoryTypeGroup];
  v24[0] = climateAccessoryTypeGroup;
  energyAccessoryTypeGroup = [self energyAccessoryTypeGroup];
  v24[1] = energyAccessoryTypeGroup;
  lightAccessoryTypeGroup = [self lightAccessoryTypeGroup];
  v24[2] = lightAccessoryTypeGroup;
  mediaAccessoryTypeGroup = [self mediaAccessoryTypeGroup];
  v24[3] = mediaAccessoryTypeGroup;
  securityAccessoryTypeGroup = [self securityAccessoryTypeGroup];
  v24[4] = securityAccessoryTypeGroup;
  outletAccessoryTypeGroup = [self outletAccessoryTypeGroup];
  v24[5] = outletAccessoryTypeGroup;
  sensorAccessoryTypeGroup = [self sensorAccessoryTypeGroup];
  v24[6] = sensorAccessoryTypeGroup;
  switchAccessoryTypeGroup = [self switchAccessoryTypeGroup];
  v24[7] = switchAccessoryTypeGroup;
  waterAccessoryTypeGroup = [self waterAccessoryTypeGroup];
  v24[8] = waterAccessoryTypeGroup;
  otherAccessoryTypeGroup = [self otherAccessoryTypeGroup];
  v24[9] = otherAccessoryTypeGroup;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:10];
  v14 = [v4 setWithArray:v13];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__HFAccessoryTypeGroup_accessoryTypeGroupWithIdentifier___block_invoke;
  v22[3] = &unk_277DF4CE8;
  v23 = identifierCopy;
  v15 = identifierCopy;
  v16 = [v14 na_firstObjectPassingTest:v22];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __57__HFAccessoryTypeGroup_accessoryTypeGroupWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)intersectsGroup:(id)group
{
  groupCopy = group;
  types = [(HFAccessoryTypeGroup *)self types];
  types2 = [groupCopy types];

  LOBYTE(groupCopy) = [types intersectsSet:types2];
  return groupCopy;
}

- (id)groupByIntersectingGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    v5 = [HFAccessoryTypeGroup alloc];
    types = [(HFAccessoryTypeGroup *)self types];
    types2 = [groupCopy types];
    v8 = [types na_setByIntersectingWithSet:types2];
    v9 = [(HFAccessoryTypeGroup *)v5 _initWithName:0 set:v8];
  }

  else
  {
    if (qword_280E02560 != -1)
    {
      dispatch_once(&qword_280E02560, &__block_literal_global_241);
    }

    v9 = qword_280E02568;
  }

  return v9;
}

void __49__HFAccessoryTypeGroup_groupByIntersectingGroup___block_invoke_2()
{
  v0 = objc_alloc_init(HFAccessoryTypeGroup);
  v1 = qword_280E02568;
  qword_280E02568 = v0;
}

- (id)groupByUnioningGroup:(id)group
{
  if (group)
  {
    groupCopy = group;
    v5 = [HFAccessoryTypeGroup alloc];
    types = [(HFAccessoryTypeGroup *)self types];
    types2 = [groupCopy types];

    v8 = [types setByAddingObjectsFromSet:types2];
    selfCopy = [(HFAccessoryTypeGroup *)v5 _initWithName:0 set:v8];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)groupBySubtractingGroup:(id)group
{
  if (group)
  {
    groupCopy = group;
    v5 = [HFAccessoryTypeGroup alloc];
    types = [(HFAccessoryTypeGroup *)self types];
    types2 = [groupCopy types];

    v8 = [types na_setByRemovingObjectsFromSet:types2];
    selfCopy = [(HFAccessoryTypeGroup *)v5 _initWithName:0 set:v8];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)containsType:(id)type
{
  typeCopy = type;
  types = [(HFAccessoryTypeGroup *)self types];
  v6 = [types na_safeContainsObject:typeCopy];

  return v6;
}

- (NSString)fullName
{
  _fullName = [(HFAccessoryTypeGroup *)self _fullName];
  v4 = _fullName;
  if (_fullName)
  {
    name = _fullName;
  }

  else
  {
    name = [(HFAccessoryTypeGroup *)self name];
  }

  v6 = name;

  return v6;
}

+ (void)warmUp
{
  climateAccessoryTypeGroup = [self climateAccessoryTypeGroup];
  energyAccessoryTypeGroup = [self energyAccessoryTypeGroup];
  lightAccessoryTypeGroup = [self lightAccessoryTypeGroup];
  mediaAccessoryTypeGroup = [self mediaAccessoryTypeGroup];
  securityAccessoryTypeGroup = [self securityAccessoryTypeGroup];
  waterAccessoryTypeGroup = [self waterAccessoryTypeGroup];
  hiddenFromScenesAndAutomationsAccessoryTypeGroup = [self hiddenFromScenesAndAutomationsAccessoryTypeGroup];
  sensorAccessoryTypeGroup = [self sensorAccessoryTypeGroup];
  otherAccessoryTypeGroup = [self otherAccessoryTypeGroup];
}

- (id)filterAccessoryRepresentableObjects:(id)objects
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__HFAccessoryTypeGroup_Filtering__filterAccessoryRepresentableObjects___block_invoke;
  v5[3] = &unk_277DF5C10;
  v5[4] = self;
  v3 = [objects na_filter:v5];

  return v3;
}

uint64_t __71__HFAccessoryTypeGroup_Filtering__filterAccessoryRepresentableObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hf_accessoryType];
  v4 = [v2 containsType:v3];

  return v4;
}

@end