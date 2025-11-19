id BPSTextColor()
{
  v0 = [MEMORY[0x277D75348] labelColor];
  v1 = BPSForceColorToDarkAppearance(v0);

  return v1;
}

id BPSForceColorToDarkAppearance(void *a1)
{
  v1 = MEMORY[0x277D75C80];
  v2 = a1;
  v3 = [v1 traitCollectionWithUserInterfaceStyle:2];
  v4 = [v2 resolvedColorWithTraitCollection:v3];

  return v4;
}

id BPSDetailTextColor()
{
  v0 = [MEMORY[0x277D75348] secondaryLabelColor];
  v1 = BPSForceColorToDarkAppearance(v0);

  return v1;
}

id BPSCollectionViewCellBackgroundConfiguration()
{
  v0 = [MEMORY[0x277D751C0] listCellConfiguration];
  v1 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  [v0 setBackgroundColor:v1];

  return v0;
}

id BPSCellHightlightColor()
{
  v0 = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  v1 = BPSForceColorToDarkAppearance(v0);

  return v1;
}

id BPSDevicePickerCellHighlightColor()
{
  v0 = [MEMORY[0x277D75348] systemGray4Color];
  v1 = BPSForceColorToDarkAppearance(v0);

  return v1;
}

void BPSApplyStyleToNavBarOptions(void *a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_new();
  [v4 configureWithDefaultBackground];
  [v3 setStandardAppearance:v4];
  v5 = [MEMORY[0x277D75348] systemOrangeColor];
  [v3 setTintColor:v5];

  [v3 setPrefersLargeTitles:a2];
  v14 = *MEMORY[0x277D740C0];
  v6 = v14;
  v7 = BPSTextColor();
  v15[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v3 setTitleTextAttributes:v8];

  v12[0] = v6;
  v9 = BPSTextColor();
  v13[0] = v9;
  v12[1] = *MEMORY[0x277D740A8];
  v10 = [MEMORY[0x277D74300] boldSystemFontOfSize:32.0];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v3 setLargeTitleTextAttributes:v11];
}

uint64_t BPSSystemAppIsRemovable(void *a1)
{
  v1 = BPSSystemAppIsRemovable_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    BPSSystemAppIsRemovable_cold_1();
  }

  v3 = [BPSSystemAppIsRemovable_removableSystemAppBundles containsObject:v2];

  return v3;
}

uint64_t __BPSSystemAppIsRemovable_block_invoke()
{
  BPSSystemAppIsRemovable_removableSystemAppBundles = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.NanoBooks.BridgeSettings", @"com.apple.DeepBreathingSettings", @"com.apple.NanoCalendarBridgeSettings", @"com.apple.Noise.settings", @"com.apple.NanoMailBridgeSettings", @"com.apple.NanoMapsBridgeSettings", @"com.apple.NanoMusicBridgeSettings", @"com.apple.private.PodcastsBridgeSettings", @"com.apple.NanoBedtimeBridgeSettings", @"com.apple.StocksBridgeSettings", @"com.apple.tincan.settings", @"com.apple.weatherbridgesettings", @"com.apple.NanoPassbookBridgeSettings", @"com.apple.OxygenSaturationSettings", @"com.apple.NanoTipsBridgeSettings", @"com.apple.MindSettings", @"com.apple.NanoMenstrualCyclesCompanionSettings", 0}];

  return MEMORY[0x2821F96F8]();
}

void __BPSDeviceHasCapabilityForString_block_invoke()
{
  v76[73] = *MEMORY[0x277D85DE8];
  v75[0] = @"activation-lock";
  v74 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
  v76[0] = v74;
  v75[1] = @"third-party-complications";
  v73 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"39F111D2-C3D1-4CCC-AB05-E464DE58625D"];
  v76[1] = v73;
  v75[2] = @"more-people";
  v72 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"EE952AF6-9A20-42FC-B4CB-992D2C6AEFEA"];
  v76[2] = v72;
  v75[3] = @"mute-fitness-coaching";
  v71 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"307631AF-B309-4885-A4F2-122F156AF14B"];
  v76[3] = v71;
  v75[4] = @"custom-mail-replies";
  v70 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"8A7396EE-44E9-401D-8546-9F60232B29E7"];
  v76[4] = v70;
  v75[5] = @"nightstand";
  v69 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"B4B27F79-6817-4254-9232-37BFB09CE1B5"];
  v76[5] = v69;
  v75[6] = @"carrier-direct-calling";
  v68 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"07E81B2D-193A-4898-BBA4-B15E85A96BE5"];
  v76[6] = v68;
  v75[7] = @"AutoScreenOffSeconds";
  v67 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"62AA8EC5-64FC-43D1-B856-D28D6520FA30"];
  v76[7] = v67;
  v75[8] = @"new-glance-model";
  v66 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5B2CCB95-1760-430C-97B9-34BEBB5BD70B"];
  v76[8] = v66;
  v75[9] = @"custom-button-chord";
  v65 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D1E83259-F3FC-4F20-82C3-C528D45560C3"];
  v76[9] = v65;
  v75[10] = @"reorderable-message-replies";
  v64 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"01EF2814-5C39-4B0E-84B9-7B8E2CC06AA3"];
  v76[10] = v64;
  v75[11] = @"cellular-data";
  v63 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"4AA3FF3B-3224-42E6-995E-481F49AE9260"];
  v76[11] = v63;
  v75[12] = @"gps-navigation";
  v62 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CB81F0AE-3F2F-4D57-8C90-F0D1A4ADD373"];
  v76[12] = v62;
  v75[13] = @"ntk-customization";
  v61 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"46526F47-0B4B-41FF-A959-AC358550958C"];
  v76[13] = v61;
  v75[14] = @"sticky-app-behavior";
  v60 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"ED96B2DC-49DD-470D-BFE6-1F112AF20308"];
  v76[14] = v60;
  v75[15] = @"background-app-updating";
  v59 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"90F4EAD7-DC19-4601-ADB1-D1CEE0C99EF8"];
  v76[15] = v59;
  v75[16] = @"find-my-watch";
  v58 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E9CD3885-6BAE-44AF-8A2E-D2AC35470D03"];
  v76[16] = v58;
  v75[17] = @"show-goal-metric-is-deprecated";
  v57 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"330AF1F2-FD8F-40E4-B79C-2B0C476E6EAF"];
  v76[17] = v57;
  v75[18] = @"pace-view-is-deprecated";
  v56 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"939B3E66-90BD-4C9E-9FE5-150D338FB4E8"];
  v76[18] = v56;
  v75[19] = @"advanced-workout-metrics";
  v55 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"9EAFA034-BAB5-455F-A122-C2EB399E8FCE"];
  v76[19] = v55;
  v75[20] = @"breathe-app";
  v54 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D1C41A00-1654-467C-8793-6B4299699982"];
  v76[20] = v54;
  v75[21] = @"s-o-s";
  v53 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1171F09A-B15F-4C2C-A315-1A7A125CA54F"];
  v76[21] = v53;
  v75[22] = @"workout-auto-pause";
  v52 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"2523BB16-06C1-4DEC-BD23-CC0613AB0BDF"];
  v76[22] = v52;
  v75[23] = @"workout-all-day-nfc";
  v51 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"EFAF2AEE-778B-4CCF-A640-EBD8C662D59B"];
  v76[23] = v51;
  v75[24] = @"friends-pane-is-deprecated";
  v50 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"871E76A4-AD36-4AAF-B894-13CAF677C531"];
  v76[24] = v50;
  v75[25] = @"home-app";
  v49 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"15AFBF9D-37E7-4B41-8698-B0E518A0F6DC"];
  v76[25] = v49;
  v75[26] = @"siri-settings";
  v48 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F06861AE-125A-424B-AF25-C1DAA8F7AEBC"];
  v76[26] = v48;
  v75[27] = @"environmental-dosimetry";
  v47 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F5C2DAD0-38FB-4B3B-86D3-B264F4F8CBDA"];
  v76[27] = v47;
  v75[28] = @"low-power-sound-classification";
  v46 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"01299775-E611-4F05-8BFF-ABBD9995F4B8"];
  v76[28] = v46;
  v75[29] = @"headphone-dosimetry";
  v45 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BF083122-A7BA-478F-A94E-E3F337F1177E"];
  v76[29] = v45;
  v75[30] = @"raise-to-speak";
  v44 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"68E9D2AF-A820-45FC-8FB3-92A04428CBF8"];
  v76[30] = v44;
  v75[31] = @"podcasts-app";
  v43 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"033C7B1F-5B25-459A-8CC7-4824B9C219F7"];
  v76[31] = v43;
  v75[32] = @"audiobooks-app";
  v42 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"9E6855A3-F1FD-444C-ACB5-000F4203EF76"];
  v76[32] = v42;
  v75[33] = @"ntc-offer";
  v41 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E7995851-D32D-4A4F-B12C-3DD8D0252581"];
  v76[33] = v41;
  v75[34] = @"heart-rate-two-app";
  v40 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E17D2903-B868-4E6C-8E76-6D4939BEED44"];
  v76[34] = v40;
  v75[35] = @"fitness-smart-coaching";
  v39 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6ADE877A-70EB-43A1-A4D1-3E4BB50EFA54"];
  v76[35] = v39;
  v75[36] = @"workout-music-playlist";
  v38 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"91499922-4C63-41CF-884A-686713CE2738"];
  v76[36] = v38;
  v75[37] = @"vertical-dock";
  v37 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"DF99F619-B83A-4084-A29C-F15A82DE2B15"];
  v76[37] = v37;
  v75[38] = @"tin-can";
  v36 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"282F1EE6-A144-4106-AFFB-2BDB5B59FD0D"];
  v76[38] = v36;
  v75[39] = @"news-app";
  v35 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"135CFEB8-D730-40DE-AA77-7668663F72C4"];
  v76[39] = v35;
  v75[40] = @"alarms-syncing";
  v34 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"506B78D5-F8AD-489A-8BF7-AD41268D0FF2"];
  v76[40] = v34;
  v75[41] = @"newton";
  v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"96B0DD78-1F0E-4F92-875F-DD6374FCCB10"];
  v76[41] = v33;
  v75[42] = @"jackrabbit";
  v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1E189BE1-6A71-44AA-B116-0066A83035E8"];
  v76[42] = v32;
  v75[43] = @"cinnamon-hw";
  v31 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"68AB2987-CE75-463C-9EAF-9861B292F01E"];
  v76[43] = v31;
  v75[44] = @"app-migration";
  v30 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1C82900F-82DC-41A4-A79F-5F107794C4A9"];
  v76[44] = v30;
  v75[45] = @"autoupdate";
  v29 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D5737C61-3EE6-43DA-B714-00F3746C50E1"];
  v76[45] = v29;
  v75[46] = @"ursa";
  v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AB764CE8-D4DF-4DB6-991C-3A298E380BD1"];
  v76[46] = v28;
  v75[47] = @"tritium";
  v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6AABB66B-8E1B-4CAB-8FC4-AC577BA0AFB0"];
  v76[47] = v27;
  v75[48] = @"scandium";
  v26 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BD3A4341-7090-4622-9694-2AC0F536C478"];
  v76[48] = v26;
  v75[49] = @"burrito";
  v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C0F3C2C3-0CDE-4DF9-A95A-789AC9A0348B"];
  v76[49] = v25;
  v75[50] = @"brook";
  v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0C599FD8-CC9F-48C9-BC37-C764A8B0527C"];
  v76[50] = v24;
  v75[51] = @"supports-all-watch-complications-always";
  v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BADF6E3E-9021-4B23-8ADA-045A705DADC6"];
  v76[51] = v23;
  v75[52] = @"sunflower";
  v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"3955CA84-B333-44E3-B8C3-A420085151EE"];
  v76[52] = v22;
  v75[53] = @"respiratory-rate";
  v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5C64C95B-8E7C-46AB-A110-1E51C93D7B7F"];
  v76[53] = v21;
  v75[54] = @"mind-app";
  v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"2A51E7B3-1B80-4981-9F09-F725BC3A8065"];
  v76[54] = v20;
  v75[55] = @"tips-app";
  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"ED2B57B6-9EA3-4ED9-843D-FE92F74B2DE0"];
  v76[55] = v19;
  v75[56] = @"gateshead";
  v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A4F025DD-E3E3-4886-8189-676CE98A6926"];
  v76[56] = v18;
  v75[57] = @"sting";
  v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"15BF559D-D50B-44FE-AC84-DFBA323EC985"];
  v76[57] = v17;
  v75[58] = @"bolt";
  v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"75584707-D2C4-481E-B8E8-3D8EDD459B61"];
  v76[58] = v16;
  v75[59] = @"charon";
  v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E553D9C1-2587-4142-B286-C556E89F51F3"];
  v76[59] = v15;
  v75[60] = @"kali";
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CBC78224-8F5E-4D43-8666-69ADBE2A6277"];
  v76[60] = v14;
  v75[61] = @"starbear-dock";
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BD0302DD-00BC-43C2-81E9-48C038E6F8BB"];
  v76[61] = v13;
  v75[62] = @"siri-announce-workout-voice-feedback";
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0FC0E189-59F0-4BB1-ACFC-570B13B35974"];
  v76[62] = v12;
  v75[63] = @"elton";
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0E581E21-36BA-4770-9408-0467585E8495"];
  v76[63] = v0;
  v75[64] = @"velocity";
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0D852855-E6CF-45FA-B786-B26BE87FF939"];
  v76[64] = v1;
  v75[65] = @"sounds-and-haptics-2024";
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"9B2FB519-D14B-49AB-BB91-67A6BF4E2B9A"];
  v76[65] = v2;
  v75[66] = @"workout-resume-reminder";
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"4E8C3265-3D65-4E94-8BCD-23DC8C4FC8CF"];
  v76[66] = v3;
  v75[67] = @"liveactivities";
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6B0579F9-ED84-4E5E-B753-83D35793F919"];
  v76[67] = v4;
  v75[68] = @"workout-safety-check-in";
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"132C0E45-0099-4FC6-9FC2-D2C1F22BCC0E"];
  v76[68] = v5;
  v75[69] = @"control-center-controls-api";
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v76[69] = v6;
  v75[70] = @"harmonia";
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"210C1233-537B-4A1E-8EE0-253962851B43"];
  v76[70] = v7;
  v75[71] = @"cycles";
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"02979F49-FAFA-49CC-8478-C2562BC81FB6"];
  v76[71] = v8;
  v75[72] = @"urchin";
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"90B8A394-4493-444D-AAA4-DDF6D6B68BC2"];
  v76[72] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:73];
  v11 = BPSDeviceHasCapabilityForString__capabilityMapping;
  BPSDeviceHasCapabilityForString__capabilityMapping = v10;
}

id BPSWatchAppBundleIDForSettingsBundle(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForInfoDictionaryKey:@"watchAppBundleId"];
  if (v2)
  {
    goto LABEL_2;
  }

  v4 = [v1 bundleIdentifier];
  v3 = _BPSMappedNanoBundleIDForNanoSettingsBundleIDIfPresent(v4);

  if (!v3)
  {
    v2 = [v1 bundleIdentifier];
LABEL_2:
    v3 = v2;
  }

  return v3;
}

__CFString *_BPSMappedNanoBundleIDForNanoSettingsBundleIDIfPresent(void *a1)
{
  v1 = a1;
  if (_BPSMappedNanoBundleIDForNanoSettingsBundleIDIfPresent_onceToken != -1)
  {
    _BPSMappedNanoBundleIDForNanoSettingsBundleIDIfPresent_cold_1();
  }

  if (([v1 isEqualToString:@"com.apple.NanoContactsBridgeSettingsPaired"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"com.apple.NanoContactsBridgeSettingsTinker")) && (BPSGetActiveDevice(), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(objc_alloc(MEMORY[0x277CCAD78]), "initWithUUIDString:", @"CBF3763A-5F42-4463-B714-39903987FE90"), v4 = objc_msgSend(v2, "supportsCapability:", v3), v3, v2, (v4))
  {
    v5 = @"com.apple.NanoContacts";
  }

  else
  {
    v5 = [_BPSMappedNanoBundleIDForNanoSettingsBundleIDIfPresent_mapping objectForKey:v1];
  }

  return v5;
}

uint64_t BPSDeviceHasAllCapabilitiesForStrings(void *a1, void *a2, void *a3, void *a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v43 = a3;
  v9 = a4;
  if (v7)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v57;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v57 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (!BPSDeviceHasCapabilityForString(*(*(&v56 + 1) + 8 * i), v9))
          {
            v16 = 0;
            v15 = 1;
            goto LABEL_12;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v56 objects:v63 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
    v16 = 1;
LABEL_12:
  }

  else
  {
    v15 = 0;
    v16 = 1;
  }

  v17 = 1;
  if (v8 && (v15 & 1) == 0)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v53;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v53 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if (BPSDeviceHasCapabilityForString(*(*(&v52 + 1) + 8 * j), v9))
          {
            v17 = 0;
            v15 = 1;
            goto LABEL_27;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      v15 = 0;
      v17 = 1;
    }

    else
    {
      v15 = 0;
    }

LABEL_27:
  }

  v23 = 1;
  if (v43 && (v15 & 1) == 0)
  {
    v36 = v17;
    v37 = v16;
    v38 = v9;
    v39 = v8;
    v40 = v7;
    [v43 allKeys];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v51 = 0u;
    v24 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v24)
    {
      v25 = v24;
      v42 = *v49;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v49 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v48 + 1) + 8 * k);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v28 = [v43 objectForKeyedSubscript:v27];
          v29 = [v28 countByEnumeratingWithState:&v44 objects:v60 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v45;
            while (2)
            {
              for (m = 0; m != v30; ++m)
              {
                if (*v45 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v44 + 1) + 8 * m);
                [v27 cStringUsingEncoding:4];
                [v33 cStringUsingEncoding:4];
                if ((v23 & _os_feature_enabled_impl()) != 1)
                {
                  v23 = 0;
                  goto LABEL_45;
                }

                v23 = 1;
              }

              v30 = [v28 countByEnumeratingWithState:&v44 objects:v60 count:16];
              if (v30)
              {
                continue;
              }

              break;
            }
          }

