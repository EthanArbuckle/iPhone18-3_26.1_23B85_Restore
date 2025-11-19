@interface NSSUsageRespMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAppBundleUsage:(id)a3;
- (void)addAppUsages:(id)a3;
- (void)addBundleUsage:(id)a3;
- (void)addCategories:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAudioPodcastsUsage:(BOOL)a3;
- (void)setHasAudiobooksUsage:(BOOL)a3;
- (void)setHasCameralRollUsage:(BOOL)a3;
- (void)setHasCapacityInBytes:(BOOL)a3;
- (void)setHasHomeVideosUsage:(BOOL)a3;
- (void)setHasMovieRentalsUsage:(BOOL)a3;
- (void)setHasMoviesUsage:(BOOL)a3;
- (void)setHasMusicVideosUsage:(BOOL)a3;
- (void)setHasPhotoLibraryUsage:(BOOL)a3;
- (void)setHasPhotoStreamUsage:(BOOL)a3;
- (void)setHasSongsUsage:(BOOL)a3;
- (void)setHasTvShowsUsage:(BOOL)a3;
- (void)setHasVideoCoursesUsage:(BOOL)a3;
- (void)setHasVideoPodcastsUsage:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSUsageRespMsg

- (void)addAppUsages:(id)a3
{
  v4 = a3;
  appUsages = self->_appUsages;
  v8 = v4;
  if (!appUsages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_appUsages;
    self->_appUsages = v6;

    v4 = v8;
    appUsages = self->_appUsages;
  }

  [(NSMutableArray *)appUsages addObject:v4];
}

- (void)setHasMoviesUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasMovieRentalsUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTvShowsUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasVideoCoursesUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasMusicVideosUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasAudioPodcastsUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasVideoPodcastsUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasSongsUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasAudiobooksUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasHomeVideosUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasCameralRollUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasPhotoLibraryUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasPhotoStreamUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)addBundleUsage:(id)a3
{
  v4 = a3;
  bundleUsages = self->_bundleUsages;
  v8 = v4;
  if (!bundleUsages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_bundleUsages;
    self->_bundleUsages = v6;

    v4 = v8;
    bundleUsages = self->_bundleUsages;
  }

  [(NSMutableArray *)bundleUsages addObject:v4];
}

- (void)addAppBundleUsage:(id)a3
{
  v4 = a3;
  appBundleUsages = self->_appBundleUsages;
  v8 = v4;
  if (!appBundleUsages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_appBundleUsages;
    self->_appBundleUsages = v6;

    v4 = v8;
    appBundleUsages = self->_appBundleUsages;
  }

  [(NSMutableArray *)appBundleUsages addObject:v4];
}

- (void)addCategories:(id)a3
{
  v4 = a3;
  categories = self->_categories;
  v8 = v4;
  if (!categories)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_categories;
    self->_categories = v6;

    v4 = v8;
    categories = self->_categories;
  }

  [(NSMutableArray *)categories addObject:v4];
}

- (void)setHasCapacityInBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSUsageRespMsg;
  v4 = [(NSSUsageRespMsg *)&v8 description];
  v5 = [(NSSUsageRespMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_usedStorageInBytes];
  [v3 setObject:v4 forKey:@"usedStorageInBytes"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_availableStorageInBytes];
  [v3 setObject:v5 forKey:@"availableStorageInBytes"];

  *&v6 = self->_usageTimeInSeconds;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [v3 setObject:v7 forKey:@"usageTimeInSeconds"];

  *&v8 = self->_standbyTimeInSeconds;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v3 setObject:v9 forKey:@"standbyTimeInSeconds"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_trusted];
  [v3 setObject:v10 forKey:@"trusted"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_partiallyCharged];
  [v3 setObject:v11 forKey:@"partiallyCharged"];

  if ([(NSMutableArray *)self->_appUsages count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_appUsages, "count")}];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v13 = self->_appUsages;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v73 objects:v80 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v74;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v74 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v73 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v73 objects:v80 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"appUsages"];
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_moviesUsage];
    [v3 setObject:v48 forKey:@"moviesUsage"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_12:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_65;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_12;
  }

  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_movieRentalsUsage];
  [v3 setObject:v49 forKey:@"movieRentalsUsage"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_66;
  }

LABEL_65:
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_tvShowsUsage];
  [v3 setObject:v50 forKey:@"tvShowsUsage"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_66:
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_audioCoursesUsage];
  [v3 setObject:v51 forKey:@"audioCoursesUsage"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_68;
  }

