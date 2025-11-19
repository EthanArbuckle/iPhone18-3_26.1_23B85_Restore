@interface CCMediaContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCMediaAlbum)album;
- (CCMediaAlbumArtist)albumArtist;
- (CCMediaAudiobook)audiobook;
- (CCMediaAudiobookArtist)audiobookArtist;
- (CCMediaContent)initWithEntity:(id)a3 entityType:(unsigned int)a4 error:(id *)a5;
- (CCMediaContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCMediaGenre)genre;
- (CCMediaMovie)movie;
- (CCMediaMusicVideo)musicVideo;
- (CCMediaPlaylist)playlist;
- (CCMediaSong)song;
- (CCMediaSongArtist)songArtist;
- (CCMediaTVEpisode)TVEpisode;
- (CCMediaTVShow)TVShow;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCMediaContent

- (CCMediaContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v109[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"albumArtist"];
    if (v9)
    {
      v109[0] = 0;
      v10 = [[CCMediaAlbumArtist alloc] initWithJSONDictionary:v9 error:v109];
      v11 = v109[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v38 = 0;
LABEL_106:

        goto LABEL_107;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"songArtist"];
    if (v12)
    {
      v13 = [CCMediaSongArtist alloc];
      v108 = 0;
      v14 = [(CCMediaSongArtist *)v13 initWithJSONDictionary:v12 error:&v108];
      v15 = v108;
      v10 = v15;
      if (!v14 || v15)
      {
        CCSetError();
        v38 = 0;
LABEL_105:

        goto LABEL_106;
      }

      v12 = v14;
    }

    v10 = [v6 objectForKeyedSubscript:@"album"];
    if (v10)
    {
      v16 = [CCMediaAlbum alloc];
      v107 = 0;
      v17 = [(CCMediaAlbum *)v16 initWithJSONDictionary:v10 error:&v107];
      v18 = v107;
      v14 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v38 = 0;
LABEL_104:

        goto LABEL_105;
      }

      v10 = v17;
    }

    v14 = [v6 objectForKeyedSubscript:@"genre"];
    if (v14)
    {
      v19 = [CCMediaGenre alloc];
      v106 = 0;
      v20 = [(CCMediaGenre *)v19 initWithJSONDictionary:v14 error:&v106];
      v21 = v106;
      v17 = v21;
      if (!v20 || v21)
      {
        CCSetError();
        v38 = 0;
LABEL_103:

        goto LABEL_104;
      }

      v14 = v20;
    }

    v17 = [v6 objectForKeyedSubscript:@"song"];
    if (v17)
    {
      v95 = v14;
      v22 = self;
      v23 = [CCMediaSong alloc];
      v105 = 0;
      v24 = v17;
      v25 = [(CCMediaSong *)v23 initWithJSONDictionary:v17 error:&v105];
      v26 = v105;
      v27 = v26;
      v97 = v25;
      if (!v25 || v26)
      {
        CCSetError();
        v38 = 0;
        v20 = v27;
        v17 = v24;
        self = v22;
        v14 = v95;
LABEL_102:

        goto LABEL_103;
      }

      self = v22;
      v14 = v95;
      v17 = v25;
    }

    v28 = [v6 objectForKeyedSubscript:@"playlist"];
    v94 = v17;
    if (v28)
    {
      v29 = [CCMediaPlaylist alloc];
      v104 = 0;
      v30 = v28;
      v28 = [(CCMediaPlaylist *)v29 initWithJSONDictionary:v28 error:&v104];
      v31 = v104;
      v96 = v28;
      if (!v28 || v31)
      {
        v97 = v31;
        CCSetError();
        v38 = 0;
        v20 = v30;
        v17 = v94;
        goto LABEL_101;
      }

      v17 = v94;
    }

    v32 = [v6 objectForKeyedSubscript:@"musicVideo"];
    if (!v32)
    {
      v97 = 0;
LABEL_38:
      v39 = [v6 objectForKeyedSubscript:@"TVShow"];
      v82 = v28;
      if (v39)
      {
        v40 = v39;
        v41 = [CCMediaTVShow alloc];
        v102 = 0;
        v96 = v40;
        v42 = [(CCMediaTVShow *)v41 initWithJSONDictionary:v40 error:&v102];
        v43 = v102;
        if (!v42 || v43)
        {
          v83 = v42;
          v93 = v43;
          CCSetError();
          v38 = 0;
          v20 = v82;

LABEL_100:
          goto LABEL_101;
        }

        v96 = v42;
      }

      else
      {
        v96 = 0;
      }

      v44 = [v6 objectForKeyedSubscript:@"TVEpisode"];
      if (v44)
      {
        v45 = v44;
        v46 = [CCMediaTVEpisode alloc];
        v101 = 0;
        v93 = v45;
        v47 = [(CCMediaTVEpisode *)v46 initWithJSONDictionary:v45 error:&v101];
        v48 = v101;
        if (!v47 || v48)
        {
          v80 = v47;
          v84 = v48;
          CCSetError();
          v38 = 0;
          v20 = v82;

LABEL_99:
          goto LABEL_100;
        }

        v93 = v47;
      }

      else
      {
        v93 = 0;
      }

      v49 = [v6 objectForKeyedSubscript:@"movie"];
      if (v49)
      {
        v50 = v49;
        v51 = [CCMediaMovie alloc];
        v100 = 0;
        v84 = v50;
        v52 = [(CCMediaMovie *)v51 initWithJSONDictionary:v50 error:&v100];
        v53 = v100;
        v79 = v52;
        if (!v52 || v53)
        {
          v81 = v53;
          CCSetError();
          v38 = 0;
          v20 = v82;
          goto LABEL_97;
        }

        v84 = v52;
      }

      else
      {
        v84 = 0;
      }

      v20 = v82;
      v54 = [v6 objectForKeyedSubscript:@"audiobookArtist"];
      if (v54)
      {
        v81 = v54;
        v55 = [CCMediaAudiobookArtist alloc];
        v99 = 0;
        v85 = [(CCMediaAudiobookArtist *)v55 initWithJSONDictionary:v81 error:&v99];
        v56 = v99;
        if (!v85 || v56)
        {
          v79 = v56;
          CCSetError();
          v38 = 0;
          v61 = v85;
          goto LABEL_96;
        }

        v81 = v85;
      }

      else
      {
        v81 = 0;
      }

      v57 = [v6 objectForKeyedSubscript:@"audiobook"];
      if (!v57)
      {
        v60 = 0;
        goto LABEL_68;
      }

      v79 = v57;
      v58 = [CCMediaAudiobook alloc];
      v98 = 0;
      v86 = [(CCMediaAudiobook *)v58 initWithJSONDictionary:v79 error:&v98];
      v59 = v98;
      if (v86 && !v59)
      {

        v60 = v86;
LABEL_68:
        v79 = v60;
        if (v9)
        {
          v62 = v9;
          v63 = 1;
        }

        else
        {
          v63 = 0;
        }

        v65 = v9;
        if (v12)
        {
          v87 = v12;

          v65 = v87;
          v63 = 2;
        }

        if (v10)
        {
          v88 = v65;
          v69 = v10;

          v63 = 3;
          v65 = v69;
        }

        if (v14)
        {
          v89 = v65;
          v70 = v14;

          v63 = 4;
          v65 = v70;
        }

        if (v17)
        {
          v90 = v65;
          v71 = v17;

          v63 = 5;
          v65 = v71;
        }

        v91 = v65;
        if (v82)
        {
          v72 = v82;

          v63 = 6;
          v91 = v72;
        }

        if (v97)
        {
          v73 = v97;

          v63 = 7;
          v91 = v73;
        }

        if (v96)
        {
          v74 = v96;

          v63 = 8;
          v91 = v74;
        }

        if (v93)
        {
          v75 = v93;

          v63 = 9;
          v91 = v75;
        }

        if (v84)
        {
          v76 = v84;

          v63 = 10;
          v91 = v76;
        }

        if (v81)
        {
          v77 = v81;

          v63 = 11;
          v91 = v77;
        }

        if (v79)
        {
          v68 = v79;

          v78 = 12;
          v91 = v68;
        }

        else
        {
          v78 = v63;
        }

        v66 = [[CCMediaContent alloc] initWithEntity:v91 entityType:v78 error:a4];
        v61 = v91;
        v38 = v66;
        goto LABEL_96;
      }

      v64 = v59;
      CCSetError();

      v61 = v64;
      v38 = 0;
LABEL_96:

LABEL_97:
      goto LABEL_99;
    }

    v33 = v28;
    v34 = v32;
    v35 = [CCMediaMusicVideo alloc];
    v103 = 0;
    v97 = v34;
    v36 = [(CCMediaMusicVideo *)v35 initWithJSONDictionary:v34 error:&v103];
    v37 = v103;
    if (v36 && !v37)
    {

      v97 = v36;
      v28 = v33;
      v17 = v94;
      goto LABEL_38;
    }

    v92 = v36;
    v96 = v37;
    CCSetError();
    v38 = 0;
    v20 = v33;
    v17 = v94;

LABEL_101:
    goto LABEL_102;
  }

  CCSetError();
  v38 = 0;