LABEL_45:
        }

        v25 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v25);
    }

    v8 = v39;
    v7 = v40;
    v9 = v38;
    v17 = v36;
    v16 = v37;
  }

  if (v16)
  {
    v34 = v17 & v23;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

uint64_t BPSDeviceHasCapabilityForString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([*MEMORY[0x277D76620] launchedToTest] && (objc_msgSend(v3, "isEqualToString:", @"ntk-customization") & 1) != 0)
  {
    goto LABEL_15;
  }

  if (BPSDeviceHasCapabilityForString_onceToken == -1)
  {
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_15:
    v6 = 1;
    goto LABEL_16;
  }

  BPSDeviceHasCapabilityForString_cold_1();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_5:
  v5 = [BPSDeviceHasCapabilityForString__capabilityMapping objectForKey:v3];
  if (v5)
  {
    v6 = [v4 supportsCapability:v5];
  }

  else
  {
    if ([v3 isEqualToString:@"internal"])
    {
      v7 = MEMORY[0x277D2BB38];
    }

    else
    {
      if (![v3 isEqualToString:@"tinker-paired"])
      {
        v6 = 0;
        goto LABEL_13;
      }

      v7 = MEMORY[0x277D2BB28];
    }

    v8 = [v4 valueForProperty:*v7];
    v6 = [v8 BOOLValue];
  }

LABEL_13:

LABEL_16:
  return v6;
}

uint64_t BPSDeviceHasCellularDataCapability(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCAD78];
  v2 = a1;
  v3 = [[v1 alloc] initWithUUIDString:@"4AA3FF3B-3224-42E6-995E-481F49AE9260"];
  v4 = [v2 supportsCapability:v3];

  v5 = bps_utility_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    if (v4)
    {
      v6 = "YES";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "CoreTelephony in Bridge: NRDevice hasTelephony=%s capability", &v8, 0xCu);
  }

  return v4;
}

id bps_utility_log()
{
  if (bps_utility_log_onceToken != -1)
  {
    bps_utility_log_cold_1();
  }

  v1 = bps_utility_log___logger;

  return v1;
}

uint64_t __bps_utility_log_block_invoke()
{
  bps_utility_log___logger = os_log_create("com.apple.BridgePreferences", "utility");

  return MEMORY[0x2821F96F8]();
}

id bps_setup_log()
{
  if (bps_setup_log_onceToken != -1)
  {
    bps_setup_log_cold_1();
  }

  v1 = bps_setup_log___logger;

  return v1;
}

uint64_t __bps_setup_log_block_invoke()
{
  bps_setup_log___logger = os_log_create("com.apple.BridgePreferences", "setup");

  return MEMORY[0x2821F96F8]();
}

uint64_t BPSStockholmSupportedInGizmoRegion(void *a1)
{
  v1 = a1;
  v2 = NPSQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BPSStockholmSupportedInGizmoRegion_block_invoke;
  block[3] = &unk_278D23738;
  v3 = v1;
  v12 = v3;
  dispatch_async(v2, block);

  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getNPKCompanionAgentConnectionClass_softClass_0;
  v17 = getNPKCompanionAgentConnectionClass_softClass_0;
  if (!getNPKCompanionAgentConnectionClass_softClass_0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getNPKCompanionAgentConnectionClass_block_invoke_0;
    v13[3] = &unk_278D232F0;
    v13[4] = &v14;
    __getNPKCompanionAgentConnectionClass_block_invoke_0(v13);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v6 = objc_alloc_init(v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __BPSStockholmSupportedInGizmoRegion_block_invoke_3;
  v9[3] = &unk_278D23A60;
  v10 = v3;
  v7 = v3;
  [v6 shouldShowApplePaySettingsWithCompletion:v9];

  return 1;
}

id NPSQueue()
{
  if (NPSQueue_onceToken != -1)
  {
    NPSQueue_cold_1();
  }

  v1 = NPSQueue___npsQueue;

  return v1;
}

void __NPSQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.Bridge.NPSQueue", v2);
  v1 = NPSQueue___npsQueue;
  NPSQueue___npsQueue = v0;
}

Class __getNPKCompanionAgentConnectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NanoPassKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoPassKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D23468;
    v6 = 0;
    NanoPassKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (NanoPassKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NPKCompanionAgentConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNPKCompanionAgentConnectionClass_block_invoke_cold_1();
  }

  getNPKCompanionAgentConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getNPKCompanionAgentConnectionClass_block_invoke_0(uint64_t a1)
{
  NanoPassKitLibrary();
  result = objc_getClass("NPKCompanionAgentConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPKCompanionAgentConnectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getNPKCompanionAgentConnectionClass_block_invoke_cold_1();
    return __BPSStockholmSupportedInGizmoRegion_block_invoke(v3);
  }

  return result;
}

void __BPSStockholmSupportedInGizmoRegion_block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D2BA58]);
  v3 = getNPKDefaultsDomain();
  v4 = [v2 initWithDomain:v3];

  v9 = 0;
  v5 = [v4 BOOLForKey:@"passbookRegistrationSupportedInRegion" keyExistsAndHasValidFormat:&v9];
  LOBYTE(v3) = v5 | ~v9;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __BPSStockholmSupportedInGizmoRegion_block_invoke_2;
  v6[3] = &unk_278D23A38;
  v7 = *(a1 + 32);
  v8 = v3 & 1;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

id getNPKDefaultsDomain()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getNPKDefaultsDomainSymbolLoc_ptr;
  v8 = getNPKDefaultsDomainSymbolLoc_ptr;
  if (!getNPKDefaultsDomainSymbolLoc_ptr)
  {
    v1 = NanoPassKitLibrary();
    v6[3] = dlsym(v1, "NPKDefaultsDomain");
    getNPKDefaultsDomainSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t NanoPassKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!NanoPassKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __NanoPassKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278D23AE0;
    v5 = 0;
    NanoPassKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = NanoPassKitLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!NanoPassKitLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void BPSRemoveHiddenAppsFromSpecifiers(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = BPSRemovablePhoneAppMapping();
  v3 = [v2 allKeys];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (BPSSystemAppIsRemoved(v8) && ([v8 isEqualToString:@"com.apple.MobileAddressBook"] & 1) == 0)
        {
          v9 = [v2 objectForKeyedSubscript:v8];
          v10 = [v1 specifierForID:v9];
          [v1 removeObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

id BPSRemovablePhoneAppMapping()
{
  if (BPSRemovablePhoneAppMapping_onceToken != -1)
  {
    BPSRemovablePhoneAppMapping_cold_1();
  }

  v1 = BPSRemovablePhoneAppMapping_mapping;

  return v1;
}

void __BPSRemovablePhoneAppMapping_block_invoke()
{
  v0 = BPSRemovablePhoneAppMapping_mapping;
  BPSRemovablePhoneAppMapping_mapping = &unk_28540EF38;
}

uint64_t BPSSystemAppIsRemoved(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v9];
  v3 = v9;
  if (v3)
  {
    v4 = bps_utility_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v1;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "Error while retrieving application record %@ with error %@", buf, 0x16u);
    }
  }

  v5 = [v2 applicationState];
  if ([v5 isInstalled])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v2 applicationState];
    v6 = [v7 isPlaceholder] ^ 1;
  }

  return v6;
}

Class __getNSSManagerClass_block_invoke(uint64_t a1)
{
  NanoSystemSettingsLibrary();
  result = objc_getClass("NSSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNSSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNSSManagerClass_block_invoke_cold_1();
    return NanoSystemSettingsLibrary();
  }

  return result;
}

uint64_t NanoSystemSettingsLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!NanoSystemSettingsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __NanoSystemSettingsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278D23310;
    v5 = 0;
    NanoSystemSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoSystemSettingsLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!NanoSystemSettingsLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *BPSGetActiveDevice()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [MEMORY[0x277D2BCF8] activeDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:*MEMORY[0x277D2BB30]];
  if ([v4 BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

uint64_t BPSDeviceHasStandaloneAppsCapability(void *a1)
{
  v1 = MEMORY[0x277CCAD78];
  v2 = a1;
  v3 = [[v1 alloc] initWithUUIDString:@"1CFACCB8-FFEB-4682-A50E-16F853583912"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

void sub_241E7A78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

id _CachePathForIcon(void *a1)
{
  v1 = a1;
  v2 = _BridgeIconCachePath();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___CachePathForIcon_block_invoke;
  block[3] = &unk_278D23168;
  v10 = v2;
  v3 = _CachePathForIcon_onceToken;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&_CachePathForIcon_onceToken, block);
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [BPSIconCachePrivacyHelper saltedHashForString:v1];

  v7 = [v5 stringWithFormat:@"%@%@", v4, v6];

  return v7;
}

id _BridgeIconCachePath()
{
  if (_BridgeIconCachePath_onceToken != -1)
  {
    _BridgeIconCachePath_cold_1();
  }

  v1 = _BridgeIconCachePath___bridgeIconCachePath;

  return v1;
}

id BPSCreateRoundedGizmoAppIconForSquareImage(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D759A0] mainScreen];
  v3 = [v2 traitCollection];
  [v3 displayScale];
  v5 = v4;

  [v1 CGImage];
  v6 = LICreateIconForImage();
  v7 = [MEMORY[0x277D755B8] imageWithCGImage:v6 scale:0 orientation:v5];
  if (v6)
  {
    CFRelease(v6);
  }

  if ([v1 flipsForRightToLeftLayoutDirection])
  {
    v8 = [v7 imageFlippedForRightToLeftLayoutDirection];

    v7 = v8;
  }

  return v7;
}

void __BPSStockholmSupportedInGizmoRegion_block_invoke_3(uint64_t a1, char a2)
{
  v4 = NPSQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __BPSStockholmSupportedInGizmoRegion_block_invoke_4;
  v5[3] = &unk_278D23A38;
  v7 = a2;
  v6 = *(a1 + 32);
  dispatch_async(v4, v5);
}

uint64_t __BPSStockholmSupportedInGizmoRegion_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void __BPSStockholmSupportedInGizmoRegion_block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D2BA58]);
  v3 = getNPKDefaultsDomain();
  v4 = [v2 initWithDomain:v3];

  [v4 setBool:*(a1 + 40) forKey:@"passbookRegistrationSupportedInRegion"];
  v5 = [v4 synchronize];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __BPSStockholmSupportedInGizmoRegion_block_invoke_5;
  v6[3] = &unk_278D23A38;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

id BPSWatchAppBundleIDForSettingsBundleSpecifier(void *a1)
{
  v1 = a1;
  v2 = [v1 propertyForKey:@"watchAppBundleId"];
  if (v2)
  {
    goto LABEL_2;
  }

  v4 = [v1 identifier];
  v3 = _BPSMappedNanoBundleIDForNanoSettingsBundleIDIfPresent(v4);

  if (!v3)
  {
    v2 = [v1 identifier];
LABEL_2:
    v3 = v2;
  }

  return v3;
}

id BPSIsIconForBundleIDRemote(void *a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = a1;
  v3 = [v1 setWithObjects:{@"com.apple.MobileAddressBook", @"com.apple.NanoAlarm", @"com.apple.reminders", @"com.apple.SessionTrackerApp", @"com.apple.BridgeHealthSettings", @"com.apple.private.PodcastsBridgeSettings", 0}];
  v4 = MEMORY[0x277CCABB0];
  v5 = [v3 containsObject:v2];

  v6 = [v4 numberWithBool:v5 ^ 1u];

  return v6;
}

id BPSLocalIconName(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:&unk_28540EF10];
  v3 = +[BPSBridgeAppContext shared];
  v4 = [v3 activeDevice];
  v5 = BPSIsDeviceCompatibleWithVersions(@"3", @"5", v4);

  if (v5)
  {
    v6 = @"contacts-v4";
  }

  else
  {
    v7 = +[BPSBridgeAppContext shared];
    v8 = [v7 activeDevice];
    v9 = BPSIsDeviceCompatibleWithVersions(@"2", @"3", v8);

    if (!v9)
    {
      goto LABEL_6;
    }

    v6 = @"contacts-v3";
  }

  [v2 setObject:v6 forKey:@"com.apple.MobileAddressBook"];
LABEL_6:
  v10 = [v2 objectForKey:v1];

  return v10;
}

uint64_t BPSIsDeviceCompatibleWithVersions(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (OverriddenProductVersion == -1)
  {
    NRWatchOSVersionForRemoteDevice();
  }

  v8 = NRRawVersionFromString();
  v9 = NRRawVersionFromString();
  if (v8 == -1)
  {
    IsGreaterThanOrEqual = 1;
  }

  else
  {
    IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();
  }

  if (v9 == -1)
  {
    v11 = 1;
  }

  else
  {
    v11 = NRVersionIsGreaterThanOrEqual() ^ 1;
  }

  return IsGreaterThanOrEqual & v11;
}