LABEL_67:
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_videoCoursesUsage];
  [v3 setObject:v52 forKey:@"videoCoursesUsage"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_16:
    if ((has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_68:
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_musicVideosUsage];
  [v3 setObject:v53 forKey:@"musicVideosUsage"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_17:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_70;
  }

LABEL_69:
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_audioPodcastsUsage];
  [v3 setObject:v54 forKey:@"audioPodcastsUsage"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_18:
    if ((has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_71;
  }

LABEL_70:
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_videoPodcastsUsage];
  [v3 setObject:v55 forKey:@"videoPodcastsUsage"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_19:
    if ((has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_72;
  }

LABEL_71:
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_songsUsage];
  [v3 setObject:v56 forKey:@"songsUsage"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_20:
    if ((has & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_73;
  }

LABEL_72:
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_audiobooksUsage];
  [v3 setObject:v57 forKey:@"audiobooksUsage"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_21:
    if ((has & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_73:
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_homeVideosUsage];
  [v3 setObject:v58 forKey:@"homeVideosUsage"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_22:
    if ((has & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_cameralRollUsage];
  [v3 setObject:v59 forKey:@"cameralRollUsage"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_23:
    if ((has & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_75:
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_photoLibraryUsage];
  [v3 setObject:v60 forKey:@"photoLibraryUsage"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_24:
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_photoStreamUsage];
    [v3 setObject:v20 forKey:@"photoStreamUsage"];
  }

LABEL_25:
  if ([(NSMutableArray *)self->_bundleUsages count])
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_bundleUsages, "count")}];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v22 = self->_bundleUsages;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v69 objects:v79 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v70;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v70 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v69 + 1) + 8 * j) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v69 objects:v79 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKey:@"bundleUsage"];
  }

  musicBundleIdentifier = self->_musicBundleIdentifier;
  if (musicBundleIdentifier)
  {
    [v3 setObject:musicBundleIdentifier forKey:@"musicBundleIdentifier"];
  }

  photosBundleIdentifier = self->_photosBundleIdentifier;
  if (photosBundleIdentifier)
  {
    [v3 setObject:photosBundleIdentifier forKey:@"photosBundleIdentifier"];
  }

  podcastsBundleIdentifier = self->_podcastsBundleIdentifier;
  if (podcastsBundleIdentifier)
  {
    [v3 setObject:podcastsBundleIdentifier forKey:@"podcastsBundleIdentifier"];
  }

  if ([(NSMutableArray *)self->_appBundleUsages count])
  {
    v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_appBundleUsages, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v32 = self->_appBundleUsages;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v65 objects:v78 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v66;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v66 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v65 + 1) + 8 * k) dictionaryRepresentation];
          [v31 addObject:v37];
        }

        v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v65 objects:v78 count:16];
      }

      while (v34);
    }

    [v3 setObject:v31 forKey:@"appBundleUsage"];
  }

  if ([(NSMutableArray *)self->_categories count])
  {
    v38 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_categories, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v39 = self->_categories;
    v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v61 objects:v77 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v62;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v62 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [*(*(&v61 + 1) + 8 * m) dictionaryRepresentation];
          [v38 addObject:v44];
        }

        v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v61 objects:v77 count:16];
      }

      while (v41);
    }

    [v3 setObject:v38 forKey:@"categories"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_capacityInBytes];
    [v3 setObject:v45 forKey:@"capacityInBytes"];
  }

  v46 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  usedStorageInBytes = self->_usedStorageInBytes;
  PBDataWriterWriteUint64Field();
  availableStorageInBytes = self->_availableStorageInBytes;
  PBDataWriterWriteUint64Field();
  usageTimeInSeconds = self->_usageTimeInSeconds;
  PBDataWriterWriteFloatField();
  standbyTimeInSeconds = self->_standbyTimeInSeconds;
  PBDataWriterWriteFloatField();
  trusted = self->_trusted;
  PBDataWriterWriteBOOLField();
  partiallyCharged = self->_partiallyCharged;
  PBDataWriterWriteBOOLField();
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v11 = self->_appUsages;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v65;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v65 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v64 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v13);
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    moviesUsage = self->_moviesUsage;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_10:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_10;
  }

  movieRentalsUsage = self->_movieRentalsUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  tvShowsUsage = self->_tvShowsUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  audioCoursesUsage = self->_audioCoursesUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  videoCoursesUsage = self->_videoCoursesUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  musicVideosUsage = self->_musicVideosUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  audioPodcastsUsage = self->_audioPodcastsUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_16:
    if ((has & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  videoPodcastsUsage = self->_videoPodcastsUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  songsUsage = self->_songsUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_18:
    if ((has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  audiobooksUsage = self->_audiobooksUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_19:
    if ((has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  homeVideosUsage = self->_homeVideosUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_20:
    if ((has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  cameralRollUsage = self->_cameralRollUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_21:
    if ((has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_65:
  photoLibraryUsage = self->_photoLibraryUsage;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_22:
    photoStreamUsage = self->_photoStreamUsage;
    PBDataWriterWriteUint64Field();
  }

LABEL_23:
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v19 = self->_bundleUsages;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v61;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v61 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v60 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v21);
  }

  if (self->_musicBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_photosBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_podcastsBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v25 = self->_appBundleUsages;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v57;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v57 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v56 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v27);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v31 = self->_categories;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v53;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v53 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v52 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v33);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    capacityInBytes = self->_capacityInBytes;
    PBDataWriterWriteUint64Field();
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[15] = self->_usedStorageInBytes;
  v4[4] = self->_availableStorageInBytes;
  *(v4 + 51) = LODWORD(self->_usageTimeInSeconds);
  *(v4 + 50) = LODWORD(self->_standbyTimeInSeconds);
  *(v4 + 209) = self->_trusted;
  v22 = v4;
  *(v4 + 208) = self->_partiallyCharged;
  if ([(NSSUsageRespMsg *)self appUsagesCount])
  {
    [v22 clearAppUsages];
    v5 = [(NSSUsageRespMsg *)self appUsagesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSSUsageRespMsg *)self appUsagesAtIndex:i];
        [v22 addAppUsages:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(v22 + 9) = self->_moviesUsage;
    *(v22 + 106) |= 0x80u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  *(v22 + 8) = self->_movieRentalsUsage;
  *(v22 + 106) |= 0x40u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v22 + 14) = self->_tvShowsUsage;
  *(v22 + 106) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v22 + 1) = self->_audioCoursesUsage;
  *(v22 + 106) |= 1u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v22 + 16) = self->_videoCoursesUsage;
  *(v22 + 106) |= 0x2000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v22 + 10) = self->_musicVideosUsage;
  *(v22 + 106) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v22 + 2) = self->_audioPodcastsUsage;
  *(v22 + 106) |= 2u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_13:
    if ((has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v22 + 17) = self->_videoPodcastsUsage;
  *(v22 + 106) |= 0x4000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v22 + 13) = self->_songsUsage;
  *(v22 + 106) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v22 + 3) = self->_audiobooksUsage;
  *(v22 + 106) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_16:
    if ((has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v22 + 7) = self->_homeVideosUsage;
  *(v22 + 106) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_17:
    if ((has & 0x200) == 0)
    {
      goto LABEL_18;
    }

LABEL_55:
    *(v22 + 11) = self->_photoLibraryUsage;
    *(v22 + 106) |= 0x200u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_54:
  *(v22 + 5) = self->_cameralRollUsage;
  *(v22 + 106) |= 8u;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_55;
  }

LABEL_18:
  if ((has & 0x400) != 0)
  {
LABEL_19:
    *(v22 + 12) = self->_photoStreamUsage;
    *(v22 + 106) |= 0x400u;
  }

LABEL_20:
  if ([(NSSUsageRespMsg *)self bundleUsagesCount])
  {
    [v22 clearBundleUsages];
    v10 = [(NSSUsageRespMsg *)self bundleUsagesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(NSSUsageRespMsg *)self bundleUsageAtIndex:j];
        [v22 addBundleUsage:v13];
      }
    }
  }

  if (self->_musicBundleIdentifier)
  {
    [v22 setMusicBundleIdentifier:?];
  }

  if (self->_photosBundleIdentifier)
  {
    [v22 setPhotosBundleIdentifier:?];
  }

  if (self->_podcastsBundleIdentifier)
  {
    [v22 setPodcastsBundleIdentifier:?];
  }

  if ([(NSSUsageRespMsg *)self appBundleUsagesCount])
  {
    [v22 clearAppBundleUsages];
    v14 = [(NSSUsageRespMsg *)self appBundleUsagesCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(NSSUsageRespMsg *)self appBundleUsageAtIndex:k];
        [v22 addAppBundleUsage:v17];
      }
    }
  }

  if ([(NSSUsageRespMsg *)self categoriesCount])
  {
    [v22 clearCategories];
    v18 = [(NSSUsageRespMsg *)self categoriesCount];
    if (v18)
    {
      v19 = v18;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(NSSUsageRespMsg *)self categoriesAtIndex:m];
        [v22 addCategories:v21];
      }
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v22 + 6) = self->_capacityInBytes;
    *(v22 + 106) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 120) = self->_usedStorageInBytes;
  *(v5 + 32) = self->_availableStorageInBytes;
  *(v5 + 204) = self->_usageTimeInSeconds;
  *(v5 + 200) = self->_standbyTimeInSeconds;
  *(v5 + 209) = self->_trusted;
  *(v5 + 208) = self->_partiallyCharged;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = self->_appUsages;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v52;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v51 + 1) + 8 * i) copyWithZone:a3];
        [v5 addAppUsages:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(v5 + 72) = self->_moviesUsage;
    *(v5 + 212) |= 0x80u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_10:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_49;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 64) = self->_movieRentalsUsage;
  *(v5 + 212) |= 0x40u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 112) = self->_tvShowsUsage;
  *(v5 + 212) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 8) = self->_audioCoursesUsage;
  *(v5 + 212) |= 1u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 128) = self->_videoCoursesUsage;
  *(v5 + 212) |= 0x2000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 80) = self->_musicVideosUsage;
  *(v5 + 212) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 16) = self->_audioPodcastsUsage;
  *(v5 + 212) |= 2u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_16:
    if ((has & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 136) = self->_videoPodcastsUsage;
  *(v5 + 212) |= 0x4000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 104) = self->_songsUsage;
  *(v5 + 212) |= 0x800u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_18:
    if ((has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 24) = self->_audiobooksUsage;
  *(v5 + 212) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_19:
    if ((has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 56) = self->_homeVideosUsage;
  *(v5 + 212) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_20:
    if ((has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 40) = self->_cameralRollUsage;
  *(v5 + 212) |= 8u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_21:
    if ((has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_59:
  *(v5 + 88) = self->_photoLibraryUsage;
  *(v5 + 212) |= 0x200u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_22:
    *(v5 + 96) = self->_photoStreamUsage;
    *(v5 + 212) |= 0x400u;
  }

LABEL_23:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = self->_bundleUsages;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v47 + 1) + 8 * j) copyWithZone:a3];
        [v5 addBundleUsage:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v15);
  }

  v19 = [(NSString *)self->_musicBundleIdentifier copyWithZone:a3];
  v20 = *(v5 + 176);
  *(v5 + 176) = v19;

  v21 = [(NSString *)self->_photosBundleIdentifier copyWithZone:a3];
  v22 = *(v5 + 184);
  *(v5 + 184) = v21;

  v23 = [(NSString *)self->_podcastsBundleIdentifier copyWithZone:a3];
  v24 = *(v5 + 192);
  *(v5 + 192) = v23;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = self->_appBundleUsages;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v43 + 1) + 8 * k) copyWithZone:a3];
        [v5 addAppBundleUsage:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v27);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = self->_categories;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v39 + 1) + 8 * m) copyWithZone:{a3, v39}];
        [v5 addCategories:v36];
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v33);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 48) = self->_capacityInBytes;
    *(v5 + 212) |= 0x10u;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_usedStorageInBytes != *(v4 + 15) || self->_availableStorageInBytes != *(v4 + 4) || self->_usageTimeInSeconds != *(v4 + 51) || self->_standbyTimeInSeconds != *(v4 + 50))
  {
    goto LABEL_103;
  }

  v5 = *(v4 + 209);
  if (self->_trusted)
  {
    if ((*(v4 + 209) & 1) == 0)
    {
      goto LABEL_103;
    }
  }

  else if (*(v4 + 209))
  {
    goto LABEL_103;
  }

  v6 = *(v4 + 208);
  if (!self->_partiallyCharged)
  {
    if ((*(v4 + 208) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_103:
    v17 = 0;
    goto LABEL_104;
  }

  if ((*(v4 + 208) & 1) == 0)
  {
    goto LABEL_103;
  }

LABEL_14:
  appUsages = self->_appUsages;
  if (appUsages | *(v4 + 19) && ![(NSMutableArray *)appUsages isEqual:?])
  {
    goto LABEL_103;
  }

  has = self->_has;
  v9 = *(v4 + 106);
  if ((has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_moviesUsage != *(v4 + 9))
    {
      goto LABEL_103;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_103;
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_movieRentalsUsage != *(v4 + 8))
    {
      goto LABEL_103;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_103;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 106) & 0x1000) == 0 || self->_tvShowsUsage != *(v4 + 14))
    {
      goto LABEL_103;
    }
  }

  else if ((*(v4 + 106) & 0x1000) != 0)
  {
    goto LABEL_103;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_audioCoursesUsage != *(v4 + 1))
    {
      goto LABEL_103;
    }
  }

  else if (v9)
  {
    goto LABEL_103;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 106) & 0x2000) == 0 || self->_videoCoursesUsage != *(v4 + 16))
    {
      goto LABEL_103;
    }
  }

  else if ((*(v4 + 106) & 0x2000) != 0)
  {
    goto LABEL_103;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 106) & 0x100) == 0 || self->_musicVideosUsage != *(v4 + 10))
    {
      goto LABEL_103;
    }
  }

  else if ((*(v4 + 106) & 0x100) != 0)
  {
    goto LABEL_103;
  }

  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_audioPodcastsUsage != *(v4 + 2))
    {
      goto LABEL_103;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_103;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(v4 + 106) & 0x4000) == 0 || self->_videoPodcastsUsage != *(v4 + 17))
    {
      goto LABEL_103;
    }
  }

  else if ((*(v4 + 106) & 0x4000) != 0)
  {
    goto LABEL_103;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 106) & 0x800) == 0 || self->_songsUsage != *(v4 + 13))
    {
      goto LABEL_103;
    }
  }

  else if ((*(v4 + 106) & 0x800) != 0)
  {
    goto LABEL_103;
  }

  if ((has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_audiobooksUsage != *(v4 + 3))
    {
      goto LABEL_103;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_103;
  }

  if ((has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_homeVideosUsage != *(v4 + 7))
    {
      goto LABEL_103;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_103;
  }

  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_cameralRollUsage != *(v4 + 5))
    {
      goto LABEL_103;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_103;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 106) & 0x200) == 0 || self->_photoLibraryUsage != *(v4 + 11))
    {
      goto LABEL_103;
    }
  }

  else if ((*(v4 + 106) & 0x200) != 0)
  {
    goto LABEL_103;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 106) & 0x400) == 0 || self->_photoStreamUsage != *(v4 + 12))
    {
      goto LABEL_103;
    }
  }

  else if ((*(v4 + 106) & 0x400) != 0)
  {
    goto LABEL_103;
  }

  bundleUsages = self->_bundleUsages;
  if (bundleUsages | *(v4 + 20) && ![(NSMutableArray *)bundleUsages isEqual:?])
  {
    goto LABEL_103;
  }

  musicBundleIdentifier = self->_musicBundleIdentifier;
  if (musicBundleIdentifier | *(v4 + 22))
  {
    if (![(NSString *)musicBundleIdentifier isEqual:?])
    {
      goto LABEL_103;
    }
  }

  photosBundleIdentifier = self->_photosBundleIdentifier;
  if (photosBundleIdentifier | *(v4 + 23))
  {
    if (![(NSString *)photosBundleIdentifier isEqual:?])
    {
      goto LABEL_103;
    }
  }

  podcastsBundleIdentifier = self->_podcastsBundleIdentifier;
  if (podcastsBundleIdentifier | *(v4 + 24))
  {
    if (![(NSString *)podcastsBundleIdentifier isEqual:?])
    {
      goto LABEL_103;
    }
  }

  appBundleUsages = self->_appBundleUsages;
  if (appBundleUsages | *(v4 + 18))
  {
    if (![(NSMutableArray *)appBundleUsages isEqual:?])
    {
      goto LABEL_103;
    }
  }

  categories = self->_categories;
  if (categories | *(v4 + 21))
  {
    if (![(NSMutableArray *)categories isEqual:?])
    {
      goto LABEL_103;
    }
  }

  v16 = *(v4 + 106);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v16 & 0x10) == 0 || self->_capacityInBytes != *(v4 + 6))
    {
      goto LABEL_103;
    }

    v17 = 1;
  }

  else
  {
    v17 = (v16 & 0x10) == 0;
  }

