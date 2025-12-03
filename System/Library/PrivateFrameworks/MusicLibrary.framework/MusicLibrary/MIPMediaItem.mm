@interface MIPMediaItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mediaTypeAsString:(int)string;
- (int)StringAsMediaType:(id)type;
- (int)mediaType;
- (unint64_t)hash;
- (void)addLibraryIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAssetStoreItemId:(BOOL)id;
- (void)setHasBookmarkTimeMilliseconds:(BOOL)milliseconds;
- (void)setHasCloudAssetAvailable:(BOOL)available;
- (void)setHasCloudMatchedStatus:(BOOL)status;
- (void)setHasCloudPlaybackEndpointType:(BOOL)type;
- (void)setHasCloudStatus:(BOOL)status;
- (void)setHasContentRating:(BOOL)rating;
- (void)setHasContentRatingLevel:(BOOL)level;
- (void)setHasCreationDateTime:(BOOL)time;
- (void)setHasDrmKey1IdCode:(BOOL)code;
- (void)setHasDrmKey2IdCode:(BOOL)code;
- (void)setHasDrmPlatformIdCode:(BOOL)code;
- (void)setHasDrmVersionsCode:(BOOL)code;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasExplicitContent:(BOOL)content;
- (void)setHasFamilyAccountId:(BOOL)id;
- (void)setHasFileKind:(BOOL)kind;
- (void)setHasFileSize:(BOOL)size;
- (void)setHasHasChapterData:(BOOL)data;
- (void)setHasHasLocalAsset:(BOOL)asset;
- (void)setHasHidden:(BOOL)hidden;
- (void)setHasInUsersCloudLibrary:(BOOL)library;
- (void)setHasIsInUsersLibrary:(BOOL)library;
- (void)setHasIsPreorder:(BOOL)preorder;
- (void)setHasLastPlayedDateTime:(BOOL)time;
- (void)setHasLastSkippedDateTime:(BOOL)time;
- (void)setHasLikedState:(BOOL)state;
- (void)setHasLikedStateChanged:(BOOL)changed;
- (void)setHasLikedStateChangedDate:(BOOL)date;
- (void)setHasMediaType:(BOOL)type;
- (void)setHasModificationDateTime:(BOOL)time;
- (void)setHasNeedsReporting:(BOOL)reporting;
- (void)setHasPlayCount:(BOOL)count;
- (void)setHasPlayCountDelta:(BOOL)delta;
- (void)setHasPlaybackEndpointType:(BOOL)type;
- (void)setHasPurchaseDateTime:(BOOL)time;
- (void)setHasPurchaseHistoryId:(BOOL)id;
- (void)setHasPurchaseHistoryToken:(BOOL)token;
- (void)setHasReleaseDateTime:(BOOL)time;
- (void)setHasRememberBookmark:(BOOL)bookmark;
- (void)setHasReportingStoreItemId:(BOOL)id;
- (void)setHasSagaId:(BOOL)id;
- (void)setHasSecondaryArtworkSourceType:(BOOL)type;
- (void)setHasSkipCount:(BOOL)count;
- (void)setHasSkipCountDelta:(BOOL)delta;
- (void)setHasStoreId:(BOOL)id;
- (void)setHasStorePlaylistId:(BOOL)id;
- (void)setHasStoreProtectionType:(BOOL)type;
- (void)setHasStorefrontId:(BOOL)id;
- (void)setHasSubscriptionStoreItemId:(BOOL)id;
- (void)setHasUserDisabled:(BOOL)disabled;
- (void)setHasYear:(BOOL)year;
- (void)writeTo:(id)to;
@end

@implementation MIPMediaItem