uint64_t __BPSStockholmSupportedInGizmoRegion_block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t sub_241E7BA60()
{
  MEMORY[0x245D041E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241E7BAA8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241E7BAF4()
{
  MEMORY[0x245D041E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241E7BB2C()
{
  MEMORY[0x245D041E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_241E7C778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 240), 8);
  _Block_object_dispose((v49 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241E7CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkNSSAccountDSIDKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkNSSAccountDSIDKeySymbolLoc_ptr;
  v8 = getkNSSAccountDSIDKeySymbolLoc_ptr;
  if (!getkNSSAccountDSIDKeySymbolLoc_ptr)
  {
    v1 = NanoSystemSettingsLibrary();
    v6[3] = dlsym(v1, "kNSSAccountDSIDKey");
    getkNSSAccountDSIDKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkNSSAccountAltDSIDKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkNSSAccountAltDSIDKeySymbolLoc_ptr;
  v8 = getkNSSAccountAltDSIDKeySymbolLoc_ptr;
  if (!getkNSSAccountAltDSIDKeySymbolLoc_ptr)
  {
    v1 = NanoSystemSettingsLibrary();
    v6[3] = dlsym(v1, "kNSSAccountAltDSIDKey");
    getkNSSAccountAltDSIDKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkNSSAccountUsernameKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkNSSAccountUsernameKeySymbolLoc_ptr;
  v8 = getkNSSAccountUsernameKeySymbolLoc_ptr;
  if (!getkNSSAccountUsernameKeySymbolLoc_ptr)
  {
    v1 = NanoSystemSettingsLibrary();
    v6[3] = dlsym(v1, "kNSSAccountUsernameKey");
    getkNSSAccountUsernameKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t __NanoSystemSettingsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NanoSystemSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFAProfilePictureStoreClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __FamilyCircleUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D23348;
    v6 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (FamilyCircleUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FAProfilePictureStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFAProfilePictureStoreClass_block_invoke_cold_1();
  }

  getFAProfilePictureStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkNSSAccountsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoSystemSettingsLibrary();
  result = dlsym(v2, "kNSSAccountsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkNSSAccountsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkNSSAKDeviceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoSystemSettingsLibrary();
  result = dlsym(v2, "kNSSAKDeviceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkNSSAKDeviceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkNSSAccountTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoSystemSettingsLibrary();
  result = dlsym(v2, "kNSSAccountTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkNSSAccountTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkNSSAccountDSIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoSystemSettingsLibrary();
  result = dlsym(v2, "kNSSAccountDSIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkNSSAccountDSIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkNSSAccountAltDSIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoSystemSettingsLibrary();
  result = dlsym(v2, "kNSSAccountAltDSIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkNSSAccountAltDSIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkNSSAccountUsernameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoSystemSettingsLibrary();
  result = dlsym(v2, "kNSSAccountUsernameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkNSSAccountUsernameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_241E7E094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKPassLibraryClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  result = objc_getClass("PKPassLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPassLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPKPassLibraryClass_block_invoke_cold_1();
    return PassKitCoreLibrary();
  }

  return result;
}

uint64_t PassKitCoreLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PassKitCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278D23450;
    v5 = 0;
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PassKitCoreLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PassKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPKCompanionWatchPassLibraryMachServiceNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitCoreLibrary();
  result = dlsym(v2, "PKCompanionWatchPassLibraryMachServiceName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKCompanionWatchPassLibraryMachServiceNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPKCompanionAgentServiceListenerResumedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitCoreLibrary();
  result = dlsym(v2, "PKCompanionAgentServiceListenerResumedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKCompanionAgentServiceListenerResumedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoPassKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NanoPassKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAMSAcknowledgePrivacyTaskClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D23558;
    v6 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppleMediaServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AMSAcknowledgePrivacyTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSAcknowledgePrivacyTaskClass_block_invoke_cold_1();
  }

  getAMSAcknowledgePrivacyTaskClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void BPSMuteForTodaySectionIdentifiersChanged(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _loadMutedSectionIdentifiers];
  [v2 _updateObservers];
}

void sub_241E8A8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _BPSToday()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v1 = [MEMORY[0x277CBEA80] currentCalendar];
  v2 = [v1 components:28 fromDate:v0];

  return v2;
}

__CFString *_WatchImageNameForStyle(uint64_t a1, char a2)
{
  if ((a1 - 1) > 7)
  {
    v3 = &stru_285406330;
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = off_278D23778[a1 - 1];
  if ((a2 & 1) == 0)
  {
LABEL_5:
    v3 = BPSDeviceRemoteAssetString(v3);
  }

LABEL_6:

  return v3;
}

double _ScreenInsets(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CBF348];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6;

  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      if (a2 == 1)
      {
        return 39.5;
      }

      else
      {
        return 36.0;
      }
    }

    if (a1 == 2)
    {
      v8 = a2 - 1;
      if (v7 <= 2.0)
      {
        if (v8 < 0x19 && ((0x11C30C3u >> v8) & 1) != 0)
        {
          v9 = &unk_241EAE090;
          return v9[v8];
        }
      }

      else if (v8 < 0x19 && ((0x11C30C3u >> v8) & 1) != 0)
      {
        v9 = &unk_241EADF00;
        return v9[v8];
      }

      return v4;
    }

    if (a1 != 3)
    {
      return v4;
    }

    v8 = a2 - 1;
    if (v7 <= 2.0)
    {
      if (v8 < 0x19 && ((0x11C30C3u >> v8) & 1) != 0)
      {
        v9 = &unk_241EAE3B0;
        return v9[v8];
      }

      return v4;
    }

    if (v8 >= 0x19 || ((0x11C30C3u >> v8) & 1) == 0)
    {
      return v4;
    }

    v9 = &unk_241EAE220;
    return v9[v8];
  }

  if (a1 > 5)
  {
    if (a1 == 6)
    {
      v8 = a2 - 1;
      if (a2 - 1) < 0x19 && ((0x11C30C3u >> v8))
      {
        v9 = &unk_241EAEB80;
        return v9[v8];
      }

      return v4;
    }

    if (a1 != 7)
    {
      return v4;
    }

    v8 = a2 - 1;
    if (v7 <= 2.0)
    {
      if (v8 < 0x19 && ((0x11C30C3u >> v8) & 1) != 0)
      {
        v9 = &unk_241EAE6D0;
        return v9[v8];
      }

      return v4;
    }

    if (v8 >= 0x19 || ((0x11C30C3u >> v8) & 1) == 0)
    {
      return v4;
    }

    v9 = &unk_241EAE540;
    return v9[v8];
  }

  if (a1 != 4)
  {
    if (v7 <= 2.0)
    {
      return 24.0;
    }

    else
    {
      return 28.0;
    }
  }

  v8 = a2 - 1;
  if (v7 <= 2.0)
  {
    if (v8 < 0x19 && ((0x11C30C3u >> v8) & 1) != 0)
    {
      v9 = &unk_241EAE9F0;
      return v9[v8];
    }
  }

  else if (v8 < 0x19 && ((0x11C30C3u >> v8) & 1) != 0)
  {
    v9 = &unk_241EAE860;
    return v9[v8];
  }

  return v4;
}

__CFString *BPSWatchViewStyleDescription(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"BPSWatchViewStyleUnknown";
  }

  else
  {
    return off_278D237B8[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _LoadMMappedImage(void *a1)
{
  v1 = a1;
  v2 = +[BPSLinkCell _mappedIconCache];
  v3 = [v2 objectForKey:v1];
  if (!v3)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = _CachePathForIcon(v1);
    v3 = [v4 imageWithContentsOfCPBitmapFile:v5 flags:0];

    if (v3)
    {
      [v2 setObject:v3 forKey:v1];
    }
  }

  return v3;
}

Class __getNanoResourceGrabberClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NanoResourceGrabberLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoResourceGrabberLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D238A0;
    v6 = 0;
    NanoResourceGrabberLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (NanoResourceGrabberLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NanoResourceGrabber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNanoResourceGrabberClass_block_invoke_cold_1();
  }

  getNanoResourceGrabberClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoResourceGrabberLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NanoResourceGrabberLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_241E94CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241E9528C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241E955D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id BPSDevicePickerCellBackgroundColor()
{
  v0 = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  v1 = BPSForceColorToDarkAppearance(v0);

  return v1;
}

id BPSTitleFont()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28540EE88;
  v10[0] = &unk_28540EED0;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  __asm { FMOV            V1.2D, #26.0 }

  v8[0] = xmmword_241EAF090;
  v8[1] = _Q1;
  v8[2] = _Q1;
  v8[3] = _Q1;
  v6 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277D743B8] weight:BPSScreenValueGetRelevantZoomValue(v8 design:{v0), *MEMORY[0x277D74418]}];

  return v6;
}

double BPSScreenValueGetRelevantZoomValue(double *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  [v3 nativeScale];
  v7 = v6;
  [v3 scale];
  if (v7 < v8 || v5 == 693.0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [v2 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v10)
    {
      goto LABEL_25;
    }

    v11 = v10;
    v12 = *v27;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v2 objectForKey:v14];
        [v15 floatValue];
        v17 = v16;

        v18 = [v14 intValue];
        if (v18 > 4)
        {
          if (v18 > 7)
          {
            v19 = a1 + 7;
            if (v18 != 8)
            {
              if (v18 != 9)
              {
                continue;
              }

              v19 = a1 + 3;
            }

            goto LABEL_22;
          }

          v19 = a1 + 4;
          if (v18 == 5)
          {
            goto LABEL_22;
          }

          v19 = a1 + 6;
          if (v18 == 7)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v18 > 2)
          {
            v19 = a1 + 2;
            if (v18 != 3)
            {
              v19 = a1 + 3;
            }

LABEL_22:
            *v19 = v17;
            continue;
          }

          v19 = a1;
          if (v18 == 1)
          {
            goto LABEL_22;
          }

          v19 = a1 + 1;
          if (v18 == 2)
          {
            goto LABEL_22;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v11)
      {
LABEL_25:

        break;
      }
    }
  }

  v20 = *(a1 + 1);
  v25[0] = *a1;
  v25[1] = v20;
  v21 = *(a1 + 3);
  v25[2] = *(a1 + 2);
  v25[3] = v21;
  RelevantValue = BPSScreenValueGetRelevantValue(v25);

  return RelevantValue;
}

id BPSNavBarBackgroundPointImage()
{
  if (BPSNavBarBackgroundPointImage_onceToken != -1)
  {
    BPSNavBarBackgroundPointImage_cold_1();
  }

  v1 = BPSNavBarBackgroundPointImage___backgroundPointImage;

  return v1;
}

void __BPSNavBarBackgroundPointImage_block_invoke()
{
  v2 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  v0 = _BPSPointImageWithColor(v2, 0);
  v1 = BPSNavBarBackgroundPointImage___backgroundPointImage;
  BPSNavBarBackgroundPointImage___backgroundPointImage = v0;
}

id _BPSPointImageWithColor(void *a1, int a2)
{
  v3 = MEMORY[0x277D759A0];
  v4 = a1;
  v5 = [v3 mainScreen];
  v6 = [v5 traitCollection];
  [v6 displayScale];
  v8 = v7;

  v9 = 1.0;
  if (a2)
  {
    v10 = 1.0 / v8;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v10;
  UIGraphicsBeginImageContextWithOptions(*&v9, 0, 0.0);
  [v4 set];

  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 1.0;
  v15.size.height = v10;
  UIRectFill(v15);
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

id BPSNavBarShadowPointImage()
{
  if (BPSNavBarShadowPointImage_onceToken != -1)
  {
    BPSNavBarShadowPointImage_cold_1();
  }

  v1 = BPSNavBarShadowPointImage___shadowPointImage;

  return v1;
}

void __BPSNavBarShadowPointImage_block_invoke()
{
  v2 = [MEMORY[0x277D75348] separatorColor];
  v0 = _BPSPointImageWithColor(v2, 1);
  v1 = BPSNavBarShadowPointImage___shadowPointImage;
  BPSNavBarShadowPointImage___shadowPointImage = v0;
}

id BPSSetupTintDisabledColor()
{
  v0 = [MEMORY[0x277D75348] systemOrangeColor];
  v1 = [v0 colorWithAlphaComponent:0.4];

  return v1;
}

void BPSApplyStyleToToolbar(void *a1)
{
  v1 = a1;
  [v1 setBarStyle:1];
  [v1 setTranslucent:1];
  v2 = [MEMORY[0x277D75348] systemOrangeColor];
  [v1 setTintColor:v2];
}

void BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v5 = [v4 localizedStringForKey:@"ALERT_GIZMO_UNREACHABLE_MESSAGE" value:&stru_285406330 table:@"Localizable"];

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 sf_isInternalInstall];

  if (v7)
  {
    v8 = [v5 stringByAppendingFormat:@"\n\n[Internal Only: %@]", v9];

    v5 = v8;
  }

  _BPSPresentGizmoUnreachableAlertMessageWithDismissalHandler(v5, v3);
}

void BPSPresentGizmoUnreachableOrLockedServiceAlertWithDismissalHandler(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v5 = [v4 localizedStringForKey:@"ALERT_GIZMO_UNREACHABLE_LOCKED_MESSAGE" value:&stru_285406330 table:@"Localizable"];

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 sf_isInternalInstall];

  if (v7)
  {
    v8 = [v5 stringByAppendingFormat:@"\n\n[Internal Only: %@]", v9];

    v5 = v8;
  }

  _BPSPresentGizmoUnreachableAlertMessageWithDismissalHandler(v5, v3);
}

void _BPSPresentGizmoUnreachableAlertMessageWithDismissalHandler(void *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v7 = [v6 localizedStringForKey:@"ALERT_GIZMO_UNREACHABLE_TITLE" value:&stru_285406330 table:@"Localizable"];
  v8 = [v5 alertControllerWithTitle:v7 message:v3 preferredStyle:1];

  v9 = [v8 view];
  [v9 _accessibilitySetInterfaceStyleIntent:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v12 = [v11 localizedStringForKey:@"ALERT_GIZMO_UNREACHABLE_BUTTON" value:&stru_285406330 table:@"Localizable"];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = ___BPSPresentGizmoUnreachableAlertMessageWithDismissalHandler_block_invoke;
  v39[3] = &unk_278D233E0;
  v13 = v4;
  v40 = v13;
  v14 = [v10 actionWithTitle:v12 style:0 handler:v39];
  [v8 addAction:v14];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = [MEMORY[0x277D75128] sharedApplication];
  v16 = [v15 connectedScenes];

  v17 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v17)
  {
    v18 = *v36;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v20 windows];
          v22 = [v21 firstObject];

          v17 = [v22 rootViewController];

          goto LABEL_11;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v23 = [v17 presentedViewController];

  if (v23)
  {
    v24 = 0;
    do
    {
      v23 = v17;

      v17 = [v23 presentedViewController];

      v25 = [v17 presentedViewController];

      v24 = v23;
    }

    while (v25);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v17 presentingViewController];
    [v26 dismissViewControllerAnimated:1 completion:0];

    v27 = v23;
    v17 = v27;
  }

  if (v17)
  {
    v28 = [v17 transitionCoordinator];
    if (v28)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = ___BPSPresentGizmoUnreachableAlertMessageWithDismissalHandler_block_invoke_760;
      v32[3] = &unk_278D23AC0;
      v33 = v17;
      v34 = v8;
      [v28 animateAlongsideTransition:0 completion:v32];
      v29 = bps_utility_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        _os_log_impl(&dword_241E74000, v29, OS_LOG_TYPE_DEFAULT, "We are in mid transition. Waiting until transition is complete to present BPS alert", v31, 2u);
      }
    }

    else
    {
      v30 = bps_utility_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        _os_log_impl(&dword_241E74000, v30, OS_LOG_TYPE_DEFAULT, "BPS presented 'transport became unreachable' alert", v31, 2u);
      }

      [v17 presentViewController:v8 animated:1 completion:0];
    }
  }
}

id BPSLocalizedNameForMaterial(unint64_t a1)
{
  v1 = _BPSUnlocalizedNameForMaterial(a1);
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v3 = [v2 localizedStringForKey:v1 value:&stru_285406330 table:@"Localizable"];

  return v3;
}

__CFString *_BPSUnlocalizedNameForMaterial(unint64_t a1)
{
  if (a1 < 0x27 && ((0x4033FFFFBFuLL >> a1) & 1) != 0)
  {
    return off_278D23B28[a1];
  }

  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 sf_isInternalInstall];

  if (!v4)
  {
    return &stru_285406330;
  }

  v5 = bps_utility_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    _BPSUnlocalizedNameForMaterial_cold_1(a1, v5);
  }

  return @"UNKNOWN_NAME";
}

__CFString *BPSLocalizedShortEdition(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 componentsSeparatedByString:{@", "}];
  if ([v5 count] < 2)
  {
    v10 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 rangeOfString:@"Watch"];
    if (v8)
    {
      v9 = [v6 substringFromIndex:v7 + v8];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 isEqualToString:@"1"];
  }

  v11 = &stru_285406330;
  if (a1 <= 0x16)
  {
    if (((1 << a1) & 0x10CF00) != 0)
    {
      v12 = @"EDITION_EDITION_SHORT";
      goto LABEL_13;
    }

    if (((1 << a1) & 0x68001E) != 0 && v10)
    {
      v12 = @"SPORT_EDITION_SHORT";
LABEL_13:
      v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
      v11 = [v13 localizedStringForKey:v12 value:&stru_285406330 table:@"Localizable"];
    }
  }

  if (a2 == 1)
  {
    v14 = @"ZEUS_EDITION_SHORT";
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_19;
    }

    v14 = @"VICTORY_EDITION_SHORT";
  }

  v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v16 = [v15 localizedStringForKey:v14 value:&stru_285406330 table:@"Localizable"];

  v11 = v16;
LABEL_19:

  return v11;
}

id BPSDeviceRemoteAssetString(void *a1)
{
  v1 = a1;
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v2 count])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [v2 firstObject];
    v5 = [v3 stringWithFormat:@"%@/%@/%@", v4, *MEMORY[0x277D37A80], v1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t BPSVariantSizeForNRDeviceSize(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_241EAF108[(a1 - 1)];
  }
}

uint64_t BPSVariantSizeForArtworkDeviceSubType()
{
  v0 = NRDeviceSizeForArtworkDeviceSubType();

  return BPSVariantSizeForNRDeviceSize(v0);
}

uint64_t BPSVariantSizeForProductType()
{
  v0 = NRDeviceSizeForProductType();

  return BPSVariantSizeForNRDeviceSize(v0);
}

id BPSLocalizedVariantSizeForProductType(void *a1)
{
  v27[10] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v26 = [v1 bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v25 = [v26 localizedStringForKey:@"COMPACT_VARIANT" value:&stru_285406330 table:@"Localizable"];
  v27[0] = v25;
  v24 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v23 = [v24 localizedStringForKey:@"REGULAR_VARIANT" value:&stru_285406330 table:@"Localizable"];
  v27[1] = v23;
  v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v21 = [v22 localizedStringForKey:@"394H_VARIANT" value:&stru_285406330 table:@"Localizable"];
  v27[2] = v21;
  v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v19 = [v20 localizedStringForKey:@"448H_VARIANT" value:&stru_285406330 table:@"Localizable"];
  v27[3] = v19;
  v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v17 = [v18 localizedStringForKey:@"430H_VARIANT" value:&stru_285406330 table:@"Localizable"];
  v27[4] = v17;
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v15 = [v16 localizedStringForKey:@"484H_VARIANT" value:&stru_285406330 table:@"Localizable"];
  v27[5] = v15;
  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v3 = [v14 localizedStringForKey:@"502H_VARIANT" value:&stru_285406330 table:@"Localizable"];
  v27[6] = v3;
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v5 = [v4 localizedStringForKey:@"446H_VARIANT" value:&stru_285406330 table:@"Localizable"];
  v27[7] = v5;
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v7 = [v6 localizedStringForKey:@"496H_VARIANT" value:&stru_285406330 table:@"Localizable"];
  v27[8] = v7;
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v9 = [v8 localizedStringForKey:@"514H_VARIANT" value:&stru_285406330 table:@"Localizable-N230"];
  v27[9] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:10];
  v11 = [BPSScreenStringObj screenStringsWithArray:v10];
  v13 = BPSGetRelevantScreenStringForProduct(v2, v11);

  return v13;
}

id BPSGetRelevantScreenStringForProduct(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = NRDeviceSizeForProductType();
  v4 = BPSVariantSizeForNRDeviceSize(v3);
  v5 = 0;
  if (v4 > 13)
  {
    if (v4 <= 19)
    {
      if (v4 == 14)
      {
        v6 = [v2 size430h];
      }

      else
      {
        if (v4 != 19)
        {
          goto LABEL_25;
        }

        v6 = [v2 size502h];
      }
    }

    else
    {
      switch(v4)
      {
        case 20:
          v6 = [v2 size446h];
          break;
        case 21:
          v6 = [v2 size496h];
          break;
        case 25:
          v6 = [v2 size514h];
          break;
        default:
          goto LABEL_25;
      }
    }
  }

  else if (v4 <= 6)
  {
    if (v4 == 1)
    {
      v6 = [v2 regular];
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_25;
      }

      v6 = [v2 compact];
    }
  }

  else
  {
    switch(v4)
    {
      case 7:
        v6 = [v2 size448h];
        break;
      case 8:
        v6 = [v2 size394h];
        break;
      case 13:
        v6 = [v2 size484h];
        break;
      default:
        goto LABEL_25;
    }
  }

  v5 = v6;
LABEL_25:

  return v5;
}

id BPSShortLocalizedVariantSizeForProductType(void *a1)
{
  v27[10] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v26 = [v1 bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v25 = [v26 localizedStringForKey:@"COMPACT_VARIANT_SHORT" value:&stru_285406330 table:@"Localizable"];
  v27[0] = v25;
  v24 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v23 = [v24 localizedStringForKey:@"REGULAR_VARIANT_SHORT" value:&stru_285406330 table:@"Localizable"];
  v27[1] = v23;
  v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v21 = [v22 localizedStringForKey:@"394H_VARIANT_SHORT" value:&stru_285406330 table:@"Localizable"];
  v27[2] = v21;
  v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v19 = [v20 localizedStringForKey:@"448H_VARIANT_SHORT" value:&stru_285406330 table:@"Localizable"];
  v27[3] = v19;
  v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v17 = [v18 localizedStringForKey:@"430H_VARIANT_SHORT" value:&stru_285406330 table:@"Localizable"];
  v27[4] = v17;
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v15 = [v16 localizedStringForKey:@"484H_VARIANT_SHORT" value:&stru_285406330 table:@"Localizable"];
  v27[5] = v15;
  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v3 = [v14 localizedStringForKey:@"502H_VARIANT_SHORT" value:&stru_285406330 table:@"Localizable"];
  v27[6] = v3;
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v5 = [v4 localizedStringForKey:@"446H_VARIANT_SHORT" value:&stru_285406330 table:@"Localizable"];
  v27[7] = v5;
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v7 = [v6 localizedStringForKey:@"496H_VARIANT_SHORT" value:&stru_285406330 table:@"Localizable"];
  v27[8] = v7;
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v9 = [v8 localizedStringForKey:@"514H_VARIANT_SHORT" value:&stru_285406330 table:@"Localizable-N230"];
  v27[9] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:10];
  v11 = [BPSScreenStringObj screenStringsWithArray:v10];
  v13 = BPSGetRelevantScreenStringForProduct(v2, v11);

  return v13;
}

id BPSRemoveVersionIncompatibleSpecifiersFromArray(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v12 = [MEMORY[0x277CBEB18] array];
  v2 = BPSGetActiveSetupCompletedDevice();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 propertyForKey:@"minimumWatchVersion"];
        v10 = [v8 propertyForKey:@"deprecatedInWatchVersion"];
        if (BPSIsDeviceCompatibleWithVersions(v9, v10, v2))
        {
          [v12 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v12;
}

void *BPSGetActiveSetupCompletedDevice()
{
  v0 = BPSGetActiveDevice();
  v1 = [v0 valueForProperty:*MEMORY[0x277D2BB48]];
  if ([v1 BOOLValue])
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

BOOL _BPSIsPairingCompatible(unint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D2BD08];
  v4 = a2;
  v5 = [v3 systemVersions];
  v6 = [v5 minPairingCompatibilityVersionForChipID:v4];

  v7 = [MEMORY[0x277D2BD08] systemVersions];
  v8 = [v7 maxPairingCompatibilityVersion];

  return v6 <= a1 && v8 >= a1;
}

uint64_t _BPSOverrideDeviceCompatibleVersions()
{
  result = NRRawVersionFromString();
  OverriddenProductVersion = result;
  return result;
}

id BPSRemoveCapabilityIncompatibleSpecifiersFromArray(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v12 = [MEMORY[0x277CBEB18] array];
  v2 = BPSGetActiveSetupCompletedDevice();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 propertyForKey:@"requiredWatchCapabilities"];
        v10 = [v8 propertyForKey:@"forbiddenWatchCapabilities"];
        if (BPSDeviceHasAllCapabilitiesForStrings(v9, v10, 0, v2))
        {
          [v12 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v12;
}

uint64_t BPSMGMaterialForPBMaterial(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a1 - 1;
  if (a1 - 1) < 0xA && ((0x3DFu >> v2))
  {
    return dword_241EAF158[v2];
  }

  v4 = bps_utility_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "%@ not covered in MGEnclosure Enum", &v6, 0xCu);
  }

  return 0;
}

