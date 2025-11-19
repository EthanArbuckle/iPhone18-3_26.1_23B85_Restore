@interface NTKWidgetComplicationMigrationDefines
+ (BOOL)hasMigratedComplicationType:(unint64_t)a3 family:(int64_t)a4 forDevice:(id)a5;
+ (BOOL)hasMigratedComplicationType:(unint64_t)a3 forDevice:(id)a4;
+ (id)_complicationTypeToWidgetMigrations;
+ (id)migrateComplication:(id)a3 forFamily:(int64_t)a4;
@end

@implementation NTKWidgetComplicationMigrationDefines

+ (id)migrateComplication:(id)a3 forFamily:(int64_t)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 complication];

    v6 = v7;
  }

  v8 = [a1 _complicationTypeToWidgetMigrations];
  v9 = [v8 migrationMap];
  v10 = [NTKWidgetComplicationMigrationKey alloc];
  v11 = [v6 complicationType];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v13 = [(NTKWidgetComplicationMigrationKey *)v10 initWithComplicationType:v11 family:v12];
  v14 = [v9 objectForKey:v13];

  if (v14 || ([a1 _complicationTypeToWidgetMigrations], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "migrationMap"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NTKWidgetComplicationMigrationKey initWithComplicationType:family:]([NTKWidgetComplicationMigrationKey alloc], "initWithComplicationType:family:", objc_msgSend(v6, "complicationType"), 0), objc_msgSend(v16, "objectForKey:", v17), v14 = objc_claimAutoreleasedReturnValue(), v17, v16, v15, v14))
  {
    v18 = [NTKWidgetComplication complicationWithDescriptor:v14];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)hasMigratedComplicationType:(unint64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [v6 supportsWidgetMigration];
  v8 = [a1 _complicationTypeToWidgetMigrations];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v9 = [v8 migrationMap];
  v10 = [v9 allKeys];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__NTKWidgetComplicationMigrationDefines_hasMigratedComplicationType_forDevice___block_invoke;
  v15[3] = &unk_2787818D8;
  v20 = a3;
  v18 = &v25;
  v11 = v8;
  v16 = v11;
  v19 = &v21;
  v12 = v6;
  v17 = v12;
  [v10 enumerateObjectsUsingBlock:v15];

  if (*(v26 + 24) == 1)
  {
    v13 = v22[3] & v7;
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v13 & 1;
}

void __79__NTKWidgetComplicationMigrationDefines_hasMigratedComplicationType_forDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 complicationType] == *(a1 + 64))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    v6 = [*(a1 + 32) deviceCapabilityMap];
    v7 = [v6 objectForKey:v8];

    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) supportsPDRCapability:{objc_msgSend(v7, "unsignedIntValue")}];
  }
}

+ (BOOL)hasMigratedComplicationType:(unint64_t)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v8 = a5;
  v9 = [v8 supportsWidgetMigration];
  v10 = [a1 _complicationTypeToWidgetMigrations];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v11 = [v10 migrationMap];
  v12 = [v11 allKeys];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__NTKWidgetComplicationMigrationDefines_hasMigratedComplicationType_family_forDevice___block_invoke;
  v17[3] = &unk_278781900;
  v22 = a3;
  v23 = a4;
  v20 = &v28;
  v13 = v10;
  v18 = v13;
  v21 = &v24;
  v14 = v8;
  v19 = v14;
  [v12 enumerateObjectsUsingBlock:v17];

  if (*(v29 + 24) == 1)
  {
    v15 = v25[3] & v9;
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v15 & 1;
}

void __86__NTKWidgetComplicationMigrationDefines_hasMigratedComplicationType_family_forDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  if ([v13 complicationType] == *(a1 + 64))
  {
    v6 = [v13 family];
    if (!v6 || (v7 = v6, [v13 family], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "integerValue"), v10 = *(a1 + 72), v8, v7, v9 == v10))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
      v11 = [*(a1 + 32) deviceCapabilityMap];
      v12 = [v11 objectForKey:v13];

      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) supportsPDRCapability:{objc_msgSend(v12, "unsignedIntValue")}];
    }
  }
}

+ (id)_complicationTypeToWidgetMigrations
{
  if (_complicationTypeToWidgetMigrations_onceToken != -1)
  {
    +[NTKWidgetComplicationMigrationDefines _complicationTypeToWidgetMigrations];
  }

  v2 = objc_alloc_init(NTKWidgetComplicationMigrationInfo);
  [(NTKWidgetComplicationMigrationInfo *)v2 setMigrationMap:_complicationTypeToWidgetMigrations_typeToDescriptor];
  [(NTKWidgetComplicationMigrationInfo *)v2 setDeviceCapabilityMap:_complicationTypeToWidgetMigrations_typeToCapability];

  return v2;
}

