@interface IMDSyncedSettingsServiceManager
+ (IMDSyncedSettingsServiceManager)sharedManager;
- (BOOL)settingExplicitlySetForKey:(int64_t)key;
- (IMDSyncedSettingsServiceManager)initWithLocalDomain:(id)domain remoteDomain:(id)remoteDomain localStorageDelegate:(id)delegate remoteStorageDelegate:(id)storageDelegate watchSyncDelegate:(id)syncDelegate syncConfigurationDelegate:(id)configurationDelegate;
- (id)settingValueForKey:(int64_t)key;
- (unint64_t)npsDefaultsChanged;
- (void)migrateNotificationSettingsV1toV2IfNecessary;
- (void)setSettingValue:(id)value forKey:(int64_t)key;
@end

@implementation IMDSyncedSettingsServiceManager

+ (IMDSyncedSettingsServiceManager)sharedManager
{
  if (qword_28141F078 != -1)
  {
    swift_once();
  }

  v3 = qword_28141F088;

  return v3;
}

- (IMDSyncedSettingsServiceManager)initWithLocalDomain:(id)domain remoteDomain:(id)remoteDomain localStorageDelegate:(id)delegate remoteStorageDelegate:(id)storageDelegate watchSyncDelegate:(id)syncDelegate syncConfigurationDelegate:(id)configurationDelegate
{
  v12 = sub_22B7DB6A8();
  v14 = v13;
  v15 = sub_22B7DB6A8();
  v17 = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_22B743280(v12, v14, v15, v17, delegate, storageDelegate, syncDelegate, configurationDelegate);
}

- (void)migrateNotificationSettingsV1toV2IfNecessary
{
  selfCopy = self;
  sub_22B7437F0();
}

- (id)settingValueForKey:(int64_t)key
{
  selfCopy = self;
  sub_22B744130(key, v13);

  v5 = v14;
  if (v14)
  {
    v6 = sub_22B4D2BCC(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_22B7DC508();
    (*(v7 + 8))(v10, v5);
    sub_22B4CFB78(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)settingExplicitlySetForKey:(int64_t)key
{
  selfCopy = self;
  LOBYTE(key) = sub_22B744638(key);

  return key & 1;
}

- (void)setSettingValue:(id)value forKey:(int64_t)key
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22B7DC118();
  swift_unknownObjectRelease();
  sub_22B7448FC(v7, key);

  sub_22B4CFB78(v7);
}

- (unint64_t)npsDefaultsChanged
{
  v0 = sub_22B7DBE38();
  v1 = *(v0 + 16);
  if (v1)
  {
    v31 = objc_opt_self();
    sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
    v2 = 32;
    v3 = MEMORY[0x277D837D0];
    while (1)
    {
      v4 = *(v0 + v2);
      defaultCenter = [v31 defaultCenter];
      v6 = sub_22B7DBE28();
      *&v32[0] = 0x6E6F73616572;
      *(&v32[0] + 1) = 0xE600000000000000;
      sub_22B7DC248();
      v35[8] = v3;
      v35[5] = 0xD000000000000012;
      v35[6] = 0x800000022B80FB60;
      v7 = sub_22B7DC488();
      sub_22B7476D8(v35, v32);
      result = sub_22B4D7EC0(v32);
      if (v9)
      {
        break;
      }

      v7[(result >> 6) + 8] |= 1 << result;
      v10 = v7[6] + 40 * result;
      v11 = v32[0];
      v12 = v32[1];
      *(v10 + 32) = v33;
      *v10 = v11;
      *(v10 + 16) = v12;
      result = sub_22B4D7F04(&v34, (v7[7] + 32 * result));
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_15;
      }

      v7[2] = v15;
      sub_22B4D0D64(v35, &unk_27D8CD7D0, &qword_22B7FA3F0);
      v16 = sub_22B7DB568();

      [defaultCenter postNotificationName:v6 object:0 userInfo:v16];

      v2 += 8;
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_6:

    result = [objc_opt_self() sharedProvider];
    if (result)
    {
      broadcasterForSyncedSettingsListeners = [result broadcasterForSyncedSettingsListeners];
      swift_unknownObjectRelease();
      v18 = sub_22B7DBE38();
      v19 = *(v18 + 16);
      if (v19)
      {
        *&v32[0] = MEMORY[0x277D84F90];
        sub_22B7AB6B4(0, v19, 0);
        v20 = 32;
        v21 = *&v32[0];
        do
        {
          v22 = *(v18 + v20);
          v23 = sub_22B7DBDF8();
          *&v32[0] = v21;
          v26 = *(v21 + 16);
          v25 = *(v21 + 24);
          if (v26 >= v25 >> 1)
          {
            v28 = v23;
            v29 = v24;
            sub_22B7AB6B4((v25 > 1), v26 + 1, 1);
            v24 = v29;
            v23 = v28;
            v21 = *&v32[0];
          }

          *(v21 + 16) = v26 + 1;
          v27 = v21 + 16 * v26;
          *(v27 + 32) = v23;
          *(v27 + 40) = v24;
          v20 += 8;
          --v19;
        }

        while (v19);
      }

      v30 = sub_22B7DB8F8();

      [broadcasterForSyncedSettingsListeners didUpdateSettingsKeys_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

@end