uint64_t BPSPBMaterialForMGMaterial(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a1 - 1;
  if (a1 - 1) < 0xA && ((0x3DFu >> v2))
  {
    return qword_241EAF180[v2];
  }

  v4 = bps_utility_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "%@ not covered in MGEnclosure Enum", &v6, 0xCu);
  }

  return 0;
}

uint64_t BPSCurrentScreenType()
{
  v0 = 4;
  v1 = MGGetProductType();
  if (v1 <= 2080700390)
  {
    if (v1 <= 1169082143)
    {
      if (v1 > 502329936)
      {
        if (v1 > 910181309)
        {
          if (v1 == 910181310)
          {
            return 5;
          }

          if (v1 != 1060988941)
          {
            return 1;
          }

          return 6;
        }

        if (v1 == 502329937)
        {
          return 3;
        }

        v5 = 689804742;
        goto LABEL_51;
      }

      if (v1 > 337183580)
      {
        if (v1 != 337183581)
        {
          v4 = 445396642;
LABEL_60:
          if (v1 == v4)
          {
            return 2;
          }

          return 1;
        }

        return 2;
      }

      if (v1 == 42878382)
      {
        return 3;
      }

      v3 = 253148925;
      goto LABEL_42;
    }

    if (v1 <= 1434404432)
    {
      if (v1 <= 1371389548)
      {
        if (v1 == 1169082144)
        {
          return 7;
        }

        v2 = 1234705395;
        goto LABEL_33;
      }

      if (v1 == 1371389549)
      {
        return v0;
      }

      v6 = 1429914406;
    }

    else
    {
      if (v1 > 1737882205)
      {
        if (v1 == 1737882206)
        {
          return 3;
        }

        if (v1 == 2021146989)
        {
          return 7;
        }

        v2 = 2032616841;
LABEL_33:
        if (v1 != v2)
        {
          return 1;
        }

        return 5;
      }

      if (v1 == 1434404433)
      {
        return 6;
      }

      v6 = 1721691077;
    }

    if (v1 != v6)
    {
      return 1;
    }

    return v0;
  }

  if (v1 <= 2781508712)
  {
    if (v1 > 2309863437)
    {
      if (v1 > 2468178734)
      {
        if (v1 != 2468178735)
        {
          if (v1 != 2688879999)
          {
            v2 = 2722529672;
            goto LABEL_33;
          }

          return 8;
        }

        return 3;
      }

      if (v1 != 2309863438)
      {
        v4 = 2311900306;
        goto LABEL_60;
      }

      return 8;
    }

    if (v1 <= 2162679682)
    {
      if (v1 != 2080700391)
      {
        v4 = 2081274472;
        goto LABEL_60;
      }

      return 5;
    }

    if (v1 != 2162679683)
    {
      v4 = 2270970153;
      goto LABEL_60;
    }

    return 2;
  }

  if (v1 <= 3242623366)
  {
    if (v1 <= 3001488777)
    {
      if (v1 == 2781508713)
      {
        return 2;
      }

      v5 = 2940697645;
      goto LABEL_51;
    }

    if (v1 == 3001488778)
    {
      return 7;
    }

    v3 = 3196805751;
LABEL_42:
    if (v1 != v3)
    {
      return 1;
    }

    return 3;
  }

  if (v1 <= 3743999267)
  {
    if (v1 == 3242623367)
    {
      return 3;
    }

    v5 = 3585085679;
LABEL_51:
    if (v1 != v5)
    {
      return 1;
    }

    return 7;
  }

  if (v1 != 3743999268)
  {
    if (v1 != 3885279870)
    {
      if (v1 != 4201643249)
      {
        return 1;
      }

      return 8;
    }

    return 6;
  }

  return v0;
}

double BPSScreenValueGetRelevantValue(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (__ScreenTypeOverride > 4)
  {
    if (__ScreenTypeOverride > 6)
    {
      if (__ScreenTypeOverride != 7)
      {
        if (__ScreenTypeOverride != 8)
        {
          if (__ScreenTypeOverride == 9)
          {
            goto LABEL_33;
          }

LABEL_28:
          v5 = bps_utility_log();
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_32;
          }

          v8 = 134217984;
          v9 = __ScreenTypeOverride;
          v6 = "BPSScreenValueGetRelevantValue: %lu height override not found, defaulting to 812h value";
LABEL_31:
          _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
LABEL_32:

          goto LABEL_33;
        }

        goto LABEL_25;
      }

      goto LABEL_27;
    }

    if (__ScreenTypeOverride == 5)
    {
      goto LABEL_26;
    }

    if (__ScreenTypeOverride != 6)
    {
      goto LABEL_28;
    }

LABEL_17:
    a1 += 40;
    return *a1;
  }

  if (__ScreenTypeOverride > 1)
  {
    if (__ScreenTypeOverride != 2)
    {
      if (__ScreenTypeOverride != 3)
      {
        if (__ScreenTypeOverride != 4)
        {
          goto LABEL_28;
        }

LABEL_33:
        a1 += 24;
        return *a1;
      }

LABEL_40:
      a1 += 16;
      return *a1;
    }

LABEL_37:
    a1 += 8;
    return *a1;
  }

  if (!__ScreenTypeOverride)
  {
    v2 = BPSScreenValueGetRelevantValue__deviceHeight;
    if (!BPSScreenValueGetRelevantValue__deviceHeight)
    {
      v3 = [MEMORY[0x277D759A0] mainScreen];
      [v3 _referenceBounds];
      BPSScreenValueGetRelevantValue__deviceHeight = v4;

      v2 = BPSScreenValueGetRelevantValue__deviceHeight;
    }

    if (v2 <= 779)
    {
      if (v2 > 692)
      {
        if (v2 == 693)
        {
          goto LABEL_33;
        }

        if (v2 == 736)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 == 568)
        {
          return *a1;
        }

        if (v2 == 667)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_44;
    }

    if (v2 > 843)
    {
      if (v2 != 844)
      {
        if (v2 != 896)
        {
          if (v2 == 926)
          {
LABEL_25:
            a1 += 56;
            return *a1;
          }

LABEL_44:
          v5 = bps_utility_log();
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_32;
          }

          v8 = 134217984;
          v9 = BPSScreenValueGetRelevantValue__deviceHeight;
          v6 = "BPSScreenValueGetRelevantValue: %lu height not found, defaulting to 812h value";
          goto LABEL_31;
        }

LABEL_26:
        a1 += 32;
        return *a1;
      }

LABEL_27:
      a1 += 48;
      return *a1;
    }

    if (v2 != 780)
    {
      if (v2 == 812)
      {
        goto LABEL_33;
      }

      goto LABEL_44;
    }

    goto LABEL_17;
  }

  if (__ScreenTypeOverride != 1)
  {
    goto LABEL_28;
  }

  return *a1;
}

id BPSPillDeselectedColor()
{
  v0 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v1 = BPSForceColorToDarkAppearance(v0);

  return v1;
}

id BPSPillSelectedColor()
{
  v0 = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  v1 = BPSForceColorToDarkAppearance(v0);

  return v1;
}

id BPSPillButtonBackground(void *a1)
{
  v1 = a1;
  if (BPSPillButtonBackground_onceToken != -1)
  {
    BPSPillButtonBackground_cold_1();
  }

  v2 = [BPSPillButtonBackground_pillMapping objectForKey:v1];
  if (!v2)
  {
    v7.width = 18.0;
    v7.height = 18.0;
    UIGraphicsBeginImageContextWithOptions(v7, 0, 0.0);
    v3 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 18.0, 18.0, 8.0}];
    [v1 set];
    [v3 fill];
    v4 = UIGraphicsGetImageFromCurrentImageContext();
    v2 = [v4 stretchableImageWithLeftCapWidth:9 topCapHeight:9];

    UIGraphicsEndImageContext();
    [BPSPillButtonBackground_pillMapping setObject:v2 forKey:v1];
  }

  return v2;
}

uint64_t __BPSPillButtonBackground_block_invoke()
{
  BPSPillButtonBackground_pillMapping = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

double BPSPillButtonImageDesiredSize(void *a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D74248];
  v2 = a1;
  v3 = [v1 defaultParagraphStyle];
  v4 = [v3 mutableCopy];

  [v4 setLineBreakMode:4];
  [v4 setAlignment:1];
  v13[0] = *MEMORY[0x277D740A8];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277D743B8] weight:17.0 design:*MEMORY[0x277D74410]];
  v6 = *MEMORY[0x277D74118];
  v14[0] = v5;
  v14[1] = v4;
  v7 = *MEMORY[0x277D740C0];
  v13[1] = v6;
  v13[2] = v7;
  v8 = BPSTextColor();
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  [v2 sizeWithAttributes:v9];
  v11 = v10;

  return v11 + 40.0;
}

id BPSPillButtonImageWithColors(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = a6;
  v12 = MEMORY[0x277D74248];
  v13 = a5;
  v14 = [v12 defaultParagraphStyle];
  v15 = [v14 mutableCopy];

  [v15 setLineBreakMode:4];
  [v15 setAlignment:1];
  __asm { FMOV            V1.2D, #16.0 }

  v43[0] = xmmword_241EADD50;
  v43[1] = _Q1;
  v43[2] = _Q1;
  v43[3] = _Q1;
  RelevantValue = BPSScreenValueGetRelevantValue(v43);
  v44[0] = *MEMORY[0x277D740A8];
  v22 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277D743B8] weight:RelevantValue design:*MEMORY[0x277D74410]];
  v23 = *MEMORY[0x277D74118];
  v45[0] = v22;
  v45[1] = v15;
  v24 = *MEMORY[0x277D740C0];
  v44[1] = v23;
  v44[2] = v24;
  v45[2] = v11;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];

  if (v10)
  {
    v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v10 attributes:v25];
  }

  else
  {
    v26 = 0;
  }

  v27 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v27 setAttributedText:v26];
  [v27 setNumberOfLines:0];
  [v27 setLineBreakMode:0];
  LODWORD(v28) = 0.5;
  [v27 _setHyphenationFactor:v28];
  [v10 sizeWithAttributes:v25];
  v30 = v29;
  v32 = v31;
  v33 = BPSPillButtonBackground(v13);

  v34 = [v33 stretchableImageWithLeftCapWidth:8 topCapHeight:8];

  v35 = v30 + 40.0;
  if (v30 + 40.0 < a2)
  {
    v35 = a2;
  }

  v36 = v35;
  v37 = floorf(v36);
  v38 = fmax(a3, 50.0);
  v47.width = v37;
  v47.height = v38;
  UIGraphicsBeginImageContextWithOptions(v47, 0, 0.0);
  [v34 drawInRect:{0.0, 0.0, v37, v38}];
  v39 = (v37 - v30) * 0.5;
  v40 = (v38 - v32) * 0.5;
  [v10 drawInRect:v25 withAttributes:{floorf(v39), floorf(v40), v30, v32}];
  v41 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v41;
}

id BPSPillButtonImageWithColor(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = BPSTextColor();
  v11 = BPSPillButtonImageWithColors(v9, a2, a3, 0, v8, v10);

  return v11;
}

id BPSMigrationDevices()
{
  v0 = [MEMORY[0x277D2BCD8] sharedMigrator];
  v1 = [v0 migratableDevicesRequiringConsent];

  return v1;
}

id BPSArchivedDevices()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:&__block_literal_global_393];

  return v1;
}

BOOL __BPSArchivedDevices_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForProperty:*MEMORY[0x277D2BB30]];
  v3 = [v2 integerValue] != 0;

  return v3;
}

id BPSPairingPendingMigrationDevices()
{
  v0 = [MEMORY[0x277D2BCD8] sharedMigrator];
  v1 = [v0 migratableDevices];

  return v1;
}

BOOL BPSHasMigrationDevices()
{
  v0 = BPSMigrationDevices();
  v1 = [v0 count] != 0;

  return v1;
}

void BPSMigrateDevices(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = bps_utility_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v6;
          _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "Consent: %@", buf, 0xCu);
        }

        v8 = [MEMORY[0x277D2BCD8] sharedMigrator];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __BPSMigrateDevices_block_invoke;
        v9[3] = &unk_278D23948;
        v9[4] = v6;
        [v8 setMigrationConsented:1 forDevice:v6 withBlock:v9];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v3);
  }
}

id BPSPillButtonImage(void *a1, double a2, double a3, uint64_t a4, char a5)
{
  v8 = a1;
  if (a5)
  {
    BPSPillSelectedColor();
  }

  else
  {
    BPSPillDeselectedColor();
  }
  v9 = ;
  v10 = BPSPillButtonImageWithColor(v8, a2, a3, 0, v9);

  return v10;
}

void *BPSGetActivePairedDevice()
{
  v0 = BPSGetActiveDevice();
  v1 = [v0 valueForProperty:*MEMORY[0x277D2BB40]];
  if ([v1 BOOLValue])
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

id BPSTintedSymbol(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D755B8];
  v4 = a2;
  v5 = [v3 systemImageNamed:a1];
  v6 = [v5 imageWithTintColor:v4 renderingMode:1];

  return v6;
}

id BPSScaledTintedSymbol(void *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277D755D0];
  v7 = a3;
  v8 = a1;
  v9 = [v6 configurationWithScale:a2];
  v10 = [v5 systemImageNamed:v8 withConfiguration:v9];

  v11 = [v10 imageWithTintColor:v7 renderingMode:1];

  return v11;
}

void _BPSRemoveSystemDeletedAppFromSpecifiers(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAB58] indexSet];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = ___BPSRemoveSystemDeletedAppFromSpecifiers_block_invoke;
  v11 = &unk_278D239E0;
  v12 = v5;
  v13 = v3;
  v6 = v5;
  v7 = v3;
  [v4 enumerateObjectsUsingBlock:&v8];
  [v4 removeObjectsAtIndexes:{v6, v8, v9, v10, v11}];
}

void *BPSMappedNanoBundleIDForNanoSettingsBundleID(void *a1)
{
  v1 = a1;
  v2 = _BPSMappedNanoBundleIDForNanoSettingsBundleIDIfPresent(v1);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v4;
}

uint64_t BPSIsNewsAllowed()
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v0 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.news" allowPlaceholder:0 error:&v9];
  v1 = v9;
  if (v1)
  {
    v2 = bps_utility_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = @"com.apple.news";
      v12 = 2112;
      v13 = v1;
      _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "Error while retrieving application record %@ with error %@", buf, 0x16u);
    }
  }

  v3 = +[BPSBridgeAppContext shared];
  v4 = [v3 activeDevice];
  if (BPSDeviceHasCapabilityForString(@"news-app", v4))
  {
    v5 = [v0 applicationState];
    if ([v5 isRestricted])
    {
      v6 = 0;
    }

    else
    {
      v7 = [v0 applicationState];
      v6 = [v7 isValid];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t BPSIsWalkieTalkieAppInstalled()
{
  v14 = *MEMORY[0x277D85DE8];
  if (BPSIsWalkieTalkieAppInstalled_onceToken != -1)
  {
    BPSIsWalkieTalkieAppInstalled_cold_1();
  }

  v0 = [BPSIsWalkieTalkieAppInstalled__walkieTalkieDomain synchronize];
  v5 = 0;
  v1 = [BPSIsWalkieTalkieAppInstalled__walkieTalkieDomain BOOLForKey:@"AppIsInstalled" keyExistsAndHasValidFormat:&v5];
  v2 = v5 ^ 1 | v1;
  v3 = bps_utility_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v7 = "BOOL BPSIsWalkieTalkieAppInstalled()";
    v8 = 1024;
    v9 = v2 & 1;
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = v1 & 1;
    _os_log_impl(&dword_241E74000, v3, OS_LOG_TYPE_DEFAULT, "%s returning %d{BOOL} (keyExists=%d{BOOL} isWalkieTalkieInstalled=%d{BOOL})", buf, 0x1Eu);
  }

  return v2 & 1;
}

uint64_t __BPSIsWalkieTalkieAppInstalled_block_invoke()
{
  BPSIsWalkieTalkieAppInstalled__walkieTalkieDomain = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.tincan"];

  return MEMORY[0x2821F96F8]();
}

void *BPSMappedNanoSettingsBundleIDForNanoBundleID(void *a1)
{
  v10[27] = *MEMORY[0x277D85DE8];
  v9[0] = @"com.apple.NanoMaps";
  v9[1] = @"com.apple.AppStore";
  v10[0] = @"com.apple.NanoMapsBridgeSettings";
  v10[1] = @"com.apple.BridgeAppStoreDaemonSettings";
  v9[2] = @"com.apple.NanoMusic";
  v9[3] = @"com.apple.NanoMail";
  v10[2] = @"com.apple.NanoMusicBridgeSettings";
  v10[3] = @"com.apple.NanoMailBridgeSettings";
  v9[4] = @"com.apple.NanoPassbook";
  v9[5] = @"com.apple.NanoPhotos";
  v10[4] = @"com.apple.NanoPassbookBridgeSettings";
  v10[5] = @"com.apple.NanoPhotosBridgeSettings";
  v9[6] = @"com.apple.MobileAddressBook";
  v9[7] = @"com.apple.NanoSleep.watchkitapp";
  v10[6] = @"com.apple.NanoContactsBridgeSettingsTinker";
  v10[7] = @"com.apple.NanoBedtimeBridgeSettings";
  v9[8] = @"com.apple.MobileSMS";
  v9[9] = @"com.apple.NanoAlarm";
  v10[8] = @"com.apple.MessagesBridgeSettings";
  v10[9] = @"com.apple.NanoClockBridgeSettings";
  v9[10] = @"com.apple.NanoPhone";
  v9[11] = @"com.apple.NanoCalendar";
  v10[10] = @"com.apple.PhoneBridgeSettings";
  v10[11] = @"com.apple.NanoCalendarBridgeSettings";
  v9[12] = @"com.apple.weather.watchapp";
  v9[13] = @"com.apple.stocks.watchapp";
  v10[12] = @"com.apple.weatherbridgesettings";
  v10[13] = @"com.apple.StocksBridgeSettings";
  v9[14] = @"com.apple.ActivityMonitorApp";
  v9[15] = @"com.apple.SessionTrackerApp";
  v10[14] = @"com.apple.HealthAppsSettings";
  v10[15] = @"com.apple.SessionTrackerAppSettings";
  v9[16] = @"com.apple.DeepBreathing";
  v9[17] = @"com.apple.HeartRate";
  v10[16] = @"com.apple.DeepBreathingSettings";
  v10[17] = @"com.apple.HeartRateSettings";
  v9[18] = @"com.apple.tincan";
  v9[19] = @"com.apple.Noise";
  v10[18] = @"com.apple.tincan.settings";
  v10[19] = @"com.apple.Noise.settings";
  v9[20] = @"com.apple.NanoBooks";
  v9[21] = @"com.apple.podcasts";
  v10[20] = @"com.apple.NanoBooks.BridgeSettings";
  v10[21] = @"com.apple.private.PodcastsBridgeSettings";
  v9[22] = @"com.apple.NanoOxygenSaturation.watchkitapp";
  v9[23] = @"com.apple.Mind";
  v10[22] = @"com.apple.OxygenSaturationSettings";
  v10[23] = @"com.apple.MindSettings";
  v9[24] = @"com.apple.NanoTips";
  v9[25] = @"com.apple.NanoMenstrualCycles";
  v10[24] = @"com.apple.NanoTipsBridgeSettings";
  v10[25] = @"com.apple.NanoMenstrualCyclesCompanionSettings";
  v9[26] = @"com.apple.Depth";
  v10[26] = @"com.apple.DepthCompanionSettings";
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v10 forKeys:v9 count:27];
  v4 = [v3 objectForKey:v2];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  v7 = v6;

  return v6;
}