- (void)mergeFrom:(id)from
{
  v34 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if ((*(fromCopy + 499) & 0x80) != 0)
  {
    self->_mediaType = fromCopy[82];
    *&self->_has |= 0x80000000uLL;
  }

  if (*(fromCopy + 58))
  {
    [(MIPMediaItem *)self setTitle:?];
  }

  if (*(v5 + 54))
  {
    [(MIPMediaItem *)self setSortTitle:?];
  }

  v6 = *(v5 + 62);
  if ((v6 & 0x10000) != 0)
  {
    self->_releaseDateTime = *(v5 + 17);
    *&self->_has |= 0x10000uLL;
    v6 = *(v5 + 62);
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_115;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_creationDateTime = *(v5 + 4);
  *&self->_has |= 8uLL;
  v6 = *(v5 + 62);
  if ((v6 & 0x2000) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_116;
  }

LABEL_115:
  self->_modificationDateTime = *(v5 + 14);
  *&self->_has |= 0x2000uLL;
  v6 = *(v5 + 62);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_117;
  }

LABEL_116:
  self->_fileSize = *(v5 + 10);
  *&self->_has |= 0x200uLL;
  v6 = *(v5 + 62);
  if ((v6 & 0x80) == 0)
  {
LABEL_12:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_118;
  }

LABEL_117:
  self->_duration = *(v5 + 8);
  *&self->_has |= 0x80uLL;
  v6 = *(v5 + 62);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_13:
    if ((v6 & 0x40000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_118:
  self->_contentRating = *(v5 + 62);
  *&self->_has |= 0x4000000uLL;
  if ((*(v5 + 62) & 0x40000000000) != 0)
  {
LABEL_14:
    self->_explicitContent = *(v5 + 485);
    *&self->_has |= 0x40000000000uLL;
  }

LABEL_15:
  if (*(v5 + 51))
  {
    [(MIPMediaItem *)self setShortDescription:?];
  }

  if (*(v5 + 40))
  {
    [(MIPMediaItem *)self setLongDescription:?];
  }

  if (*(v5 + 32))
  {
    [(MIPMediaItem *)self setCopyright:?];
  }

  if (*(v5 + 24))
  {
    [(MIPMediaItem *)self setArtworkId:?];
  }

  v7 = *(v5 + 62);
  if ((v7 & 0x10000000000) != 0)
  {
    self->_year = *(v5 + 120);
    *&self->_has |= 0x10000000000uLL;
    v7 = *(v5 + 62);
  }

  if ((v7 & 0x8000000) != 0)
  {
    self->_contentRatingLevel = *(v5 + 63);
    *&self->_has |= 0x8000000uLL;
  }

  if (*(v5 + 30))
  {
    [(MIPMediaItem *)self setComment:?];
  }

  v8 = *(v5 + 62);
  if ((v8 & 0x20000000) != 0)
  {
    self->_fileKind = *(v5 + 70);
    *&self->_has |= 0x20000000uLL;
    v8 = *(v5 + 62);
    if ((v8 & 0x100) == 0)
    {
LABEL_31:
      if ((v8 & 0x10000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_122;
    }
  }

  else if ((v8 & 0x100) == 0)
  {
    goto LABEL_31;
  }

  self->_familyAccountId = *(v5 + 9);
  *&self->_has |= 0x100uLL;
  v8 = *(v5 + 62);
  if ((v8 & 0x10000000) == 0)
  {
LABEL_32:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_123;
  }

LABEL_122:
  self->_drmVersionsCode = *(v5 + 66);
  *&self->_has |= 0x10000000uLL;
  v8 = *(v5 + 62);
  if ((v8 & 0x40) == 0)
  {
LABEL_33:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_124;
  }

LABEL_123:
  self->_drmPlatformIdCode = *(v5 + 7);
  *&self->_has |= 0x40uLL;
  v8 = *(v5 + 62);
  if ((v8 & 0x10) == 0)
  {
LABEL_34:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_124:
  self->_drmKey1IdCode = *(v5 + 5);
  *&self->_has |= 0x10uLL;
  if ((*(v5 + 62) & 0x20) != 0)
  {
LABEL_35:
    self->_drmKey2IdCode = *(v5 + 6);
    *&self->_has |= 0x20uLL;
  }

LABEL_36:
  if (*(v5 + 26))
  {
    [(MIPMediaItem *)self setChapterMetadataUrl:?];
  }

  if (*(v5 + 55))
  {
    [(MIPMediaItem *)self setStoreAssetFlavor:?];
  }

  if (*(v5 + 34))
  {
    [(MIPMediaItem *)self setExtrasUrl:?];
  }

  v9 = *(v5 + 62);
  if ((v9 & 0x4000) != 0)
  {
    self->_purchaseDateTime = *(v5 + 15);
    *&self->_has |= 0x4000uLL;
    v9 = *(v5 + 62);
    if ((v9 & 0x2000000) == 0)
    {
LABEL_44:
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_128;
    }
  }

  else if ((v9 & 0x2000000) == 0)
  {
    goto LABEL_44;
  }

  self->_cloudStatus = *(v5 + 56);
  *&self->_has |= 0x2000000uLL;
  v9 = *(v5 + 62);
  if ((v9 & 0x100000000) == 0)
  {
LABEL_45:
    if ((v9 & 0x200000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_129;
  }

LABEL_128:
  self->_playCount = *(v5 + 86);
  *&self->_has |= 0x100000000uLL;
  v9 = *(v5 + 62);
  if ((v9 & 0x200000000) == 0)
  {
LABEL_46:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_130;
  }

LABEL_129:
  self->_playCountDelta = *(v5 + 87);
  *&self->_has |= 0x200000000uLL;
  v9 = *(v5 + 62);
  if ((v9 & 0x400) == 0)
  {
LABEL_47:
    if ((v9 & 0x2000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_131;
  }

LABEL_130:
  self->_lastPlayedDateTime = *(v5 + 11);
  *&self->_has |= 0x400uLL;
  v9 = *(v5 + 62);
  if ((v9 & 0x2000000000) == 0)
  {
LABEL_48:
    if ((v9 & 0x4000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_132;
  }

LABEL_131:
  self->_skipCount = *(v5 + 104);
  *&self->_has |= 0x2000000000uLL;
  v9 = *(v5 + 62);
  if ((v9 & 0x4000000000) == 0)
  {
LABEL_49:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_133;
  }

LABEL_132:
  self->_skipCountDelta = *(v5 + 105);
  *&self->_has |= 0x4000000000uLL;
  v9 = *(v5 + 62);
  if ((v9 & 0x800) == 0)
  {
LABEL_50:
    if ((v9 & 0x8000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_134;
  }

LABEL_133:
  self->_lastSkippedDateTime = *(v5 + 12);
  *&self->_has |= 0x800uLL;
  v9 = *(v5 + 62);
  if ((v9 & 0x8000000000000) == 0)
  {
LABEL_51:
    if ((v9 & 4) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_135;
  }

LABEL_134:
  self->_rememberBookmark = *(v5 + 494);
  *&self->_has |= 0x8000000000000uLL;
  v9 = *(v5 + 62);
  if ((v9 & 4) == 0)
  {
LABEL_52:
    if ((v9 & 0x200000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_136;
  }

LABEL_135:
  self->_bookmarkTimeMilliseconds = *(v5 + 3);
  *&self->_has |= 4uLL;
  v9 = *(v5 + 62);
  if ((v9 & 0x200000000000) == 0)
  {
LABEL_53:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_137;
  }

LABEL_136:
  self->_hidden = *(v5 + 488);
  *&self->_has |= 0x200000000000uLL;
  v9 = *(v5 + 62);
  if ((v9 & 0x100000) == 0)
  {
LABEL_54:
    if ((v9 & 0x100000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_137:
  self->_storePlaylistId = *(v5 + 21);
  *&self->_has |= 0x100000uLL;
  if ((*(v5 + 62) & 0x100000000000) != 0)
  {
LABEL_55:
    self->_hasLocalAsset = *(v5 + 487);
    *&self->_has |= 0x100000000000uLL;
  }

LABEL_56:
  if (*(v5 + 37))
  {
    [(MIPMediaItem *)self setGrouping:?];
  }

  v10 = *(v5 + 62);
  if ((v10 & 0x40000000) != 0)
  {
    self->_likedState = *(v5 + 78);
    *&self->_has |= 0x40000000uLL;
    v10 = *(v5 + 62);
    if ((v10 & 0x4000000000000) == 0)
    {
LABEL_60:
      if ((v10 & 0x2000000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_141;
    }
  }

  else if ((v10 & 0x4000000000000) == 0)
  {
    goto LABEL_60;
  }

  self->_needsReporting = *(v5 + 493);
  *&self->_has |= 0x4000000000000uLL;
  v10 = *(v5 + 62);
  if ((v10 & 0x2000000000000) == 0)
  {
LABEL_61:
    if ((v10 & 0x800000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_142;
  }

LABEL_141:
  self->_likedStateChanged = *(v5 + 492);
  *&self->_has |= 0x2000000000000uLL;
  v10 = *(v5 + 62);
  if ((v10 & 0x800000000000) == 0)
  {
LABEL_62:
    if ((v10 & 0x20000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_143;
  }

LABEL_142:
  self->_isInUsersLibrary = *(v5 + 490);
  *&self->_has |= 0x800000000000uLL;
  v10 = *(v5 + 62);
  if ((v10 & 0x20000000000) == 0)
  {
LABEL_63:
    if ((v10 & 0x8000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_144;
  }

LABEL_143:
  self->_cloudAssetAvailable = *(v5 + 484);
  *&self->_has |= 0x20000000000uLL;
  v10 = *(v5 + 62);
  if ((v10 & 0x8000000000) == 0)
  {
LABEL_64:
    if ((v10 & 0x10000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_145;
  }

LABEL_144:
  self->_storeProtectionType = *(v5 + 112);
  *&self->_has |= 0x8000000000uLL;
  v10 = *(v5 + 62);
  if ((v10 & 0x10000000000000) == 0)
  {
LABEL_65:
    if ((v10 & 0x1000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_146;
  }

LABEL_145:
  self->_userDisabled = *(v5 + 495);
  *&self->_has |= 0x10000000000000uLL;
  v10 = *(v5 + 62);
  if ((v10 & 0x1000000) == 0)
  {
LABEL_66:
    if ((v10 & 0x400000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_147;
  }

LABEL_146:
  self->_cloudPlaybackEndpointType = *(v5 + 55);
  *&self->_has |= 0x1000000uLL;
  v10 = *(v5 + 62);
  if ((v10 & 0x400000000) == 0)
  {
LABEL_67:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_148;
  }

LABEL_147:
  self->_playbackEndpointType = *(v5 + 88);
  *&self->_has |= 0x400000000uLL;
  v10 = *(v5 + 62);
  if ((v10 & 0x800000) == 0)
  {
LABEL_68:
    if ((v10 & 0x400000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_cloudMatchedStatus = *(v5 + 54);
  *&self->_has |= 0x800000uLL;
  v10 = *(v5 + 62);
  if ((v10 & 0x400000000000) == 0)
  {
LABEL_69:
    if ((v10 & 0x1000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_149:
  self->_inUsersCloudLibrary = *(v5 + 489);
  *&self->_has |= 0x400000000000uLL;
  if ((*(v5 + 62) & 0x1000000000) != 0)
  {
LABEL_70:
    self->_secondaryArtworkSourceType = *(v5 + 100);
    *&self->_has |= 0x1000000000uLL;
  }

LABEL_71:
  if (*(v5 + 49))
  {
    [(MIPMediaItem *)self setSecondaryArtworkId:?];
  }

  if ((*(v5 + 501) & 8) != 0)
  {
    self->_hasChapterData = *(v5 + 486);
    *&self->_has |= 0x80000000000uLL;
  }

  if (*(v5 + 36))
  {
    [(MIPMediaItem *)self setFlattenedChapterData:?];
  }

  v11 = *(v5 + 62);
  if ((v11 & 0x1000000000000) != 0)
  {
    self->_isPreorder = *(v5 + 491);
    *&self->_has |= 0x1000000000000uLL;
    v11 = *(v5 + 62);
  }

  if ((v11 & 0x1000) != 0)
  {
    self->_likedStateChangedDate = *(v5 + 13);
    *&self->_has |= 0x1000uLL;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = *(v5 + 38);
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(MIPMediaItem *)self addLibraryIdentifiers:*(*(&v29 + 1) + 8 * i), v29];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v17 = *(v5 + 62);
  if ((v17 & 0x80000) != 0)
  {
    self->_storeId = *(v5 + 20);
    *&self->_has |= 0x80000uLL;
    v17 = *(v5 + 62);
    if ((v17 & 0x200000) == 0)
    {
LABEL_90:
      if ((v17 & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_153;
    }
  }

  else if ((v17 & 0x200000) == 0)
  {
    goto LABEL_90;
  }

  self->_storefrontId = *(v5 + 22);
  *&self->_has |= 0x200000uLL;
  v17 = *(v5 + 62);
  if ((v17 & 1) == 0)
  {
LABEL_91:
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_154;
  }

LABEL_153:
  self->_accountId = *(v5 + 1);
  *&self->_has |= 1uLL;
  v17 = *(v5 + 62);
  if ((v17 & 0x8000) == 0)
  {
LABEL_92:
    if ((v17 & 0x800000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_154:
  self->_purchaseHistoryId = *(v5 + 16);
  *&self->_has |= 0x8000uLL;
  if ((*(v5 + 62) & 0x800000000) != 0)
  {
LABEL_93:
    self->_purchaseHistoryToken = *(v5 + 94);
    *&self->_has |= 0x800000000uLL;
  }

LABEL_94:
  if (*(v5 + 46))
  {
    [(MIPMediaItem *)self setPurchaseHistoryRedownloadParams:?];
  }

  if ((*(v5 + 498) & 4) != 0)
  {
    self->_sagaId = *(v5 + 19);
    *&self->_has |= 0x40000uLL;
  }

  if (*(v5 + 48))
  {
    [(MIPMediaItem *)self setSagaRedownloadParams:?];
  }

  if (*(v5 + 57))
  {
    [(MIPMediaItem *)self setStoreXID:?];
  }

  if ((*(v5 + 498) & 0x40) != 0)
  {
    self->_subscriptionStoreItemId = *(v5 + 23);
    *&self->_has |= 0x400000uLL;
  }

  if (*(v5 + 29))
  {
    [(MIPMediaItem *)self setCloudUniversalLibraryId:?];
  }

  v18 = *(v5 + 62);
  if ((v18 & 0x20000) != 0)
  {
    self->_reportingStoreItemId = *(v5 + 18);
    *&self->_has |= 0x20000uLL;
    v18 = *(v5 + 62);
  }

  if ((v18 & 2) != 0)
  {
    self->_assetStoreItemId = *(v5 + 2);
    *&self->_has |= 2uLL;
  }

  song = self->_song;
  v20 = *(v5 + 53);
  if (song)
  {
    if (v20)
    {
      [(MIPSong *)song mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(MIPMediaItem *)self setSong:?];
  }

  movie = self->_movie;
  v22 = *(v5 + 42);
  if (movie)
  {
    if (v22)
    {
      [(MIPMovie *)movie mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(MIPMediaItem *)self setMovie:?];
  }

  tvShow = self->_tvShow;
  v24 = *(v5 + 59);
  if (tvShow)
  {
    if (v24)
    {
      [(MIPTVShow *)tvShow mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(MIPMediaItem *)self setTvShow:?];
  }

  podcast = self->_podcast;
  v26 = *(v5 + 45);
  if (podcast)
  {
    if (v26)
    {
      [(MIPPodcast *)podcast mergeFrom:?];
    }
  }

  else if (v26)
  {
    [(MIPMediaItem *)self setPodcast:?];
  }

  audiobook = self->_audiobook;
  v28 = *(v5 + 25);
  if (audiobook)
  {
    if (v28)
    {
      [(MIPAudiobook *)audiobook mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(MIPMediaItem *)self setAudiobook:?];
  }
}

- (unint64_t)hash
{
  if ((*(&self->_has + 3) & 0x80) != 0)
  {
    v88 = 2654435761 * self->_mediaType;
  }

  else
  {
    v88 = 0;
  }

  v87 = [(NSString *)self->_title hash];
  v86 = [(NSString *)self->_sortTitle hash];
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    v85 = 2654435761 * self->_releaseDateTime;
    if ((*&has & 8) != 0)
    {
LABEL_6:
      v84 = 2654435761 * self->_creationDateTime;
      if ((*&has & 0x2000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v85 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v84 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_7:
    v83 = 2654435761 * self->_modificationDateTime;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v83 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_8:
    v82 = 2654435761 * self->_fileSize;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v82 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_9:
    v81 = 2654435761 * self->_duration;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v80 = 0;
    if ((*&has & 0x40000000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_16:
  v81 = 0;
  if ((*&has & 0x4000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v80 = 2654435761 * self->_contentRating;
  if ((*&has & 0x40000000000) != 0)
  {
LABEL_11:
    v79 = 2654435761 * self->_explicitContent;
    goto LABEL_19;
  }

LABEL_18:
  v79 = 0;
LABEL_19:
  v78 = [(NSString *)self->_shortDescription hash];
  v77 = [(NSString *)self->_longDescription hash];
  v76 = [(NSString *)self->_copyright hash];
  v75 = [(NSString *)self->_artworkId hash];
  v4 = self->_has;
  if ((*&v4 & 0x10000000000) != 0)
  {
    v74 = 2654435761 * self->_year;
    if ((*&v4 & 0x8000000) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v74 = 0;
    if ((*&v4 & 0x8000000) != 0)
    {
LABEL_21:
      v73 = 2654435761 * self->_contentRatingLevel;
      goto LABEL_24;
    }
  }

  v73 = 0;
LABEL_24:
  v72 = [(NSString *)self->_comment hash];
  v5 = self->_has;
  if ((*&v5 & 0x20000000) != 0)
  {
    v71 = 2654435761 * self->_fileKind;
    if ((*&v5 & 0x100) != 0)
    {
LABEL_26:
      v70 = 2654435761 * self->_familyAccountId;
      if ((*&v5 & 0x10000000) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v71 = 0;
    if ((*&v5 & 0x100) != 0)
    {
      goto LABEL_26;
    }
  }

  v70 = 0;
  if ((*&v5 & 0x10000000) != 0)
  {
LABEL_27:
    v69 = 2654435761 * self->_drmVersionsCode;
    if ((*&v5 & 0x40) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

LABEL_33:
  v69 = 0;
  if ((*&v5 & 0x40) != 0)
  {
LABEL_28:
    v68 = 2654435761 * self->_drmPlatformIdCode;
    if ((*&v5 & 0x10) != 0)
    {
      goto LABEL_29;
    }

LABEL_35:
    v67 = 0;
    if ((*&v5 & 0x20) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_36;
  }

LABEL_34:
  v68 = 0;
  if ((*&v5 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  v67 = 2654435761 * self->_drmKey1IdCode;
  if ((*&v5 & 0x20) != 0)
  {
LABEL_30:
    v66 = 2654435761 * self->_drmKey2IdCode;
    goto LABEL_37;
  }

LABEL_36:
  v66 = 0;
LABEL_37:
  v65 = [(NSString *)self->_chapterMetadataUrl hash];
  v64 = [(NSString *)self->_storeAssetFlavor hash];
  v63 = [(NSString *)self->_extrasUrl hash];
  v6 = self->_has;
  if ((*&v6 & 0x4000) != 0)
  {
    v62 = 2654435761 * self->_purchaseDateTime;
    if ((*&v6 & 0x2000000) != 0)
    {
LABEL_39:
      v61 = 2654435761 * self->_cloudStatus;
      if ((*&v6 & 0x100000000) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v62 = 0;
    if ((*&v6 & 0x2000000) != 0)
    {
      goto LABEL_39;
    }
  }

  v61 = 0;
  if ((*&v6 & 0x100000000) != 0)
  {
LABEL_40:
    v60 = 2654435761 * self->_playCount;
    if ((*&v6 & 0x200000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

LABEL_53:
  v60 = 0;
  if ((*&v6 & 0x200000000) != 0)
  {
LABEL_41:
    v59 = 2654435761 * self->_playCountDelta;
    if ((*&v6 & 0x400) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_55;
  }

LABEL_54:
  v59 = 0;
  if ((*&v6 & 0x400) != 0)
  {
LABEL_42:
    v58 = 2654435761 * self->_lastPlayedDateTime;
    if ((*&v6 & 0x2000000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_56;
  }

LABEL_55:
  v58 = 0;
  if ((*&v6 & 0x2000000000) != 0)
  {
LABEL_43:
    v57 = 2654435761 * self->_skipCount;
    if ((*&v6 & 0x4000000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_57;
  }

LABEL_56:
  v57 = 0;
  if ((*&v6 & 0x4000000000) != 0)
  {
LABEL_44:
    v56 = 2654435761 * self->_skipCountDelta;
    if ((*&v6 & 0x800) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_57:
  v56 = 0;
  if ((*&v6 & 0x800) != 0)
  {
LABEL_45:
    v55 = 2654435761 * self->_lastSkippedDateTime;
    if ((*&v6 & 0x8000000000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_59;
  }

LABEL_58:
  v55 = 0;
  if ((*&v6 & 0x8000000000000) != 0)
  {
LABEL_46:
    v54 = 2654435761 * self->_rememberBookmark;
    if ((*&v6 & 4) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_60;
  }

LABEL_59:
  v54 = 0;
  if ((*&v6 & 4) != 0)
  {
LABEL_47:
    v53 = 2654435761 * self->_bookmarkTimeMilliseconds;
    if ((*&v6 & 0x200000000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_61;
  }

LABEL_60:
  v53 = 0;
  if ((*&v6 & 0x200000000000) != 0)
  {
LABEL_48:
    v52 = 2654435761 * self->_hidden;
    if ((*&v6 & 0x100000) != 0)
    {
      goto LABEL_49;
    }

LABEL_62:
    v51 = 0;
    if ((*&v6 & 0x100000000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_63;
  }

LABEL_61:
  v52 = 0;
  if ((*&v6 & 0x100000) == 0)
  {
    goto LABEL_62;
  }

LABEL_49:
  v51 = 2654435761 * self->_storePlaylistId;
  if ((*&v6 & 0x100000000000) != 0)
  {
LABEL_50:
    v50 = 2654435761 * self->_hasLocalAsset;
    goto LABEL_64;
  }

LABEL_63:
  v50 = 0;
LABEL_64:
  v49 = [(NSString *)self->_grouping hash];
  v7 = self->_has;
  if ((*&v7 & 0x40000000) != 0)
  {
    v48 = 2654435761 * self->_likedState;
    if ((*&v7 & 0x4000000000000) != 0)
    {
LABEL_66:
      v47 = 2654435761 * self->_needsReporting;
      if ((*&v7 & 0x2000000000000) != 0)
      {
        goto LABEL_67;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v48 = 0;
    if ((*&v7 & 0x4000000000000) != 0)
    {
      goto LABEL_66;
    }
  }

  v47 = 0;
  if ((*&v7 & 0x2000000000000) != 0)
  {
LABEL_67:
    v46 = 2654435761 * self->_likedStateChanged;
    if ((*&v7 & 0x800000000000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_80;
  }

LABEL_79:
  v46 = 0;
  if ((*&v7 & 0x800000000000) != 0)
  {
LABEL_68:
    v45 = 2654435761 * self->_isInUsersLibrary;
    if ((*&v7 & 0x20000000000) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_81;
  }

LABEL_80:
  v45 = 0;
  if ((*&v7 & 0x20000000000) != 0)
  {
LABEL_69:
    v44 = 2654435761 * self->_cloudAssetAvailable;
    if ((*&v7 & 0x8000000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_82;
  }

LABEL_81:
  v44 = 0;
  if ((*&v7 & 0x8000000000) != 0)
  {
LABEL_70:
    v43 = 2654435761 * self->_storeProtectionType;
    if ((*&v7 & 0x10000000000000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_83;
  }

LABEL_82:
  v43 = 0;
  if ((*&v7 & 0x10000000000000) != 0)
  {
LABEL_71:
    v42 = 2654435761 * self->_userDisabled;
    if ((*&v7 & 0x1000000) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_84;
  }

LABEL_83:
  v42 = 0;
  if ((*&v7 & 0x1000000) != 0)
  {
LABEL_72:
    v41 = 2654435761 * self->_cloudPlaybackEndpointType;
    if ((*&v7 & 0x400000000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_85;
  }

LABEL_84:
  v41 = 0;
  if ((*&v7 & 0x400000000) != 0)
  {
LABEL_73:
    v40 = 2654435761 * self->_playbackEndpointType;
    if ((*&v7 & 0x800000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_86;
  }

LABEL_85:
  v40 = 0;
  if ((*&v7 & 0x800000) != 0)
  {
LABEL_74:
    v39 = 2654435761 * self->_cloudMatchedStatus;
    if ((*&v7 & 0x400000000000) != 0)
    {
      goto LABEL_75;
    }

LABEL_87:
    v38 = 0;
    if ((*&v7 & 0x1000000000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_88;
  }

LABEL_86:
  v39 = 0;
  if ((*&v7 & 0x400000000000) == 0)
  {
    goto LABEL_87;
  }

LABEL_75:
  v38 = 2654435761 * self->_inUsersCloudLibrary;
  if ((*&v7 & 0x1000000000) != 0)
  {
LABEL_76:
    v37 = 2654435761 * self->_secondaryArtworkSourceType;
    goto LABEL_89;
  }

LABEL_88:
  v37 = 0;
LABEL_89:
  v36 = [(NSString *)self->_secondaryArtworkId hash];
  if ((*(&self->_has + 5) & 8) != 0)
  {
    v35 = 2654435761 * self->_hasChapterData;
  }

  else
  {
    v35 = 0;
  }

  v34 = [(NSData *)self->_flattenedChapterData hash];
  v8 = self->_has;
  if ((*&v8 & 0x1000000000000) != 0)
  {
    v33 = 2654435761 * self->_isPreorder;
    if ((*&v8 & 0x1000) != 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v33 = 0;
    if ((*&v8 & 0x1000) != 0)
    {
LABEL_94:
      v32 = 2654435761 * self->_likedStateChangedDate;
      goto LABEL_97;
    }
  }

  v32 = 0;
LABEL_97:
  v31 = [(NSMutableArray *)self->_libraryIdentifiers hash];
  v9 = self->_has;
  if ((*&v9 & 0x80000) != 0)
  {
    v30 = 2654435761 * self->_storeId;
    if ((*&v9 & 0x200000) != 0)
    {
LABEL_99:
      v29 = 2654435761 * self->_storefrontId;
      if (*&v9)
      {
        goto LABEL_100;
      }

      goto LABEL_105;
    }
  }

  else
  {
    v30 = 0;
    if ((*&v9 & 0x200000) != 0)
    {
      goto LABEL_99;
    }
  }

  v29 = 0;
  if (*&v9)
  {
LABEL_100:
    v27 = 2654435761 * self->_accountId;
    if ((*&v9 & 0x8000) != 0)
    {
      goto LABEL_101;
    }

LABEL_106:
    v10 = 0;
    if ((*&v9 & 0x800000000) != 0)
    {
      goto LABEL_102;
    }

    goto LABEL_107;
  }

LABEL_105:
  v27 = 0;
  if ((*&v9 & 0x8000) == 0)
  {
    goto LABEL_106;
  }

LABEL_101:
  v10 = 2654435761 * self->_purchaseHistoryId;
  if ((*&v9 & 0x800000000) != 0)
  {
LABEL_102:
    v11 = 2654435761 * self->_purchaseHistoryToken;
    goto LABEL_108;
  }

LABEL_107:
  v11 = 0;
LABEL_108:
  v12 = [(NSString *)self->_purchaseHistoryRedownloadParams hash];
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v13 = 2654435761 * self->_sagaId;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NSString *)self->_sagaRedownloadParams hash];
  v15 = [(NSString *)self->_storeXID hash];
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    v16 = 2654435761 * self->_subscriptionStoreItemId;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(NSString *)self->_cloudUniversalLibraryId hash];
  v18 = self->_has;
  if ((*&v18 & 0x20000) != 0)
  {
    v19 = 2654435761 * self->_reportingStoreItemId;
    if ((*&v18 & 2) != 0)
    {
      goto LABEL_116;
    }

LABEL_118:
    v20 = 0;
    goto LABEL_119;
  }

  v19 = 0;
  if ((*&v18 & 2) == 0)
  {
    goto LABEL_118;
  }

LABEL_116:
  v20 = 2654435761 * self->_assetStoreItemId;
LABEL_119:
  v21 = v87 ^ v88 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v19 ^ v20;
  v22 = [(MIPSong *)self->_song hash];
  v23 = v22 ^ [(MIPMovie *)self->_movie hash];
  v24 = v23 ^ [(MIPTVShow *)self->_tvShow hash];
  v25 = v24 ^ [(MIPPodcast *)self->_podcast hash];
  return v21 ^ v25 ^ [(MIPAudiobook *)self->_audiobook hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  v5 = *(equalCopy + 62);
  if ((*(&self->_has + 3) & 0x80) != 0)
  {
    if ((v5 & 0x80000000) == 0 || self->_mediaType != *(equalCopy + 82))
    {
      goto LABEL_55;
    }
  }

  else if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

  title = self->_title;
  if (title | *(equalCopy + 58) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_55;
  }

  sortTitle = self->_sortTitle;
  if (sortTitle | *(equalCopy + 54))
  {
    if (![(NSString *)sortTitle isEqual:?])
    {
      goto LABEL_55;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 62);
  if ((*&has & 0x10000) != 0)
  {
    if ((v9 & 0x10000) == 0 || self->_releaseDateTime != *(equalCopy + 17))
    {
      goto LABEL_55;
    }
  }

  else if ((v9 & 0x10000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_creationDateTime != *(equalCopy + 4))
    {
      goto LABEL_55;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_55;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v9 & 0x2000) == 0 || self->_modificationDateTime != *(equalCopy + 14))
    {
      goto LABEL_55;
    }
  }

  else if ((v9 & 0x2000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v9 & 0x200) == 0 || self->_fileSize != *(equalCopy + 10))
    {
      goto LABEL_55;
    }
  }

  else if ((v9 & 0x200) != 0)
  {
    goto LABEL_55;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_duration != *(equalCopy + 8))
    {
      goto LABEL_55;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_55;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v9 & 0x4000000) == 0 || self->_contentRating != *(equalCopy + 62))
    {
      goto LABEL_55;
    }
  }

  else if ((v9 & 0x4000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    if ((v9 & 0x40000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_explicitContent)
    {
      if ((*(equalCopy + 485) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 485))
    {
      goto LABEL_55;
    }
  }

  else if ((v9 & 0x40000000000) != 0)
  {
    goto LABEL_55;
  }

  shortDescription = self->_shortDescription;
  if (shortDescription | *(equalCopy + 51) && ![(NSString *)shortDescription isEqual:?])
  {
    goto LABEL_55;
  }

  longDescription = self->_longDescription;
  if (longDescription | *(equalCopy + 40))
  {
    if (![(NSString *)longDescription isEqual:?])
    {
      goto LABEL_55;
    }
  }

  copyright = self->_copyright;
  if (copyright | *(equalCopy + 32))
  {
    if (![(NSString *)copyright isEqual:?])
    {
      goto LABEL_55;
    }
  }

  artworkId = self->_artworkId;
  if (artworkId | *(equalCopy + 24))
  {
    if (![(NSString *)artworkId isEqual:?])
    {
      goto LABEL_55;
    }
  }

  v14 = self->_has;
  v15 = *(equalCopy + 62);
  if ((*&v14 & 0x10000000000) != 0)
  {
    if ((v15 & 0x10000000000) == 0 || self->_year != *(equalCopy + 120))
    {
      goto LABEL_55;
    }
  }

  else if ((v15 & 0x10000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v14 & 0x8000000) != 0)
  {
    if ((v15 & 0x8000000) == 0 || self->_contentRatingLevel != *(equalCopy + 63))
    {
      goto LABEL_55;
    }
  }

  else if ((v15 & 0x8000000) != 0)
  {
    goto LABEL_55;
  }

  comment = self->_comment;
  if (comment | *(equalCopy + 30))
  {
    if (![(NSString *)comment isEqual:?])
    {
      goto LABEL_55;
    }

    v14 = self->_has;
    v15 = *(equalCopy + 62);
  }

  if ((*&v14 & 0x20000000) != 0)
  {
    if ((v15 & 0x20000000) == 0 || self->_fileKind != *(equalCopy + 70))
    {
      goto LABEL_55;
    }
  }

  else if ((v15 & 0x20000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v14 & 0x100) != 0)
  {
    if ((v15 & 0x100) == 0 || self->_familyAccountId != *(equalCopy + 9))
    {
      goto LABEL_55;
    }
  }

  else if ((v15 & 0x100) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v14 & 0x10000000) != 0)
  {
    if ((v15 & 0x10000000) == 0 || self->_drmVersionsCode != *(equalCopy + 66))
    {
      goto LABEL_55;
    }
  }

  else if ((v15 & 0x10000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v14 & 0x40) != 0)
  {
    if ((v15 & 0x40) == 0 || self->_drmPlatformIdCode != *(equalCopy + 7))
    {
      goto LABEL_55;
    }
  }

  else if ((v15 & 0x40) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v14 & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0 || self->_drmKey1IdCode != *(equalCopy + 5))
    {
      goto LABEL_55;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v14 & 0x20) != 0)
  {
    if ((v15 & 0x20) == 0 || self->_drmKey2IdCode != *(equalCopy + 6))
    {
      goto LABEL_55;
    }
  }

  else if ((v15 & 0x20) != 0)
  {
    goto LABEL_55;
  }

  chapterMetadataUrl = self->_chapterMetadataUrl;
  if (chapterMetadataUrl | *(equalCopy + 26) && ![(NSString *)chapterMetadataUrl isEqual:?])
  {
    goto LABEL_55;
  }

  storeAssetFlavor = self->_storeAssetFlavor;
  if (storeAssetFlavor | *(equalCopy + 55))
  {
    if (![(NSString *)storeAssetFlavor isEqual:?])
    {
      goto LABEL_55;
    }
  }

  extrasUrl = self->_extrasUrl;
  if (extrasUrl | *(equalCopy + 34))
  {
    if (![(NSString *)extrasUrl isEqual:?])
    {
      goto LABEL_55;
    }
  }

  v22 = self->_has;
  v23 = *(equalCopy + 62);
  if ((*&v22 & 0x4000) != 0)
  {
    if ((v23 & 0x4000) == 0 || self->_purchaseDateTime != *(equalCopy + 15))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x4000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x2000000) != 0)
  {
    if ((v23 & 0x2000000) == 0 || self->_cloudStatus != *(equalCopy + 56))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x2000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x100000000) != 0)
  {
    if ((v23 & 0x100000000) == 0 || self->_playCount != *(equalCopy + 86))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x100000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x200000000) != 0)
  {
    if ((v23 & 0x200000000) == 0 || self->_playCountDelta != *(equalCopy + 87))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x200000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x400) != 0)
  {
    if ((v23 & 0x400) == 0 || self->_lastPlayedDateTime != *(equalCopy + 11))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x400) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x2000000000) != 0)
  {
    if ((v23 & 0x2000000000) == 0 || self->_skipCount != *(equalCopy + 104))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x2000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x4000000000) != 0)
  {
    if ((v23 & 0x4000000000) == 0 || self->_skipCountDelta != *(equalCopy + 105))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x4000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x800) != 0)
  {
    if ((v23 & 0x800) == 0 || self->_lastSkippedDateTime != *(equalCopy + 12))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x800) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x8000000000000) != 0)
  {
    if ((v23 & 0x8000000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_rememberBookmark)
    {
      if ((*(equalCopy + 494) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 494))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x8000000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 4) != 0)
  {
    if ((v23 & 4) == 0 || self->_bookmarkTimeMilliseconds != *(equalCopy + 3))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 4) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x200000000000) != 0)
  {
    if ((v23 & 0x200000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_hidden)
    {
      if ((*(equalCopy + 488) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 488))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x200000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x100000) != 0)
  {
    if ((v23 & 0x100000) == 0 || self->_storePlaylistId != *(equalCopy + 21))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x100000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x100000000000) != 0)
  {
    if ((v23 & 0x100000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_hasLocalAsset)
    {
      if ((*(equalCopy + 487) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 487))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x100000000000) != 0)
  {
    goto LABEL_55;
  }

  grouping = self->_grouping;
  if (grouping | *(equalCopy + 37))
  {
    if (![(NSString *)grouping isEqual:?])
    {
      goto LABEL_55;
    }

    v22 = self->_has;
    v23 = *(equalCopy + 62);
  }

  if ((*&v22 & 0x40000000) != 0)
  {
    if ((v23 & 0x40000000) == 0 || self->_likedState != *(equalCopy + 78))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x40000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x4000000000000) != 0)
  {
    if ((v23 & 0x4000000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_needsReporting)
    {
      if ((*(equalCopy + 493) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 493))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x4000000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x2000000000000) != 0)
  {
    if ((v23 & 0x2000000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_likedStateChanged)
    {
      if ((*(equalCopy + 492) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 492))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x2000000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x800000000000) != 0)
  {
    if ((v23 & 0x800000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_isInUsersLibrary)
    {
      if ((*(equalCopy + 490) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 490))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x800000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x20000000000) != 0)
  {
    if ((v23 & 0x20000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_cloudAssetAvailable)
    {
      if ((*(equalCopy + 484) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 484))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x20000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x8000000000) != 0)
  {
    if ((v23 & 0x8000000000) == 0 || self->_storeProtectionType != *(equalCopy + 112))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x8000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x10000000000000) != 0)
  {
    if ((v23 & 0x10000000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_userDisabled)
    {
      if ((*(equalCopy + 495) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 495))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x10000000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x1000000) != 0)
  {
    if ((v23 & 0x1000000) == 0 || self->_cloudPlaybackEndpointType != *(equalCopy + 55))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x1000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x400000000) != 0)
  {
    if ((v23 & 0x400000000) == 0 || self->_playbackEndpointType != *(equalCopy + 88))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x400000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x800000) != 0)
  {
    if ((v23 & 0x800000) == 0 || self->_cloudMatchedStatus != *(equalCopy + 54))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x800000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x400000000000) != 0)
  {
    if ((v23 & 0x400000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_inUsersCloudLibrary)
    {
      if ((*(equalCopy + 489) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 489))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x400000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x1000000000) != 0)
  {
    if ((v23 & 0x1000000000) == 0 || self->_secondaryArtworkSourceType != *(equalCopy + 100))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x1000000000) != 0)
  {
    goto LABEL_55;
  }

  secondaryArtworkId = self->_secondaryArtworkId;
  if (secondaryArtworkId | *(equalCopy + 49))
  {
    if (![(NSString *)secondaryArtworkId isEqual:?])
    {
      goto LABEL_55;
    }

    v22 = self->_has;
    v23 = *(equalCopy + 62);
  }

  if ((*&v22 & 0x80000000000) != 0)
  {
    if ((v23 & 0x80000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_hasChapterData)
    {
      if ((*(equalCopy + 486) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 486))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x80000000000) != 0)
  {
    goto LABEL_55;
  }

  flattenedChapterData = self->_flattenedChapterData;
  if (flattenedChapterData | *(equalCopy + 36))
  {
    if (![(NSData *)flattenedChapterData isEqual:?])
    {
      goto LABEL_55;
    }

    v22 = self->_has;
    v23 = *(equalCopy + 62);
  }

  if ((*&v22 & 0x1000000000000) != 0)
  {
    if ((v23 & 0x1000000000000) == 0)
    {
      goto LABEL_55;
    }

    if (self->_isPreorder)
    {
      if ((*(equalCopy + 491) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(equalCopy + 491))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x1000000000000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x1000) != 0)
  {
    if ((v23 & 0x1000) == 0 || self->_likedStateChangedDate != *(equalCopy + 13))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x1000) != 0)
  {
    goto LABEL_55;
  }

  libraryIdentifiers = self->_libraryIdentifiers;
  if (libraryIdentifiers | *(equalCopy + 38))
  {
    if (![(NSMutableArray *)libraryIdentifiers isEqual:?])
    {
      goto LABEL_55;
    }

    v22 = self->_has;
    v23 = *(equalCopy + 62);
  }

  if ((*&v22 & 0x80000) != 0)
  {
    if ((v23 & 0x80000) == 0 || self->_storeId != *(equalCopy + 20))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x80000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x200000) != 0)
  {
    if ((v23 & 0x200000) == 0 || self->_storefrontId != *(equalCopy + 22))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x200000) != 0)
  {
    goto LABEL_55;
  }

  if (*&v22)
  {
    if ((v23 & 1) == 0 || self->_accountId != *(equalCopy + 1))
    {
      goto LABEL_55;
    }
  }

  else if (v23)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x8000) != 0)
  {
    if ((v23 & 0x8000) == 0 || self->_purchaseHistoryId != *(equalCopy + 16))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x8000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v22 & 0x800000000) != 0)
  {
    if ((v23 & 0x800000000) == 0 || self->_purchaseHistoryToken != *(equalCopy + 94))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x800000000) != 0)
  {
    goto LABEL_55;
  }

  purchaseHistoryRedownloadParams = self->_purchaseHistoryRedownloadParams;
  if (purchaseHistoryRedownloadParams | *(equalCopy + 46))
  {
    if (![(NSString *)purchaseHistoryRedownloadParams isEqual:?])
    {
      goto LABEL_55;
    }

    v22 = self->_has;
    v23 = *(equalCopy + 62);
  }

  if ((*&v22 & 0x40000) != 0)
  {
    if ((v23 & 0x40000) == 0 || self->_sagaId != *(equalCopy + 19))
    {
      goto LABEL_55;
    }
  }

  else if ((v23 & 0x40000) != 0)
  {
    goto LABEL_55;
  }

  sagaRedownloadParams = self->_sagaRedownloadParams;
  if (sagaRedownloadParams | *(equalCopy + 48) && ![(NSString *)sagaRedownloadParams isEqual:?])
  {
    goto LABEL_55;
  }

  storeXID = self->_storeXID;
  if (storeXID | *(equalCopy + 57))
  {
    if (![(NSString *)storeXID isEqual:?])
    {
      goto LABEL_55;
    }
  }

  v31 = self->_has;
  v32 = *(equalCopy + 62);
  if ((*&v31 & 0x400000) != 0)
  {
    if ((v32 & 0x400000) == 0 || self->_subscriptionStoreItemId != *(equalCopy + 23))
    {
      goto LABEL_55;
    }
  }

  else if ((v32 & 0x400000) != 0)
  {
    goto LABEL_55;
  }

  cloudUniversalLibraryId = self->_cloudUniversalLibraryId;
  if (cloudUniversalLibraryId | *(equalCopy + 29))
  {
    if (![(NSString *)cloudUniversalLibraryId isEqual:?])
    {
      goto LABEL_55;
    }

    v31 = self->_has;
    v32 = *(equalCopy + 62);
  }

  if ((*&v31 & 0x20000) != 0)
  {
    if ((v32 & 0x20000) == 0 || self->_reportingStoreItemId != *(equalCopy + 18))
    {
      goto LABEL_55;
    }
  }

  else if ((v32 & 0x20000) != 0)
  {
    goto LABEL_55;
  }

  if ((*&v31 & 2) == 0)
  {
    if ((v32 & 2) == 0)
    {
      goto LABEL_348;
    }

LABEL_55:
    v16 = 0;
    goto LABEL_56;
  }

  if ((v32 & 2) == 0 || self->_assetStoreItemId != *(equalCopy + 2))
  {
    goto LABEL_55;
  }

LABEL_348:
  song = self->_song;
  if (song | *(equalCopy + 53) && ![(MIPSong *)song isEqual:?])
  {
    goto LABEL_55;
  }

  movie = self->_movie;
  if (movie | *(equalCopy + 42))
  {
    if (![(MIPMovie *)movie isEqual:?])
    {
      goto LABEL_55;
    }
  }

  tvShow = self->_tvShow;
  if (tvShow | *(equalCopy + 59))
  {
    if (![(MIPTVShow *)tvShow isEqual:?])
    {
      goto LABEL_55;
    }
  }

  podcast = self->_podcast;
  if (podcast | *(equalCopy + 45))
  {
    if (![(MIPPodcast *)podcast isEqual:?])
    {
      goto LABEL_55;
    }
  }

  audiobook = self->_audiobook;
  if (audiobook | *(equalCopy + 25))
  {
    v16 = [(MIPAudiobook *)audiobook isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_56:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*(&self->_has + 3) & 0x80) != 0)
  {
    *(v5 + 328) = self->_mediaType;
    *(v5 + 496) |= 0x80000000uLL;
  }

  v7 = [(NSString *)self->_title copyWithZone:zone];
  v8 = *(v6 + 464);
  *(v6 + 464) = v7;

  v9 = [(NSString *)self->_sortTitle copyWithZone:zone];
  v10 = *(v6 + 432);
  *(v6 + 432) = v9;

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    *(v6 + 136) = self->_releaseDateTime;
    *(v6 + 496) |= 0x10000uLL;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_5:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_79;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 32) = self->_creationDateTime;
  *(v6 + 496) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v6 + 112) = self->_modificationDateTime;
  *(v6 + 496) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v6 + 80) = self->_fileSize;
  *(v6 + 496) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v6 + 64) = self->_duration;
  *(v6 + 496) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_82:
  *(v6 + 248) = self->_contentRating;
  *(v6 + 496) |= 0x4000000uLL;
  if ((*&self->_has & 0x40000000000) != 0)
  {
LABEL_10:
    *(v6 + 485) = self->_explicitContent;
    *(v6 + 496) |= 0x40000000000uLL;
  }

LABEL_11:
  v12 = [(NSString *)self->_shortDescription copyWithZone:zone];
  v13 = *(v6 + 408);
  *(v6 + 408) = v12;

  v14 = [(NSString *)self->_longDescription copyWithZone:zone];
  v15 = *(v6 + 320);
  *(v6 + 320) = v14;

  v16 = [(NSString *)self->_copyright copyWithZone:zone];
  v17 = *(v6 + 256);
  *(v6 + 256) = v16;

  v18 = [(NSString *)self->_artworkId copyWithZone:zone];
  v19 = *(v6 + 192);
  *(v6 + 192) = v18;

  v20 = self->_has;
  if ((*&v20 & 0x10000000000) != 0)
  {
    *(v6 + 480) = self->_year;
    *(v6 + 496) |= 0x10000000000uLL;
    v20 = self->_has;
  }

  if ((*&v20 & 0x8000000) != 0)
  {
    *(v6 + 252) = self->_contentRatingLevel;
    *(v6 + 496) |= 0x8000000uLL;
  }

  v21 = [(NSString *)self->_comment copyWithZone:zone];
  v22 = *(v6 + 240);
  *(v6 + 240) = v21;

  v23 = self->_has;
  if ((*&v23 & 0x20000000) != 0)
  {
    *(v6 + 280) = self->_fileKind;
    *(v6 + 496) |= 0x20000000uLL;
    v23 = self->_has;
    if ((*&v23 & 0x100) == 0)
    {
LABEL_17:
      if ((*&v23 & 0x10000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v23 & 0x100) == 0)
  {
    goto LABEL_17;
  }

  *(v6 + 72) = self->_familyAccountId;
  *(v6 + 496) |= 0x100uLL;
  v23 = self->_has;
  if ((*&v23 & 0x10000000) == 0)
  {
LABEL_18:
    if ((*&v23 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v6 + 264) = self->_drmVersionsCode;
  *(v6 + 496) |= 0x10000000uLL;
  v23 = self->_has;
  if ((*&v23 & 0x40) == 0)
  {
LABEL_19:
    if ((*&v23 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v6 + 56) = self->_drmPlatformIdCode;
  *(v6 + 496) |= 0x40uLL;
  v23 = self->_has;
  if ((*&v23 & 0x10) == 0)
  {
LABEL_20:
    if ((*&v23 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_88:
  *(v6 + 40) = self->_drmKey1IdCode;
  *(v6 + 496) |= 0x10uLL;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_21:
    *(v6 + 48) = self->_drmKey2IdCode;
    *(v6 + 496) |= 0x20uLL;
  }

LABEL_22:
  v24 = [(NSString *)self->_chapterMetadataUrl copyWithZone:zone];
  v25 = *(v6 + 208);
  *(v6 + 208) = v24;

  v26 = [(NSString *)self->_storeAssetFlavor copyWithZone:zone];
  v27 = *(v6 + 440);
  *(v6 + 440) = v26;

  v28 = [(NSString *)self->_extrasUrl copyWithZone:zone];
  v29 = *(v6 + 272);
  *(v6 + 272) = v28;

  v30 = self->_has;
  if ((*&v30 & 0x4000) != 0)
  {
    *(v6 + 120) = self->_purchaseDateTime;
    *(v6 + 496) |= 0x4000uLL;
    v30 = self->_has;
    if ((*&v30 & 0x2000000) == 0)
    {
LABEL_24:
      if ((*&v30 & 0x100000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_92;
    }
  }

  else if ((*&v30 & 0x2000000) == 0)
  {
    goto LABEL_24;
  }

  *(v6 + 224) = self->_cloudStatus;
  *(v6 + 496) |= 0x2000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x100000000) == 0)
  {
LABEL_25:
    if ((*&v30 & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v6 + 344) = self->_playCount;
  *(v6 + 496) |= 0x100000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x200000000) == 0)
  {
LABEL_26:
    if ((*&v30 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v6 + 348) = self->_playCountDelta;
  *(v6 + 496) |= 0x200000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x400) == 0)
  {
LABEL_27:
    if ((*&v30 & 0x2000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v6 + 88) = self->_lastPlayedDateTime;
  *(v6 + 496) |= 0x400uLL;
  v30 = self->_has;
  if ((*&v30 & 0x2000000000) == 0)
  {
LABEL_28:
    if ((*&v30 & 0x4000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v6 + 416) = self->_skipCount;
  *(v6 + 496) |= 0x2000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x4000000000) == 0)
  {
LABEL_29:
    if ((*&v30 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v6 + 420) = self->_skipCountDelta;
  *(v6 + 496) |= 0x4000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x800) == 0)
  {
LABEL_30:
    if ((*&v30 & 0x8000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v6 + 96) = self->_lastSkippedDateTime;
  *(v6 + 496) |= 0x800uLL;
  v30 = self->_has;
  if ((*&v30 & 0x8000000000000) == 0)
  {
LABEL_31:
    if ((*&v30 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v6 + 494) = self->_rememberBookmark;
  *(v6 + 496) |= 0x8000000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 4) == 0)
  {
LABEL_32:
    if ((*&v30 & 0x200000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v6 + 24) = self->_bookmarkTimeMilliseconds;
  *(v6 + 496) |= 4uLL;
  v30 = self->_has;
  if ((*&v30 & 0x200000000000) == 0)
  {
LABEL_33:
    if ((*&v30 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v6 + 488) = self->_hidden;
  *(v6 + 496) |= 0x200000000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x100000) == 0)
  {
LABEL_34:
    if ((*&v30 & 0x100000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_101:
  *(v6 + 168) = self->_storePlaylistId;
  *(v6 + 496) |= 0x100000uLL;
  if ((*&self->_has & 0x100000000000) != 0)
  {
LABEL_35:
    *(v6 + 487) = self->_hasLocalAsset;
    *(v6 + 496) |= 0x100000000000uLL;
  }

LABEL_36:
  v31 = [(NSString *)self->_grouping copyWithZone:zone];
  v32 = *(v6 + 296);
  *(v6 + 296) = v31;

  v33 = self->_has;
  if ((*&v33 & 0x40000000) != 0)
  {
    *(v6 + 312) = self->_likedState;
    *(v6 + 496) |= 0x40000000uLL;
    v33 = self->_has;
    if ((*&v33 & 0x4000000000000) == 0)
    {
LABEL_38:
      if ((*&v33 & 0x2000000000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_105;
    }
  }

  else if ((*&v33 & 0x4000000000000) == 0)
  {
    goto LABEL_38;
  }

  *(v6 + 493) = self->_needsReporting;
  *(v6 + 496) |= 0x4000000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x2000000000000) == 0)
  {
LABEL_39:
    if ((*&v33 & 0x800000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v6 + 492) = self->_likedStateChanged;
  *(v6 + 496) |= 0x2000000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x800000000000) == 0)
  {
LABEL_40:
    if ((*&v33 & 0x20000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v6 + 490) = self->_isInUsersLibrary;
  *(v6 + 496) |= 0x800000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x20000000000) == 0)
  {
LABEL_41:
    if ((*&v33 & 0x8000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v6 + 484) = self->_cloudAssetAvailable;
  *(v6 + 496) |= 0x20000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x8000000000) == 0)
  {
LABEL_42:
    if ((*&v33 & 0x10000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v6 + 448) = self->_storeProtectionType;
  *(v6 + 496) |= 0x8000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x10000000000000) == 0)
  {
LABEL_43:
    if ((*&v33 & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v6 + 495) = self->_userDisabled;
  *(v6 + 496) |= 0x10000000000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x1000000) == 0)
  {
LABEL_44:
    if ((*&v33 & 0x400000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v6 + 220) = self->_cloudPlaybackEndpointType;
  *(v6 + 496) |= 0x1000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x400000000) == 0)
  {
LABEL_45:
    if ((*&v33 & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(v6 + 352) = self->_playbackEndpointType;
  *(v6 + 496) |= 0x400000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x800000) == 0)
  {
LABEL_46:
    if ((*&v33 & 0x400000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(v6 + 216) = self->_cloudMatchedStatus;
  *(v6 + 496) |= 0x800000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x400000000000) == 0)
  {
LABEL_47:
    if ((*&v33 & 0x1000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_113:
  *(v6 + 489) = self->_inUsersCloudLibrary;
  *(v6 + 496) |= 0x400000000000uLL;
  if ((*&self->_has & 0x1000000000) != 0)
  {
LABEL_48:
    *(v6 + 400) = self->_secondaryArtworkSourceType;
    *(v6 + 496) |= 0x1000000000uLL;
  }

LABEL_49:
  v34 = [(NSString *)self->_secondaryArtworkId copyWithZone:zone];
  v35 = *(v6 + 392);
  *(v6 + 392) = v34;

  if ((*(&self->_has + 5) & 8) != 0)
  {
    *(v6 + 486) = self->_hasChapterData;
    *(v6 + 496) |= 0x80000000000uLL;
  }

  v36 = [(NSData *)self->_flattenedChapterData copyWithZone:zone];
  v37 = *(v6 + 288);
  *(v6 + 288) = v36;

  v38 = self->_has;
  if ((*&v38 & 0x1000000000000) != 0)
  {
    *(v6 + 491) = self->_isPreorder;
    *(v6 + 496) |= 0x1000000000000uLL;
    v38 = self->_has;
  }

  if ((*&v38 & 0x1000) != 0)
  {
    *(v6 + 104) = self->_likedStateChangedDate;
    *(v6 + 496) |= 0x1000uLL;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v39 = self->_libraryIdentifiers;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v68;
    do
    {
      v43 = 0;
      do
      {
        if (*v68 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v67 + 1) + 8 * v43) copyWithZone:{zone, v67}];
        [v6 addLibraryIdentifiers:v44];

        ++v43;
      }

      while (v41 != v43);
      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v41);
  }

  v45 = self->_has;
  if ((*&v45 & 0x80000) != 0)
  {
    *(v6 + 160) = self->_storeId;
    *(v6 + 496) |= 0x80000uLL;
    v45 = self->_has;
    if ((*&v45 & 0x200000) == 0)
    {
LABEL_64:
      if ((*&v45 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_117;
    }
  }

  else if ((*&v45 & 0x200000) == 0)
  {
    goto LABEL_64;
  }

  *(v6 + 176) = self->_storefrontId;
  *(v6 + 496) |= 0x200000uLL;
  v45 = self->_has;
  if ((*&v45 & 1) == 0)
  {
LABEL_65:
    if ((*&v45 & 0x8000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(v6 + 8) = self->_accountId;
  *(v6 + 496) |= 1uLL;
  v45 = self->_has;
  if ((*&v45 & 0x8000) == 0)
  {
LABEL_66:
    if ((*&v45 & 0x800000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_118:
  *(v6 + 128) = self->_purchaseHistoryId;
  *(v6 + 496) |= 0x8000uLL;
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_67:
    *(v6 + 376) = self->_purchaseHistoryToken;
    *(v6 + 496) |= 0x800000000uLL;
  }

LABEL_68:
  v46 = [(NSString *)self->_purchaseHistoryRedownloadParams copyWithZone:zone, v67];
  v47 = *(v6 + 368);
  *(v6 + 368) = v46;

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(v6 + 152) = self->_sagaId;
    *(v6 + 496) |= 0x40000uLL;
  }

  v48 = [(NSString *)self->_sagaRedownloadParams copyWithZone:zone];
  v49 = *(v6 + 384);
  *(v6 + 384) = v48;

  v50 = [(NSString *)self->_storeXID copyWithZone:zone];
  v51 = *(v6 + 456);
  *(v6 + 456) = v50;

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    *(v6 + 184) = self->_subscriptionStoreItemId;
    *(v6 + 496) |= 0x400000uLL;
  }

  v52 = [(NSString *)self->_cloudUniversalLibraryId copyWithZone:zone];
  v53 = *(v6 + 232);
  *(v6 + 232) = v52;

  v54 = self->_has;
  if ((*&v54 & 0x20000) != 0)
  {
    *(v6 + 144) = self->_reportingStoreItemId;
    *(v6 + 496) |= 0x20000uLL;
    v54 = self->_has;
  }

  if ((*&v54 & 2) != 0)
  {
    *(v6 + 16) = self->_assetStoreItemId;
    *(v6 + 496) |= 2uLL;
  }

  v55 = [(MIPSong *)self->_song copyWithZone:zone];
  v56 = *(v6 + 424);
  *(v6 + 424) = v55;

  v57 = [(MIPMovie *)self->_movie copyWithZone:zone];
  v58 = *(v6 + 336);
  *(v6 + 336) = v57;

  v59 = [(MIPTVShow *)self->_tvShow copyWithZone:zone];
  v60 = *(v6 + 472);
  *(v6 + 472) = v59;

  v61 = [(MIPPodcast *)self->_podcast copyWithZone:zone];
  v62 = *(v6 + 360);
  *(v6 + 360) = v61;

  v63 = [(MIPAudiobook *)self->_audiobook copyWithZone:zone];
  v64 = *(v6 + 200);
  *(v6 + 200) = v63;

  v65 = v6;
  return v65;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*(&self->_has + 3) & 0x80) != 0)
  {
    toCopy[82] = self->_mediaType;
    *(toCopy + 62) |= 0x80000000uLL;
  }

  v18 = toCopy;
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v18;
  }

  if (self->_sortTitle)
  {
    [v18 setSortTitle:?];
    toCopy = v18;
  }

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    *(toCopy + 17) = self->_releaseDateTime;
    *(toCopy + 62) |= 0x10000uLL;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_9:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_122;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 4) = self->_creationDateTime;
  *(toCopy + 62) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(toCopy + 14) = self->_modificationDateTime;
  *(toCopy + 62) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(toCopy + 10) = self->_fileSize;
  *(toCopy + 62) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_125;
  }

LABEL_124:
  *(toCopy + 8) = self->_duration;
  *(toCopy + 62) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_125:
  toCopy[62] = self->_contentRating;
  *(toCopy + 62) |= 0x4000000uLL;
  if ((*&self->_has & 0x40000000000) != 0)
  {
LABEL_14:
    *(toCopy + 485) = self->_explicitContent;
    *(toCopy + 62) |= 0x40000000000uLL;
  }

LABEL_15:
  if (self->_shortDescription)
  {
    [v18 setShortDescription:?];
    toCopy = v18;
  }

  if (self->_longDescription)
  {
    [v18 setLongDescription:?];
    toCopy = v18;
  }

  if (self->_copyright)
  {
    [v18 setCopyright:?];
    toCopy = v18;
  }

  if (self->_artworkId)
  {
    [v18 setArtworkId:?];
    toCopy = v18;
  }

  v6 = self->_has;
  if ((*&v6 & 0x10000000000) != 0)
  {
    toCopy[120] = self->_year;
    *(toCopy + 62) |= 0x10000000000uLL;
    v6 = self->_has;
  }

  if ((*&v6 & 0x8000000) != 0)
  {
    toCopy[63] = self->_contentRatingLevel;
    *(toCopy + 62) |= 0x8000000uLL;
  }

  if (self->_comment)
  {
    [v18 setComment:?];
    toCopy = v18;
  }

  v7 = self->_has;
  if ((*&v7 & 0x20000000) != 0)
  {
    toCopy[70] = self->_fileKind;
    *(toCopy + 62) |= 0x20000000uLL;
    v7 = self->_has;
    if ((*&v7 & 0x100) == 0)
    {
LABEL_31:
      if ((*&v7 & 0x10000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_129;
    }
  }

  else if ((*&v7 & 0x100) == 0)
  {
    goto LABEL_31;
  }

  *(toCopy + 9) = self->_familyAccountId;
  *(toCopy + 62) |= 0x100uLL;
  v7 = self->_has;
  if ((*&v7 & 0x10000000) == 0)
  {
LABEL_32:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_130;
  }

LABEL_129:
  toCopy[66] = self->_drmVersionsCode;
  *(toCopy + 62) |= 0x10000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_33:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(toCopy + 7) = self->_drmPlatformIdCode;
  *(toCopy + 62) |= 0x40uLL;
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_34:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_131:
  *(toCopy + 5) = self->_drmKey1IdCode;
  *(toCopy + 62) |= 0x10uLL;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_35:
    *(toCopy + 6) = self->_drmKey2IdCode;
    *(toCopy + 62) |= 0x20uLL;
  }

LABEL_36:
  if (self->_chapterMetadataUrl)
  {
    [v18 setChapterMetadataUrl:?];
    toCopy = v18;
  }

  if (self->_storeAssetFlavor)
  {
    [v18 setStoreAssetFlavor:?];
    toCopy = v18;
  }

  if (self->_extrasUrl)
  {
    [v18 setExtrasUrl:?];
    toCopy = v18;
  }

  v8 = self->_has;
  if ((*&v8 & 0x4000) != 0)
  {
    *(toCopy + 15) = self->_purchaseDateTime;
    *(toCopy + 62) |= 0x4000uLL;
    v8 = self->_has;
    if ((*&v8 & 0x2000000) == 0)
    {
LABEL_44:
      if ((*&v8 & 0x100000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_135;
    }
  }

  else if ((*&v8 & 0x2000000) == 0)
  {
    goto LABEL_44;
  }

  toCopy[56] = self->_cloudStatus;
  *(toCopy + 62) |= 0x2000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x100000000) == 0)
  {
LABEL_45:
    if ((*&v8 & 0x200000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_136;
  }

LABEL_135:
  toCopy[86] = self->_playCount;
  *(toCopy + 62) |= 0x100000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x200000000) == 0)
  {
LABEL_46:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_137;
  }

LABEL_136:
  toCopy[87] = self->_playCountDelta;
  *(toCopy + 62) |= 0x200000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_47:
    if ((*&v8 & 0x2000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_138;
  }

LABEL_137:
  *(toCopy + 11) = self->_lastPlayedDateTime;
  *(toCopy + 62) |= 0x400uLL;
  v8 = self->_has;
  if ((*&v8 & 0x2000000000) == 0)
  {
LABEL_48:
    if ((*&v8 & 0x4000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_139;
  }

LABEL_138:
  toCopy[104] = self->_skipCount;
  *(toCopy + 62) |= 0x2000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x4000000000) == 0)
  {
LABEL_49:
    if ((*&v8 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_140;
  }

LABEL_139:
  toCopy[105] = self->_skipCountDelta;
  *(toCopy + 62) |= 0x4000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_50:
    if ((*&v8 & 0x8000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(toCopy + 12) = self->_lastSkippedDateTime;
  *(toCopy + 62) |= 0x800uLL;
  v8 = self->_has;
  if ((*&v8 & 0x8000000000000) == 0)
  {
LABEL_51:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(toCopy + 494) = self->_rememberBookmark;
  *(toCopy + 62) |= 0x8000000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 4) == 0)
  {
LABEL_52:
    if ((*&v8 & 0x200000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(toCopy + 3) = self->_bookmarkTimeMilliseconds;
  *(toCopy + 62) |= 4uLL;
  v8 = self->_has;
  if ((*&v8 & 0x200000000000) == 0)
  {
LABEL_53:
    if ((*&v8 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(toCopy + 488) = self->_hidden;
  *(toCopy + 62) |= 0x200000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x100000) == 0)
  {
LABEL_54:
    if ((*&v8 & 0x100000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_144:
  *(toCopy + 21) = self->_storePlaylistId;
  *(toCopy + 62) |= 0x100000uLL;
  if ((*&self->_has & 0x100000000000) != 0)
  {
LABEL_55:
    *(toCopy + 487) = self->_hasLocalAsset;
    *(toCopy + 62) |= 0x100000000000uLL;
  }

LABEL_56:
  if (self->_grouping)
  {
    [v18 setGrouping:?];
    toCopy = v18;
  }

  v9 = self->_has;
  if ((*&v9 & 0x40000000) != 0)
  {
    toCopy[78] = self->_likedState;
    *(toCopy + 62) |= 0x40000000uLL;
    v9 = self->_has;
    if ((*&v9 & 0x4000000000000) == 0)
    {
LABEL_60:
      if ((*&v9 & 0x2000000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_148;
    }
  }

  else if ((*&v9 & 0x4000000000000) == 0)
  {
    goto LABEL_60;
  }

  *(toCopy + 493) = self->_needsReporting;
  *(toCopy + 62) |= 0x4000000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x2000000000000) == 0)
  {
LABEL_61:
    if ((*&v9 & 0x800000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(toCopy + 492) = self->_likedStateChanged;
  *(toCopy + 62) |= 0x2000000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x800000000000) == 0)
  {
LABEL_62:
    if ((*&v9 & 0x20000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(toCopy + 490) = self->_isInUsersLibrary;
  *(toCopy + 62) |= 0x800000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x20000000000) == 0)
  {
LABEL_63:
    if ((*&v9 & 0x8000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(toCopy + 484) = self->_cloudAssetAvailable;
  *(toCopy + 62) |= 0x20000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x8000000000) == 0)
  {
LABEL_64:
    if ((*&v9 & 0x10000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_152;
  }

LABEL_151:
  toCopy[112] = self->_storeProtectionType;
  *(toCopy + 62) |= 0x8000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x10000000000000) == 0)
  {
LABEL_65:
    if ((*&v9 & 0x1000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(toCopy + 495) = self->_userDisabled;
  *(toCopy + 62) |= 0x10000000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_66:
    if ((*&v9 & 0x400000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_154;
  }

LABEL_153:
  toCopy[55] = self->_cloudPlaybackEndpointType;
  *(toCopy + 62) |= 0x1000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x400000000) == 0)
  {
LABEL_67:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_155;
  }

LABEL_154:
  toCopy[88] = self->_playbackEndpointType;
  *(toCopy + 62) |= 0x400000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x800000) == 0)
  {
LABEL_68:
    if ((*&v9 & 0x400000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_156;
  }

LABEL_155:
  toCopy[54] = self->_cloudMatchedStatus;
  *(toCopy + 62) |= 0x800000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x400000000000) == 0)
  {
LABEL_69:
    if ((*&v9 & 0x1000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_156:
  *(toCopy + 489) = self->_inUsersCloudLibrary;
  *(toCopy + 62) |= 0x400000000000uLL;
  if ((*&self->_has & 0x1000000000) != 0)
  {
LABEL_70:
    toCopy[100] = self->_secondaryArtworkSourceType;
    *(toCopy + 62) |= 0x1000000000uLL;
  }

LABEL_71:
  if (self->_secondaryArtworkId)
  {
    [v18 setSecondaryArtworkId:?];
    toCopy = v18;
  }

  if ((*(&self->_has + 5) & 8) != 0)
  {
    *(toCopy + 486) = self->_hasChapterData;
    *(toCopy + 62) |= 0x80000000000uLL;
  }

  if (self->_flattenedChapterData)
  {
    [v18 setFlattenedChapterData:?];
    toCopy = v18;
  }

  v10 = self->_has;
  if ((*&v10 & 0x1000000000000) != 0)
  {
    *(toCopy + 491) = self->_isPreorder;
    *(toCopy + 62) |= 0x1000000000000uLL;
    v10 = self->_has;
  }

  if ((*&v10 & 0x1000) != 0)
  {
    *(toCopy + 13) = self->_likedStateChangedDate;
    *(toCopy + 62) |= 0x1000uLL;
  }

  if ([(MIPMediaItem *)self libraryIdentifiersCount])
  {
    [v18 clearLibraryIdentifiers];
    libraryIdentifiersCount = [(MIPMediaItem *)self libraryIdentifiersCount];
    if (libraryIdentifiersCount)
    {
      v12 = libraryIdentifiersCount;
      for (i = 0; i != v12; ++i)
      {
        v14 = [(MIPMediaItem *)self libraryIdentifiersAtIndex:i];
        [v18 addLibraryIdentifiers:v14];
      }
    }
  }

  v15 = self->_has;
  v16 = v18;
  if ((*&v15 & 0x80000) != 0)
  {
    *(v18 + 20) = self->_storeId;
    *(v18 + 62) |= 0x80000uLL;
    v15 = self->_has;
    if ((*&v15 & 0x200000) == 0)
    {
LABEL_87:
      if ((*&v15 & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_160;
    }
  }

  else if ((*&v15 & 0x200000) == 0)
  {
    goto LABEL_87;
  }

  *(v18 + 22) = self->_storefrontId;
  *(v18 + 62) |= 0x200000uLL;
  v15 = self->_has;
  if ((*&v15 & 1) == 0)
  {
LABEL_88:
    if ((*&v15 & 0x8000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(v18 + 1) = self->_accountId;
  *(v18 + 62) |= 1uLL;
  v15 = self->_has;
  if ((*&v15 & 0x8000) == 0)
  {
LABEL_89:
    if ((*&v15 & 0x800000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_161:
  *(v18 + 16) = self->_purchaseHistoryId;
  *(v18 + 62) |= 0x8000uLL;
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_90:
    v18[94] = self->_purchaseHistoryToken;
    *(v18 + 62) |= 0x800000000uLL;
  }

LABEL_91:
  if (self->_purchaseHistoryRedownloadParams)
  {
    [v18 setPurchaseHistoryRedownloadParams:?];
    v16 = v18;
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v16[19] = self->_sagaId;
    v16[62] |= 0x40000uLL;
  }

  if (self->_sagaRedownloadParams)
  {
    [v18 setSagaRedownloadParams:?];
    v16 = v18;
  }

  if (self->_storeXID)
  {
    [v18 setStoreXID:?];
    v16 = v18;
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    v16[23] = self->_subscriptionStoreItemId;
    v16[62] |= 0x400000uLL;
  }

  if (self->_cloudUniversalLibraryId)
  {
    [v18 setCloudUniversalLibraryId:?];
    v16 = v18;
  }

  v17 = self->_has;
  if ((*&v17 & 0x20000) != 0)
  {
    v16[18] = self->_reportingStoreItemId;
    v16[62] |= 0x20000uLL;
    v17 = self->_has;
  }

  if ((*&v17 & 2) != 0)
  {
    v16[2] = self->_assetStoreItemId;
    v16[62] |= 2uLL;
  }

  if (self->_song)
  {
    [v18 setSong:?];
    v16 = v18;
  }

  if (self->_movie)
  {
    [v18 setMovie:?];
    v16 = v18;
  }

  if (self->_tvShow)
  {
    [v18 setTvShow:?];
    v16 = v18;
  }

  if (self->_podcast)
  {
    [v18 setPodcast:?];
    v16 = v18;
  }

  if (self->_audiobook)
  {
    [v18 setAudiobook:?];
    v16 = v18;
  }
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if ((*(&self->_has + 3) & 0x80) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sortTitle)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_9:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_123;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_124;
  }

LABEL_123:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_125;
  }

LABEL_124:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_126;
  }

LABEL_125:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_126:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40000000000) != 0)
  {
LABEL_14:
    PBDataWriterWriteBOOLField();
  }

LABEL_15:
  if (self->_shortDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_longDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_copyright)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_artworkId)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x10000000000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
  }

  if ((*&v6 & 0x8000000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_comment)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x20000000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = self->_has;
    if ((*&v7 & 0x100) == 0)
    {
LABEL_31:
      if ((*&v7 & 0x10000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_130;
    }
  }

  else if ((*&v7 & 0x100) == 0)
  {
    goto LABEL_31;
  }

  PBDataWriterWriteInt64Field();
  v7 = self->_has;
  if ((*&v7 & 0x10000000) == 0)
  {
LABEL_32:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_131;
  }

LABEL_130:
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_33:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_132;
  }

LABEL_131:
  PBDataWriterWriteInt64Field();
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_34:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_132:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_35:
    PBDataWriterWriteInt64Field();
  }

LABEL_36:
  if (self->_chapterMetadataUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_storeAssetFlavor)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_extrasUrl)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((*&v8 & 0x4000) != 0)
  {
    PBDataWriterWriteInt64Field();
    v8 = self->_has;
    if ((*&v8 & 0x2000000) == 0)
    {
LABEL_44:
      if ((*&v8 & 0x100000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_136;
    }
  }

  else if ((*&v8 & 0x2000000) == 0)
  {
    goto LABEL_44;
  }

  PBDataWriterWriteInt32Field();
  v8 = self->_has;
  if ((*&v8 & 0x100000000) == 0)
  {
LABEL_45:
    if ((*&v8 & 0x200000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_137;
  }

LABEL_136:
  PBDataWriterWriteInt32Field();
  v8 = self->_has;
  if ((*&v8 & 0x200000000) == 0)
  {
LABEL_46:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_138;
  }

LABEL_137:
  PBDataWriterWriteInt32Field();
  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_47:
    if ((*&v8 & 0x2000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_139;
  }

LABEL_138:
  PBDataWriterWriteInt64Field();
  v8 = self->_has;
  if ((*&v8 & 0x2000000000) == 0)
  {
LABEL_48:
    if ((*&v8 & 0x4000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_140;
  }

LABEL_139:
  PBDataWriterWriteInt32Field();
  v8 = self->_has;
  if ((*&v8 & 0x4000000000) == 0)
  {
LABEL_49:
    if ((*&v8 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_141;
  }

LABEL_140:
  PBDataWriterWriteInt32Field();
  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_50:
    if ((*&v8 & 0x8000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_142;
  }

LABEL_141:
  PBDataWriterWriteInt64Field();
  v8 = self->_has;
  if ((*&v8 & 0x8000000000000) == 0)
  {
LABEL_51:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_143;
  }

LABEL_142:
  PBDataWriterWriteBOOLField();
  v8 = self->_has;
  if ((*&v8 & 4) == 0)
  {
LABEL_52:
    if ((*&v8 & 0x200000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_144;
  }

LABEL_143:
  PBDataWriterWriteInt64Field();
  v8 = self->_has;
  if ((*&v8 & 0x200000000000) == 0)
  {
LABEL_53:
    if ((*&v8 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_145;
  }

LABEL_144:
  PBDataWriterWriteBOOLField();
  v8 = self->_has;
  if ((*&v8 & 0x100000) == 0)
  {
LABEL_54:
    if ((*&v8 & 0x100000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_145:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x100000000000) != 0)
  {
LABEL_55:
    PBDataWriterWriteBOOLField();
  }

LABEL_56:
  if (self->_grouping)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((*&v9 & 0x40000000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = self->_has;
    if ((*&v9 & 0x4000000000000) == 0)
    {
LABEL_60:
      if ((*&v9 & 0x2000000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_149;
    }
  }

  else if ((*&v9 & 0x4000000000000) == 0)
  {
    goto LABEL_60;
  }

  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x2000000000000) == 0)
  {
LABEL_61:
    if ((*&v9 & 0x800000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_150;
  }

LABEL_149:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x800000000000) == 0)
  {
LABEL_62:
    if ((*&v9 & 0x20000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_151;
  }

LABEL_150:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x20000000000) == 0)
  {
LABEL_63:
    if ((*&v9 & 0x8000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_152;
  }

LABEL_151:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x8000000000) == 0)
  {
LABEL_64:
    if ((*&v9 & 0x10000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_153;
  }

LABEL_152:
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x10000000000000) == 0)
  {
LABEL_65:
    if ((*&v9 & 0x1000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_154;
  }

LABEL_153:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_66:
    if ((*&v9 & 0x400000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_155;
  }

LABEL_154:
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x400000000) == 0)
  {
LABEL_67:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_156;
  }

LABEL_155:
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x800000) == 0)
  {
LABEL_68:
    if ((*&v9 & 0x400000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_157;
  }

LABEL_156:
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x400000000000) == 0)
  {
LABEL_69:
    if ((*&v9 & 0x1000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_157:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x1000000000) != 0)
  {
LABEL_70:
    PBDataWriterWriteInt32Field();
  }

LABEL_71:
  if (self->_secondaryArtworkId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 5) & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_flattenedChapterData)
  {
    PBDataWriterWriteDataField();
  }

  v10 = self->_has;
  if ((*&v10 & 0x1000000000000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_has;
  }

  if ((*&v10 & 0x1000) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_libraryIdentifiers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v16 = self->_has;
  if ((*&v16 & 0x80000) != 0)
  {
    PBDataWriterWriteInt64Field();
    v16 = self->_has;
    if ((*&v16 & 0x200000) == 0)
    {
LABEL_90:
      if ((*&v16 & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_161;
    }
  }

  else if ((*&v16 & 0x200000) == 0)
  {
    goto LABEL_90;
  }

  PBDataWriterWriteInt64Field();
  v16 = self->_has;
  if ((*&v16 & 1) == 0)
  {
LABEL_91:
    if ((*&v16 & 0x8000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_162;
  }

LABEL_161:
  PBDataWriterWriteInt64Field();
  v16 = self->_has;
  if ((*&v16 & 0x8000) == 0)
  {
LABEL_92:
    if ((*&v16 & 0x800000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_162:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_93:
    PBDataWriterWriteInt32Field();
  }

LABEL_94:
  if (self->_purchaseHistoryRedownloadParams)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_sagaRedownloadParams)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_storeXID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_cloudUniversalLibraryId)
  {
    PBDataWriterWriteStringField();
  }

  v17 = self->_has;
  if ((*&v17 & 0x20000) != 0)
  {
    PBDataWriterWriteInt64Field();
    v17 = self->_has;
  }

  if ((*&v17 & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_song)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_movie)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_tvShow)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_podcast)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_audiobook)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v107 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*(&self->_has + 3) & 0x80) != 0)
  {
    v4 = self->_mediaType - 1;
    if (v4 >= 0xD)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mediaType];
    }

    else
    {
      v5 = off_278765FD8[v4];
    }

    [dictionary setObject:v5 forKey:@"mediaType"];
  }

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  sortTitle = self->_sortTitle;
  if (sortTitle)
  {
    [dictionary setObject:sortTitle forKey:@"sortTitle"];
  }

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    v64 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_releaseDateTime];
    [dictionary setObject:v64 forKey:@"releaseDateTime"];

    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_12:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_128;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_12;
  }

  v65 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_creationDateTime];
  [dictionary setObject:v65 forKey:@"creationDateTime"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_129;
  }

LABEL_128:
  v66 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_modificationDateTime];
  [dictionary setObject:v66 forKey:@"modificationDateTime"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_130;
  }

LABEL_129:
  v67 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_fileSize];
  [dictionary setObject:v67 forKey:@"fileSize"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_131;
  }

LABEL_130:
  v68 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_duration];
  [dictionary setObject:v68 forKey:@"duration"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_131:
  v69 = [MEMORY[0x277CCABB0] numberWithInt:self->_contentRating];
  [dictionary setObject:v69 forKey:@"contentRating"];

  if ((*&self->_has & 0x40000000000) != 0)
  {
LABEL_17:
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_explicitContent];
    [dictionary setObject:v9 forKey:@"explicitContent"];
  }

LABEL_18:
  shortDescription = self->_shortDescription;
  if (shortDescription)
  {
    [dictionary setObject:shortDescription forKey:@"shortDescription"];
  }

  longDescription = self->_longDescription;
  if (longDescription)
  {
    [dictionary setObject:longDescription forKey:@"longDescription"];
  }

  copyright = self->_copyright;
  if (copyright)
  {
    [dictionary setObject:copyright forKey:@"copyright"];
  }

  artworkId = self->_artworkId;
  if (artworkId)
  {
    [dictionary setObject:artworkId forKey:@"artworkId"];
  }

  v14 = self->_has;
  if ((*&v14 & 0x10000000000) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_year];
    [dictionary setObject:v15 forKey:@"year"];

    v14 = self->_has;
  }

  if ((*&v14 & 0x8000000) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_contentRatingLevel];
    [dictionary setObject:v16 forKey:@"contentRatingLevel"];
  }

  comment = self->_comment;
  if (comment)
  {
    [dictionary setObject:comment forKey:@"comment"];
  }

  v18 = self->_has;
  if ((*&v18 & 0x20000000) != 0)
  {
    v70 = [MEMORY[0x277CCABB0] numberWithInt:self->_fileKind];
    [dictionary setObject:v70 forKey:@"fileKind"];

    v18 = self->_has;
    if ((*&v18 & 0x100) == 0)
    {
LABEL_34:
      if ((*&v18 & 0x10000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_135;
    }
  }

  else if ((*&v18 & 0x100) == 0)
  {
    goto LABEL_34;
  }

  v71 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_familyAccountId];
  [dictionary setObject:v71 forKey:@"familyAccountId"];

  v18 = self->_has;
  if ((*&v18 & 0x10000000) == 0)
  {
LABEL_35:
    if ((*&v18 & 0x40) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_136;
  }

LABEL_135:
  v72 = [MEMORY[0x277CCABB0] numberWithInt:self->_drmVersionsCode];
  [dictionary setObject:v72 forKey:@"drmVersionsCode"];

  v18 = self->_has;
  if ((*&v18 & 0x40) == 0)
  {
LABEL_36:
    if ((*&v18 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_137;
  }

LABEL_136:
  v73 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_drmPlatformIdCode];
  [dictionary setObject:v73 forKey:@"drmPlatformIdCode"];

  v18 = self->_has;
  if ((*&v18 & 0x10) == 0)
  {
LABEL_37:
    if ((*&v18 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_137:
  v74 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_drmKey1IdCode];
  [dictionary setObject:v74 forKey:@"drmKey1IdCode"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_38:
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_drmKey2IdCode];
    [dictionary setObject:v19 forKey:@"drmKey2IdCode"];
  }

LABEL_39:
  chapterMetadataUrl = self->_chapterMetadataUrl;
  if (chapterMetadataUrl)
  {
    [dictionary setObject:chapterMetadataUrl forKey:@"chapterMetadataUrl"];
  }

  storeAssetFlavor = self->_storeAssetFlavor;
  if (storeAssetFlavor)
  {
    [dictionary setObject:storeAssetFlavor forKey:@"storeAssetFlavor"];
  }

  extrasUrl = self->_extrasUrl;
  if (extrasUrl)
  {
    [dictionary setObject:extrasUrl forKey:@"extrasUrl"];
  }

  v23 = self->_has;
  if ((*&v23 & 0x4000) != 0)
  {
    v75 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_purchaseDateTime];
    [dictionary setObject:v75 forKey:@"purchaseDateTime"];

    v23 = self->_has;
    if ((*&v23 & 0x2000000) == 0)
    {
LABEL_47:
      if ((*&v23 & 0x100000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_141;
    }
  }

  else if ((*&v23 & 0x2000000) == 0)
  {
    goto LABEL_47;
  }

  v76 = [MEMORY[0x277CCABB0] numberWithInt:self->_cloudStatus];
  [dictionary setObject:v76 forKey:@"cloudStatus"];

  v23 = self->_has;
  if ((*&v23 & 0x100000000) == 0)
  {
LABEL_48:
    if ((*&v23 & 0x200000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_142;
  }

LABEL_141:
  v77 = [MEMORY[0x277CCABB0] numberWithInt:self->_playCount];
  [dictionary setObject:v77 forKey:@"playCount"];

  v23 = self->_has;
  if ((*&v23 & 0x200000000) == 0)
  {
LABEL_49:
    if ((*&v23 & 0x400) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_143;
  }

LABEL_142:
  v78 = [MEMORY[0x277CCABB0] numberWithInt:self->_playCountDelta];
  [dictionary setObject:v78 forKey:@"playCountDelta"];

  v23 = self->_has;
  if ((*&v23 & 0x400) == 0)
  {
LABEL_50:
    if ((*&v23 & 0x2000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_144;
  }

LABEL_143:
  v79 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastPlayedDateTime];
  [dictionary setObject:v79 forKey:@"lastPlayedDateTime"];

  v23 = self->_has;
  if ((*&v23 & 0x2000000000) == 0)
  {
LABEL_51:
    if ((*&v23 & 0x4000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_145;
  }

LABEL_144:
  v80 = [MEMORY[0x277CCABB0] numberWithInt:self->_skipCount];
  [dictionary setObject:v80 forKey:@"skipCount"];

  v23 = self->_has;
  if ((*&v23 & 0x4000000000) == 0)
  {
LABEL_52:
    if ((*&v23 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_146;
  }

LABEL_145:
  v81 = [MEMORY[0x277CCABB0] numberWithInt:self->_skipCountDelta];
  [dictionary setObject:v81 forKey:@"skipCountDelta"];

  v23 = self->_has;
  if ((*&v23 & 0x800) == 0)
  {
LABEL_53:
    if ((*&v23 & 0x8000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_147;
  }

LABEL_146:
  v82 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastSkippedDateTime];
  [dictionary setObject:v82 forKey:@"lastSkippedDateTime"];

  v23 = self->_has;
  if ((*&v23 & 0x8000000000000) == 0)
  {
LABEL_54:
    if ((*&v23 & 4) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_148;
  }

LABEL_147:
  v83 = [MEMORY[0x277CCABB0] numberWithBool:self->_rememberBookmark];
  [dictionary setObject:v83 forKey:@"rememberBookmark"];

  v23 = self->_has;
  if ((*&v23 & 4) == 0)
  {
LABEL_55:
    if ((*&v23 & 0x200000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_149;
  }

LABEL_148:
  v84 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_bookmarkTimeMilliseconds];
  [dictionary setObject:v84 forKey:@"bookmarkTimeMilliseconds"];

  v23 = self->_has;
  if ((*&v23 & 0x200000000000) == 0)
  {
LABEL_56:
    if ((*&v23 & 0x100000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_150;
  }

LABEL_149:
  v85 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidden];
  [dictionary setObject:v85 forKey:@"hidden"];

  v23 = self->_has;
  if ((*&v23 & 0x100000) == 0)
  {
LABEL_57:
    if ((*&v23 & 0x100000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_150:
  v86 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_storePlaylistId];
  [dictionary setObject:v86 forKey:@"storePlaylistId"];

  if ((*&self->_has & 0x100000000000) != 0)
  {
LABEL_58:
    v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasLocalAsset];
    [dictionary setObject:v24 forKey:@"hasLocalAsset"];
  }

LABEL_59:
  grouping = self->_grouping;
  if (grouping)
  {
    [dictionary setObject:grouping forKey:@"grouping"];
  }

  v26 = self->_has;
  if ((*&v26 & 0x40000000) != 0)
  {
    v87 = [MEMORY[0x277CCABB0] numberWithInt:self->_likedState];
    [dictionary setObject:v87 forKey:@"likedState"];

    v26 = self->_has;
    if ((*&v26 & 0x4000000000000) == 0)
    {
LABEL_63:
      if ((*&v26 & 0x2000000000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_154;
    }
  }

  else if ((*&v26 & 0x4000000000000) == 0)
  {
    goto LABEL_63;
  }

  v88 = [MEMORY[0x277CCABB0] numberWithBool:self->_needsReporting];
  [dictionary setObject:v88 forKey:@"needsReporting"];

  v26 = self->_has;
  if ((*&v26 & 0x2000000000000) == 0)
  {
LABEL_64:
    if ((*&v26 & 0x800000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_155;
  }

LABEL_154:
  v89 = [MEMORY[0x277CCABB0] numberWithBool:self->_likedStateChanged];
  [dictionary setObject:v89 forKey:@"likedStateChanged"];

  v26 = self->_has;
  if ((*&v26 & 0x800000000000) == 0)
  {
LABEL_65:
    if ((*&v26 & 0x20000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_156;
  }

LABEL_155:
  v90 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInUsersLibrary];
  [dictionary setObject:v90 forKey:@"isInUsersLibrary"];

  v26 = self->_has;
  if ((*&v26 & 0x20000000000) == 0)
  {
LABEL_66:
    if ((*&v26 & 0x8000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_157;
  }

LABEL_156:
  v91 = [MEMORY[0x277CCABB0] numberWithBool:self->_cloudAssetAvailable];
  [dictionary setObject:v91 forKey:@"cloudAssetAvailable"];

  v26 = self->_has;
  if ((*&v26 & 0x8000000000) == 0)
  {
LABEL_67:
    if ((*&v26 & 0x10000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_158;
  }

LABEL_157:
  v92 = [MEMORY[0x277CCABB0] numberWithInt:self->_storeProtectionType];
  [dictionary setObject:v92 forKey:@"storeProtectionType"];

  v26 = self->_has;
  if ((*&v26 & 0x10000000000000) == 0)
  {
LABEL_68:
    if ((*&v26 & 0x1000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_159;
  }

LABEL_158:
  v93 = [MEMORY[0x277CCABB0] numberWithBool:self->_userDisabled];
  [dictionary setObject:v93 forKey:@"userDisabled"];

  v26 = self->_has;
  if ((*&v26 & 0x1000000) == 0)
  {
LABEL_69:
    if ((*&v26 & 0x400000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_160;
  }

LABEL_159:
  v94 = [MEMORY[0x277CCABB0] numberWithInt:self->_cloudPlaybackEndpointType];
  [dictionary setObject:v94 forKey:@"cloudPlaybackEndpointType"];

  v26 = self->_has;
  if ((*&v26 & 0x400000000) == 0)
  {
LABEL_70:
    if ((*&v26 & 0x800000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_161;
  }

LABEL_160:
  v95 = [MEMORY[0x277CCABB0] numberWithInt:self->_playbackEndpointType];
  [dictionary setObject:v95 forKey:@"playbackEndpointType"];

  v26 = self->_has;
  if ((*&v26 & 0x800000) == 0)
  {
LABEL_71:
    if ((*&v26 & 0x400000000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_162;
  }

LABEL_161:
  v96 = [MEMORY[0x277CCABB0] numberWithInt:self->_cloudMatchedStatus];
  [dictionary setObject:v96 forKey:@"cloudMatchedStatus"];

  v26 = self->_has;
  if ((*&v26 & 0x400000000000) == 0)
  {
LABEL_72:
    if ((*&v26 & 0x1000000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_162:
  v97 = [MEMORY[0x277CCABB0] numberWithBool:self->_inUsersCloudLibrary];
  [dictionary setObject:v97 forKey:@"inUsersCloudLibrary"];

  if ((*&self->_has & 0x1000000000) != 0)
  {
LABEL_73:
    v27 = [MEMORY[0x277CCABB0] numberWithInt:self->_secondaryArtworkSourceType];
    [dictionary setObject:v27 forKey:@"secondaryArtworkSourceType"];
  }

LABEL_74:
  secondaryArtworkId = self->_secondaryArtworkId;
  if (secondaryArtworkId)
  {
    [dictionary setObject:secondaryArtworkId forKey:@"secondaryArtworkId"];
  }

  if ((*(&self->_has + 5) & 8) != 0)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasChapterData];
    [dictionary setObject:v29 forKey:@"hasChapterData"];
  }

  flattenedChapterData = self->_flattenedChapterData;
  if (flattenedChapterData)
  {
    [dictionary setObject:flattenedChapterData forKey:@"flattenedChapterData"];
  }

  v31 = self->_has;
  if ((*&v31 & 0x1000000000000) != 0)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPreorder];
    [dictionary setObject:v32 forKey:@"isPreorder"];

    v31 = self->_has;
  }

  if ((*&v31 & 0x1000) != 0)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_likedStateChangedDate];
    [dictionary setObject:v33 forKey:@"likedStateChangedDate"];
  }

  if ([(NSMutableArray *)self->_libraryIdentifiers count])
  {
    v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_libraryIdentifiers, "count")}];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v35 = self->_libraryIdentifiers;
    v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v102 objects:v106 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v103;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v103 != v38)
          {
            objc_enumerationMutation(v35);
          }

          dictionaryRepresentation = [*(*(&v102 + 1) + 8 * i) dictionaryRepresentation];
          [v34 addObject:dictionaryRepresentation];
        }

        v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v102 objects:v106 count:16];
      }

      while (v37);
    }

    [dictionary setObject:v34 forKey:@"libraryIdentifiers"];
  }

  v41 = self->_has;
  if ((*&v41 & 0x80000) != 0)
  {
    v98 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_storeId];
    [dictionary setObject:v98 forKey:@"storeId"];

    v41 = self->_has;
    if ((*&v41 & 0x200000) == 0)
    {
LABEL_95:
      if ((*&v41 & 1) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_166;
    }
  }

  else if ((*&v41 & 0x200000) == 0)
  {
    goto LABEL_95;
  }

  v99 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_storefrontId];
  [dictionary setObject:v99 forKey:@"storefrontId"];

  v41 = self->_has;
  if ((*&v41 & 1) == 0)
  {
LABEL_96:
    if ((*&v41 & 0x8000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_167;
  }

LABEL_166:
  v100 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_accountId];
  [dictionary setObject:v100 forKey:@"accountId"];

  v41 = self->_has;
  if ((*&v41 & 0x8000) == 0)
  {
LABEL_97:
    if ((*&v41 & 0x800000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_167:
  v101 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_purchaseHistoryId];
  [dictionary setObject:v101 forKey:@"purchaseHistoryId"];

  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_98:
    v42 = [MEMORY[0x277CCABB0] numberWithInt:self->_purchaseHistoryToken];
    [dictionary setObject:v42 forKey:@"purchaseHistoryToken"];
  }

LABEL_99:
  purchaseHistoryRedownloadParams = self->_purchaseHistoryRedownloadParams;
  if (purchaseHistoryRedownloadParams)
  {
    [dictionary setObject:purchaseHistoryRedownloadParams forKey:@"purchaseHistoryRedownloadParams"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v44 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sagaId];
    [dictionary setObject:v44 forKey:@"sagaId"];
  }

  sagaRedownloadParams = self->_sagaRedownloadParams;
  if (sagaRedownloadParams)
  {
    [dictionary setObject:sagaRedownloadParams forKey:@"sagaRedownloadParams"];
  }

  storeXID = self->_storeXID;
  if (storeXID)
  {
    [dictionary setObject:storeXID forKey:@"storeXID"];
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    v47 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_subscriptionStoreItemId];
    [dictionary setObject:v47 forKey:@"subscriptionStoreItemId"];
  }

  cloudUniversalLibraryId = self->_cloudUniversalLibraryId;
  if (cloudUniversalLibraryId)
  {
    [dictionary setObject:cloudUniversalLibraryId forKey:@"cloudUniversalLibraryId"];
  }

  v49 = self->_has;
  if ((*&v49 & 0x20000) != 0)
  {
    v50 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_reportingStoreItemId];
    [dictionary setObject:v50 forKey:@"reportingStoreItemId"];

    v49 = self->_has;
  }

  if ((*&v49 & 2) != 0)
  {
    v51 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_assetStoreItemId];
    [dictionary setObject:v51 forKey:@"assetStoreItemId"];
  }

  song = self->_song;
  if (song)
  {
    dictionaryRepresentation2 = [(MIPSong *)song dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"song"];
  }

  movie = self->_movie;
  if (movie)
  {
    dictionaryRepresentation3 = [(MIPMovie *)movie dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"movie"];
  }

  tvShow = self->_tvShow;
  if (tvShow)
  {
    dictionaryRepresentation4 = [(MIPTVShow *)tvShow dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"tvShow"];
  }

  podcast = self->_podcast;
  if (podcast)
  {
    dictionaryRepresentation5 = [(MIPPodcast *)podcast dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"podcast"];
  }

  audiobook = self->_audiobook;
  if (audiobook)
  {
    dictionaryRepresentation6 = [(MIPAudiobook *)audiobook dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"audiobook"];
  }

  v62 = dictionary;

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPMediaItem;
  v4 = [(MIPMediaItem *)&v8 description];
  dictionaryRepresentation = [(MIPMediaItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasAssetStoreItemId:(BOOL)id
{
  v3 = 2;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasReportingStoreItemId:(BOOL)id
{
  v3 = 0x20000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasSubscriptionStoreItemId:(BOOL)id
{
  v3 = 0x400000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasSagaId:(BOOL)id
{
  v3 = 0x40000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasPurchaseHistoryToken:(BOOL)token
{
  v3 = 0x800000000;
  if (!token)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasPurchaseHistoryId:(BOOL)id
{
  v3 = 0x8000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasStorefrontId:(BOOL)id
{
  v3 = 0x200000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasStoreId:(BOOL)id
{
  v3 = 0x80000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)addLibraryIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  libraryIdentifiers = self->_libraryIdentifiers;
  v8 = identifiersCopy;
  if (!libraryIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_libraryIdentifiers;
    self->_libraryIdentifiers = v6;

    identifiersCopy = v8;
    libraryIdentifiers = self->_libraryIdentifiers;
  }

  [(NSMutableArray *)libraryIdentifiers addObject:identifiersCopy];
}

- (void)setHasLikedStateChangedDate:(BOOL)date
{
  v3 = 4096;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasIsPreorder:(BOOL)preorder
{
  v3 = 0x1000000000000;
  if (!preorder)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasHasChapterData:(BOOL)data
{
  v3 = 0x80000000000;
  if (!data)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasSecondaryArtworkSourceType:(BOOL)type
{
  v3 = 0x1000000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasInUsersCloudLibrary:(BOOL)library
{
  v3 = 0x400000000000;
  if (!library)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasCloudMatchedStatus:(BOOL)status
{
  v3 = 0x800000;
  if (!status)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasPlaybackEndpointType:(BOOL)type
{
  v3 = 0x400000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasCloudPlaybackEndpointType:(BOOL)type
{
  v3 = 0x1000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasUserDisabled:(BOOL)disabled
{
  v3 = 0x10000000000000;
  if (!disabled)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3);
}

- (void)setHasStoreProtectionType:(BOOL)type
{
  v3 = 0x8000000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasCloudAssetAvailable:(BOOL)available
{
  v3 = 0x20000000000;
  if (!available)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasIsInUsersLibrary:(BOOL)library
{
  v3 = 0x800000000000;
  if (!library)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasLikedStateChanged:(BOOL)changed
{
  v3 = 0x2000000000000;
  if (!changed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (void)setHasNeedsReporting:(BOOL)reporting
{
  v3 = 0x4000000000000;
  if (!reporting)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (void)setHasLikedState:(BOOL)state
{
  v3 = 0x40000000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasHasLocalAsset:(BOOL)asset
{
  v3 = 0x100000000000;
  if (!asset)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasStorePlaylistId:(BOOL)id
{
  v3 = 0x100000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasHidden:(BOOL)hidden
{
  v3 = 0x200000000000;
  if (!hidden)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasBookmarkTimeMilliseconds:(BOOL)milliseconds
{
  v3 = 4;
  if (!milliseconds)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasRememberBookmark:(BOOL)bookmark
{
  v3 = 0x8000000000000;
  if (!bookmark)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3);
}

- (void)setHasLastSkippedDateTime:(BOOL)time
{
  v3 = 2048;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasSkipCountDelta:(BOOL)delta
{
  v3 = 0x4000000000;
  if (!delta)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasSkipCount:(BOOL)count
{
  v3 = 0x2000000000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasLastPlayedDateTime:(BOOL)time
{
  v3 = 1024;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasPlayCountDelta:(BOOL)delta
{
  v3 = 0x200000000;
  if (!delta)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasPlayCount:(BOOL)count
{
  v3 = 0x100000000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasCloudStatus:(BOOL)status
{
  v3 = 0x2000000;
  if (!status)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasPurchaseDateTime:(BOOL)time
{
  v3 = 0x4000;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasDrmKey2IdCode:(BOOL)code
{
  v3 = 32;
  if (!code)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasDrmKey1IdCode:(BOOL)code
{
  v3 = 16;
  if (!code)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasDrmPlatformIdCode:(BOOL)code
{
  v3 = 64;
  if (!code)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasDrmVersionsCode:(BOOL)code
{
  v3 = 0x10000000;
  if (!code)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasFamilyAccountId:(BOOL)id
{
  v3 = 256;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasFileKind:(BOOL)kind
{
  v3 = 0x20000000;
  if (!kind)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasContentRatingLevel:(BOOL)level
{
  v3 = 0x8000000;
  if (!level)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasYear:(BOOL)year
{
  v3 = 0x10000000000;
  if (!year)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasExplicitContent:(BOOL)content
{
  v3 = 0x40000000000;
  if (!content)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasContentRating:(BOOL)rating
{
  v3 = 0x4000000;
  if (!rating)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasDuration:(BOOL)duration
{
  v3 = 128;
  if (!duration)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasFileSize:(BOOL)size
{
  v3 = 512;
  if (!size)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasModificationDateTime:(BOOL)time
{
  v3 = 0x2000;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasCreationDateTime:(BOOL)time
{
  v3 = 8;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasReleaseDateTime:(BOOL)time
{
  v3 = 0x10000;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (int)StringAsMediaType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Song"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Movie"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"TVShow"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Podcast"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"VoiceMemo"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"VideoPodcast"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"MusicVideo"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"AudioBook"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"DigitalBooklet"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"ITunesUAudio"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"ITunesUVideo"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"HomeVideo"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"MusicQuiz"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)mediaTypeAsString:(int)string
{
  if ((string - 1) >= 0xD)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278765FD8[string - 1];
  }

  return v4;
}

- (void)setHasMediaType:(BOOL)type
{
  v3 = 0x80000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (int)mediaType
{
  if ((*(&self->_has + 3) & 0x80) != 0)
  {
    return self->_mediaType;
  }

  else
  {
    return 1;
  }
}

@end