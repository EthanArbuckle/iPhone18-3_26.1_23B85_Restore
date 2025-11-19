@interface MKPayload
- (MKPayload)init;
- (id)dictionary;
@end

@implementation MKPayload

- (MKPayload)init
{
  v16.receiver = self;
  v16.super_class = MKPayload;
  v2 = [(MKPayload *)&v16 init];
  v3 = v2;
  if (v2)
  {
    [(MKPayload *)v2 setAndroidAPILevel:@"?"];
    [(MKPayload *)v3 setAndroidBrand:@"?"];
    [(MKPayload *)v3 setAndroidLocale:@"?"];
    [(MKPayload *)v3 setAndroidModel:@"?"];
    [(MKPayload *)v3 setAndroidOSVersion:@"?"];
    [(MKPayload *)v3 setAndroidVersion:@"?"];
    [(MKPayload *)v3 setAndroidVersionCode:@"?"];
    [(MKPayload *)v3 setState:@"?"];
    v4 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setMessages:v4];

    v5 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setPhotos:v5];

    v6 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setVideos:v6];

    v7 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setContacts:v7];

    v8 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setCalendars:v8];

    v9 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setBookmarks:v9];

    v10 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setAccounts:v10];

    v11 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setFiles:v11];

    v12 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setWhatsapp:v12];

    v13 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setAccessibilitySettings:v13];

    v14 = objc_alloc_init(MKFeaturePayload);
    [(MKPayload *)v3 setDisplaySettings:v14];
  }

  return v3;
}

- (id)dictionary
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_androidAPILevel forKey:@"android_api_level"];
  [v3 setObject:self->_androidBrand forKey:@"android_brand"];
  [v3 setObject:self->_androidLocale forKey:@"android_locale"];
  [v3 setObject:self->_androidModel forKey:@"android_model"];
  [v3 setObject:self->_androidOSVersion forKey:@"android_os_version"];
  [v3 setObject:self->_androidVersion forKey:@"android_version"];
  [v3 setObject:self->_androidVersionCode forKey:@"android_version_code"];
  [v3 setObject:self->_state forKey:@"state"];
  v39 = *&self->_messages;
  videos = self->_videos;
  v41 = *&self->_contacts;
  bookmarks = self->_bookmarks;
  v4 = *&self->_whatsapp;
  v43 = *&self->_accounts;
  v44 = v4;
  displaySettings = self->_displaySettings;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:11];
  v6 = 0x277CCA000uLL;
  if ([v5 count])
  {
    v35 = self;
    v36 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [&unk_286AAD2C0 objectAtIndexedSubscript:v9];
      v11 = [v5 objectAtIndexedSubscript:v9];
      v12 = [v11 count];
      v13 = [v11 size];
      v37 = v13 >> 30;
      v38 = [v11 totalElapsedTime] / 0x3CuLL;
      v14 = [v11 importElapsedTime];
      [v14 doubleValue];
      v16 = v15 / 60.0;

      v8 += v13;
      v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "enabled")}];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_enabled", v10];
      [v3 setObject:v17 forKey:v18];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v10];
      [v3 setObject:v19 forKey:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v37];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_size", v10];
      [v3 setObject:v21 forKey:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_elapsed_time", v10];
      [v3 setObject:v23 forKey:v24];

      v7 += v12;
      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_import_time", v10];
      [v3 setObject:v25 forKey:v26];

      v27 = [v11 state];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_state", v10];
      [v3 setObject:v27 forKey:v28];

      v5 = v36;
      ++v9;
    }

    while (v9 < [v36 count]);
    v29 = v8 >> 30;
    self = v35;
    v6 = 0x277CCA000;
  }

  else
  {
    v29 = 0;
    v7 = 0;
  }

  v30 = [*(v6 + 2992) numberWithUnsignedLongLong:v7];
  [v3 setObject:v30 forKey:@"data"];

  v31 = [*(v6 + 2992) numberWithUnsignedLongLong:v29];
  [v3 setObject:v31 forKey:@"data_size"];

  v32 = [*(v6 + 2992) numberWithUnsignedLongLong:self->_elapsedTime / 0x3C];
  [v3 setObject:v32 forKey:@"elapsed_time"];

  v33 = *MEMORY[0x277D85DE8];

  return v3;
}

@end