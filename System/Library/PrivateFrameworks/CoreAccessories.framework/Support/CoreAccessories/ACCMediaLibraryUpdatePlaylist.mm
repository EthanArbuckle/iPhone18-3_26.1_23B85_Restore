@interface ACCMediaLibraryUpdatePlaylist
- (ACCMediaLibraryUpdatePlaylist)initWithMediaLibrary:(id)library dict:(id)dict;
- (ACCMediaLibraryUpdatePlaylist)initWithMediaLibrary:(id)library persistentID:(unint64_t)d revision:(id)revision;
- (id)copyDict;
- (id)debugDescription;
- (id)description;
- (void)fillStruct:(id *)struct;
- (void)setContentStyle:(int)style;
- (void)setPersistentID:(unint64_t)d;
@end

@implementation ACCMediaLibraryUpdatePlaylist

- (ACCMediaLibraryUpdatePlaylist)initWithMediaLibrary:(id)library persistentID:(unint64_t)d revision:(id)revision
{
  libraryCopy = library;
  revisionCopy = revision;
  v16.receiver = self;
  v16.super_class = ACCMediaLibraryUpdatePlaylist;
  v11 = [(ACCMediaLibraryUpdatePlaylist *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaLibraryUID, library);
    objc_storeStrong(&v12->_revision, revision);
    v12->_persistentID = d;
    v12->_validMask = 1;
    name = v12->_name;
    v12->_name = 0;

    content = v12->_content;
    v12->_parentPersistentID = 0;
    v12->_content = 0;
    v12->_contentStyle = 0;
    *&v12->_folder = 0;
    v12->_radioStationOrdering = 0;
  }

  return v12;
}

- (ACCMediaLibraryUpdatePlaylist)initWithMediaLibrary:(id)library dict:(id)dict
{
  libraryCopy = library;
  dictCopy = dict;
  v44.receiver = self;
  v44.super_class = ACCMediaLibraryUpdatePlaylist;
  v9 = [(ACCMediaLibraryUpdatePlaylist *)&v44 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaLibraryUID, library);
    revision = v10->_revision;
    v10->_revision = &stru_10022D360;

    v10->_persistentID = 0;
    name = v10->_name;
    v10->_name = 0;

    content = v10->_content;
    v10->_parentPersistentID = 0;
    v10->_content = 0;
    v10->_contentStyle = 0;
    *&v10->_folder = 0;
    v10->_radioStationOrdering = 0;

    v10->_validMask = 0;
    v14 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateRevisionKey"];

    if (v14)
    {
      v15 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateRevisionKey"];
      v16 = v10->_revision;
      v10->_revision = v15;
    }

    v17 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistPersistentID"];

    if (v17)
    {
      v18 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistPersistentID"];
      v10->_persistentID = [v18 unsignedLongLongValue];

      v10->_validMask |= 1uLL;
    }

    v19 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistName"];

    if (v19)
    {
      v20 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistName"];
      v21 = v10->_name;
      v10->_name = v20;

      v10->_validMask |= 2uLL;
    }

    v22 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistParentPersistentID"];

    if (v22)
    {
      v23 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistParentPersistentID"];
      v10->_parentPersistentID = [v23 unsignedLongLongValue];

      v10->_validMask |= 4uLL;
    }

    v24 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistIsFolder"];

    if (v24)
    {
      v25 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistIsFolder"];
      v10->_folder = [v25 unsignedCharValue] != 0;

      v10->_validMask |= 0x10uLL;
    }

    v26 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistIsGeniusMix"];

    if (v26)
    {
      v27 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistIsGeniusMix"];
      v10->_geniusMix = [v27 unsignedCharValue] != 0;

      v10->_validMask |= 8uLL;
    }

    v28 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistContentStyle"];

    if (v28)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v29 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v29 = &_os_log_default;
        v30 = &_os_log_default;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        contentStyle = v10->_contentStyle;
        v32 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistContentStyle"];
        *buf = 138412802;
        v46 = v10;
        v47 = 1024;
        v48 = contentStyle;
        v49 = 2112;
        v50 = v32;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@ contentStyle %d->%@", buf, 0x1Cu);
      }

      v33 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistContentStyle"];
      v10->_contentStyle = [v33 unsignedCharValue];

      v10->_validMask |= 0x20uLL;
    }

    v34 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistIsRadioStation"];

    if (v34)
    {
      v35 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistIsRadioStation"];
      v10->_radioStation = [v35 unsignedCharValue] != 0;

      v10->_validMask |= 0x40uLL;
    }

    v36 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistIsSmartPlaylist"];

    if (v36)
    {
      v37 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistIsSmartPlaylist"];
      v10->_smartPlaylist = [v37 unsignedCharValue] != 0;

      v10->_validMask |= 0x100uLL;
    }

    v38 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistRadioStationOrdering"];

    if (v38)
    {
      v39 = [dictCopy objectForKey:@"ACCMediaLibraryUpdatePlaylistRadioStationOrdering"];
      v10->_radioStationOrdering = [v39 unsignedShortValue];

      v10->_validMask |= 0x200uLL;
    }
  }

  if (gLogObjects)
  {
    v40 = gNumLogObjects < 1;
  }

  else
  {
    v40 = 1;
  }

  if (v40)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v42 = &_os_log_default;
    v41 = &_os_log_default;
  }

  else
  {
    v42 = *gLogObjects;
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v46 = v10;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  return v10;
}

