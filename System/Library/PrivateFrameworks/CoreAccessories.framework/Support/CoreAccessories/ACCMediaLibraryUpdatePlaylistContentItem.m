@interface ACCMediaLibraryUpdatePlaylistContentItem
- (ACCMediaLibraryUpdatePlaylistContentItem)initWithMediaLibrary:(id)a3 persistentID:(unint64_t)a4 playlistPersistentID:(unint64_t)a5;
- (ACCMediaLibraryUpdatePlaylistContentItem)initWithMediaLibrary:(id)a3 playlistPersistentID:(unint64_t)a4 dict:(id)a5;
- (id)copyNSRepresentation:(int)a3;
- (id)debugDescription;
- (void)fillStruct:(id *)a3;
@end

@implementation ACCMediaLibraryUpdatePlaylistContentItem

- (ACCMediaLibraryUpdatePlaylistContentItem)initWithMediaLibrary:(id)a3 persistentID:(unint64_t)a4 playlistPersistentID:(unint64_t)a5
{
  v9 = a3;
  v19.receiver = self;
  v19.super_class = ACCMediaLibraryUpdatePlaylistContentItem;
  v10 = [(ACCMediaLibraryUpdatePlaylistContentItem *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mediaLibraryUID, a3);
    v11->_playlistPersistentID = a5;
    v11->_validMask = 1;
    title = v11->_title;
    v11->_persistentID = a4;
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

- (ACCMediaLibraryUpdatePlaylistContentItem)initWithMediaLibrary:(id)a3 playlistPersistentID:(unint64_t)a4 dict:(id)a5
{
  v9 = a3;
  v10 = a5;
  v40.receiver = self;
  v40.super_class = ACCMediaLibraryUpdatePlaylistContentItem;
  v11 = [(ACCMediaLibraryUpdatePlaylistContentItem *)&v40 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaLibraryUID, a3);
    v12->_playlistPersistentID = a4;
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
    v19 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemPersistentID"];

    if (v19)
    {
      v20 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemPersistentID"];
      v12->_persistentID = [v20 unsignedLongLongValue];

      v12->_validMask |= 1uLL;
    }

    v21 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemTitle"];

    if (v21)
    {
      v22 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemTitle"];
      v23 = v12->_title;
      v12->_title = v22;

      v12->_validMask |= 2uLL;
    }

    v24 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemAlbumTitle"];

    if (v24)
    {
      v25 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemAlbumTitle"];
      v26 = v12->_albumTitle;
      v12->_albumTitle = v25;

      v12->_validMask |= 0x40uLL;
    }

    v27 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemArtist"];

    if (v27)
    {
      v28 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemArtist"];
      v29 = v12->_artist;
      v12->_artist = v28;

      v12->_validMask |= 0x1000uLL;
    }

    v30 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemAlbumArtist"];

    if (v30)
    {
      v31 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemAlbumArtist"];
      v32 = v12->_albumArtist;
      v12->_albumArtist = v31;

      v12->_validMask |= 0x4000uLL;
    }

    v33 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemGenre"];

    if (v33)
    {
      v34 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemGenre"];
      v35 = v12->_genre;
      v12->_genre = v34;

      v12->_validMask |= 0x10000uLL;
    }

    v36 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemComposer"];

    if (v36)
    {
      v37 = [v10 objectForKey:@"ACCMediaLibraryPlaylistItemComposer"];
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

- (id)copyNSRepresentation:(int)a3
{
  if (a3 != 1)
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

- (void)fillStruct:(id *)a3
{
  *&a3->var4 = 0u;
  *&a3->var6 = 0u;
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

  a3->var2 = title;
  a3->var0 |= 2u;
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

  a3->var3 = albumTitle;
  a3->var0 |= 0x40u;
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

  a3->var4 = artist;
  a3->var0 |= 0x1000u;
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

  a3->var5 = albumArtist;
  a3->var0 |= 0x4000u;
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

  a3->var6 = genre;
  a3->var0 |= 0x10000u;
  if ((validMask & 0x40000) != 0)
  {
LABEL_25:
    composer = self->_composer;
    if (composer)
    {
      composer = [(NSString *)composer UTF8String];
    }

    a3->var7 = composer;
    a3->var0 |= 0x40000u;
  }
}

@end