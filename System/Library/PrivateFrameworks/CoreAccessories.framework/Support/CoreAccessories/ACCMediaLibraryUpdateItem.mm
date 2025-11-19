@interface ACCMediaLibraryUpdateItem
- (ACCMediaLibraryUpdateItem)initWithMediaLibrary:(id)a3 dict:(id)a4;
- (ACCMediaLibraryUpdateItem)initWithMediaLibrary:(id)a3 persistentID:(unint64_t)a4 revision:(id)a5;
- (id)copyDict;
- (id)debugDescription;
- (void)copyDict;
- (void)fillStruct:(id *)a3;
- (void)setPersistentID:(unint64_t)a3;
@end

@implementation ACCMediaLibraryUpdateItem

- (ACCMediaLibraryUpdateItem)initWithMediaLibrary:(id)a3 persistentID:(unint64_t)a4 revision:(id)a5
{
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = ACCMediaLibraryUpdateItem;
  v11 = [(ACCMediaLibraryUpdateItem *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaLibraryUID, a3);
    objc_storeStrong(&v12->_revision, a5);
    v12->_persistentID = a4;
    v12->_validMask = 1;
    title = v12->_title;
    v12->_title = 0;

    *&v12->_type = 0x500000004;
    v12->_duration = 0;
    albumTitle = v12->_albumTitle;
    v12->_albumPersistentID = 0;
    v12->_albumTitle = 0;

    artist = v12->_artist;
    v12->_artistPersistentID = 0;
    v12->_artist = 0;
    *&v12->_albumTrackNumber = 0;

    albumArtist = v12->_albumArtist;
    v12->_albumArtistPersistentID = 0;
    v12->_albumArtist = 0;

    genre = v12->_genre;
    v12->_genrePersistentID = 0;
    v12->_genre = 0;

    composer = v12->_composer;
    v12->_composerPersistentID = 0;
    v12->_composer = 0;

    *&v12->_partOfCompilation = 0;
    v12->_chapterCount = 0;
  }

  return v12;
}

