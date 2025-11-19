@interface DMCNagItem
+ (NSString)migrationNagClientID;
+ (NSString)migrationNagItemID;
+ (id)migrationNagItemWithDeadline:(id)a3 actionURL:(id)a4 deadlineURL:(id)a5;
- (BOOL)isMigrationNag;
- (DMCNagItem)init;
- (DMCNagItem)initWithStyle:(unint64_t)a3 identifier:(id)a4 clientID:(id)a5 schedule:(id)a6 title:(id)a7 message:(id)a8 notificationTitle:(id)a9 notificationMessage:(id)a10 actionTitle:(id)a11 actionURL:(id)a12 dismissTitle:(id)a13 dismissURL:(id)a14 deadlineURL:(id)a15;
- (NSDate)deadline;
- (NSDictionary)properties;
- (NSDictionary)schedule;
- (NSNumber)shortestInterval;
- (NSString)description;
- (id)followUpAndReturnError:(id *)a3;
- (id)iOSFilesystemURL;
- (id)localized:(id)a3;
- (id)localizedFormat:(id)a3 :(id)a4;
- (id)localizedOptional:(id)a3;
- (id)nextNag;
- (void)didNag;
- (void)setDeadline:(id)a3;
- (void)setLastNagString:(id)a3;
- (void)setSchedule:(id)a3;
@end

@implementation DMCNagItem

- (NSDictionary)schedule
{
  v2 = *(self + OBJC_IVAR___DMCNagItem_schedule);
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();

  v3 = sub_247F23E9C();

  return v3;
}

- (void)setSchedule:(id)a3
{
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();
  v4 = sub_247F23EAC();
  v5 = *(self + OBJC_IVAR___DMCNagItem_schedule);
  *(self + OBJC_IVAR___DMCNagItem_schedule) = v4;
}

