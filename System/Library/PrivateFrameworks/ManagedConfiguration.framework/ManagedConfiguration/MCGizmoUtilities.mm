@interface MCGizmoUtilities
+ (id)MCFirstPartyCompanionToWatchAppBundleIDs;
+ (void)watchAppBundleIDsForBundleIDs:(id)ds completion:(id)completion;
@end

@implementation MCGizmoUtilities

+ (id)MCFirstPartyCompanionToWatchAppBundleIDs
{
  if (MCFirstPartyCompanionToWatchAppBundleIDs_onceToken != -1)
  {
    +[MCGizmoUtilities MCFirstPartyCompanionToWatchAppBundleIDs];
  }

  v3 = MCFirstPartyCompanionToWatchAppBundleIDs_watchBundleIDs;

  return v3;
}

void __60__MCGizmoUtilities_MCFirstPartyCompanionToWatchAppBundleIDs__block_invoke()
{
  v50[23] = *MEMORY[0x1E69E9840];
  v49[0] = @"com.apple.AppStore";
  v48 = @"com.apple.AppStore";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v50[0] = v25;
  v49[1] = @"com.apple.mobilecal";
  v47 = @"com.apple.NanoCalendar";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v50[1] = v24;
  v49[2] = @"com.apple.camera";
  v46 = @"com.apple.NanoCamera";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v50[2] = v23;
  v49[3] = @"com.apple.mobiletimer";
  v45[0] = @"com.apple.NanoStopwatch";
  v45[1] = @"com.apple.private.NanoTimer";
  v45[2] = @"com.apple.NanoWorldClock";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  v50[3] = v22;
  v49[4] = @"com.apple.Fitness";
  v44[0] = @"com.apple.ActivityMonitorApp";
  v44[1] = @"com.apple.SessionTrackerApp";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v50[4] = v21;
  v49[5] = @"com.apple.Home";
  v43 = @"com.apple.NanoHome";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v50[5] = v20;
  v49[6] = @"com.apple.iBooks";
  v42 = @"com.apple.NanoBooks";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v50[6] = v19;
  v49[7] = @"com.apple.mobilemail";
  v41 = @"com.apple.NanoMail";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v50[7] = v18;
  v49[8] = @"com.apple.Maps";
  v40 = @"com.apple.NanoMaps";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v50[8] = v17;
  v49[9] = @"com.apple.Music";
  v39[0] = @"com.apple.NanoMusic";
  v39[1] = @"com.apple.NanoRadio";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v50[9] = v16;
  v49[10] = @"com.apple.news";
  v38 = @"com.apple.nanonews";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v50[10] = v15;
  v49[11] = @"com.apple.Passbook";
  v37 = @"com.apple.NanoPassbook";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v50[11] = v14;
  v49[12] = @"com.apple.MobileAddressBook";
  v36 = @"com.apple.NanoPeople";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v50[12] = v13;
  v49[13] = @"com.apple.mobilephone";
  v35 = @"com.apple.NanoPhone";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v50[13] = v0;
  v49[14] = @"com.apple.mobileslideshow";
  v34 = @"com.apple.NanoPhotos";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v50[14] = v1;
  v49[15] = @"com.apple.podcasts";
  v33 = @"com.apple.podcasts";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v50[15] = v2;
  v49[16] = @"com.apple.Preferences";
  v32 = @"com.apple.NanoSettings";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v50[16] = v3;
  v49[17] = @"com.apple.reminders";
  v31 = @"com.apple.NanoReminders";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v50[17] = v4;
  v49[18] = @"com.apple.Remote";
  v30 = @"com.apple.NanoRemote";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v50[18] = v5;
  v49[19] = @"com.apple.stocks";
  v29 = @"com.apple.stocks.watchapp";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v50[19] = v6;
  v49[20] = @"com.apple.VoiceMemos";
  v28 = @"com.apple.VoiceMemos";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v50[20] = v7;
  v49[21] = @"com.apple.weather";
  v27 = @"com.apple.weather.watchapp";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v50[21] = v8;
  v49[22] = @"com.apple.Health";
  v26[0] = @"com.apple.NanoMenstrualCycles";
  v26[1] = @"com.apple.NanoHeartRhythm";
  v26[2] = @"com.apple.NanoOxygenSaturation.watchkitapp";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v50[22] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:23];
  v11 = MCFirstPartyCompanionToWatchAppBundleIDs_watchBundleIDs;
  MCFirstPartyCompanionToWatchAppBundleIDs_watchBundleIDs = v10;

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)watchAppBundleIDsForBundleIDs:(id)ds completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v6 = objc_opt_new();
  v7 = +[MCGizmoUtilities MCFirstPartyCompanionToWatchAppBundleIDs];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = dsCopy;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v25;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * v12);
        v15 = [v7 objectForKey:v14];
        [v6 addObjectsFromArray:v15];
        v16 = objc_alloc(MEMORY[0x1E69635F8]);
        v23 = v13;
        v17 = [v16 initWithBundleIdentifier:v14 allowPlaceholder:1 error:&v23];
        v10 = v23;

        counterpartIdentifiers = [v17 counterpartIdentifiers];

        if (counterpartIdentifiers)
        {
          counterpartIdentifiers2 = [v17 counterpartIdentifiers];
          [v6 addObjectsFromArray:counterpartIdentifiers2];
        }

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  completionCopy[2](completionCopy, v6, v10);
  v20 = *MEMORY[0x1E69E9840];
}

@end