- (id)description
{
  v2 = &stru_10022D360;
  if (self->_folder)
  {
    v3 = @" folder";
  }

  else
  {
    v3 = &stru_10022D360;
  }

  if (self->_geniusMix)
  {
    v4 = @" geniusMix";
  }

  else
  {
    v4 = &stru_10022D360;
  }

  if (self->_radioStation)
  {
    v5 = @" station";
  }

  else
  {
    v5 = &stru_10022D360;
  }

  if (self->_smartPlaylist)
  {
    v2 = @" smart";
  }

  return [NSString stringWithFormat:@"<ACCMediaLibraryUpdatePlaylist>[%@:%llu revision=%@ valid=%llxh '%@' %@ %@ %@ %@ parentPersistentID=%llu]", self->_mediaLibraryUID, self->_persistentID, self->_revision, self->_validMask, self->_name, v3, v4, v5, v2, self->_parentPersistentID];
}

- (id)debugDescription
{
  v3 = [(ACCMediaLibraryUpdatePlaylist *)self description];
  copyDict = [(ACCMediaLibraryUpdatePlaylist *)self copyDict];
  v5 = [NSString stringWithFormat:@"%@\n    %@", v3, copyDict];

  return v5;
}

- (id)copyDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  revision = self->_revision;
  if (revision)
  {
    [v3 setObject:revision forKey:@"ACCMediaLibraryUpdateRevisionKey"];
  }

  validMask = self->_validMask;
  if (validMask)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:self->_persistentID];
    [v4 setObject:v9 forKey:@"ACCMediaLibraryUpdatePlaylistPersistentID"];

    validMask = self->_validMask;
    if ((validMask & 2) == 0)
    {
LABEL_5:
      if ((validMask & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((validMask & 2) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:self->_name forKey:@"ACCMediaLibraryUpdatePlaylistName"];
  validMask = self->_validMask;
  if ((validMask & 4) == 0)
  {
LABEL_6:
    if ((validMask & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [NSNumber numberWithUnsignedLongLong:self->_parentPersistentID];
  [v4 setObject:v10 forKey:@"ACCMediaLibraryUpdatePlaylistParentPersistentID"];

  validMask = self->_validMask;
  if ((validMask & 0x10) == 0)
  {
LABEL_7:
    if ((validMask & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = [NSNumber numberWithUnsignedChar:self->_folder];
  [v4 setObject:v11 forKey:@"ACCMediaLibraryUpdatePlaylistIsFolder"];

  validMask = self->_validMask;
  if ((validMask & 8) == 0)
  {
LABEL_8:
    if ((validMask & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = [NSNumber numberWithUnsignedChar:self->_geniusMix];
  [v4 setObject:v12 forKey:@"ACCMediaLibraryUpdatePlaylistIsGeniusMix"];

  validMask = self->_validMask;
  if ((validMask & 0x20) == 0)
  {
LABEL_9:
    if ((validMask & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = [NSNumber numberWithUnsignedChar:LOBYTE(self->_contentStyle)];
  [v4 setObject:v13 forKey:@"ACCMediaLibraryUpdatePlaylistContentStyle"];

  validMask = self->_validMask;
  if ((validMask & 0x40) == 0)
  {
LABEL_10:
    if ((validMask & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v15 = [NSNumber numberWithUnsignedChar:self->_smartPlaylist];
    [v4 setObject:v15 forKey:@"ACCMediaLibraryUpdatePlaylistIsSmartPlaylist"];

    if ((self->_validMask & 0x200) == 0)
    {
      return v4;
    }

    goto LABEL_12;
  }

LABEL_20:
  v14 = [NSNumber numberWithUnsignedChar:self->_radioStation];
  [v4 setObject:v14 forKey:@"ACCMediaLibraryUpdatePlaylistIsRadioStation"];

  validMask = self->_validMask;
  if ((validMask & 0x100) != 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((validMask & 0x200) != 0)
  {
LABEL_12:
    v7 = [NSNumber numberWithUnsignedShort:self->_radioStationOrdering];
    [v4 setObject:v7 forKey:@"ACCMediaLibraryUpdatePlaylistRadioStationOrdering"];
  }

  return v4;
}

- (void)fillStruct:(id *)struct
{
  *&struct->var4 = 0;
  *&struct->var0 = 0u;
  *&struct->var2 = 0u;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    acc_platform_packetLogging_logEventVA_cold_2(self, v7);
  }

  validMask = self->_validMask;
  if (validMask)
  {
    struct->var1 = self->_persistentID;
    struct->var0 |= 1u;
    validMask = self->_validMask;
    if ((validMask & 2) == 0)
    {
LABEL_13:
      if ((validMask & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((validMask & 2) == 0)
  {
    goto LABEL_13;
  }

  name = self->_name;
  if (name)
  {
    name = [(NSString *)name UTF8String];
    validMask = self->_validMask;
  }

  struct->var2 = name;
  struct->var0 |= 2u;
  if ((validMask & 4) == 0)
  {
LABEL_14:
    if ((validMask & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  struct->var3 = self->_parentPersistentID;
  struct->var0 |= 4u;
  validMask = self->_validMask;
  if ((validMask & 8) == 0)
  {
LABEL_15:
    if ((validMask & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  struct->var4 = self->_geniusMix;
  struct->var0 |= 8u;
  if ((validMask & 0x10) == 0)
  {
LABEL_16:
    if ((validMask & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  struct->var5 = self->_folder;
  struct->var0 |= 0x10u;
  if ((validMask & 0x20) == 0)
  {
LABEL_17:
    if ((validMask & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  struct->var6 = self->_contentStyle;
  struct->var0 |= 0x20u;
  if ((validMask & 0x40) == 0)
  {
LABEL_18:
    if ((validMask & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  struct->var7 = self->_radioStation;
  struct->var0 |= 0x40u;
  if ((validMask & 0x100) == 0)
  {
LABEL_19:
    if ((validMask & 0x200) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_31:
  struct->var8 = self->_smartPlaylist;
  struct->var0 |= 0x100u;
  if ((validMask & 0x200) == 0)
  {
    return;
  }

LABEL_20:
  struct->var9 = self->_radioStationOrdering;
  struct->var0 |= 0x200u;
}

- (void)setPersistentID:(unint64_t)d
{
  v3 = self->_validMask | 1;
  self->_persistentID = d;
  self->_validMask = v3;
}

- (void)setContentStyle:(int)style
{
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCMediaLibraryUpdatePlaylist *)self setContentStyle:style, v7];
  }

  self->_contentStyle = style;
  self->_validMask |= 0x20uLL;
}

- (void)setContentStyle:(os_log_t)log .cold.2(uint64_t a1, int a2, os_log_t log)
{
  v3 = *(a1 + 16);
  v4 = 138412802;
  v5 = a1;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@ setContentStyle %d->%d", &v4, 0x18u);
}

@end