@interface ACCMediaLibraryUpdatePlaylistContentItem
- (ACCMediaLibraryUpdatePlaylistContentItem)initWithMediaLibrary:(id)library persistentID:(unint64_t)d playlistPersistentID:(unint64_t)iD;
- (ACCMediaLibraryUpdatePlaylistContentItem)initWithMediaLibrary:(id)library playlistPersistentID:(unint64_t)d dict:(id)dict;
- (id)copyNSRepresentation:(int)representation;
- (id)debugDescription;
- (void)fillStruct:(id *)struct;
@end

@implementation ACCMediaLibraryUpdatePlaylistContentItem

- (ACCMediaLibraryUpdatePlaylistContentItem)initWithMediaLibrary:(id)library persistentID:(unint64_t)d playlistPersistentID:(unint64_t)iD
{
  libraryCopy = library;
  v19.receiver = self;
  v19.super_class = ACCMediaLibraryUpdatePlaylistContentItem;
  v10 = [(ACCMediaLibraryUpdatePlaylistContentItem *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mediaLibraryUID, library);
    v11->_playlistPersistentID = iD;
    v11->_validMask = 1;
    title = v11->_title;
    v11->_persistentID = d;
    v11->_title = 0;

    albumTitle = v11->_albumTitle;
    v11->_albumTitle = 0;

    artist = v11->_artist;
    v11->_artist = 0;

    albumArtist = v11->_albumArtist;
    v11->_albumArtist = 0;

    genre = v11->_genre;
    v11->_genre = 0;

    composer = v11->_composer;
    v11->_composer = 0;
  }

  return v11;
}

- (ACCMediaLibraryUpdatePlaylistContentItem)initWithMediaLibrary:(id)library playlistPersistentID:(unint64_t)d dict:(id)dict
{
  libraryCopy = library;
  dictCopy = dict;
  v40.receiver = self;
  v40.super_class = ACCMediaLibraryUpdatePlaylistContentItem;
  v11 = [(ACCMediaLibraryUpdatePlaylistContentItem *)&v40 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaLibraryUID, library);
    v12->_playlistPersistentID = d;
    title = v12->_title;
    v12->_persistentID = 0;
    v12->_title = 0;

    albumTitle = v12->_albumTitle;
    v12->_albumTitle = 0;

    artist = v12->_artist;
    v12->_artist = 0;

    albumArtist = v12->_albumArtist;
    v12->_albumArtist = 0;

    genre = v12->_genre;
    v12->_genre = 0;

    composer = v12->_composer;
    v12->_composer = 0;

    v12->_validMask = 0;
    v19 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemPersistentID"];

    if (v19)
    {
      v20 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemPersistentID"];
      v12->_persistentID = [v20 unsignedLongLongValue];

      v12->_validMask |= 1uLL;
    }

    v21 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemTitle"];

    if (v21)
    {
      v22 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemTitle"];
      v23 = v12->_title;
      v12->_title = v22;

      v12->_validMask |= 2uLL;
    }

    v24 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemAlbumTitle"];

    if (v24)
    {
      v25 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemAlbumTitle"];
      v26 = v12->_albumTitle;
      v12->_albumTitle = v25;

      v12->_validMask |= 0x40uLL;
    }

    v27 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemArtist"];

    if (v27)
    {
      v28 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemArtist"];
      v29 = v12->_artist;
      v12->_artist = v28;

      v12->_validMask |= 0x1000uLL;
    }

    v30 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemAlbumArtist"];

    if (v30)
    {
      v31 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemAlbumArtist"];
      v32 = v12->_albumArtist;
      v12->_albumArtist = v31;

      v12->_validMask |= 0x4000uLL;
    }

    v33 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemGenre"];

    if (v33)
    {
      v34 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemGenre"];
      v35 = v12->_genre;
      v12->_genre = v34;

      v12->_validMask |= 0x10000uLL;
    }

    v36 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemComposer"];

    if (v36)
    {
      v37 = [dictCopy objectForKey:@"ACCMediaLibraryPlaylistItemComposer"];
      v38 = v12->_composer;
      v12->_composer = v37;

      v12->_validMask |= 0x40000uLL;
    }
  }

  return v12;
}