uint64_t BPSShouldOfferSiriForDeviceLanguage()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = +[BPSBridgeAppContext shared];
  v1 = [v0 activeDevice];

  v2 = [v1 valueForProperty:*MEMORY[0x277D2BC10]];
  v3 = [v1 valueForProperty:*MEMORY[0x277D2BC20]];
  v4 = [getAFPreferencesClass() sharedPreferences];
  v5 = [v4 assistantIsEnabled];

  if (v5)
  {
    v6 = [getAFPreferencesClass() sharedPreferences];
    v7 = [v6 languageCode];

    if (v7)
    {
      v17 = 0;
      v8 = [getAFConnectionClass() siriIsSupportedForLanguageCode:v7 productName:v2 productVersion:v3 error:&v17];
      v9 = v17;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v13 = bps_utility_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v2;
      *&buf[22] = 2112;
      v23 = v3;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = v8;
      HIWORD(v24) = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v9;
      v14 = "siriLanguageCode: %@, watchProductName %@, watchProductVersion %@; shouldOfferSiri: %d, phoneError: %@; watchError: %@";
LABEL_18:
      _os_log_impl(&dword_241E74000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x3Au);
    }
  }

  else
  {
    v10 = [MEMORY[0x277CBEAF8] currentLocale];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v11 = get_VSCopyLanguageIdentifierForLocaleSymbolLoc_ptr;
    v21 = get_VSCopyLanguageIdentifierForLocaleSymbolLoc_ptr;
    if (!get_VSCopyLanguageIdentifierForLocaleSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __get_VSCopyLanguageIdentifierForLocaleSymbolLoc_block_invoke;
      v23 = &unk_278D232F0;
      v24 = &v18;
      __get_VSCopyLanguageIdentifierForLocaleSymbolLoc_block_invoke(buf);
      v11 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v11)
    {
      __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63_cold_1();
      __break(1u);
    }

    v7 = v11(v10);
    if (v7)
    {
      v12 = [getAFPreferencesClass() sharedPreferences];
      if ([v12 isCurrentLocaleNativelySupported])
      {
        v16 = 0;
        v8 = [getAFConnectionClass() siriIsSupportedForLanguageCode:v7 productName:v2 productVersion:v3 error:&v16];
        v9 = v16;
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v13 = bps_utility_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v2;
      *&buf[22] = 2112;
      v23 = v3;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = v8;
      HIWORD(v24) = 2112;
      v25 = 0;
      v26 = 2112;
      v27 = v9;
      v14 = "phoneLanguageCode: %@, watchProductName %@, watchProductVersion %@; shouldOfferSiri: %d, phoneError: %@; watchError: %@";
      goto LABEL_18;
    }
  }

  return v8;
}

void sub_241E9B76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass;
  v7 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke;
    v3[3] = &unk_278D232F0;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241E9B854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFConnectionClass_softClass;
  v7 = getAFConnectionClass_softClass;
  if (!getAFConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAFConnectionClass_block_invoke;
    v3[3] = &unk_278D232F0;
    v3[4] = &v4;
    __getAFConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241E9B934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BPSDefaultTitleTextAttributes()
{
  if (BPSDefaultTitleTextAttributes_onceToken != -1)
  {
    BPSDefaultTitleTextAttributes_cold_1();
  }

  v1 = BPSDefaultTitleTextAttributes_sDefaultTitleTextAttributes;

  return v1;
}

void __BPSDefaultTitleTextAttributes_block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277D74240]);
  [v0 setLineBreakMode:4];
  [v0 setAlignment:1];
  [v0 setLineSpacing:0.0];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v2 = *MEMORY[0x277D74118];
  v5[0] = *MEMORY[0x277D740A8];
  v5[1] = v2;
  v6[0] = v1;
  v6[1] = v0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = BPSDefaultTitleTextAttributes_sDefaultTitleTextAttributes;
  BPSDefaultTitleTextAttributes_sDefaultTitleTextAttributes = v3;
}

id BPSDefaultDetailTextAttributes()
{
  if (BPSDefaultDetailTextAttributes_onceToken != -1)
  {
    BPSDefaultDetailTextAttributes_cold_1();
  }

  v1 = BPSDefaultDetailTextAttributes_sDefaultDetailTextAttributes;

  return v1;
}

void __BPSDefaultDetailTextAttributes_block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277D74240]);
  [v0 setLineBreakMode:4];
  [v0 setAlignment:1];
  v4[0] = *MEMORY[0x277D740A8];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v4[1] = *MEMORY[0x277D74118];
  v5[0] = v1;
  v5[1] = v0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = BPSDefaultDetailTextAttributes_sDefaultDetailTextAttributes;
  BPSDefaultDetailTextAttributes_sDefaultDetailTextAttributes = v2;
}

void BPSOpenSensitiveURLAsync(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  [v2 setSensitive:1];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __BPSOpenSensitiveURLAsync_block_invoke;
  v5[3] = &unk_278D23A98;
  v6 = v1;
  v4 = v1;
  [v3 openURL:v4 configuration:v2 completionHandler:v5];
}

void __BPSOpenSensitiveURLAsync_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = bps_utility_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "result of open URL: %{public}@ error: %{public}@", &v7, 0x16u);
  }
}

void *__getNPKDefaultsDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoPassKitLibrary();
  result = dlsym(v2, "NPKDefaultsDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNPKDefaultsDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoPassKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  NanoPassKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary();
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAFPreferencesClass_block_invoke_cold_1();
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AssistantServicesLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __AssistantServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278D23AF8;
    v3 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAFConnectionClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary();
  result = objc_getClass("AFConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAFConnectionClass_block_invoke_cold_1();
  }

  getAFConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceServicesLibraryCore_frameworkLibrary = result;
  return result;
}

BPSVideoControllingBuilder __swiftcall BPSVideoControllingBuilder.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_241E9C5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, char a7, double a8, float a9)
{
  if (a5)
  {

    v18 = a5;
  }

  else
  {
    v19 = objc_opt_self();

    v18 = [v19 mainBundle];
  }

  if (!a4)
  {
    a4 = 0xE300000000000000;
    a3 = 3436653;
  }

  v20 = 0.0;
  if (a9 > 0.0)
  {
    v20 = a9;
  }

  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  if (a6)
  {
    v22 = *&a8;
  }

  else
  {
    v22 = 0;
  }

  v23 = a5;

  sub_241EA5550(a1, a2, a3, a4, v22, (a6 & 1) == 0, a7 & 1, v18, v25, v21);
  type metadata accessor for ConfigurableVideoView();
  return sub_241EA5580(v25);
}

unint64_t type metadata accessor for BPSVideoControllingBuilder()
{
  result = qword_27EC7A068;
  if (!qword_27EC7A068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC7A068);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_241E9C7B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_241EA9C68();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_241EA9C58();
}

uint64_t sub_241E9C830(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_241EA9C68();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double sub_241E9C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);

  return v7;
}

void __swiftcall BPSFadingImageView.init(frame:)(BPSFadingImageView *__return_ptr retstr, CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id BPSFadingImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___BPSFadingImageView_fadePercentage] = 0x3FC3333333333333;
  *&v4[OBJC_IVAR___BPSFadingImageView_fadeSpread] = 0x3FD999999999999ALL;
  v9 = OBJC_IVAR___BPSFadingImageView_maskLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v12.receiver = v4;
  v12.super_class = BPSFadingImageView;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setupMask];
  return v10;
}

id BPSFadingImageView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___BPSFadingImageView_fadePercentage] = 0x3FC3333333333333;
  *&v1[OBJC_IVAR___BPSFadingImageView_fadeSpread] = 0x3FD999999999999ALL;
  v3 = OBJC_IVAR___BPSFadingImageView_maskLayer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v8.receiver = v1;
  v8.super_class = BPSFadingImageView;
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setupMask];
  }

  return v5;
}

Swift::Void __swiftcall BPSFadingImageView.layoutSubviews()()
{
  v2.super_class = BPSFadingImageView;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = [v0 maskLayer];
  [v0 bounds];
  [v1 setFrame_];
}

void sub_241E9D300()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  v3 = [v2 CGColor];

  v4 = [v1 blackColor];
  v5 = [v4 CGColor];

  v6 = [v0 maskLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC79BA8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_241EAF1D0;
  type metadata accessor for CGColor();
  *(v7 + 32) = v3;
  *(v7 + 56) = v8;
  *(v7 + 64) = v3;
  *(v7 + 88) = v8;
  *(v7 + 96) = v5;
  *(v7 + 120) = v8;
  *(v7 + 128) = v5;
  *(v7 + 152) = v8;
  *(v7 + 160) = v3;
  *(v7 + 216) = v8;
  *(v7 + 184) = v8;
  *(v7 + 192) = v3;
  v9 = v3;
  v10 = v5;
  v11 = v9;
  v12 = v10;
  v13 = sub_241EA9DD8();

  [v6 setColors_];

  [v0 fadePercentage];
  v15 = v14;
  [v0 fadeSpread];
  v17 = v15 * (1.0 - v16);
  [v0 fadePercentage];
  v19 = v18;
  [v0 fadePercentage];
  v21 = 1.0 - v20;
  [v0 fadePercentage];
  v23 = 1.0 - v22;
  [v0 fadePercentage];
  v25 = v24;
  [v0 fadeSpread];
  v27 = v23 + v25 * v26;
  v28 = [v0 maskLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EC79D00);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_241EAF1E0;
  sub_241E9D9E4(0, &qword_27EC79BB0);
  *(v29 + 32) = sub_241EA9E88();
  *(v29 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v29 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v29 + 56) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v29 + 64) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v29 + 72) = sub_241EA9E88();
  v30 = sub_241EA9DD8();

  [v28 setLocations_];
}

void __swiftcall BPSFadingImageView.init(image:)(BPSFadingImageView *__return_ptr retstr, UIImage_optional image)
{
  isa = image.value.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage_];
}

void __swiftcall BPSFadingImageView.init(image:highlightedImage:)(BPSFadingImageView *__return_ptr retstr, UIImage_optional image, UIImage_optional highlightedImage)
{
  v3 = *&image.is_nil;
  isa = image.value.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:image.value.super.isa highlightedImage:*&image.is_nil];
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for CGColor()
{
  if (!qword_27EC79BB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EC79BB8);
    }
  }
}

uint64_t sub_241E9D9E4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_241E9DA3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

char *sub_241E9DA70(uint64_t a1, int a2, float a3)
{
  LODWORD(v4) = a2;
  v7 = *a1;
  v6 = *(a1 + 8);
  v43 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = sub_241EA9C68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_241E9C75C();
  (*(v10 + 16))(v12, v13, v9);
  v48 = *(a1 + 16);

  sub_241EA30B4(&v48, v47);
  v14 = v8;
  v15 = sub_241EA9C48();
  v16 = sub_241EA9E48();

  sub_241EA3110(&v48);
  v42 = v14;

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v4 = v17;
    v18 = swift_slowAlloc();
    v46 = v18;
    *v4 = 136316162;
    v47[0] = v45;
    swift_getMetatypeMetadata();
    v19 = sub_241EA9D48();
    v21 = sub_241EA2B0C(v19, v20, &v46);
    v40 = v9;
    v22 = v7;
    v23 = v21;

    *(v4 + 4) = v23;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_241EA2B0C(0xD00000000000002CLL, 0x8000000241EB3C30, &v46);
    *(v4 + 22) = 2080;

    v24 = sub_241EA2B0C(v22, v6, &v46);

    *(v4 + 24) = v24;
    *(v4 + 32) = 1024;
    *(v4 + 34) = v41 & 1;
    *(v4 + 38) = 2048;
    *(v4 + 40) = a3;
    _os_log_impl(&dword_241E74000, v15, v16, "%s:%s: Initializing with videoPackage: %s, shouldLoop: %{BOOL}d, initialVolume: %f", v4, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v18, -1, -1);
    v25 = v4;
    LOBYTE(v4) = v41;
    MEMORY[0x245D04170](v25, -1, -1);

    (*(v10 + 8))(v12, v40);
    v26 = v22;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v26 = v7;
  }

  v27 = [objc_allocWithZone(v45) initWithFrame_];
  v28 = &v27[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_videoPackage];
  v29 = *&v27[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_videoPackage];
  v30 = *&v27[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_videoPackage + 8];
  v31 = *&v27[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_videoPackage + 16];
  v32 = *&v27[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_videoPackage + 24];
  v33 = *&v27[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_videoPackage + 32];
  *v28 = v26;
  v28[1] = v6;
  v34 = v43;
  v28[2] = v44;
  v28[3] = v34;
  v35 = v42;
  v28[4] = v42;

  sub_241EA30B4(&v48, v47);
  v36 = v35;
  v37 = v27;
  sub_241EA3164(v29, v30, v31, v32, v33);
  v37[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_shouldLoop] = v4 & 1;
  sub_241E9E5A8(a3);

  sub_241EA3110(&v48);

  return v37;
}