void __76__NTKWidgetComplicationMigrationDefines__complicationTypeToWidgetMigrations__block_invoke()
{
  v30 = objc_opt_new();
  v0 = objc_opt_new();
  v1 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:28 family:0];
  _AddWidgetMigration(v30, v0, v1, @"com.apple.NanoHome.NanoHomeWidgets", @"com.apple.NanoHome", @"NanoHomeWidget", 2433165678);

  v2 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:27 family:0];
  _AddWidgetMigration(v30, v0, v2, @"com.apple.NanoMail.NanoMailComplications", @"com.apple.NanoMail", @"NanoMailAppLauncher", 2433165678);

  v3 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:33 family:0];
  _AddWidgetMigration(v30, v0, v3, @"com.apple.tincan.TinCan-Widget", @"com.apple.tincan", @"TinCan_Widget", 2433165678);

  v4 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:46 family:0];
  _AddWidgetMigration(v30, v0, v4, @"com.apple.NanoHeartRhythm.NanoElectrocardiogramWidgetExtension", @"com.apple.NanoHeartRhythm", @"NanoElectrocardiogramWidgetExtension", 2433165678);

  v5 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:21 family:0];
  _AddWidgetMigration(v30, v0, v5, @"com.apple.NanoRemote.NanoRemoteWidget", @"com.apple.NanoRemote", @"NanoRemoteWidget", 2433165678);

  v6 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:24 family:0];
  _AddWidgetMigration(v30, v0, v6, @"com.apple.NanoPhone.Complication", @"com.apple.NanoPhone", @"Complication", 2433165678);

  if (_os_feature_enabled_impl())
  {
    v7 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:20 family:0];
    _AddWidgetMigration(v30, v0, v7, @"com.apple.NanoReminders.WidgetExtension", @"com.apple.NanoReminders", @"com.apple.reminders.widget.today", 2433165678);
  }

  v8 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:26 family:&unk_284182A40];
  _AddWidgetMigration(v30, v0, v8, @"com.apple.nanonews.widget", @"com.apple.nanonews", @"NewsButtonWidget", 2433165678);

  v9 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:26 family:&unk_284182A58];
  _AddWidgetMigration(v30, v0, v9, @"com.apple.nanonews.widget", @"com.apple.nanonews", @"NewsButtonWidget", 2433165678);

  v10 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:26 family:&unk_284182A70];
  _AddWidgetMigration(v30, v0, v10, @"com.apple.nanonews.widget", @"com.apple.nanonews", @"NewsButtonWidget", 2433165678);

  v11 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:26 family:&unk_284182A88];
  _AddWidgetMigration(v30, v0, v11, @"com.apple.nanonews.widget", @"com.apple.nanonews", @"NewsButtonWidget", 2433165678);

  v12 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:26 family:&unk_284182AA0];
  _AddWidgetMigration(v30, v0, v12, @"com.apple.nanonews.widget", @"com.apple.nanonews", @"NewsArticleWidget", 2433165678);

  v13 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:26 family:&unk_284182AB8];
  _AddWidgetMigration(v30, v0, v13, @"com.apple.nanonews.widget", @"com.apple.nanonews", @"NewsArticleWidget", 2433165678);

  v14 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:26 family:&unk_284182AD0];
  _AddWidgetMigration(v30, v0, v14, @"com.apple.nanonews.widget", @"com.apple.nanonews", @"NewsArticleWidget", 2433165678);

  v15 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:15 family:0];
  _AddWidgetMigration(v30, v0, v15, @"com.apple.HeartRate.HeartRateWidgetExtension", @"com.apple.HeartRate", @"HeartRateWidgetExtension", 2433165678);

  v16 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:25 family:0];
  _AddWidgetMigration(v30, v0, v16, @"com.apple.NanoMaps.NanoMapsWidgetKitComplications", @"com.apple.NanoMaps", @"MapsLauncherComplication", 2433165678);

  v17 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:2 family:0];
  _AddWidgetMigration(v30, v0, v17, @"com.apple.NanoAlarm.NanoAlarmWidgetExtension", @"com.apple.NanoAlarm", @"NanoAlarmComplication", 2433165678);

  v18 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:34 family:&unk_284182AA0];
  _AddWidgetMigration(v30, v0, v18, @"com.apple.NanoNowPlaying.widgets", @"com.apple.NanoNowPlaying", @"com.apple.NanoNowPlaying.widgets.media-suggestions", 1949065382);

  v19 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:34 family:&unk_284182AE8];
  _AddWidgetMigration(v30, v0, v19, @"com.apple.NanoNowPlaying.widgets", @"com.apple.NanoNowPlaying", @"com.apple.NanoNowPlaying.widgets.media-suggestions", 1949065382);

  v20 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:17 family:&unk_284182AD0];
  _AddWidgetMigration(v30, v0, v20, @"com.apple.NanoMusic.widgets", @"com.apple.NanoMusic", @"com.apple.NanoMusic.widgets.recently-played", 1949065382);

  v21 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:17 family:&unk_284182AA0];
  _AddWidgetMigration(v30, v0, v21, @"com.apple.NanoMusic.widgets", @"com.apple.NanoMusic", @"com.apple.NanoMusic.widgets.recently-played", 1949065382);

  v22 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:17 family:&unk_284182AB8];
  _AddWidgetMigration(v30, v0, v22, @"com.apple.NanoMusic.widgets", @"com.apple.NanoMusic", @"com.apple.NanoMusic.widgets.recently-played", 1949065382);

  v23 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:42 family:&unk_284182AD0];
  _AddWidgetMigration(v30, v0, v23, @"com.apple.podcasts.widget", @"com.apple.podcasts", @"com.apple.podcasts.widget.upnext", 1949065382);

  v24 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:42 family:&unk_284182AA0];
  _AddWidgetMigration(v30, v0, v24, @"com.apple.podcasts.widget", @"com.apple.podcasts", @"com.apple.podcasts.widget.upnext", 1949065382);

  v25 = [[NTKWidgetComplicationMigrationKey alloc] initWithComplicationType:42 family:&unk_284182AB8];
  _AddWidgetMigration(v30, v0, v25, @"com.apple.podcasts.widget", @"com.apple.podcasts", @"com.apple.podcasts.widget.upnext", 1949065382);

  v26 = [v30 copy];
  v27 = _complicationTypeToWidgetMigrations_typeToDescriptor;
  _complicationTypeToWidgetMigrations_typeToDescriptor = v26;

  v28 = [v0 copy];
  v29 = _complicationTypeToWidgetMigrations_typeToCapability;
  _complicationTypeToWidgetMigrations_typeToCapability = v28;
}

@end