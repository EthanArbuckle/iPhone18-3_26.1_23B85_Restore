@interface ACCMediaLibraryUpdateItem
- (ACCMediaLibraryUpdateItem)initWithMediaLibrary:(id)library dict:(id)dict;
- (ACCMediaLibraryUpdateItem)initWithMediaLibrary:(id)library persistentID:(unint64_t)d revision:(id)revision;
- (id)copyDict;
- (id)debugDescription;
- (void)copyDict;
- (void)fillStruct:(id *)struct;
- (void)setPersistentID:(unint64_t)d;
@end

@implementation ACCMediaLibraryUpdateItem

- (ACCMediaLibraryUpdateItem)initWithMediaLibrary:(id)library persistentID:(unint64_t)d revision:(id)revision
{
  libraryCopy = library;
  revisionCopy = revision;
  v20.receiver = self;
  v20.super_class = ACCMediaLibraryUpdateItem;
  v11 = [(ACCMediaLibraryUpdateItem *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaLibraryUID, library);
    objc_storeStrong(&v12->_revision, revision);
    v12->_persistentID = d;
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

- (ACCMediaLibraryUpdateItem)initWithMediaLibrary:(id)library dict:(id)dict
{
  libraryCopy = library;
  dictCopy = dict;
  v72.receiver = self;
  v72.super_class = ACCMediaLibraryUpdateItem;
  v9 = [(ACCMediaLibraryUpdateItem *)&v72 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaLibraryUID, library);
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
    v18 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateRevisionKey"];

    if (v18)
    {
      v19 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateRevisionKey"];
      v20 = v10->_revision;
      v10->_revision = v19;
    }

    v21 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemPersistentID"];

    if (v21)
    {
      v22 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemPersistentID"];
      v10->_persistentID = [v22 unsignedLongLongValue];

      v10->_validMask |= 1uLL;
    }

    v23 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemTitle"];

    if (v23)
    {
      v24 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemTitle"];
      v25 = v10->_title;
      v10->_title = v24;

      v10->_validMask |= 2uLL;
    }

    v26 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemType"];

    if (v26)
    {
      v27 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemType"];
      v10->_type = [v27 unsignedCharValue];

      v10->_validMask |= 4uLL;
    }

    v28 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemRating"];

    if (v28)
    {
      v29 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemRating"];
      v10->_rating = [v29 unsignedCharValue];

      v10->_validMask |= 8uLL;
    }

    v30 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemPlaybackDurationInMilliseconds"];

    if (v30)
    {
      v31 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemPlaybackDurationInMilliseconds"];
      v10->_duration = [v31 unsignedLongValue];

      v10->_validMask |= 0x10uLL;
    }

    v32 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumPersistentID"];

    if (v32)
    {
      v33 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumPersistentID"];
      v10->_albumPersistentID = [v33 unsignedLongLongValue];

      v10->_validMask |= 0x20uLL;
    }

    v34 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumTitle"];

    if (v34)
    {
      v35 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumTitle"];
      v36 = v10->_albumTitle;
      v10->_albumTitle = v35;

      v10->_validMask |= 0x40uLL;
    }

    v37 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumTrackNumber"];

    if (v37)
    {
      v38 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumTrackNumber"];
      v10->_albumTrackNumber = [v38 unsignedShortValue];

      v10->_validMask |= 0x80uLL;
    }

    v39 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumTrackCount"];

    if (v39)
    {
      v40 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumTrackCount"];
      v10->_albumTrackCount = [v40 unsignedShortValue];

      v10->_validMask |= 0x100uLL;
    }

    v41 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumDiscNumber"];

    if (v41)
    {
      v42 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumDiscNumber"];
      v10->_albumDiscNumber = [v42 unsignedShortValue];

      v10->_validMask |= 0x200uLL;
    }

    v43 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumDiscCount"];

    if (v43)
    {
      v44 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumDiscCount"];
      v10->_albumDiscCount = [v44 unsignedShortValue];

      v10->_validMask |= 0x400uLL;
    }

    v45 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemArtistPersistentID"];

    if (v45)
    {
      v46 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemArtistPersistentID"];
      v10->_artistPersistentID = [v46 unsignedLongLongValue];

      v10->_validMask |= 0x800uLL;
    }

    v47 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemArtist"];

    if (v47)
    {
      v48 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemArtist"];
      v49 = v10->_artist;
      v10->_artist = v48;

      v10->_validMask |= 0x1000uLL;
    }

    v50 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumArtistPersistentID"];

    if (v50)
    {
      v51 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumArtistPersistentID"];
      v10->_albumArtistPersistentID = [v51 unsignedLongLongValue];

      v10->_validMask |= 0x2000uLL;
    }

    v52 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumArtist"];

    if (v52)
    {
      v53 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemAlbumArtist"];
      v54 = v10->_albumArtist;
      v10->_albumArtist = v53;

      v10->_validMask |= 0x4000uLL;
    }

    v55 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemGenrePersistentID"];

    if (v55)
    {
      v56 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemGenrePersistentID"];
      v10->_genrePersistentID = [v56 unsignedLongLongValue];

      v10->_validMask |= 0x8000uLL;
    }

    v57 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemGenre"];

    if (v57)
    {
      v58 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemGenre"];
      v59 = v10->_genre;
      v10->_genre = v58;

      v10->_validMask |= 0x10000uLL;
    }

    v60 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemComposerPersistentID"];

    if (v60)
    {
      v61 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemComposerPersistentID"];
      v10->_composerPersistentID = [v61 unsignedLongLongValue];

      v10->_validMask |= 0x20000uLL;
    }

    v62 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemComposer"];

    if (v62)
    {
      v63 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemComposer"];
      v64 = v10->_composer;
      v10->_composer = v63;

      v10->_validMask |= 0x40000uLL;
    }

    v65 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemIsPartOfCompilation"];

    if (v65)
    {
      v66 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemIsPartOfCompilation"];
      v10->_partOfCompilation = [v66 unsignedCharValue] != 0;

      v10->_validMask |= 0x80000uLL;
    }

    v67 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemIsLocal"];

    if (v67)
    {
      v68 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemIsLocal"];
      v10->_local = [v68 unsignedCharValue] != 0;

      v10->_validMask |= 0x2000000uLL;
    }

    v69 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemChapterCount"];

    if (v69)
    {
      v70 = [dictCopy objectForKey:@"ACCMediaLibraryUpdateItemChapterCount"];
      v10->_chapterCount = [v70 unsignedShortValue];

      v10->_validMask |= 0x8000000uLL;
    }
  }

  return v10;
}

- (id)debugDescription
{
  v3 = [(ACCMediaLibraryUpdateItem *)self description];
  copyDict = [(ACCMediaLibraryUpdateItem *)self copyDict];
  v5 = [NSString stringWithFormat:@"%@\n    %@", v3, copyDict];

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

- (void)fillStruct:(id *)struct
{
  *&struct->var17 = 0u;
  *&struct->var19 = 0u;
  *&struct->var13 = 0u;
  *&struct->var15 = 0u;
  *&struct->var6 = 0u;
  *&struct->var8 = 0u;
  *&struct->var0 = 0u;
  *&struct->var2 = 0u;
  validMask = self->_validMask;
  if (validMask)
  {
    struct->var1 = self->_persistentID;
    struct->var0 |= 1u;
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

  struct->var2 = title;
  struct->var0 |= 2u;
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
  struct->var3 = self->_type;
  struct->var0 |= 4u;
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
  struct->var4 = self->_rating;
  struct->var0 |= 8u;
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
  struct->var5 = self->_duration;
  struct->var0 |= 0x10u;
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
  struct->var6 = self->_albumPersistentID;
  struct->var0 |= 0x20u;
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

  struct->var7 = albumTitle;
  struct->var0 |= 0x40u;
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
  struct->var8 = self->_albumTrackNumber;
  struct->var0 |= 0x80u;
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
  struct->var9 = self->_albumTrackCount;
  struct->var0 |= 0x100u;
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
  struct->var10 = self->_albumDiscNumber;
  struct->var0 |= 0x200u;
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
  struct->var11 = self->_albumDiscCount;
  struct->var0 |= 0x400u;
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
  struct->var12 = self->_artistPersistentID;
  struct->var0 |= 0x800u;
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

  struct->var13 = artist;
  struct->var0 |= 0x1000u;
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
  struct->var14 = self->_albumArtistPersistentID;
  struct->var0 |= 0x2000u;
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

  struct->var15 = albumArtist;
  struct->var0 |= 0x4000u;
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
  struct->var16 = self->_genrePersistentID;
  struct->var0 |= 0x8000u;
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

  struct->var17 = genre;
  struct->var0 |= 0x10000u;
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
  struct->var18 = self->_composerPersistentID;
  struct->var0 |= 0x20000u;
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

  struct->var19 = composer;
  struct->var0 |= 0x40000u;
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
  struct->var20 = self->_partOfCompilation;
  struct->var0 |= 0x80000u;
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
  struct->var21 = self->_local;
  struct->var0 |= 0x2000000u;
  if ((validMask & 0x8000000) == 0)
  {
    return;
  }

LABEL_23:
  struct->var22 = self->_chapterCount;
  struct->var0 |= 0x8000000u;
}

- (void)setPersistentID:(unint64_t)d
{
  v3 = self->_validMask | 1;
  self->_persistentID = d;
  self->_validMask = v3;
}

- (void)copyDict
{
  v3 = *self;
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "_validMask=%llxh dict=%@", &v4, 0x16u);
}

@end