id sub_241E9DE28(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player] = 0;
  *&v4[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerLayer] = 0;
  *&v4[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerItem] = 0;
  v4[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_shouldLoop] = 1;
  v9 = &v4[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_videoPackage];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playbackStatusObserver] = 0;
  v4[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_wasPlayingBeforeBackground] = 0;
  *&v4[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_applicationLifecycleObservers] = MEMORY[0x277D84F90];
  v11.receiver = v4;
  v11.super_class = type metadata accessor for VideoHostingView();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_241E9DFD0(void *a1)
{
  *&v1[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player] = 0;
  *&v1[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerLayer] = 0;
  *&v1[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerItem] = 0;
  v1[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_shouldLoop] = 1;
  v3 = &v1[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_videoPackage];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playbackStatusObserver] = 0;
  v1[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_wasPlayingBeforeBackground] = 0;
  *&v1[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_applicationLifecycleObservers] = MEMORY[0x277D84F90];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for VideoHostingView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_241E9E154(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_241EA9C68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241E9C75C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_241EA9C48();
  v9 = sub_241EA9E48();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    v19 = ObjectType;
    swift_getMetatypeMetadata();
    v12 = sub_241EA9D48();
    v14 = sub_241EA2B0C(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_241EA2B0C(0x74696E696564, 0xE600000000000000, &v17);
    _os_log_impl(&dword_241E74000, v8, v9, "%s:%s: Deinitializing.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v11, -1, -1);
    MEMORY[0x245D04170](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_241EA1B6C();
  v15 = type metadata accessor for VideoHostingView();
  v18.receiver = a1;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t sub_241E9E380()
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();

  return swift_task_deinitOnExecutor();
}

uint64_t sub_241E9E5A8(float a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC79C00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v80 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = v76 - v8;
  v9 = sub_241EA9C28();
  v88 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v78 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_241EA9C68();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v86 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v76 - v15;
  v17 = sub_241E9C75C();
  v18 = *(v12 + 16);
  v83 = v17;
  v84 = v12 + 16;
  v82 = v18;
  (v18)(v16);
  v19 = sub_241EA9C48();
  v20 = sub_241EA9E48();
  v21 = os_log_type_enabled(v19, v20);
  v87 = v12;
  v79 = ObjectType;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v89 = v23;
    v90 = ObjectType;
    *v22 = 136315650;
    swift_getMetatypeMetadata();
    v24 = sub_241EA9D48();
    v26 = sub_241EA2B0C(v24, v25, &v89);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_241EA2B0C(0xD00000000000001BLL, 0x8000000241EB3F10, &v89);
    *(v22 + 22) = 2048;
    *(v22 + 24) = a1;
    _os_log_impl(&dword_241E74000, v19, v20, "%s:%s: Setting up player with initial volume: %f", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v23, -1, -1);
    v27 = v22;
    v12 = v87;
    MEMORY[0x245D04170](v27, -1, -1);
  }

  v85 = *(v12 + 8);
  v85(v16, v11);
  v28 = &v2[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_videoPackage];
  if (!*&v2[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_videoPackage + 8])
  {
    goto LABEL_9;
  }

  v30 = v28[3];
  v29 = v28[4];

  v31 = v29;
  v32 = sub_241EA9D28();
  v76[1] = v30;
  v33 = sub_241EA9D28();
  v77 = v31;
  v34 = [v31 URLForResource:v32 withExtension:v33];

  if (v34)
  {
    v35 = v80;
    sub_241EA9C18();

    v36 = 0;
  }

  else
  {
    v36 = 1;
    v35 = v80;
  }

  v37 = v88;
  (*(v88 + 56))(v35, v36, 1, v9);
  v38 = v81;
  sub_241EA31E0(v35, v81);
  if ((*(v37 + 48))(v38, 1, v9) == 1)
  {

    sub_241EA339C(v38, &qword_27EC79C00);
LABEL_9:
    v39 = v86;
    v82(v86, v83, v11);
    v40 = v2;
    v41 = sub_241EA9C48();
    v42 = sub_241EA9E68();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v89 = v44;
      *v43 = 136315650;
      v90 = v79;
      swift_getMetatypeMetadata();
      v45 = sub_241EA9D48();
      v47 = sub_241EA2B0C(v45, v46, &v89);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_241EA2B0C(0xD00000000000001BLL, 0x8000000241EB3F10, &v89);
      *(v43 + 22) = 2080;
      v48 = v28[1];
      if (v48)
      {
        v50 = v28[3];
        v49 = v28[4];
        v51 = v44;
        v52 = v28[2];
        v53 = *v28;
        sub_241EA35E0(v53, v48, v52, v50, v49);

        v54 = v52;
        v44 = v51;
        v39 = v86;
        sub_241EA3164(v53, v48, v54, v50, v49);
      }

      else
      {
        v48 = 0xE300000000000000;
        v53 = 4271950;
      }

      v75 = sub_241EA2B0C(v53, v48, &v89);

      *(v43 + 24) = v75;
      _os_log_impl(&dword_241E74000, v41, v42, "%s:%s: Failed to get video URL from package: %s.", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D04170](v44, -1, -1);
      MEMORY[0x245D04170](v43, -1, -1);
    }

    return (v85)(v39, v11);
  }

  v55 = v78;
  v56 = v9;
  (*(v88 + 32))(v78, v38, v9);
  v57 = objc_allocWithZone(MEMORY[0x277CE65B0]);
  v58 = sub_241EA9C08();
  v59 = [v57 initWithURL_];

  v60 = *&v2[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerItem];
  *&v2[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerItem] = v59;
  v61 = v59;

  v62 = [objc_allocWithZone(MEMORY[0x277CE6598]) initWithPlayerItem_];
  v63 = OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player;
  v64 = *&v2[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player];
  *&v2[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player] = v62;
  v65 = v62;

  *&v66 = a1;
  [v65 setVolume_];

  v67 = [objc_opt_self() playerLayerWithPlayer_];
  v68 = OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerLayer;
  v69 = *&v2[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerLayer];
  *&v2[OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerLayer] = v67;
  v70 = v67;

  if (v70)
  {
    [v70 setVideoGravity_];
  }

  v71 = *&v2[v68];
  if (v71)
  {
    v72 = v71;
    v73 = [v2 layer];
    [v73 addSublayer_];
  }

  sub_241E9F338();
  sub_241E9F818();
  sub_241E9EE18();

  return (*(v88 + 8))(v55, v56);
}

uint64_t sub_241E9EE18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_241EA9C68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241E9C75C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_241EA9C48();
  v9 = sub_241EA9E48();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    aBlock = ObjectType;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v12 = sub_241EA9D48();
    v14 = sub_241EA2B0C(v12, v13, &v34);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_241EA2B0C(0xD000000000000024, 0x8000000241EB3F50, &v34);
    _os_log_impl(&dword_241E74000, v8, v9, "%s:%s: Setting up application lifecycle observers.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v11, -1, -1);
    MEMORY[0x245D04170](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  v17 = *MEMORY[0x277D76660];
  v18 = objc_opt_self();
  v19 = [v18 mainQueue];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = sub_241EA3638;
  v40 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_241EA27AC;
  v38 = &block_descriptor;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 addObserverForName:v17 object:0 queue:v19 usingBlock:v21];
  _Block_release(v21);

  v23 = OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_applicationLifecycleObservers;
  v24 = swift_beginAccess();
  MEMORY[0x245D03300](v24);
  if (*((*(v1 + v23) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v23) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_241EA9DF8();
  }

  sub_241EA9E08();
  swift_endAccess();
  v25 = [v15 defaultCenter];
  v26 = *MEMORY[0x277D76648];
  v27 = [v18 mainQueue];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = sub_241EA36C0;
  v40 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_241EA27AC;
  v38 = &block_descriptor_32;
  v29 = _Block_copy(&aBlock);

  v30 = [v25 addObserverForName:v26 object:0 queue:v27 usingBlock:v29];
  _Block_release(v29);

  v31 = swift_beginAccess();
  MEMORY[0x245D03300](v31);
  if (*((*(v1 + v23) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v23) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_241EA9DF8();
  }

  sub_241EA9E08();
  return swift_endAccess();
}

void sub_241E9F338()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_241EA9C68();
  v4 = *(v3 - 8);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = sub_241E9C75C();
  v11 = *(v4 + 16);
  v11(v9, v10, v3);
  v12 = sub_241EA9C48();
  v43 = sub_241EA9E48();
  v13 = os_log_type_enabled(v12, v43);
  v42 = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v41 = v4;
    v15 = v14;
    v40 = swift_slowAlloc();
    v44 = v40;
    v45 = ObjectType;
    *v15 = 136315394;
    swift_getMetatypeMetadata();
    v16 = sub_241EA9D48();
    v39 = v12;
    v18 = sub_241EA2B0C(v16, v17, &v44);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_241EA2B0C(0xD000000000000014, 0x8000000241EB3E30, &v44);
    v12 = v39;
    _os_log_impl(&dword_241E74000, v39, v43, "%s:%s: Setting up notifications.", v15, 0x16u);
    v19 = v40;
    swift_arrayDestroy();
    MEMORY[0x245D04170](v19, -1, -1);
    v20 = v15;
    v4 = v41;
    MEMORY[0x245D04170](v20, -1, -1);
  }

  v21 = *(v4 + 8);
  v21(v9, v3);
  v22 = *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerItem);
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 defaultCenter];
    v26 = sub_241EA9D28();
    [v25 addObserver:v1 selector:sel_playerDidFinishPlaying name:v26 object:v24];

    v27 = [v23 defaultCenter];
    v28 = sub_241EA9D28();
    [v27 addObserver:v1 selector:sel_playerItemFailedToPlayWithNotification_ name:v28 object:v24];
  }

  else
  {
    v11(v7, v10, v3);
    v29 = sub_241EA9C48();
    v30 = sub_241EA9E68();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136315394;
      v45 = v42;
      swift_getMetatypeMetadata();
      v33 = sub_241EA9D48();
      v35 = v7;
      v36 = sub_241EA2B0C(v33, v34, &v44);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_241EA2B0C(0xD000000000000014, 0x8000000241EB3E30, &v44);
      _os_log_impl(&dword_241E74000, v29, v30, "%s:%s: Player item is nil, cannot setup notifications.", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D04170](v32, -1, -1);
      MEMORY[0x245D04170](v31, -1, -1);

      v37 = v35;
    }

    else
    {

      v37 = v7;
    }

    v21(v37, v3);
  }
}

void sub_241E9F818()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_241EA9C68();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = sub_241E9C75C();
  v11 = *(v4 + 16);
  v11(v9, v10, v3);
  v12 = sub_241EA9C48();
  v37 = sub_241EA9E48();
  v13 = os_log_type_enabled(v12, v37);
  v38 = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v36 = v4;
    v15 = v14;
    v35 = swift_slowAlloc();
    v39 = v35;
    v40 = ObjectType;
    *v15 = 136315394;
    swift_getMetatypeMetadata();
    v16 = sub_241EA9D48();
    v34 = v12;
    v18 = sub_241EA2B0C(v16, v17, &v39);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_241EA2B0C(0xD000000000000010, 0x8000000241EB3E10, &v39);
    v12 = v34;
    _os_log_impl(&dword_241E74000, v34, v37, "%s:%s: Setting up observers.", v15, 0x16u);
    v19 = v35;
    swift_arrayDestroy();
    MEMORY[0x245D04170](v19, -1, -1);
    v20 = v15;
    v4 = v36;
    MEMORY[0x245D04170](v20, -1, -1);
  }

  v21 = *(v4 + 8);
  v21(v9, v3);
  v22 = *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player);
  if (v22)
  {
    v40 = *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player);
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v38;
    v23 = v22;
    v24 = sub_241EA9BF8();

    v25 = *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playbackStatusObserver);
    *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playbackStatusObserver) = v24;
  }

  else
  {
    v11(v7, v10, v3);
    v26 = sub_241EA9C48();
    v27 = sub_241EA9E68();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = v29;
      *v28 = 136315394;
      v40 = v38;
      swift_getMetatypeMetadata();
      v30 = sub_241EA9D48();
      v32 = sub_241EA2B0C(v30, v31, &v39);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_241EA2B0C(0xD000000000000010, 0x8000000241EB3E10, &v39);
      _os_log_impl(&dword_241E74000, v26, v27, "%s:%s: Player is nil, cannot setup observers.", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D04170](v29, -1, -1);
      MEMORY[0x245D04170](v28, -1, -1);
    }

    v21(v7, v3);
  }
}

id sub_241E9FCA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

uint64_t sub_241E9FCD8(void **a1, uint64_t a2)
{
  v4 = sub_241EA9C68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_241E9C75C();
  (*(v5 + 16))(v7, v9, v4);
  v10 = v8;
  v11 = sub_241EA9C48();
  v12 = sub_241EA9E58();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    v20[1] = a2;
    *v13 = 136315650;
    swift_getMetatypeMetadata();
    v15 = sub_241EA9D48();
    v17 = sub_241EA2B0C(v15, v16, v20);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_241EA2B0C(0xD000000000000010, 0x8000000241EB3E10, v20);
    *(v13 + 22) = 2048;
    v18 = [v10 timeControlStatus];

    *(v13 + 24) = v18;
    _os_log_impl(&dword_241E74000, v11, v12, "%s:%s: Playback status changed to %ld", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v14, -1, -1);
    MEMORY[0x245D04170](v13, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_241E9FF2C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_241EA9C68();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = sub_241E9C75C();
  v10 = *(v4 + 16);
  v10(v8, v9, v3);
  v11 = sub_241EA9C48();
  v36 = sub_241EA9E48();
  v12 = os_log_type_enabled(v11, v36);
  v35 = ObjectType;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v32 = v11;
    v14 = v13;
    v33 = swift_slowAlloc();
    v38 = v33;
    v39 = ObjectType;
    *v14 = 136315394;
    swift_getMetatypeMetadata();
    v15 = sub_241EA9D48();
    v34 = v1;
    v17 = sub_241EA2B0C(v15, v16, &v38);
    v1 = v34;

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_241EA2B0C(0xD000000000000018, 0x8000000241EB3DF0, &v38);
    v18 = v32;
    _os_log_impl(&dword_241E74000, v32, v36, "%s:%s: Player finished playing.", v14, 0x16u);
    v19 = v33;
    swift_arrayDestroy();
    MEMORY[0x245D04170](v19, -1, -1);
    MEMORY[0x245D04170](v14, -1, -1);
  }

  else
  {
  }

  v20 = *(v4 + 8);
  result = v20(v8, v3);
  if (*(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_shouldLoop) == 1)
  {
    v10(v37, v9, v3);
    v22 = sub_241EA9C48();
    v23 = sub_241EA9E78();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315394;
      v39 = v35;
      swift_getMetatypeMetadata();
      v26 = sub_241EA9D48();
      v28 = sub_241EA2B0C(v26, v27, &v38);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_241EA2B0C(0xD000000000000018, 0x8000000241EB3DF0, &v38);
      _os_log_impl(&dword_241E74000, v22, v23, "%s:%s: Looping enabled, resetting and playing again.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D04170](v25, -1, -1);
      MEMORY[0x245D04170](v24, -1, -1);
    }

    v29 = v20(v37, v3);
    v30 = MEMORY[0x277D85000];
    v31 = (*((*MEMORY[0x277D85000] & *v1) + 0x188))(v29);
    return (*((*v30 & *v1) + 0x178))(v31);
  }

  return result;
}

uint64_t sub_241EA0448()
{
  ObjectType = swift_getObjectType();
  v1 = sub_241EA9C68();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v35 - v6;
  v8 = sub_241EA9B98();
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v35[1] = sub_241EA9D38();
  v35[2] = v10;
  sub_241EA9EC8();
  if (!*(v9 + 16) || (v11 = sub_241EA3304(v36), (v12 & 1) == 0))
  {

    sub_241EA3348(v36);
LABEL_9:
    v37 = 0u;
    v38 = 0u;
    goto LABEL_10;
  }

  sub_241EA33FC(*(v9 + 56) + 32 * v11, &v37);
  sub_241EA3348(v36);

  if (!*(&v38 + 1))
  {
LABEL_10:
    sub_241EA339C(&v37, &qword_27EC79C08);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC79C10);
  if (swift_dynamicCast())
  {
    v13 = v36[0];
    v14 = sub_241E9C75C();
    (*(v2 + 16))(v7, v14, v1);
    v15 = v13;
    v16 = sub_241EA9C48();
    v17 = sub_241EA9E68();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *&v37 = v35[0];
      *v18 = 136315650;
      v36[0] = ObjectType;
      swift_getMetatypeMetadata();
      v20 = sub_241EA9D48();
      v22 = sub_241EA2B0C(v20, v21, &v37);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_241EA2B0C(0xD000000000000025, 0x8000000241EB3DC0, &v37);
      *(v18 + 22) = 2112;
      v23 = v13;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v24;
      *v19 = v24;
      _os_log_impl(&dword_241E74000, v16, v17, "%s:%s: Player item failed to play to end. Error: %@", v18, 0x20u);
      sub_241EA339C(v19, &qword_27EC79C18);
      MEMORY[0x245D04170](v19, -1, -1);
      v25 = v35[0];
      swift_arrayDestroy();
      MEMORY[0x245D04170](v25, -1, -1);
      MEMORY[0x245D04170](v18, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v7, v1);
  }

LABEL_11:
  v26 = sub_241E9C75C();
  (*(v2 + 16))(v5, v26, v1);
  v27 = sub_241EA9C48();
  v28 = sub_241EA9E68();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v37 = v30;
    *v29 = 136315394;
    v36[0] = ObjectType;
    swift_getMetatypeMetadata();
    v31 = sub_241EA9D48();
    v33 = sub_241EA2B0C(v31, v32, &v37);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_241EA2B0C(0xD000000000000025, 0x8000000241EB3DC0, &v37);
    _os_log_impl(&dword_241E74000, v27, v28, "%s:%s: Player item failed to play to end with unknown error.", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v30, -1, -1);
    MEMORY[0x245D04170](v29, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

char *sub_241EA0B88(uint64_t *a1, int a2, float a3)
{
  v4 = v3;
  LODWORD(v81) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC79C00);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v79 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v80 = &v68[-v10];
  v11 = sub_241EA9C68();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v68[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v68[-v17];
  v19 = sub_241E9C75C();
  v83 = v12;
  v84 = v11;
  v20 = *(v12 + 16);
  v76 = v19;
  v77 = v20;
  v78 = v12 + 16;
  v20(v18);
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[3];
  v75 = a1[2];
  v24 = a1[4];

  v25 = v24;
  v26 = sub_241EA9C48();
  v27 = sub_241EA9E48();
  v74 = v25;

  v82 = v23;

  v69 = v27;
  v28 = os_log_type_enabled(v26, v27);
  v71 = v4;
  v72 = v21;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v85 = v30;
    v86 = v4;
    *v29 = 136316162;
    swift_getMetatypeMetadata();
    v31 = sub_241EA9D48();
    v33 = sub_241EA2B0C(v31, v32, &v85);
    v34 = v83;
    v35 = v84;
    v36 = v72;

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_241EA2B0C(0xD000000000000026, 0x8000000241EB3C60, &v85);
    *(v29 + 22) = 2080;
    *(v29 + 24) = sub_241EA2B0C(v36, v22, &v85);
    *(v29 + 32) = 1024;
    *(v29 + 34) = v81 & 1;
    *(v29 + 38) = 2048;
    *(v29 + 40) = a3;
    _os_log_impl(&dword_241E74000, v26, v69, "%s:%s: Attempting to create with videoPackage: %s, shouldLoop: %{BOOL}d, initialVolume: %f", v29, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v30, -1, -1);
    MEMORY[0x245D04170](v29, -1, -1);

    v37 = *(v34 + 8);
    v37(v18, v35);
  }

  else
  {

    v37 = *(v83 + 8);
    v37(v18, v84);
  }

  type metadata accessor for VideoHostingView();

  v38 = v74;
  v81 = sub_241E9DA70(a1, v81 & 1, a3);
  v39 = sub_241EA9D28();
  v40 = sub_241EA9D28();
  v41 = [v38 URLForResource:v39 withExtension:v40];

  if (v41)
  {
    v42 = v79;
    sub_241EA9C18();

    v43 = 0;
  }

  else
  {
    v43 = 1;
    v42 = v79;
  }

  v44 = sub_241EA9C28();
  v45 = *(v44 - 8);
  (*(v45 + 56))(v42, v43, 1, v44);
  v46 = v42;
  v47 = v80;
  sub_241EA31E0(v46, v80);
  v48 = (*(v45 + 48))(v47, 1, v44);
  sub_241EA339C(v47, &qword_27EC79C00);
  if (v48 == 1)
  {
    v77(v73, v76, v84);

    v49 = v38;
    v50 = sub_241EA9C48();
    v51 = sub_241EA9E68();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v85 = v53;
      *v52 = 136315650;
      v86 = v71;
      swift_getMetatypeMetadata();
      v54 = sub_241EA9D48();
      v56 = v37;
      v57 = sub_241EA2B0C(v54, v55, &v85);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_241EA2B0C(0xD000000000000026, 0x8000000241EB3C60, &v85);
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_241EA2B0C(v72, v22, &v85);
      _os_log_impl(&dword_241E74000, v50, v51, "%s:%s: Video URL is nil for package: %s. Returning nil.", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D04170](v53, -1, -1);
      MEMORY[0x245D04170](v52, -1, -1);

      v56(v73, v84);
    }

    else
    {

      v37(v73, v84);
    }

    return 0;
  }

  else
  {
    v58 = v70;
    v77(v70, v76, v84);
    v59 = sub_241EA9C48();
    v60 = sub_241EA9E48();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v85 = v62;
      *v61 = 136315394;
      v86 = v71;
      swift_getMetatypeMetadata();
      v63 = sub_241EA9D48();
      v65 = v37;
      v66 = sub_241EA2B0C(v63, v64, &v85);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_241EA2B0C(0xD000000000000026, 0x8000000241EB3C60, &v85);
      _os_log_impl(&dword_241E74000, v59, v60, "%s:%s: Successfully created VideoHostingView.", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D04170](v62, -1, -1);
      MEMORY[0x245D04170](v61, -1, -1);

      v65(v58, v84);
    }

    else
    {

      v37(v58, v84);
    }

    return v81;
  }
}