LABEL_107:

  return v38;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  entityType = self->_entityType;
  if (entityType == 1)
  {
    if (!self->_albumArtist)
    {
      goto LABEL_37;
    }

    v5 = [(CCMediaContent *)self albumArtist];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"albumArtist"];

    entityType = self->_entityType;
  }

  if (entityType == 2)
  {
    if (!self->_songArtist)
    {
      goto LABEL_37;
    }

    v7 = [(CCMediaContent *)self songArtist];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"songArtist"];

    entityType = self->_entityType;
  }

  if (entityType == 3)
  {
    if (!self->_album)
    {
      goto LABEL_37;
    }

    v9 = [(CCMediaContent *)self album];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"album"];

    entityType = self->_entityType;
  }

  if (entityType == 4)
  {
    if (!self->_genre)
    {
      goto LABEL_37;
    }

    v11 = [(CCMediaContent *)self genre];
    v12 = [v11 jsonDictionary];
    [v3 setObject:v12 forKeyedSubscript:@"genre"];

    entityType = self->_entityType;
  }

  if (entityType == 5)
  {
    if (!self->_song)
    {
      goto LABEL_37;
    }

    v13 = [(CCMediaContent *)self song];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"song"];

    entityType = self->_entityType;
  }

  if (entityType == 6)
  {
    if (!self->_playlist)
    {
      goto LABEL_37;
    }

    v15 = [(CCMediaContent *)self playlist];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"playlist"];

    entityType = self->_entityType;
  }

  if (entityType == 7)
  {
    if (!self->_musicVideo)
    {
      goto LABEL_37;
    }

    v17 = [(CCMediaContent *)self musicVideo];
    v18 = [v17 jsonDictionary];
    [v3 setObject:v18 forKeyedSubscript:@"musicVideo"];

    entityType = self->_entityType;
  }

  if (entityType == 8)
  {
    if (!self->_TVShow)
    {
      goto LABEL_37;
    }

    v19 = [(CCMediaContent *)self TVShow];
    v20 = [v19 jsonDictionary];
    [v3 setObject:v20 forKeyedSubscript:@"TVShow"];

    entityType = self->_entityType;
  }

  if (entityType == 9)
  {
    if (!self->_TVEpisode)
    {
      goto LABEL_37;
    }

    v21 = [(CCMediaContent *)self TVEpisode];
    v22 = [v21 jsonDictionary];
    [v3 setObject:v22 forKeyedSubscript:@"TVEpisode"];

    entityType = self->_entityType;
  }

  if (entityType == 10)
  {
    if (!self->_movie)
    {
      goto LABEL_37;
    }

    v23 = [(CCMediaContent *)self movie];
    v24 = [v23 jsonDictionary];
    [v3 setObject:v24 forKeyedSubscript:@"movie"];

    entityType = self->_entityType;
  }

  if (entityType == 11)
  {
    if (!self->_audiobookArtist)
    {
      goto LABEL_37;
    }

    v25 = [(CCMediaContent *)self audiobookArtist];
    v26 = [v25 jsonDictionary];
    [v3 setObject:v26 forKeyedSubscript:@"audiobookArtist"];

    entityType = self->_entityType;
  }

  if (entityType == 12 && self->_audiobook)
  {
    v27 = [(CCMediaContent *)self audiobook];
    v28 = [v27 jsonDictionary];
    [v3 setObject:v28 forKeyedSubscript:@"audiobook"];
  }