LABEL_104:

  return v17;
}

- (unint64_t)hash
{
  availableStorageInBytes = self->_availableStorageInBytes;
  usedStorageInBytes = self->_usedStorageInBytes;
  usageTimeInSeconds = self->_usageTimeInSeconds;
  if (usageTimeInSeconds < 0.0)
  {
    usageTimeInSeconds = -usageTimeInSeconds;
  }

  *v3.i32 = floorf(usageTimeInSeconds + 0.5);
  v7 = (usageTimeInSeconds - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9 = vbslq_s8(v8, v4, v3);
  v10 = 2654435761u * *v9.i32;
  v11 = v10 + v7;
  if (v7 <= 0.0)
  {
    v11 = 2654435761u * *v9.i32;
  }

  v12 = v10 - fabsf(v7);
  v13 = v7 < 0.0;
  standbyTimeInSeconds = self->_standbyTimeInSeconds;
  if (!v13)
  {
    v12 = v11;
  }

  v48 = v12;
  if (standbyTimeInSeconds < 0.0)
  {
    standbyTimeInSeconds = -standbyTimeInSeconds;
  }

  *v2.i32 = floorf(standbyTimeInSeconds + 0.5);
  v15 = (standbyTimeInSeconds - *v2.i32) * 1.8447e19;
  *v9.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v2.i32[0] = vbslq_s8(v8, v9, v2).i32[0];
  v16 = 2654435761u * *v2.i32;
  v17 = v16 + v15;
  if (v15 <= 0.0)
  {
    v17 = 2654435761u * *v2.i32;
  }

  v18 = v16 - fabsf(v15);
  if (v15 < 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  trusted = self->_trusted;
  v47 = v19;
  partiallyCharged = self->_partiallyCharged;
  v45 = [(NSMutableArray *)self->_appUsages hash];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v43 = 2654435761u * self->_moviesUsage;
    if ((has & 0x40) != 0)
    {
LABEL_16:
      v42 = 2654435761u * self->_movieRentalsUsage;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v43 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_16;
    }
  }

  v42 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_17:
    v41 = 2654435761u * self->_tvShowsUsage;
    if (has)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v41 = 0;
  if (has)
  {
LABEL_18:
    v40 = 2654435761u * self->_audioCoursesUsage;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  v40 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_19:
    v39 = 2654435761u * self->_videoCoursesUsage;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  v39 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_20:
    v38 = 2654435761u * self->_musicVideosUsage;
    if ((has & 2) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  v38 = 0;
  if ((has & 2) != 0)
  {
LABEL_21:
    v37 = 2654435761u * self->_audioPodcastsUsage;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  v37 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_22:
    v36 = 2654435761u * self->_videoPodcastsUsage;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  v36 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_23:
    v35 = 2654435761u * self->_songsUsage;
    if ((has & 4) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_37:
  v35 = 0;
  if ((has & 4) != 0)
  {
LABEL_24:
    v34 = 2654435761u * self->_audiobooksUsage;
    if ((has & 0x20) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

LABEL_38:
  v34 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_25:
    v32 = 2654435761u * self->_homeVideosUsage;
    if ((has & 8) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  v32 = 0;
  if ((has & 8) != 0)
  {
LABEL_26:
    v21 = 2654435761u * self->_cameralRollUsage;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_27;
    }

LABEL_41:
    v22 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_40:
  v21 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_41;
  }

LABEL_27:
  v22 = 2654435761u * self->_photoLibraryUsage;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_28:
    v23 = 2654435761u * self->_photoStreamUsage;
    goto LABEL_43;
  }

LABEL_42:
  v23 = 0;
LABEL_43:
  v24 = [(NSMutableArray *)self->_bundleUsages hash];
  v25 = [(NSString *)self->_musicBundleIdentifier hash];
  v26 = [(NSString *)self->_photosBundleIdentifier hash];
  v27 = [(NSString *)self->_podcastsBundleIdentifier hash];
  v28 = [(NSMutableArray *)self->_appBundleUsages hash];
  v29 = [(NSMutableArray *)self->_categories hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v30 = 2654435761u * self->_capacityInBytes;
  }

  else
  {
    v30 = 0;
  }

  return (2654435761u * availableStorageInBytes) ^ (2654435761u * usedStorageInBytes) ^ v48 ^ v47 ^ (2654435761 * trusted) ^ (2654435761 * partiallyCharged) ^ v45 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (void)mergeFrom:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_usedStorageInBytes = *(v4 + 15);
  self->_availableStorageInBytes = *(v4 + 4);
  self->_usageTimeInSeconds = *(v4 + 51);
  self->_standbyTimeInSeconds = *(v4 + 50);
  self->_trusted = *(v4 + 209);
  self->_partiallyCharged = *(v4 + 208);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = *(v4 + 19);
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSSUsageRespMsg *)self addAppUsages:*(*(&v39 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v7);
  }

  v10 = *(v4 + 106);
  if ((v10 & 0x80) != 0)
  {
    self->_moviesUsage = *(v4 + 9);
    *&self->_has |= 0x80u;
    v10 = *(v4 + 106);
    if ((v10 & 0x40) == 0)
    {
LABEL_10:
      if ((v10 & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_10;
  }

  self->_movieRentalsUsage = *(v4 + 8);
  *&self->_has |= 0x40u;
  v10 = *(v4 + 106);
  if ((v10 & 0x1000) == 0)
  {
LABEL_11:
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_tvShowsUsage = *(v4 + 14);
  *&self->_has |= 0x1000u;
  v10 = *(v4 + 106);
  if ((v10 & 1) == 0)
  {
LABEL_12:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_audioCoursesUsage = *(v4 + 1);
  *&self->_has |= 1u;
  v10 = *(v4 + 106);
  if ((v10 & 0x2000) == 0)
  {
LABEL_13:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_videoCoursesUsage = *(v4 + 16);
  *&self->_has |= 0x2000u;
  v10 = *(v4 + 106);
  if ((v10 & 0x100) == 0)
  {
LABEL_14:
    if ((v10 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_musicVideosUsage = *(v4 + 10);
  *&self->_has |= 0x100u;
  v10 = *(v4 + 106);
  if ((v10 & 2) == 0)
  {
LABEL_15:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_audioPodcastsUsage = *(v4 + 2);
  *&self->_has |= 2u;
  v10 = *(v4 + 106);
  if ((v10 & 0x4000) == 0)
  {
LABEL_16:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_videoPodcastsUsage = *(v4 + 17);
  *&self->_has |= 0x4000u;
  v10 = *(v4 + 106);
  if ((v10 & 0x800) == 0)
  {
LABEL_17:
    if ((v10 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_songsUsage = *(v4 + 13);
  *&self->_has |= 0x800u;
  v10 = *(v4 + 106);
  if ((v10 & 4) == 0)
  {
LABEL_18:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_audiobooksUsage = *(v4 + 3);
  *&self->_has |= 4u;
  v10 = *(v4 + 106);
  if ((v10 & 0x20) == 0)
  {
LABEL_19:
    if ((v10 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_homeVideosUsage = *(v4 + 7);
  *&self->_has |= 0x20u;
  v10 = *(v4 + 106);
  if ((v10 & 8) == 0)
  {
LABEL_20:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_cameralRollUsage = *(v4 + 5);
  *&self->_has |= 8u;
  v10 = *(v4 + 106);
  if ((v10 & 0x200) == 0)
  {
LABEL_21:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_65:
  self->_photoLibraryUsage = *(v4 + 11);
  *&self->_has |= 0x200u;
  if ((*(v4 + 106) & 0x400) != 0)
  {
LABEL_22:
    self->_photoStreamUsage = *(v4 + 12);
    *&self->_has |= 0x400u;
  }

LABEL_23:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = *(v4 + 20);
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NSSUsageRespMsg *)self addBundleUsage:*(*(&v35 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v13);
  }

  if (*(v4 + 22))
  {
    [(NSSUsageRespMsg *)self setMusicBundleIdentifier:?];
  }

  if (*(v4 + 23))
  {
    [(NSSUsageRespMsg *)self setPhotosBundleIdentifier:?];
  }

  if (*(v4 + 24))
  {
    [(NSSUsageRespMsg *)self setPodcastsBundleIdentifier:?];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = *(v4 + 18);
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(NSSUsageRespMsg *)self addAppBundleUsage:*(*(&v31 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v18);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = *(v4 + 21);
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(NSSUsageRespMsg *)self addCategories:*(*(&v27 + 1) + 8 * m), v27];
      }

      v23 = [v21 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v23);
  }

  if ((*(v4 + 106) & 0x10) != 0)
  {
    self->_capacityInBytes = *(v4 + 6);
    *&self->_has |= 0x10u;
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end