- (id)debugDescription
{
  v3 = [(ACCMediaLibraryUpdatePlaylistContentItem *)self description];
  v4 = [(ACCMediaLibraryUpdatePlaylistContentItem *)self copyNSRepresentation:3];
  v5 = [NSString stringWithFormat:@"%@\n    %@", v3, v4];

  return v5;
}

- (id)copyNSRepresentation:(int)representation
{
  if (representation != 1)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    validMask = self->_validMask;
    if (validMask)
    {
      v7 = [NSNumber numberWithUnsignedLongLong:self->_persistentID];
      [v4 setObject:v7 forKey:@"ACCMediaLibraryPlaylistItemPersistentID"];

      validMask = self->_validMask;
      if ((validMask & 2) == 0)
      {
LABEL_5:
        if ((validMask & 0x40) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

    else if ((validMask & 2) == 0)
    {
      goto LABEL_5;
    }

    [v4 setObject:self->_title forKey:@"ACCMediaLibraryPlaylistItemTitle"];
    validMask = self->_validMask;
    if ((validMask & 0x40) == 0)
    {
LABEL_6:
      if ((validMask & 0x1000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    [v4 setObject:self->_albumTitle forKey:@"ACCMediaLibraryPlaylistItemAlbumTitle"];
    validMask = self->_validMask;
    if ((validMask & 0x1000) == 0)
    {
LABEL_7:
      if ((validMask & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    [v4 setObject:self->_artist forKey:@"ACCMediaLibraryPlaylistItemArtist"];
    validMask = self->_validMask;
    if ((validMask & 0x4000) == 0)
    {
LABEL_8:
      if ((validMask & 0x10000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    [v4 setObject:self->_albumArtist forKey:@"ACCMediaLibraryPlaylistItemAlbumArtist"];
    validMask = self->_validMask;
    if ((validMask & 0x10000) == 0)
    {
LABEL_9:
      if ((validMask & 0x40000) == 0)
      {
        return v4;
      }

LABEL_10:
      [v4 setObject:self->_composer forKey:@"ACCMediaLibraryPlaylistItemComposer"];
      return v4;
    }

LABEL_17:
    [v4 setObject:self->_genre forKey:@"ACCMediaLibraryPlaylistItemGenre"];
    if ((self->_validMask & 0x40000) == 0)
    {
      return v4;
    }

    goto LABEL_10;
  }

  [NSNumber numberWithUnsignedLongLong:self->_persistentID];
  return objc_claimAutoreleasedReturnValue();
}

- (void)fillStruct:(id *)struct
{
  *&struct->var4 = 0u;
  *&struct->var6 = 0u;
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
      if ((validMask & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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
  if ((validMask & 0x40) == 0)
  {
LABEL_4:
    if ((validMask & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  albumTitle = self->_albumTitle;
  if (albumTitle)
  {
    albumTitle = [(NSString *)albumTitle UTF8String];
    validMask = self->_validMask;
  }

  struct->var3 = albumTitle;
  struct->var0 |= 0x40u;
  if ((validMask & 0x1000) == 0)
  {
LABEL_5:
    if ((validMask & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_16:
  artist = self->_artist;
  if (artist)
  {
    artist = [(NSString *)artist UTF8String];
    validMask = self->_validMask;
  }

  struct->var4 = artist;
  struct->var0 |= 0x1000u;
  if ((validMask & 0x4000) == 0)
  {
LABEL_6:
    if ((validMask & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_19:
  albumArtist = self->_albumArtist;
  if (albumArtist)
  {
    albumArtist = [(NSString *)albumArtist UTF8String];
    validMask = self->_validMask;
  }

  struct->var5 = albumArtist;
  struct->var0 |= 0x4000u;
  if ((validMask & 0x10000) == 0)
  {
LABEL_7:
    if ((validMask & 0x40000) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_22:
  genre = self->_genre;
  if (genre)
  {
    genre = [(NSString *)genre UTF8String];
    validMask = self->_validMask;
  }

  struct->var6 = genre;
  struct->var0 |= 0x10000u;
  if ((validMask & 0x40000) != 0)
  {
LABEL_25:
    composer = self->_composer;
    if (composer)
    {
      composer = [(NSString *)composer UTF8String];
    }

    struct->var7 = composer;
    struct->var0 |= 0x40000u;
  }
}

@end