LABEL_37:
  v29 = [v3 copy];

  return v29;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v18 = a3;
  if (self->_albumArtist)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18541 subMessageValue:self->_albumArtist];
    v18[2](v18, v5);
  }

  if (self->_songArtist)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18542 subMessageValue:self->_songArtist];
    v18[2](v18, v6);
  }

  if (self->_album)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18543 subMessageValue:self->_album];
    v18[2](v18, v7);
  }

  if (self->_genre)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18544 subMessageValue:self->_genre];
    v18[2](v18, v8);
  }

  if (self->_song)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18545 subMessageValue:self->_song];
    v18[2](v18, v9);
  }

  if (self->_playlist)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18546 subMessageValue:self->_playlist];
    v18[2](v18, v10);
  }

  if (self->_musicVideo)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18547 subMessageValue:self->_musicVideo];
    v18[2](v18, v11);
  }

  if (self->_TVShow)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18548 subMessageValue:self->_TVShow];
    v18[2](v18, v12);
  }

  if (self->_TVEpisode)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18549 subMessageValue:self->_TVEpisode];
    v18[2](v18, v13);
  }

  if (self->_movie)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18550 subMessageValue:self->_movie];
    v18[2](v18, v14);
  }

  if (self->_audiobookArtist)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18551 subMessageValue:self->_audiobookArtist];
    v18[2](v18, v15);
  }

  v16 = v18;
  if (self->_audiobook)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18552 subMessageValue:self->_audiobook];
    v18[2](v18, v17);

    v16 = v18;
  }
}