- (void)setLastNagString:(id)a3
{
  if (a3)
  {
    v4 = sub_247F23F3C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___DMCNagItem_lastNagString);
  v7 = *(self + OBJC_IVAR___DMCNagItem_lastNagString + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSDate)deadline
{
  v3 = sub_247F23DEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_247F11C98(v7);

  v9 = sub_247F23D8C();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (NSNumber)shortestInterval
{
  v2 = self;
  sub_247F11F6C();
  v4 = v3;

  return v4;
}

- (NSString)description
{
  v2 = self;
  DMCNagItem.description.getter();

  v3 = sub_247F23EFC();

  return v3;
}

- (NSDictionary)properties
{
  v2 = self;
  DMCNagItem.properties.getter();

  v3 = sub_247F23E9C();

  return v3;
}

- (DMCNagItem)initWithStyle:(unint64_t)a3 identifier:(id)a4 clientID:(id)a5 schedule:(id)a6 title:(id)a7 message:(id)a8 notificationTitle:(id)a9 notificationMessage:(id)a10 actionTitle:(id)a11 actionURL:(id)a12 dismissTitle:(id)a13 dismissURL:(id)a14 deadlineURL:(id)a15
{
  v63 = a3;
  v64 = self;
  v52 = a12;
  v50 = a11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - v17;
  v62 = sub_247F23D3C();
  v19 = *(v62 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = sub_247F23F3C();
  v59 = v26;
  v60 = v25;
  v27 = sub_247F23F3C();
  v57 = v28;
  v58 = v27;
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();
  v56 = sub_247F23EAC();
  v29 = sub_247F23F3C();
  v54 = v30;
  v55 = v29;
  v53 = sub_247F23F3C();
  v51 = v31;
  if (a9)
  {
    v32 = sub_247F23F3C();
    v48 = v33;
    v49 = v32;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  v34 = a13;
  if (a10)
  {
    v35 = sub_247F23F3C();
    v46 = v36;
    v47 = v35;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v50 = sub_247F23F3C();
  v38 = v37;
  sub_247F23CFC();
  if (a13)
  {
    v39 = sub_247F23F3C();
    v34 = v40;
  }

  else
  {
    v39 = 0;
  }

  v41 = a14;
  v42 = a15;
  if (v41)
  {
    sub_247F23CFC();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  (*(v19 + 56))(v18, v43, 1, v62);
  v44 = v61;
  sub_247F23CFC();

  return DMCNagItem.init(style:identifier:clientID:schedule:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismiss:deadlineURL:)(v63, v60, v59, v58, v57, v56, v55, v54, v53, v51, v49, v48, v47, v46, v50, v38, v24, v39, v34, v18, v44);
}

+ (NSString)migrationNagItemID
{
  v2 = sub_247F23EFC();

  return v2;
}

+ (NSString)migrationNagClientID
{
  v2 = sub_247F23EFC();

  return v2;
}

- (BOOL)isMigrationNag
{
  v2 = self;
  v3 = DMCNagItem.isMigrationNag.getter();

  return v3 & 1;
}

+ (id)migrationNagItemWithDeadline:(id)a3 actionURL:(id)a4 deadlineURL:(id)a5
{
  v21[1] = a1;
  v5 = sub_247F23D3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = sub_247F23DEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F23DCC();
  sub_247F23CFC();
  sub_247F23CFC();
  swift_getObjCClassMetadata();
  v18 = static DMCNagItem.migrationNagItem(withDeadline:actionURL:deadlineURL:)(v17, v12, v9);
  v19 = *(v6 + 8);
  v19(v9, v5);
  v19(v12, v5);
  (*(v14 + 8))(v17, v13);

  return v18;
}

- (id)followUpAndReturnError:(id *)a3
{
  v3 = self;
  v4 = DMCNagItem.followUp()();

  return v4;
}

- (void)didNag
{
  v2 = self;
  sub_247F150BC();
}

- (id)nextNag
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
  sub_247F153A0(v6);

  v8 = sub_247F23DEC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_247F23D8C();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setDeadline:(id)a3
{
  v4 = sub_247F23DEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F23DCC();
  v9 = self;
  DMCNagItem.setDeadline(_:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (id)iOSFilesystemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  type metadata accessor for DMCNagItem(v7);
  v8 = self;
  v9 = [(DMCNagItem *)v8 identifier];
  v10 = sub_247F23F3C();
  v12 = v11;

  v13 = [(DMCNagItem *)v8 clientID];
  v14 = sub_247F23F3C();
  v16 = v15;

  sub_247F16464(v10, v12, v14, v16, v6);

  v17 = sub_247F23D3C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v6, 1, v17);
  v20 = 0;
  if (v19 != 1)
  {
    v21 = sub_247F23CDC();
    (*(v18 + 8))(v6, v17);
    v20 = v21;
  }

  return v20;
}

- (id)localized:(id)a3
{
  sub_247F23F3C();
  sub_247F08408(0, &qword_27EE7EF20, 0x277CCA8D8);
  v4 = self;
  v5 = sub_247F2412C();
  if (!v5)
  {
    v5 = [objc_opt_self() mainBundle];
  }

  v6 = v5;
  sub_247F23C0C();

  v7 = sub_247F23EFC();

  return v7;
}

- (id)localizedOptional:(id)a3
{
  if (a3)
  {
    sub_247F23F3C();
    sub_247F08408(0, &qword_27EE7EF20, 0x277CCA8D8);
    v4 = self;
    v5 = sub_247F2412C();
    if (!v5)
    {
      v5 = [objc_opt_self() mainBundle];
    }

    v6 = v5;
    sub_247F23C0C();

    v7 = sub_247F23EFC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedFormat:(id)a3 :(id)a4
{
  v6 = sub_247F23F3C();
  v8 = v7;
  v9 = self;
  v10 = [(DMCNagItem *)v9 localized:a3];
  sub_247F23F3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EF10, &qword_247F25CD8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_247F25650;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_247F1A848();
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  sub_247F23F0C();

  v12 = sub_247F23EFC();

  return v12;
}

- (DMCNagItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end