id sub_241EA1418(uint64_t a1, unint64_t a2, const char *a3, SEL *a4)
{
  v32 = a1;
  v8 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_241EA9C68();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_241E9C75C();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_241EA9C48();
  v16 = sub_241EA9E78();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = a4;
    v20 = v19;
    v33[0] = v19;
    v33[1] = ObjectType;
    *v18 = 136315394;
    swift_getMetatypeMetadata();
    v21 = sub_241EA9D48();
    v23 = sub_241EA2B0C(v21, v22, v33);
    v30 = v8;
    v24 = a3;
    v25 = v23;

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_241EA2B0C(v32, v29, v33);
    v26 = v24;
    v8 = v30;
    _os_log_impl(&dword_241E74000, v15, v16, v26, v18, 0x16u);
    swift_arrayDestroy();
    v27 = v20;
    a4 = v31;
    MEMORY[0x245D04170](v27, -1, -1);
    MEMORY[0x245D04170](v18, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  return [*(v8 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player) *a4];
}

id sub_241EA1654()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_241EA9C68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241E9C75C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_241EA9C48();
  v9 = sub_241EA9E78();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    v18[0] = ObjectType;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v12 = sub_241EA9D48();
    v14 = sub_241EA2B0C(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_241EA2B0C(0x29287465736572, 0xE700000000000000, &v17);
    _os_log_impl(&dword_241E74000, v8, v9, "%s:%s: Attempting to reset video to start.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v11, -1, -1);
    MEMORY[0x245D04170](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  result = *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player);
  if (result)
  {
    v16 = *(MEMORY[0x277CC08F0] + 16);
    v18[0] = *MEMORY[0x277CC08F0];
    v18[1] = *(MEMORY[0x277CC08F0] + 8);
    v18[2] = v16;
    return [result seekToTime_];
  }

  return result;
}

id sub_241EA18A4(float a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_241EA9C68();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_241E9C75C();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_241EA9C48();
  v11 = sub_241EA9E48();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    v19[1] = ObjectType;
    *v12 = 136315650;
    swift_getMetatypeMetadata();
    v14 = sub_241EA9D48();
    v16 = sub_241EA2B0C(v14, v15, v19);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_241EA2B0C(0x6D756C6F56746573, 0xED0000293A5F2865, v19);
    *(v12 + 22) = 2048;
    *(v12 + 24) = a1;
    _os_log_impl(&dword_241E74000, v10, v11, "%s:%s: Setting volume to %f.", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v13, -1, -1);
    MEMORY[0x245D04170](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  *&v17 = a1;
  return [*(v2 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player) setVolume_];
}

uint64_t sub_241EA1AF8()
{
  v1 = OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player;
  v2 = *(v0 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player);
  if (v2)
  {
    [v2 rate];
    if (v3 == 0.0)
    {
      return 0;
    }

    v5 = *(v0 + v1);
    if (v5)
    {
      v6 = [v5 error];
      if (v6)
      {

        return 0;
      }
    }
  }

  return 1;
}

void sub_241EA1B6C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_241EA9C68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241E9C75C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_241EA9C48();
  v9 = sub_241EA9E48();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    v26[1] = ObjectType;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v12 = sub_241EA9D48();
    v14 = sub_241EA2B0C(v12, v13, v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_241EA2B0C(0x2870756E61656C63, 0xE900000000000029, v26);
    _os_log_impl(&dword_241E74000, v8, v9, "%s:%s: Starting cleanup process.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v11, -1, -1);
    MEMORY[0x245D04170](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v15 = OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playbackStatusObserver;
  v16 = *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playbackStatusObserver);
  if (v16)
  {
    v17 = v16;
    sub_241EA9BB8();
  }

  v18 = [objc_opt_self() defaultCenter];
  [v18 removeObserver_];

  sub_241EA1E4C();
  v19 = OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player;
  [*(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_player) pause];
  v20 = OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerLayer;
  v21 = *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerLayer);
  if (v21)
  {
    [v21 removeFromSuperlayer];
  }

  v22 = *(v1 + v19);
  *(v1 + v19) = 0;

  v23 = *(v1 + v20);
  *(v1 + v20) = 0;

  v24 = *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerItem);
  *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_playerItem) = 0;

  v25 = *(v1 + v15);
  *(v1 + v15) = 0;
}

uint64_t sub_241EA1E4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_241EA9C68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241E9C75C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_241EA9C48();
  v9 = sub_241EA9E48();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    v25[1] = ObjectType;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v12 = sub_241EA9D48();
    v14 = sub_241EA2B0C(v12, v13, v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_241EA2B0C(0xD000000000000025, 0x8000000241EB3EE0, v25);
    _os_log_impl(&dword_241E74000, v8, v9, "%s:%s: Removing application lifecycle observers.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v11, -1, -1);
    MEMORY[0x245D04170](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v15 = OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_applicationLifecycleObservers;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_12:
    *(v1 + v15) = MEMORY[0x277D84F90];
  }

  v17 = sub_241EA9F28();
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_5:
  result = objc_opt_self();
  if (v17 >= 1)
  {
    v19 = result;
    v24 = v1;

    v20 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x245D03430](v20, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v20 + 32);
        swift_unknownObjectRetain();
      }

      ++v20;
      v22 = [v19 defaultCenter];
      [v22 removeObserver_];
      swift_unknownObjectRelease();
    }

    while (v17 != v20);

    v1 = v24;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_241EA2340()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_241EA9C68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241E9C75C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_241EA9C48();
  v9 = sub_241EA9E48();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    v19[1] = ObjectType;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v12 = sub_241EA9D48();
    v14 = sub_241EA2B0C(v12, v13, v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_241EA2B0C(0xD00000000000001FLL, 0x8000000241EB3FE0, v19);
    _os_log_impl(&dword_241E74000, v8, v9, "%s:%s: Application did enter background.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v11, -1, -1);
    MEMORY[0x245D04170](v10, -1, -1);
  }

  v15 = (*(v4 + 8))(v6, v3);
  v16 = MEMORY[0x277D85000];
  *(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_wasPlayingBeforeBackground) = (*((*MEMORY[0x277D85000] & *v1) + 0x198))(v15) & 1;
  v17 = (*((*v16 & *v1) + 0x180))();
  return (*((*v16 & *v1) + 0x188))(v17);
}

uint64_t sub_241EA2624(uint64_t a1, uint64_t a2)
{
  sub_241EA9E28();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_241EA3760();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_241EA9EE8();
    MEMORY[0x245D032C0](0xD00000000000003FLL, 0x8000000241EB3F80);
    v8 = sub_241EA9F78();
    MEMORY[0x245D032C0](v8);

    MEMORY[0x245D032C0](46, 0xE100000000000000);
    result = sub_241EA9F18();
    __break(1u);
  }

  return result;
}

uint64_t sub_241EA27AC(uint64_t a1)
{
  v2 = sub_241EA9BA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_241EA9B88();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_241EA28A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_241EA9C68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241E9C75C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_241EA9C48();
  v9 = sub_241EA9E48();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    v17[1] = ObjectType;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v12 = sub_241EA9D48();
    v14 = sub_241EA2B0C(v12, v13, v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_241EA2B0C(0xD00000000000001CLL, 0x8000000241EB3FC0, v17);
    _os_log_impl(&dword_241E74000, v8, v9, "%s:%s: Application did become active.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D04170](v11, -1, -1);
    MEMORY[0x245D04170](v10, -1, -1);
  }

  result = (*(v4 + 8))(v6, v3);
  v16 = OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_wasPlayingBeforeBackground;
  if (*(v1 + OBJC_IVAR____TtC17BridgePreferences16VideoHostingView_wasPlayingBeforeBackground) == 1)
  {
    result = (*((*MEMORY[0x277D85000] & *v1) + 0x178))(result);
  }

  *(v1 + v16) = 0;
  return result;
}

unint64_t sub_241EA2B0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_241EA2BD8(v11, 0, 0, 1, a1, a2);
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
    sub_241EA33FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_241EA2BD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_241EA2CE4(a5, a6);
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
    result = sub_241EA9F08();
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

uint64_t sub_241EA2CE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_241EA2D30(a1, a2);
  sub_241EA2E60(&unk_285405B20);
  return v3;
}

uint64_t sub_241EA2D30(uint64_t a1, unint64_t a2)
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

  v6 = sub_241EA2F4C(v5, 0);
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

  result = sub_241EA9F08();
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
        v10 = sub_241EA9D98();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_241EA2F4C(v10, 0);
        result = sub_241EA9ED8();
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

uint64_t sub_241EA2E60(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_241EA2FC0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_241EA2F4C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC79C20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_241EA2FC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC79C20);
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

void sub_241EA3164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t sub_241EA31E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC79C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_241EA3264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241EA32AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_241EA3304(uint64_t a1)
{
  v2 = sub_241EA9EA8();

  return sub_241EA3458(a1, v2);
}

uint64_t sub_241EA339C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_241EA33FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_241EA3458(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_241EA3520(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D033F0](v9, a1);
      sub_241EA3348(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_241EA35E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    v5 = a5;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241EA37B8(uint64_t a1, void (*a2)(void))
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void type metadata accessor for TimeControlStatus()
{
  if (!qword_27EC79C28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EC79C28);
    }
  }
}

id sub_241EA38F4()
{
  v1 = sub_241EA9C28();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  v11 = v0[6];
  v12 = sub_241EA9D28();
  v13 = sub_241EA9D28();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (!v14)
  {
    return 0;
  }

  sub_241EA9C18();

  (*(v2 + 32))(v10, v8, v1);
  sub_241E9D9E4(0, &qword_27EC79C30);
  (*(v2 + 16))(v5, v10, v1);
  v16 = v0[4];
  v15 = v0[5];

  v17 = sub_241EA3DEC(v5, v16, v15, 0);
  (*(v2 + 8))(v10, v1);
  return v17;
}

char *sub_241EA3B0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_241EA9F28();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_241EA4E20(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x245D03430](i, a1);
        sub_241E9D9E4(0, &qword_27EC79C50);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_241EA4E20((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_241EA5414(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_241E9D9E4(0, &qword_27EC79C50);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_241EA4E20((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_241EA5414(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_241EA3D54()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  type metadata accessor for CAPackageViewLayer();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = v1;
  v6 = v2;

  return sub_241EA9C78();
}

id sub_241EA3DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_241EA9C08();
  v7 = sub_241EA9D28();

  if (a4)
  {
    v8 = sub_241EA9D18();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_241EA9C28();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_241EA9BC8();

    swift_willThrow();
    v15 = sub_241EA9C28();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

id sub_241EA3FB4@<X0>(id result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, id a7@<X6>, void *a8@<X8>)
{
  v13 = result;
  if (!a7)
  {
    type metadata accessor for AnimationPackage.PrivateMockClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = [objc_opt_self() bundleForClass_];
    a7 = result;
  }

  *a8 = v13;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

void sub_241EA4070(void *a1)
{
  v2 = OBJC_IVAR____TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer_];
  }
}

void sub_241EA4108()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for CAPackageViewLayer();
  objc_msgSendSuper2(&v29, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    Width = CGRectGetWidth(v30);
    v24 = v4;
    v31.origin.x = v4;
    v31.origin.y = v6;
    v25 = v10;
    v31.size.width = v8;
    v31.size.height = v10;
    v19 = Width / CGRectGetHeight(v31);
    v32.origin.x = v12;
    v32.origin.y = v14;
    v32.size.width = v16;
    v32.size.height = v18;
    v20 = CGRectGetWidth(v32);
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    if (v19 >= v20 / CGRectGetHeight(v33))
    {
      v36.origin.x = v24;
      v36.origin.y = v6;
      v36.size.width = v8;
      v36.size.height = v25;
      Height = CGRectGetHeight(v36);
      v37.origin.x = v12;
      v37.origin.y = v14;
      v37.size.width = v16;
      v37.size.height = v18;
      v22 = CGRectGetHeight(v37);
    }

    else
    {
      v34.origin.x = v24;
      v34.origin.y = v6;
      v34.size.width = v8;
      v34.size.height = v25;
      Height = CGRectGetWidth(v34);
      v35.origin.x = v12;
      v35.origin.y = v14;
      v35.size.width = v16;
      v35.size.height = v18;
      v22 = CGRectGetWidth(v35);
    }

    CGAffineTransformMakeScale(&v27, Height / v22, Height / v22);
    *&m.a = *&v27.m11;
    *&m.c = *&v27.m13;
    *&m.tx = *&v27.m21;
    CATransform3DMakeAffineTransform(&v27, &m);
    [v2 setTransform_];
    [v0 bounds];
    MidX = CGRectGetMidX(v38);
    [v0 bounds];
    [v2 setPosition_];
  }
}

id sub_241EA4614(void *a1)
{
  *&v1[OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_hostingView] = 0;
  v3 = &v1[OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_animationView];
  v4 = type metadata accessor for AnimationHostingView();
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v9.receiver = v1;
  v9.super_class = v4;
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_241EA474C();
  }

  return v6;
}

void sub_241EA474C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_hostingView;
  v3 = *&v0[OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_hostingView];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = &v0[OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_animationView];
  v5 = *&v0[OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_animationView];
  if (v5)
  {
    v6 = *(v4 + 1);
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC79C58));
    sub_241EA5468(v5, v6);
    v27 = v5;
    v26 = v6;

    v8 = sub_241EA9C88();
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EC79D00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_241EAF3A0;
    v11 = [v8 leadingAnchor];
    v12 = [v1 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v10 + 32) = v13;
    v14 = [v8 trailingAnchor];
    v15 = [v1 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v10 + 40) = v16;
    v17 = [v8 topAnchor];
    v18 = [v1 topAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v10 + 48) = v19;
    v20 = [v8 bottomAnchor];

    v21 = [v1 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v10 + 56) = v22;
    sub_241E9D9E4(0, &qword_27EC79C60);
    v23 = sub_241EA9DD8();

    [v9 activateConstraints_];

    v24 = *&v1[v2];
    *&v1[v2] = v8;
  }

  else
  {
    v25 = *&v1[v2];
    *&v1[v2] = 0;
  }
}

char *sub_241EA4AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_241EA38F4();
  if (result)
  {
    v6 = result;

    result = sub_241EA4F50(v6, a2, a3);
    if (result)
    {
      v9 = result;
      v10 = v7;
      v11 = v8;
      v12 = [objc_allocWithZone(type metadata accessor for AnimationHostingView()) initWithFrame_];
      v13 = &v12[OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_animationView];
      v14 = *&v12[OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_animationView];
      v15 = *&v12[OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_animationView + 8];
      *v13 = v9;
      *(v13 + 1) = v10;
      *(v13 + 2) = v11;
      v16 = v12;
      v17 = v9;
      v18 = v10;

      sub_241EA5100(v14, v15);
      sub_241EA474C();

      return v16;
    }
  }

  return result;
}

void sub_241EA4BCC(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_animationView);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtC17BridgePreferences20AnimationHostingView_animationView + 8);
    v13 = v2;
    v5 = v4;

    v6 = [v13 rootLayer];
    if (v6)
    {
      v7 = v6;
      v8 = sub_241EA9D28();
      v9 = [v7 stateWithName_];

      if (v9)
      {
        v10 = v9;
        v11 = [v5 layer];
        *&v12 = a1;
        [v5 setState:v10 ofLayer:v11 transitionSpeed:v12];
      }
    }
  }
}

id sub_241EA4D40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_241EA4E20(char *a1, int64_t a2, char a3)
{
  result = sub_241EA4E40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241EA4E40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC79BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_241EA4F50(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [a1 rootLayer];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  [v5 setGeometryFlipped_];
  v7 = objc_allocWithZone(MEMORY[0x277CD9FB8]);
  v8 = v6;
  result = [v7 initWithLayer_];
  if (result)
  {
    v10 = result;
    [result setInitialStatesOfLayer_];

    if (a3)
    {
      v11 = [v4 rootLayer];
      if (!v11)
      {

        return v4;
      }

      v12 = v11;
      v13 = sub_241EA9D28();

      v14 = [v12 stateWithName_];

      if (v14)
      {
        v15 = v14;
        v16 = [v10 layer];
        LODWORD(v17) = 1.0;
        [v10 setState:v15 ofLayer:v16 transitionSpeed:v17];
      }
    }

    return v4;
  }

  __break(1u);
  return result;
}

void *sub_241EA5100(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_241EA5164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241EA51AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_241EA5240(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241EA5288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241EA52F4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [v3 rootLayer];
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    sub_241EA4070(v6);
    sub_241EA3B0C(v4);
    v8 = sub_241EA9DD8();

    [a1 setFilters_];
  }
}

_OWORD *sub_241EA5414(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_241EA5468(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2;
  }

  return result;
}

unint64_t sub_241EA54B0()
{
  result = qword_27EC79C68;
  if (!qword_27EC79C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EC79C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC79C68);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_241EA5550@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = a7;
  *(a9 + 44) = a10;
  *(a9 + 48) = a8;
  return result;
}

id sub_241EA5580(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BPSConfigurableVideoView_hostingView];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR___BPSConfigurableVideoView_autoPlayTimer] = 0;
  v5 = &v3[OBJC_IVAR___BPSConfigurableVideoView_configuration];
  v7 = *(a1 + 16);
  v6 = *(a1 + 32);
  v8 = *a1;
  *(v5 + 6) = *(a1 + 48);
  *(v5 + 1) = v7;
  *(v5 + 2) = v6;
  *v5 = v8;
  sub_241EA564C(a1, v12);
  v11.receiver = v3;
  v11.super_class = v1;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_241EA5760();
  sub_241EA5A84(a1);

  return v9;
}

void sub_241EA5760()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___BPSConfigurableVideoView_configuration];
  v3 = *&v0[OBJC_IVAR___BPSConfigurableVideoView_configuration];
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 6);

  sub_241E9DA3C(v3, v4, v5, v6, v7, v29);
  type metadata accessor for VideoHostingView();
  v8 = sub_241EA0B88(v29, v2[41], *(v2 + 11));
  v9 = v8;
  v10 = &off_285405B48;
  v11 = &v1[OBJC_IVAR___BPSConfigurableVideoView_hostingView];
  v12 = *&v1[OBJC_IVAR___BPSConfigurableVideoView_hostingView];
  if (!v8)
  {
    v10 = 0;
  }

  *v11 = v8;
  v11[1] = v10;
  v13 = v8;

  if (v9)
  {
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v14 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EC79D00);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_241EAF3A0;
    v16 = [v13 leadingAnchor];
    v17 = [v1 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v15 + 32) = v18;
    v19 = [v13 trailingAnchor];
    v20 = [v1 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    *(v15 + 40) = v21;
    v22 = [v13 topAnchor];
    v23 = [v1 topAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    *(v15 + 48) = v24;
    v25 = [v13 bottomAnchor];
    v26 = [v1 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v15 + 56) = v27;
    sub_241EA699C();
    v28 = sub_241EA9DD8();

    [v14 activateConstraints_];
  }

  sub_241EA5AD8();
  v32 = v29[0];
  sub_241EA3110(&v32);
  v31 = v29[1];
  sub_241EA3110(&v31);
}

void sub_241EA5AD8()
{
  if ((*(v0 + OBJC_IVAR___BPSConfigurableVideoView_configuration + 40) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR___BPSConfigurableVideoView_configuration + 32);
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_241EA6814;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_241EA5C08;
    v7[3] = &block_descriptor_0;
    v4 = _Block_copy(v7);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:v1];
    _Block_release(v4);
    v6 = *(v0 + OBJC_IVAR___BPSConfigurableVideoView_autoPlayTimer);
    *(v0 + OBJC_IVAR___BPSConfigurableVideoView_autoPlayTimer) = v5;
  }
}