- (CCMediaAudiobook)audiobook
{
  v2 = [(CCMediaAudiobook *)self->_audiobook copy];

  return v2;
}

- (CCMediaAudiobookArtist)audiobookArtist
{
  v2 = [(CCMediaAudiobookArtist *)self->_audiobookArtist copy];

  return v2;
}

- (CCMediaMovie)movie
{
  v2 = [(CCMediaMovie *)self->_movie copy];

  return v2;
}

- (CCMediaTVEpisode)TVEpisode
{
  v2 = [(CCMediaTVEpisode *)self->_TVEpisode copy];

  return v2;
}

- (CCMediaTVShow)TVShow
{
  v2 = [(CCMediaTVShow *)self->_TVShow copy];

  return v2;
}

- (CCMediaMusicVideo)musicVideo
{
  v2 = [(CCMediaMusicVideo *)self->_musicVideo copy];

  return v2;
}

- (CCMediaPlaylist)playlist
{
  v2 = [(CCMediaPlaylist *)self->_playlist copy];

  return v2;
}

- (CCMediaSong)song
{
  v2 = [(CCMediaSong *)self->_song copy];

  return v2;
}

- (CCMediaGenre)genre
{
  v2 = [(CCMediaGenre *)self->_genre copy];

  return v2;
}

- (CCMediaAlbum)album
{
  v2 = [(CCMediaAlbum *)self->_album copy];

  return v2;
}

- (CCMediaSongArtist)songArtist
{
  v2 = [(CCMediaSongArtist *)self->_songArtist copy];

  return v2;
}