- (ACCMediaLibraryUpdateItem)initWithMediaLibrary:(id)a3 dict:(id)a4
{
  v7 = a3;
  v8 = a4;
  v72.receiver = self;
  v72.super_class = ACCMediaLibraryUpdateItem;
  v9 = [(ACCMediaLibraryUpdateItem *)&v72 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaLibraryUID, a3);
    revision = v10->_revision;
    v10->_revision = &stru_10022D360;

    v10->_persistentID = 0;
    title = v10->_title;
    v10->_title = 0;

    *&v10->_type = 0x500000004;
    v10->_duration = 0;
    albumTitle = v10->_albumTitle;
    v10->_albumPersistentID = 0;
    v10->_albumTitle = 0;

    artist = v10->_artist;
    v10->_artistPersistentID = 0;
    v10->_artist = 0;
    *&v10->_albumTrackNumber = 0;

    albumArtist = v10->_albumArtist;
    v10->_albumArtistPersistentID = 0;
    v10->_albumArtist = 0;

    genre = v10->_genre;
    v10->_genrePersistentID = 0;
    v10->_genre = 0;

    composer = v10->_composer;
    v10->_composerPersistentID = 0;
    v10->_composer = 0;

    *&v10->_partOfCompilation = 0;
    v10->_chapterCount = 0;
    v10->_validMask = 0;
    v18 = [v8 objectForKey:@"ACCMediaLibraryUpdateRevisionKey"];

    if (v18)
    {
      v19 = [v8 objectForKey:@"ACCMediaLibraryUpdateRevisionKey"];
      v20 = v10->_revision;
      v10->_revision = v19;
    }

    v21 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemPersistentID"];

    if (v21)
    {
      v22 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemPersistentID"];
      v10->_persistentID = [v22 unsignedLongLongValue];

      v10->_validMask |= 1uLL;
    }

    v23 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemTitle"];

    if (v23)
    {
      v24 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemTitle"];
      v25 = v10->_title;
      v10->_title = v24;

      v10->_validMask |= 2uLL;
    }

    v26 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemType"];

    if (v26)
    {
      v27 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemType"];
      v10->_type = [v27 unsignedCharValue];

      v10->_validMask |= 4uLL;
    }

    v28 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemRating"];

    if (v28)
    {
      v29 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemRating"];
      v10->_rating = [v29 unsignedCharValue];

      v10->_validMask |= 8uLL;
    }

    v30 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemPlaybackDurationInMilliseconds"];

    if (v30)
    {
      v31 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemPlaybackDurationInMilliseconds"];
      v10->_duration = [v31 unsignedLongValue];

      v10->_validMask |= 0x10uLL;
    }

    v32 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumPersistentID"];

    if (v32)
    {
      v33 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumPersistentID"];
      v10->_albumPersistentID = [v33 unsignedLongLongValue];

      v10->_validMask |= 0x20uLL;
    }

    v34 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumTitle"];

    if (v34)
    {
      v35 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumTitle"];
      v36 = v10->_albumTitle;
      v10->_albumTitle = v35;

      v10->_validMask |= 0x40uLL;
    }

    v37 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumTrackNumber"];

    if (v37)
    {
      v38 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumTrackNumber"];
      v10->_albumTrackNumber = [v38 unsignedShortValue];

      v10->_validMask |= 0x80uLL;
    }

    v39 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumTrackCount"];

    if (v39)
    {
      v40 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumTrackCount"];
      v10->_albumTrackCount = [v40 unsignedShortValue];

      v10->_validMask |= 0x100uLL;
    }

    v41 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumDiscNumber"];

    if (v41)
    {
      v42 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumDiscNumber"];
      v10->_albumDiscNumber = [v42 unsignedShortValue];

      v10->_validMask |= 0x200uLL;
    }

    v43 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumDiscCount"];

    if (v43)
    {
      v44 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumDiscCount"];
      v10->_albumDiscCount = [v44 unsignedShortValue];

      v10->_validMask |= 0x400uLL;
    }

    v45 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemArtistPersistentID"];

    if (v45)
    {
      v46 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemArtistPersistentID"];
      v10->_artistPersistentID = [v46 unsignedLongLongValue];

      v10->_validMask |= 0x800uLL;
    }

    v47 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemArtist"];

    if (v47)
    {
      v48 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemArtist"];
      v49 = v10->_artist;
      v10->_artist = v48;

      v10->_validMask |= 0x1000uLL;
    }

    v50 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumArtistPersistentID"];

    if (v50)
    {
      v51 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumArtistPersistentID"];
      v10->_albumArtistPersistentID = [v51 unsignedLongLongValue];

      v10->_validMask |= 0x2000uLL;
    }

    v52 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumArtist"];

    if (v52)
    {
      v53 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemAlbumArtist"];
      v54 = v10->_albumArtist;
      v10->_albumArtist = v53;

      v10->_validMask |= 0x4000uLL;
    }

    v55 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemGenrePersistentID"];

    if (v55)
    {
      v56 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemGenrePersistentID"];
      v10->_genrePersistentID = [v56 unsignedLongLongValue];

      v10->_validMask |= 0x8000uLL;
    }

    v57 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemGenre"];

    if (v57)
    {
      v58 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemGenre"];
      v59 = v10->_genre;
      v10->_genre = v58;

      v10->_validMask |= 0x10000uLL;
    }

    v60 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemComposerPersistentID"];

    if (v60)
    {
      v61 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemComposerPersistentID"];
      v10->_composerPersistentID = [v61 unsignedLongLongValue];

      v10->_validMask |= 0x20000uLL;
    }

    v62 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemComposer"];

    if (v62)
    {
      v63 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemComposer"];
      v64 = v10->_composer;
      v10->_composer = v63;

      v10->_validMask |= 0x40000uLL;
    }

    v65 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemIsPartOfCompilation"];

    if (v65)
    {
      v66 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemIsPartOfCompilation"];
      v10->_partOfCompilation = [v66 unsignedCharValue] != 0;

      v10->_validMask |= 0x80000uLL;
    }

    v67 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemIsLocal"];

    if (v67)
    {
      v68 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemIsLocal"];
      v10->_local = [v68 unsignedCharValue] != 0;

      v10->_validMask |= 0x2000000uLL;
    }

    v69 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemChapterCount"];

    if (v69)
    {
      v70 = [v8 objectForKey:@"ACCMediaLibraryUpdateItemChapterCount"];
      v10->_chapterCount = [v70 unsignedShortValue];

      v10->_validMask |= 0x8000000uLL;
    }
  }

  return v10;
}