void sub_241EA5C08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_241EA5DF8()
{
  if (*(v0 + OBJC_IVAR___BPSConfigurableVideoView_hostingView))
  {
    v1 = *(v0 + OBJC_IVAR___BPSConfigurableVideoView_hostingView + 8);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 40))(ObjectType, v1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_241EA5E70()
{
  if (*(v0 + OBJC_IVAR___BPSConfigurableVideoView_hostingView))
  {
    v1 = *(v0 + OBJC_IVAR___BPSConfigurableVideoView_hostingView + 8);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
  }
}

void sub_241EA5FD8()
{
  v1 = OBJC_IVAR___BPSConfigurableVideoView_autoPlayTimer;
  [*(v0 + OBJC_IVAR___BPSConfigurableVideoView_autoPlayTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (*(v0 + OBJC_IVAR___BPSConfigurableVideoView_hostingView))
  {
    v3 = *(v0 + OBJC_IVAR___BPSConfigurableVideoView_hostingView + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
  }
}

void sub_241EA6120()
{
  if (*(v0 + OBJC_IVAR___BPSConfigurableVideoView_hostingView))
  {
    v1 = *(v0 + OBJC_IVAR___BPSConfigurableVideoView_hostingView + 8);
    ObjectType = swift_getObjectType();
    (*(v1 + 24))(ObjectType, v1);
  }
}

void sub_241EA6288(float a1)
{
  if (*(v1 + OBJC_IVAR___BPSConfigurableVideoView_hostingView))
  {
    v2 = *(v1 + OBJC_IVAR___BPSConfigurableVideoView_hostingView + 8);
    if (a1 <= 0.0)
    {
      a1 = 0.0;
    }

    if (a1 <= 1.0)
    {
      v3 = a1;
    }

    else
    {
      v3 = 1.0;
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 32))(ObjectType, v2, v3);
  }
}

id sub_241EA6440(char *a1)
{
  v2 = OBJC_IVAR___BPSConfigurableVideoView_autoPlayTimer;
  v3 = *&a1[OBJC_IVAR___BPSConfigurableVideoView_autoPlayTimer];
  if (v3)
  {
    [v3 invalidate];
    v4 = *&a1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&a1[v2] = 0;

  v6.receiver = a1;
  v6.super_class = type metadata accessor for ConfigurableVideoView();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_241EA64B0()
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();

  return swift_task_deinitOnExecutor();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurableVideoView.VideoConfiguration.StartBehavior(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConfigurableVideoView.VideoConfiguration.StartBehavior(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_241EA67C4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241EA67E4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241EA689C()
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xD8))();
  }
}

unint64_t sub_241EA699C()
{
  result = qword_27EC79C60;
  if (!qword_27EC79C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC79C60);
  }

  return result;
}

uint64_t sub_241EA69E8()
{
  v0 = sub_241EA9C68();
  __swift_allocate_value_buffer(v0, qword_27EC7A2C0);
  __swift_project_value_buffer(v0, qword_27EC7A2C0);
  return sub_241EA9C58();
}

uint64_t static WatchSettingsNavigationDonation.extractSpecifierIdentifierFromApplicationIconBundleIdentifier(_:)(uint64_t a1, unint64_t a2)
{
  if ((sub_241EA9DA8() & 1) == 0)
  {
    return 0;
  }

  sub_241EA9D68();
  v4 = sub_241EA9D78();

  v5 = sub_241EA749C(v4, a1, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x245D03290](v5, v7, v9, v11);
  v14 = v13;

  if (qword_27EC7A110 != -1)
  {
    swift_once();
  }

  v15 = sub_241EA9C68();
  __swift_project_value_buffer(v15, qword_27EC7A2C0);

  v16 = sub_241EA9C48();
  v17 = sub_241EA9E78();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_241EA2B0C(v12, v14, &v21);
    _os_log_impl(&dword_241E74000, v16, v17, "specifierIdentifier: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x245D04170](v19, -1, -1);
    MEMORY[0x245D04170](v18, -1, -1);
  }

  return v12;
}

uint64_t static WatchSettingsNavigationDonation.emitNavigationEventForSystemSetting(iconSpecifierIdentifier:title:localizedNavigationComponents:deepLink:)(uint64_t a1, uint64_t a2)
{
  v14 = &type metadata for FeatureFlags;
  v15 = sub_241EA78F4();
  v4 = sub_241EA9C38();
  result = __swift_destroy_boxed_opaque_existential_0(&v12);
  if (v4)
  {
    sub_241EA9D08();
    sub_241EA9CF8();
    v6 = sub_241EA9CC8();
    v11 = &v11;
    v7 = *(v6 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = 0xD00000000000001DLL;
    v13 = 0x8000000241EB42D0;
    MEMORY[0x245D032C0](a1, a2);
    v10 = v13;
    *v9 = v12;
    v9[1] = v10;
    (*(v7 + 104))(v9, *MEMORY[0x277D4D790], v6);
    sub_241EA9CD8();

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t static WatchSettingsNavigationDonation.emitNavigationEventForApplicationSetting(iconSpecifierIdentifier:title:localizedNavigationComponents:deepLink:)(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for FeatureFlags;
  v6[4] = sub_241EA78F4();
  v4 = sub_241EA9C38();
  result = __swift_destroy_boxed_opaque_existential_0(v6);
  if (v4)
  {
    sub_241EA9D08();
    sub_241EA9CF8();
    v6[0] = 0xD00000000000001DLL;
    v6[1] = 0x8000000241EB42D0;
    MEMORY[0x245D032C0](a1, a2);
    sub_241EA9CE8();
  }

  return result;
}

uint64_t sub_241EA6F98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, id, uint64_t, char *))
{
  v9 = sub_241EA9C28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_241EA9D38();
  v15 = v14;
  sub_241EA7DF4();
  v16 = sub_241EA9DE8();
  sub_241EA9C18();
  v17 = a4;
  a7(v13, v15, v17, v16, v12);

  return (*(v10 + 8))(v12, v9);
}

id WatchSettingsNavigationDonation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WatchSettingsNavigationDonation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchSettingsNavigationDonation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WatchSettingsNavigationDonation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchSettingsNavigationDonation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_241EA71D0()
{
  sub_241EA9F48();
  MEMORY[0x245D03490](0);
  return sub_241EA9F68();
}

uint64_t sub_241EA723C()
{
  sub_241EA9F48();
  MEMORY[0x245D03490](0);
  return sub_241EA9F68();
}

size_t sub_241EA72A4(size_t a1, int64_t a2, char a3)
{
  result = sub_241EA72C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_241EA72C4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC79D88);
  v10 = *(sub_241EA9BE8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_241EA9BE8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_241EA749C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

size_t _s17BridgePreferences31WatchSettingsNavigationDonationC04emitE21EventForSystemSetting23iconSpecifierIdentifier5title09localizedE10Components8deepLinkySS_So26_NSLocalizedStringResourceCSayAJG10Foundation3URLVtFZ_0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v32 = a2;
  v33 = a5;
  v31 = a1;
  v38 = sub_241EA9BE8();
  v7 = *(v38 - 8);
  v8 = MEMORY[0x28223BE20](v38);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v37 = sub_241EA7DF4();
  v41 = v37;
  v39 = a3;
  v13 = a3;
  v34 = v12;
  sub_241EA9BD8();
  if (a4 >> 62)
  {
    goto LABEL_19;
  }

  v14 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v14)
  {
    v44 = MEMORY[0x277D84F90];
    result = sub_241EA72A4(0, v14 & ~(v14 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v17 = v44;
      v18 = a4;
      v35 = a4 & 0xFFFFFFFFFFFFFF8;
      v36 = a4 & 0xC000000000000001;
      while (1)
      {
        if (v36)
        {
          v19 = MEMORY[0x245D03430](v16, v18);
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v14 = sub_241EA9F28();
            goto LABEL_3;
          }

          if (v16 >= *(v35 + 16))
          {
            goto LABEL_18;
          }

          v19 = *(v18 + 8 * v16 + 32);
        }

        v20 = v19;
        v41 = v37;
        v39 = v19;
        sub_241EA33FC(&v39, v43);
        v21 = v20;
        sub_241EA9BD8();
        __swift_destroy_boxed_opaque_existential_0(&v39);

        v44 = v17;
        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_241EA72A4(v22 > 1, v23 + 1, 1);
          v17 = v44;
        }

        ++v16;
        *(v17 + 16) = v23 + 1;
        (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, v10, v38);
        v18 = a4;
        if (v14 == v16)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v41 = &type metadata for FeatureFlags;
    v42 = sub_241EA78F4();
    v24 = sub_241EA9C38();
    __swift_destroy_boxed_opaque_existential_0(&v39);
    if (v24)
    {
      sub_241EA9D08();
      sub_241EA9CF8();
      v25 = sub_241EA9CC8();
      v26 = *(v25 - 8);
      MEMORY[0x28223BE20](v25);
      v28 = (&v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      v39 = 0xD00000000000001DLL;
      v40 = 0x8000000241EB42D0;
      MEMORY[0x245D032C0](v31, v32);
      v29 = v40;
      *v28 = v39;
      v28[1] = v29;
      (*(v26 + 104))(v28, *MEMORY[0x277D4D790], v25);
      v30 = v34;
      sub_241EA9CD8();

      (*(v26 + 8))(v28, v25);
      return (*(v7 + 8))(v30, v38);
    }

    else
    {

      return (*(v7 + 8))(v34, v38);
    }
  }

  return result;
}

unint64_t sub_241EA78F4()
{
  result = qword_27EC79D70;
  if (!qword_27EC79D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC79D70);
  }

  return result;
}

size_t _s17BridgePreferences31WatchSettingsNavigationDonationC04emitE26EventForApplicationSetting23iconSpecifierIdentifier5title09localizedE10Components8deepLinkySS_So26_NSLocalizedStringResourceCSayAJG10Foundation3URLVtFZ_0(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v34 = sub_241EA9BE8();
  v10 = *(v34 - 8);
  v11 = MEMORY[0x28223BE20](v34);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v33 = sub_241EA7DF4();
  v36 = v33;
  v35[0] = a3;
  v16 = a3;
  sub_241EA9BD8();
  if (a4 >> 62)
  {
    goto LABEL_20;
  }

  v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v17)
  {
    v39 = MEMORY[0x277D84F90];
    result = sub_241EA72A4(0, v17 & ~(v17 >> 63), 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v27 = a1;
      v28 = a2;
      v29 = v15;
      v30 = a5;
      a2 = 0;
      v19 = v39;
      v20 = a4;
      v31 = a4 & 0xFFFFFFFFFFFFFF8;
      v32 = a4 & 0xC000000000000001;
      a1 = v10 + 32;
      a5 = v17;
      while (1)
      {
        if (v32)
        {
          v21 = MEMORY[0x245D03430](a2, v20);
        }

        else
        {
          if ((a2 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            v17 = sub_241EA9F28();
            goto LABEL_3;
          }

          if (a2 >= *(v31 + 16))
          {
            goto LABEL_19;
          }

          v21 = *(v20 + 8 * a2 + 32);
        }

        v22 = v21;
        v36 = v33;
        v35[0] = v21;
        sub_241EA33FC(v35, v38);
        v23 = v22;
        sub_241EA9BD8();
        __swift_destroy_boxed_opaque_existential_0(v35);

        v39 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        v15 = (v25 + 1);
        if (v25 >= v24 >> 1)
        {
          sub_241EA72A4(v24 > 1, v25 + 1, 1);
          v19 = v39;
        }

        ++a2;
        *(v19 + 16) = v15;
        (*(v10 + 32))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v13, v34);
        v20 = a4;
        if (a5 == a2)
        {
          v15 = v29;
          a1 = v27;
          a2 = v28;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v36 = &type metadata for FeatureFlags;
    v37 = sub_241EA78F4();
    v26 = sub_241EA9C38();
    __swift_destroy_boxed_opaque_existential_0(v35);
    if (v26)
    {
      sub_241EA9D08();
      sub_241EA9CF8();
      v35[0] = 0xD00000000000001DLL;
      v35[1] = 0x8000000241EB42D0;
      MEMORY[0x245D032C0](a1, a2);
      sub_241EA9CE8();
    }

    return (*(v10 + 8))(v15, v34);
  }

  return result;
}

unint64_t sub_241EA7CB8()
{
  result = qword_27EC79D78;
  if (!qword_27EC79D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC79D78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_241EA7DF4()
{
  result = qword_27EC79D80;
  if (!qword_27EC79D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC79D80);
  }

  return result;
}

__n128 sub_241EA7E40@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, char a12, unsigned __int8 a13, unint64_t a14)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u8[8] = a12 & 1;
  a9[5].n128_u8[9] = a13;
  a9[6].n128_u64[0] = a14;
  return result;
}

id sub_241EA7E8C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BPSConfigurableAnimationView_hostingView];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR___BPSConfigurableAnimationView_autoStartTimer] = 0;
  v5 = &v3[OBJC_IVAR___BPSConfigurableAnimationView_configuration];
  v6 = *(a1 + 32);
  v7 = *a1;
  *(v5 + 1) = *(a1 + 16);
  *(v5 + 2) = v6;
  *v5 = v7;
  v9 = *(a1 + 64);
  v8 = *(a1 + 80);
  v10 = *(a1 + 48);
  *(v5 + 12) = *(a1 + 96);
  *(v5 + 4) = v9;
  *(v5 + 5) = v8;
  *(v5 + 3) = v10;
  sub_241EA7F68(a1, v14);
  v13.receiver = v3;
  v13.super_class = v1;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_241EA807C();
  sub_241EA83C4(a1);

  return v11;
}

uint64_t sub_241EA807C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___BPSConfigurableAnimationView_configuration];
  v3 = *&v0[OBJC_IVAR___BPSConfigurableAnimationView_configuration];
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 4);
  v8 = *(v2 + 5);
  v9 = *(v2 + 12);

  v10 = v9;
  sub_241EA3FB4(v3, v4, v5, v6, v7, v8, v9, v34);
  type metadata accessor for AnimationHostingView();
  v11 = *(v2 + 6);
  v12 = *(v2 + 7);

  sub_241EA4AAC();
  v13 = sub_241EA4AB8(v34, v11, v12);

  v14 = &off_285405CE8;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = &v1[OBJC_IVAR___BPSConfigurableAnimationView_hostingView];
  v16 = *&v1[OBJC_IVAR___BPSConfigurableAnimationView_hostingView];
  *v15 = v13;
  v15[1] = v14;
  v17 = v13;

  if (v13)
  {
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v18 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EC79D00);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_241EAF3A0;
    v20 = [v17 leadingAnchor];
    v21 = [v1 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v19 + 32) = v22;
    v23 = [v17 trailingAnchor];
    v24 = [v1 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    *(v19 + 40) = v25;
    v26 = [v17 topAnchor];
    v27 = [v1 topAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(v19 + 48) = v28;
    v29 = [v17 bottomAnchor];
    v30 = [v1 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(v19 + 56) = v31;
    sub_241EA699C();
    v32 = sub_241EA9DD8();

    [v18 activateConstraints_];
  }

  sub_241EA8418();
  return sub_241EA903C(v34);
}

void sub_241EA854C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR___BPSConfigurableAnimationView_hostingView;
  v5 = *(v3 + OBJC_IVAR___BPSConfigurableAnimationView_hostingView);
  if (v5)
  {
    v9 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    if (a3)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = *(v9 + 8);
    v13 = v5;
    v12(a1, a2, ObjectType, v9, v11);
  }
}

uint64_t sub_241EA879C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___BPSConfigurableAnimationView_configuration + 48);
  v4 = *(v1 + OBJC_IVAR___BPSConfigurableAnimationView_configuration + 56);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0xD8);

  v5(v3, v4, a1);
}

void sub_241EA8960()
{
  v1 = OBJC_IVAR___BPSConfigurableAnimationView_autoStartTimer;
  [*(v0 + OBJC_IVAR___BPSConfigurableAnimationView_autoStartTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_241EA8AAC(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR___BPSConfigurableAnimationView_configuration + 88) & 1) == 0)
  {
    v5 = *(v2 + OBJC_IVAR___BPSConfigurableAnimationView_configuration + 80);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = a1;
    v11[5] = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_241EA5C08;
    v11[3] = a2;
    v8 = _Block_copy(v11);

    v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:v5];
    _Block_release(v8);
    v10 = *(v2 + OBJC_IVAR___BPSConfigurableAnimationView_autoStartTimer);
    *(v2 + OBJC_IVAR___BPSConfigurableAnimationView_autoStartTimer) = v9;
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_241EA8D38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurableAnimationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_241EA8E44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241EA8E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241EA8F04()
{
  sub_241EA9E38();
  sub_241EA9E28();
  sub_241EA9E18();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___BPSConfigurableAnimationView_configuration + 64);
    v3 = *(Strong + OBJC_IVAR___BPSConfigurableAnimationView_configuration + 72);
    v4 = *(Strong + OBJC_IVAR___BPSConfigurableAnimationView_configuration + 89);
    v5 = *((*MEMORY[0x277D85000] & *Strong) + 0xD8);

    v5(v2, v3, v4);
  }
}

BPSAnimationControllingBuilder __swiftcall BPSAnimationControllingBuilder.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_241EA93A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, double a9, unint64_t a10, unint64_t a11, void *a12, char a13)
{
  v19 = a11;
  v18 = a12;
  if (a6)
  {
    v32 = a6;
  }

  else
  {
    a5 = sub_241EA9D38();
    v32 = v20;
  }

  v34 = a5;
  if (a12)
  {

    v21 = a12;
  }

  else
  {
    v22 = objc_opt_self();

    v23 = v22;
    v18 = 0;
    v21 = [v23 mainBundle];
  }

  if (a11)
  {
    v24 = a10;
  }

  else
  {
    v19 = 0xE200000000000000;
    v24 = 28239;
  }

  v25 = 0xE300000000000000;
  if (a8)
  {
    v25 = a8;
  }

  v31 = v25;
  if (!a8)
  {
    a7 = 6710863;
  }

  if (a4)
  {
    v26 = a3;
  }

  else
  {
    a4 = 0xE400000000000000;
    v26 = 1918984547;
  }

  if (a13)
  {
    v27 = *&a9;
  }

  else
  {
    v27 = 0;
  }

  v28 = v18;

  v30.n128_u64[1] = v19;
  v30.n128_u64[0] = v24;
  sub_241EA7E40(a1, a2, v26, a4, v34, v32, a7, v31, v36, v30, v27, (a13 & 1) == 0, 1u, v21);
  type metadata accessor for ConfigurableAnimationView();
  return sub_241EA7E8C(v36);
}

unint64_t type metadata accessor for BPSAnimationControllingBuilder()
{
  result = qword_27EC7A2A0;
  if (!qword_27EC7A2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC7A2A0);
  }

  return result;
}

void _BPSUnlocalizedNameForMaterial_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&dword_241E74000, a2, OS_LOG_TYPE_FAULT, "BPS BPSUnlocalizedNameForMaterial Unknown Material (%{public}@)", &v4, 0xCu);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}