- (CCMediaAlbumArtist)albumArtist
{
  v2 = [(CCMediaAlbumArtist *)self->_albumArtist copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_77;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        if (v17 == -1 || v17 >= *&v6[*v8])
        {
          break;
        }

        v18 = *(*&v6[*v11] + v17);
        *&v6[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_78;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v21 = *&v6[*v9];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_78;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) <= 6)
      {
        if (v22 <= 3)
        {
          switch(v22)
          {
            case 1:
              v65 = [CCMediaAlbumArtist alloc];
              v66 = CCPBReaderReadDataNoCopy();
              v168 = 0;
              v67 = [(CCItemMessage *)v65 initWithData:v66 error:&v168];
              v10 = v168;
              albumArtist = self->_albumArtist;
              self->_albumArtist = v67;

              if (v10)
              {
                goto LABEL_64;
              }

              self->_entityType = 1;
              songArtist = self->_songArtist;
              self->_songArtist = 0;

              break;
            case 2:
              v100 = [CCMediaSongArtist alloc];
              v101 = CCPBReaderReadDataNoCopy();
              v167 = 0;
              v102 = [(CCItemMessage *)v100 initWithData:v101 error:&v167];
              v10 = v167;
              v103 = self->_songArtist;
              self->_songArtist = v102;

              if (v10)
              {
                goto LABEL_64;
              }

              v104 = self->_albumArtist;
              self->_albumArtist = 0;

              self->_entityType = 2;
              break;
            case 3:
              v23 = [CCMediaAlbum alloc];
              v24 = CCPBReaderReadDataNoCopy();
              v166 = 0;
              v25 = [(CCItemMessage *)v23 initWithData:v24 error:&v166];
              v10 = v166;
              album = self->_album;
              self->_album = v25;

              if (v10)
              {
                goto LABEL_64;
              }

              v27 = self->_albumArtist;
              self->_albumArtist = 0;

              v28 = self->_songArtist;
              self->_songArtist = 0;

              self->_entityType = 3;
              goto LABEL_55;
            default:
              goto LABEL_72;
          }

          v105 = self->_album;
          self->_album = 0;

LABEL_55:
          genre = self->_genre;
          self->_genre = 0;

LABEL_56:
          song = self->_song;
          self->_song = 0;

LABEL_57:
          playlist = self->_playlist;
          self->_playlist = 0;

LABEL_58:
          musicVideo = self->_musicVideo;
          self->_musicVideo = 0;

LABEL_59:
          TVShow = self->_TVShow;
          self->_TVShow = 0;

LABEL_60:
          TVEpisode = self->_TVEpisode;
          self->_TVEpisode = 0;

LABEL_61:
          movie = self->_movie;
          self->_movie = 0;

LABEL_62:
          audiobookArtist = self->_audiobookArtist;
          self->_audiobookArtist = 0;

LABEL_63:
          audiobook = self->_audiobook;
          self->_audiobook = 0;

          goto LABEL_64;
        }

        if (v22 == 4)
        {
          v80 = [CCMediaGenre alloc];
          v81 = CCPBReaderReadDataNoCopy();
          v165 = 0;
          v82 = [(CCItemMessage *)v80 initWithData:v81 error:&v165];
          v10 = v165;
          v83 = self->_genre;
          self->_genre = v82;

          if (v10)
          {
            goto LABEL_64;
          }

          v84 = self->_albumArtist;
          self->_albumArtist = 0;

          v85 = self->_songArtist;
          self->_songArtist = 0;

          v86 = self->_album;
          self->_album = 0;

          self->_entityType = 4;
          goto LABEL_56;
        }

        if (v22 != 5)
        {
          if (v22 == 6)
          {
            v41 = [CCMediaPlaylist alloc];
            v42 = CCPBReaderReadDataNoCopy();
            v163 = 0;
            v43 = [(CCItemMessage *)v41 initWithData:v42 error:&v163];
            v10 = v163;
            v44 = self->_playlist;
            self->_playlist = v43;

            if (v10)
            {
              goto LABEL_64;
            }

            v45 = self->_albumArtist;
            self->_albumArtist = 0;

            v46 = self->_songArtist;
            self->_songArtist = 0;

            v47 = self->_album;
            self->_album = 0;

            v48 = self->_genre;
            self->_genre = 0;

            v49 = self->_song;
            self->_song = 0;

            self->_entityType = 6;
            goto LABEL_58;
          }

          goto LABEL_72;
        }

        v126 = [CCMediaSong alloc];
        v127 = CCPBReaderReadDataNoCopy();
        v164 = 0;
        v128 = [(CCItemMessage *)v126 initWithData:v127 error:&v164];
        v10 = v164;
        v129 = self->_song;
        self->_song = v128;

        if (!v10)
        {
          v130 = self->_albumArtist;
          self->_albumArtist = 0;

          v131 = self->_songArtist;
          self->_songArtist = 0;

          v132 = self->_album;
          self->_album = 0;

          v133 = self->_genre;
          self->_genre = 0;

          self->_entityType = 5;
          goto LABEL_57;
        }

LABEL_64:
        if (*&v6[*v7] < *&v6[*v8])
        {
          continue;
        }

        break;
      }

      if (v22 > 9)
      {
        switch(v22)
        {
          case 0xA:
            v87 = [CCMediaMovie alloc];
            v88 = CCPBReaderReadDataNoCopy();
            v159 = 0;
            v89 = [(CCItemMessage *)v87 initWithData:v88 error:&v159];
            v10 = v159;
            v90 = self->_movie;
            self->_movie = v89;

            if (v10)
            {
              goto LABEL_64;
            }

            v91 = self->_albumArtist;
            self->_albumArtist = 0;

            v92 = self->_songArtist;
            self->_songArtist = 0;

            v93 = self->_album;
            self->_album = 0;

            v94 = self->_genre;
            self->_genre = 0;

            v95 = self->_song;
            self->_song = 0;

            v96 = self->_playlist;
            self->_playlist = 0;

            v97 = self->_musicVideo;
            self->_musicVideo = 0;

            v98 = self->_TVShow;
            self->_TVShow = 0;

            v99 = self->_TVEpisode;
            self->_TVEpisode = 0;

            self->_entityType = 10;
            goto LABEL_62;
          case 0xB:
            v134 = [CCMediaAudiobookArtist alloc];
            v135 = CCPBReaderReadDataNoCopy();
            v158 = 0;
            v136 = [(CCItemMessage *)v134 initWithData:v135 error:&v158];
            v10 = v158;
            v137 = self->_audiobookArtist;
            self->_audiobookArtist = v136;

            if (!v10)
            {
              v138 = self->_albumArtist;
              self->_albumArtist = 0;

              v139 = self->_songArtist;
              self->_songArtist = 0;

              v140 = self->_album;
              self->_album = 0;

              v141 = self->_genre;
              self->_genre = 0;

              v142 = self->_song;
              self->_song = 0;

              v143 = self->_playlist;
              self->_playlist = 0;

              v144 = self->_musicVideo;
              self->_musicVideo = 0;

              v145 = self->_TVShow;
              self->_TVShow = 0;

              v146 = self->_TVEpisode;
              self->_TVEpisode = 0;

              v147 = self->_movie;
              self->_movie = 0;

              self->_entityType = 11;
              goto LABEL_63;
            }

            goto LABEL_64;
          case 0xC:
            v50 = [CCMediaAudiobook alloc];
            v51 = CCPBReaderReadDataNoCopy();
            v157 = 0;
            v52 = [(CCItemMessage *)v50 initWithData:v51 error:&v157];
            v10 = v157;
            v53 = self->_audiobook;
            self->_audiobook = v52;

            if (!v10)
            {
              v54 = self->_albumArtist;
              self->_albumArtist = 0;

              v55 = self->_songArtist;
              self->_songArtist = 0;

              v56 = self->_album;
              self->_album = 0;

              v57 = self->_genre;
              self->_genre = 0;

              v58 = self->_song;
              self->_song = 0;

              v59 = self->_playlist;
              self->_playlist = 0;

              v60 = self->_musicVideo;
              self->_musicVideo = 0;

              v61 = self->_TVShow;
              self->_TVShow = 0;

              v62 = self->_TVEpisode;
              self->_TVEpisode = 0;

              v63 = self->_movie;
              self->_movie = 0;

              v64 = self->_audiobookArtist;
              self->_audiobookArtist = 0;

              self->_entityType = 12;
            }

            goto LABEL_64;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            v70 = [CCMediaMusicVideo alloc];
            v71 = CCPBReaderReadDataNoCopy();
            v162 = 0;
            v72 = [(CCItemMessage *)v70 initWithData:v71 error:&v162];
            v10 = v162;
            v73 = self->_musicVideo;
            self->_musicVideo = v72;

            if (v10)
            {
              goto LABEL_64;
            }

            v74 = self->_albumArtist;
            self->_albumArtist = 0;

            v75 = self->_songArtist;
            self->_songArtist = 0;

            v76 = self->_album;
            self->_album = 0;

            v77 = self->_genre;
            self->_genre = 0;

            v78 = self->_song;
            self->_song = 0;

            v79 = self->_playlist;
            self->_playlist = 0;

            self->_entityType = 7;
            goto LABEL_59;
          case 8:
            v115 = [CCMediaTVShow alloc];
            v116 = CCPBReaderReadDataNoCopy();
            v161 = 0;
            v117 = [(CCItemMessage *)v115 initWithData:v116 error:&v161];
            v10 = v161;
            v118 = self->_TVShow;
            self->_TVShow = v117;

            if (!v10)
            {
              v119 = self->_albumArtist;
              self->_albumArtist = 0;

              v120 = self->_songArtist;
              self->_songArtist = 0;

              v121 = self->_album;
              self->_album = 0;

              v122 = self->_genre;
              self->_genre = 0;

              v123 = self->_song;
              self->_song = 0;

              v124 = self->_playlist;
              self->_playlist = 0;

              v125 = self->_musicVideo;
              self->_musicVideo = 0;

              self->_entityType = 8;
              goto LABEL_60;
            }

            goto LABEL_64;
          case 9:
            v29 = [CCMediaTVEpisode alloc];
            v30 = CCPBReaderReadDataNoCopy();
            v160 = 0;
            v31 = [(CCItemMessage *)v29 initWithData:v30 error:&v160];
            v10 = v160;
            v32 = self->_TVEpisode;
            self->_TVEpisode = v31;

            if (v10)
            {
              goto LABEL_64;
            }

            v33 = self->_albumArtist;
            self->_albumArtist = 0;

            v34 = self->_songArtist;
            self->_songArtist = 0;

            v35 = self->_album;
            self->_album = 0;

            v36 = self->_genre;
            self->_genre = 0;

            v37 = self->_song;
            self->_song = 0;

            v38 = self->_playlist;
            self->_playlist = 0;

            v39 = self->_musicVideo;
            self->_musicVideo = 0;

            v40 = self->_TVShow;
            self->_TVShow = 0;

            self->_entityType = 9;
            goto LABEL_61;
        }
      }

LABEL_72:
      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
      }

      else
      {
        v148 = objc_opt_class();
        v149 = NSStringFromClass(v148);
        v150 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

      goto LABEL_64;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_79;
  }