- (id)debugDescription
{
  v3 = [(ACCMediaLibraryUpdateItem *)self description];
  v4 = [(ACCMediaLibraryUpdateItem *)self copyDict];
  v5 = [NSString stringWithFormat:@"%@\n    %@", v3, v4];

  return v5;
}

- (id)copyDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  p_validMask = &self->_validMask;
  validMask = self->_validMask;
  if (validMask)
  {
    v12 = [NSNumber numberWithUnsignedLongLong:self->_persistentID];
    [v3 setObject:v12 forKey:@"ACCMediaLibraryUpdateItemPersistentID"];

    validMask = self->_validMask;
    if ((validMask & 2) == 0)
    {
LABEL_3:
      if ((validMask & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((validMask & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:self->_title forKey:@"ACCMediaLibraryUpdateItemTitle"];
  validMask = self->_validMask;
  if ((validMask & 4) == 0)
  {
LABEL_4:
    if ((validMask & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = [NSNumber numberWithUnsignedChar:LOBYTE(self->_type)];
  [v3 setObject:v13 forKey:@"ACCMediaLibraryUpdateItemType"];

  validMask = self->_validMask;
  if ((validMask & 8) == 0)
  {
LABEL_5:
    if ((validMask & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  v14 = [NSNumber numberWithUnsignedChar:LOBYTE(self->_rating)];
  [v3 setObject:v14 forKey:@"ACCMediaLibraryUpdateItemRating"];

  validMask = self->_validMask;
  if ((validMask & 0x10) == 0)
  {
LABEL_6:
    if ((validMask & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  v15 = [NSNumber numberWithUnsignedLong:self->_duration];
  [v3 setObject:v15 forKey:@"ACCMediaLibraryUpdateItemPlaybackDurationInMilliseconds"];

  validMask = self->_validMask;
  if ((validMask & 0x20) == 0)
  {
LABEL_7:
    if ((validMask & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = [NSNumber numberWithUnsignedLongLong:self->_albumPersistentID];
  [v3 setObject:v16 forKey:@"ACCMediaLibraryUpdateItemAlbumPersistentID"];

  validMask = self->_validMask;
  if ((validMask & 0x40) == 0)
  {
LABEL_8:
    if ((validMask & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:self->_albumTitle forKey:@"ACCMediaLibraryUpdateItemAlbumTitle"];
  validMask = self->_validMask;
  if ((validMask & 0x80) == 0)
  {
LABEL_9:
    if ((validMask & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  v17 = [NSNumber numberWithUnsignedShort:self->_albumTrackNumber];
  [v3 setObject:v17 forKey:@"ACCMediaLibraryUpdateItemAlbumTrackNumber"];

  validMask = self->_validMask;
  if ((validMask & 0x100) == 0)
  {
LABEL_10:
    if ((validMask & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = [NSNumber numberWithUnsignedShort:self->_albumTrackCount];
  [v3 setObject:v18 forKey:@"ACCMediaLibraryUpdateItemAlbumTrackCount"];

  validMask = self->_validMask;
  if ((validMask & 0x200) == 0)
  {
LABEL_11:
    if ((validMask & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  v19 = [NSNumber numberWithUnsignedShort:self->_albumDiscNumber];
  [v3 setObject:v19 forKey:@"ACCMediaLibraryUpdateItemAlbumDiscNumber"];

  validMask = self->_validMask;
  if ((validMask & 0x400) == 0)
  {
LABEL_12:
    if ((validMask & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  v20 = [NSNumber numberWithUnsignedShort:self->_albumDiscCount];
  [v3 setObject:v20 forKey:@"ACCMediaLibraryUpdateItemAlbumDiscCount"];

  validMask = self->_validMask;
  if ((validMask & 0x800) == 0)
  {
LABEL_13:
    if ((validMask & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  v21 = [NSNumber numberWithUnsignedLongLong:self->_artistPersistentID];
  [v3 setObject:v21 forKey:@"ACCMediaLibraryUpdateItemArtistPersistentID"];

  validMask = self->_validMask;
  if ((validMask & 0x1000) == 0)
  {
LABEL_14:
    if ((validMask & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:self->_artist forKey:@"ACCMediaLibraryUpdateItemArtist"];
  validMask = self->_validMask;
  if ((validMask & 0x2000) == 0)
  {
LABEL_15:
    if ((validMask & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  v22 = [NSNumber numberWithUnsignedLongLong:self->_albumArtistPersistentID];
  [v3 setObject:v22 forKey:@"ACCMediaLibraryUpdateItemAlbumArtistPersistentID"];

  validMask = self->_validMask;
  if ((validMask & 0x4000) == 0)
  {
LABEL_16:
    if ((validMask & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:self->_albumArtist forKey:@"ACCMediaLibraryUpdateItemAlbumArtist"];
  validMask = self->_validMask;
  if ((validMask & 0x8000) == 0)
  {
LABEL_17:
    if ((validMask & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = [NSNumber numberWithUnsignedLongLong:self->_genrePersistentID];
  [v3 setObject:v23 forKey:@"ACCMediaLibraryUpdateItemGenrePersistentID"];

  validMask = self->_validMask;
  if ((validMask & 0x10000) == 0)
  {
LABEL_18:
    if ((validMask & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:self->_genre forKey:@"ACCMediaLibraryUpdateItemGenre"];
  validMask = self->_validMask;
  if ((validMask & 0x20000) == 0)
  {
LABEL_19:
    if ((validMask & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = [NSNumber numberWithUnsignedLongLong:self->_composerPersistentID];
  [v3 setObject:v24 forKey:@"ACCMediaLibraryUpdateItemComposerPersistentID"];

  validMask = self->_validMask;
  if ((validMask & 0x40000) == 0)
  {
LABEL_20:
    if ((validMask & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:self->_composer forKey:@"ACCMediaLibraryUpdateItemComposer"];
  validMask = self->_validMask;
  if ((validMask & 0x80000) == 0)
  {
LABEL_21:
    if ((validMask & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_53:
    v26 = [NSNumber numberWithUnsignedChar:self->_local];
    [v3 setObject:v26 forKey:@"ACCMediaLibraryUpdateItemIsLocal"];

    if ((self->_validMask & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_52:
  v25 = [NSNumber numberWithUnsignedChar:self->_partOfCompilation];
  [v3 setObject:v25 forKey:@"ACCMediaLibraryUpdateItemIsPartOfCompilation"];

  validMask = self->_validMask;
  if ((validMask & 0x2000000) != 0)
  {
    goto LABEL_53;
  }

LABEL_22:
  if ((validMask & 0x8000000) != 0)
  {
LABEL_23:
    v6 = [NSNumber numberWithUnsignedLongLong:self->_chapterCount];
    [v3 setObject:v6 forKey:@"ACCMediaLibraryUpdateItemChapterCount"];
  }

LABEL_24:
  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v9 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      acc_nvmInfo_getPairingStatus_cold_1(v7, v8);
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(ACCMediaLibraryUpdateItem *)p_validMask copyDict];
  }

  return v3;
}

- (void)fillStruct:(id *)a3
{
  *&a3->var17 = 0u;
  *&a3->var19 = 0u;
  *&a3->var13 = 0u;
  *&a3->var15 = 0u;
  *&a3->var6 = 0u;
  *&a3->var8 = 0u;
  *&a3->var0 = 0u;
  *&a3->var2 = 0u;
  validMask = self->_validMask;
  if (validMask)
  {
    a3->var1 = self->_persistentID;
    a3->var0 |= 1u;
    validMask = self->_validMask;
    if ((validMask & 2) == 0)
    {
LABEL_3:
      if ((validMask & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((validMask & 2) == 0)
  {
    goto LABEL_3;
  }

  title = self->_title;
  if (title)
  {
    title = [(NSString *)title UTF8String];
    validMask = self->_validMask;
  }

  a3->var2 = title;
  a3->var0 |= 2u;
  if ((validMask & 4) == 0)
  {
LABEL_4:
    if ((validMask & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  a3->var3 = self->_type;
  a3->var0 |= 4u;
  if ((validMask & 8) == 0)
  {
LABEL_5:
    if ((validMask & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  a3->var4 = self->_rating;
  a3->var0 |= 8u;
  if ((validMask & 0x10) == 0)
  {
LABEL_6:
    if ((validMask & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  a3->var5 = self->_duration;
  a3->var0 |= 0x10u;
  if ((validMask & 0x20) == 0)
  {
LABEL_7:
    if ((validMask & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  a3->var6 = self->_albumPersistentID;
  a3->var0 |= 0x20u;
  validMask = self->_validMask;
  if ((validMask & 0x40) == 0)
  {
LABEL_8:
    if ((validMask & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_33:
  albumTitle = self->_albumTitle;
  if (albumTitle)
  {
    albumTitle = [(NSString *)albumTitle UTF8String];
    validMask = self->_validMask;
  }

  a3->var7 = albumTitle;
  a3->var0 |= 0x40u;
  if ((validMask & 0x80) == 0)
  {
LABEL_9:
    if ((validMask & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  a3->var8 = self->_albumTrackNumber;
  a3->var0 |= 0x80u;
  if ((validMask & 0x100) == 0)
  {
LABEL_10:
    if ((validMask & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  a3->var9 = self->_albumTrackCount;
  a3->var0 |= 0x100u;
  if ((validMask & 0x200) == 0)
  {
LABEL_11:
    if ((validMask & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  a3->var10 = self->_albumDiscNumber;
  a3->var0 |= 0x200u;
  if ((validMask & 0x400) == 0)
  {
LABEL_12:
    if ((validMask & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  a3->var11 = self->_albumDiscCount;
  a3->var0 |= 0x400u;
  if ((validMask & 0x800) == 0)
  {
LABEL_13:
    if ((validMask & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  a3->var12 = self->_artistPersistentID;
  a3->var0 |= 0x800u;
  validMask = self->_validMask;
  if ((validMask & 0x1000) == 0)
  {
LABEL_14:
    if ((validMask & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_41:
  artist = self->_artist;
  if (artist)
  {
    artist = [(NSString *)artist UTF8String];
    validMask = self->_validMask;
  }

  a3->var13 = artist;
  a3->var0 |= 0x1000u;
  if ((validMask & 0x2000) == 0)
  {
LABEL_15:
    if ((validMask & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  a3->var14 = self->_albumArtistPersistentID;
  a3->var0 |= 0x2000u;
  validMask = self->_validMask;
  if ((validMask & 0x4000) == 0)
  {
LABEL_16:
    if ((validMask & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_45:
  albumArtist = self->_albumArtist;
  if (albumArtist)
  {
    albumArtist = [(NSString *)albumArtist UTF8String];
    validMask = self->_validMask;
  }

  a3->var15 = albumArtist;
  a3->var0 |= 0x4000u;
  if ((validMask & 0x8000) == 0)
  {
LABEL_17:
    if ((validMask & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  a3->var16 = self->_genrePersistentID;
  a3->var0 |= 0x8000u;
  validMask = self->_validMask;
  if ((validMask & 0x10000) == 0)
  {
LABEL_18:
    if ((validMask & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_49:
  genre = self->_genre;
  if (genre)
  {
    genre = [(NSString *)genre UTF8String];
    validMask = self->_validMask;
  }

  a3->var17 = genre;
  a3->var0 |= 0x10000u;
  if ((validMask & 0x20000) == 0)
  {
LABEL_19:
    if ((validMask & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  a3->var18 = self->_composerPersistentID;
  a3->var0 |= 0x20000u;
  validMask = self->_validMask;
  if ((validMask & 0x40000) == 0)
  {
LABEL_20:
    if ((validMask & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_53:
  composer = self->_composer;
  if (composer)
  {
    composer = [(NSString *)composer UTF8String];
    validMask = self->_validMask;
  }

  a3->var19 = composer;
  a3->var0 |= 0x40000u;
  if ((validMask & 0x80000) == 0)
  {
LABEL_21:
    if ((validMask & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  a3->var20 = self->_partOfCompilation;
  a3->var0 |= 0x80000u;
  if ((validMask & 0x2000000) == 0)
  {
LABEL_22:
    if ((validMask & 0x8000000) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_57:
  a3->var21 = self->_local;
  a3->var0 |= 0x2000000u;
  if ((validMask & 0x8000000) == 0)
  {
    return;
  }

LABEL_23:
  a3->var22 = self->_chapterCount;
  a3->var0 |= 0x8000000u;
}

- (void)setPersistentID:(unint64_t)a3
{
  v3 = self->_validMask | 1;
  self->_persistentID = a3;
  self->_validMask = v3;
}

- (void)copyDict
{
  v3 = *a1;
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "_validMask=%llxh dict=%@", &v4, 0x16u);
}

@end