LABEL_77:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v155 = 1;
    goto LABEL_81;
  }

LABEL_78:
  v151 = objc_opt_class();
  v152 = NSStringFromClass(v151);
  v153 = *&v6[*v9];
  v154 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_79:
  v155 = 0;
LABEL_81:

  return v155;
}

- (CCMediaContent)initWithEntity:(id)a3 entityType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_48;
    }

LABEL_50:
    CCSetError();
    v25 = 0;
    goto LABEL_51;
  }

  if (v8 && a4 == 2)
  {
    objc_opt_class();
    v12 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v12)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 3)
  {
    objc_opt_class();
    v13 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v13)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 4)
  {
    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 5)
  {
    objc_opt_class();
    v15 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v15)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 6)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v16)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 7)
  {
    objc_opt_class();
    v17 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v17)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 8)
  {
    objc_opt_class();
    v18 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v18)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 9)
  {
    objc_opt_class();
    v19 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v19)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 10)
  {
    objc_opt_class();
    v20 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v20)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v8 && a4 == 11)
  {
    objc_opt_class();
    v21 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v21)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  v11 = 0;
  if (!v8 || a4 != 12)
  {
    goto LABEL_49;
  }

  objc_opt_class();
  v27 = 0;
  v22 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if ((v22 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_48:
  v23 = [v8 data];
  CCPBDataWriterWriteDataField();

LABEL_49:
  v24 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v24 error:a5];

  v25 = self;
LABEL_51:

  return v25;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 - 18540) > 0x1A)
  {
    return 0;
  }

  else
  {
    return off_1E73E77B0[(a3 - 18540)];
  }
}

@end