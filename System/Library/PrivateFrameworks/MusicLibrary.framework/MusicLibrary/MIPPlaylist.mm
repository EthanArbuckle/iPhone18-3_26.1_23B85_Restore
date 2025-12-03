@interface MIPPlaylist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sortTypeAsString:(int)string;
- (id)typeAsString:(int)string;
- (int)StringAsSortType:(id)type;
- (int)StringAsType:(id)type;
- (int)sortType;
- (int)type;
- (unint64_t)hash;
- (void)addChildIdentifiers:(id)identifiers;
- (void)addItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCloudIsCuratorPlaylist:(BOOL)playlist;
- (void)setHasCloudIsSharingDisabled:(BOOL)disabled;
- (void)setHasCloudIsSubscribed:(BOOL)subscribed;
- (void)setHasCloudLastUpdateTime:(BOOL)time;
- (void)setHasCollaborationInvitationURLExpirationDate:(BOOL)date;
- (void)setHasCollaborationJoinRequestPending:(BOOL)pending;
- (void)setHasCollaborationMode:(BOOL)mode;
- (void)setHasCollaboratorStatus:(BOOL)status;
- (void)setHasCreationDateTime:(BOOL)time;
- (void)setHasDistinguishedKind:(BOOL)kind;
- (void)setHasEditable:(BOOL)editable;
- (void)setHasExternalVendorPlaylist:(BOOL)playlist;
- (void)setHasHidden:(BOOL)hidden;
- (void)setHasIsCollaborative:(BOOL)collaborative;
- (void)setHasLastPlayedDateTime:(BOOL)time;
- (void)setHasLikedState:(BOOL)state;
- (void)setHasLikedStateChangedDate:(BOOL)date;
- (void)setHasMinRefreshInterval:(BOOL)interval;
- (void)setHasModificationDateTime:(BOOL)time;
- (void)setHasOwner:(BOOL)owner;
- (void)setHasPlayCount:(BOOL)count;
- (void)setHasPlaylistCategoryTypeMask:(BOOL)mask;
- (void)setHasRemoteSourceType:(BOOL)type;
- (void)setHasReversedSorting:(BOOL)sorting;
- (void)setHasSecondaryArtworkSourceType:(BOOL)type;
- (void)setHasShared:(BOOL)shared;
- (void)setHasSortType:(BOOL)type;
- (void)setHasStoreId:(BOOL)id;
- (void)setHasSubscriberCount:(BOOL)count;
- (void)setHasSubscriberLikedCount:(BOOL)count;
- (void)setHasSubscriberPlayCount:(BOOL)count;
- (void)setHasTraits:(BOOL)traits;
- (void)setHasType:(BOOL)type;
- (void)setHasVisible:(BOOL)visible;
- (void)writeTo:(id)to;
@end

@implementation MIPPlaylist

- (void)mergeFrom:(id)from
{
  v40 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 28))
  {
    [(MIPPlaylist *)self setName:?];
  }

  v5 = *(fromCopy + 340);
  if ((v5 & 0x100) != 0)
  {
    self->_storeId = *(fromCopy + 9);
    *&self->_has |= 0x100uLL;
    v5 = *(fromCopy + 340);
    if ((v5 & 0x400000) == 0)
    {
LABEL_5:
      if ((v5 & 0x20000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v5 & 0x400000) == 0)
  {
    goto LABEL_5;
  }

  self->_type = *(fromCopy + 81);
  *&self->_has |= 0x400000uLL;
  if ((*(fromCopy + 340) & 0x20000000) != 0)
  {
LABEL_6:
    self->_hidden = fromCopy[334];
    *&self->_has |= 0x20000000uLL;
  }

LABEL_7:
  smartPlaylistInfo = self->_smartPlaylistInfo;
  v7 = *(fromCopy + 36);
  if (smartPlaylistInfo)
  {
    if (v7)
    {
      [(MIPSmartPlaylistInfo *)smartPlaylistInfo mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(MIPPlaylist *)self setSmartPlaylistInfo:?];
  }

  v8 = *(fromCopy + 340);
  if ((v8 & 0x20000) != 0)
  {
    self->_sortType = *(fromCopy + 74);
    *&self->_has |= 0x20000uLL;
    v8 = *(fromCopy + 340);
  }

  if ((v8 & 0x100000000) != 0)
  {
    self->_reversedSorting = fromCopy[337];
    *&self->_has |= 0x100000000uLL;
  }

  parentIdentifier = self->_parentIdentifier;
  v10 = *(fromCopy + 29);
  if (parentIdentifier)
  {
    if (v10)
    {
      [(MIPMultiverseIdentifier *)parentIdentifier mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(MIPPlaylist *)self setParentIdentifier:?];
  }

  geniusSeedTrackIdentifier = self->_geniusSeedTrackIdentifier;
  v12 = *(fromCopy + 25);
  if (geniusSeedTrackIdentifier)
  {
    if (v12)
    {
      [(MIPMultiverseIdentifier *)geniusSeedTrackIdentifier mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(MIPPlaylist *)self setGeniusSeedTrackIdentifier:?];
  }

  if ((fromCopy[341] & 8) != 0)
  {
    self->_distinguishedKind = *(fromCopy + 42);
    *&self->_has |= 0x800uLL;
  }

  if (*(fromCopy + 15))
  {
    [(MIPPlaylist *)self setCloudGlobalId:?];
  }

  v13 = *(fromCopy + 340);
  if ((v13 & 0x2000000) != 0)
  {
    self->_cloudIsSubscribed = fromCopy[330];
    *&self->_has |= 0x2000000uLL;
    v13 = *(fromCopy + 340);
  }

  if ((v13 & 0x800000) != 0)
  {
    self->_cloudIsCuratorPlaylist = fromCopy[328];
    *&self->_has |= 0x800000uLL;
  }

  if (*(fromCopy + 23))
  {
    [(MIPPlaylist *)self setExternalVendorIdentifier:?];
  }

  if (*(fromCopy + 22))
  {
    [(MIPPlaylist *)self setExternalVendorDisplayName:?];
  }

  if (*(fromCopy + 24))
  {
    [(MIPPlaylist *)self setExternalVendorTag:?];
  }

  v14 = *(fromCopy + 340);
  if ((v14 & 0x10000000) != 0)
  {
    self->_externalVendorPlaylist = fromCopy[333];
    *&self->_has |= 0x10000000uLL;
    v14 = *(fromCopy + 340);
    if ((v14 & 8) == 0)
    {
LABEL_45:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_121;
    }
  }

  else if ((v14 & 8) == 0)
  {
    goto LABEL_45;
  }

  self->_creationDateTime = *(fromCopy + 4);
  *&self->_has |= 8uLL;
  v14 = *(fromCopy + 340);
  if ((v14 & 0x80) == 0)
  {
LABEL_46:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_122;
  }

LABEL_121:
  self->_modificationDateTime = *(fromCopy + 8);
  *&self->_has |= 0x80uLL;
  v14 = *(fromCopy + 340);
  if ((v14 & 0x10) == 0)
  {
LABEL_47:
    if ((v14 & 0x1000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_122:
  self->_lastPlayedDateTime = *(fromCopy + 5);
  *&self->_has |= 0x10uLL;
  if ((*(fromCopy + 340) & 0x1000000) != 0)
  {
LABEL_48:
    self->_cloudIsSharingDisabled = fromCopy[329];
    *&self->_has |= 0x1000000uLL;
  }

LABEL_49:
  if (*(fromCopy + 17))
  {
    [(MIPPlaylist *)self setCloudVersionHash:?];
  }

  if (*(fromCopy + 10))
  {
    [(MIPPlaylist *)self setArtworkId:?];
  }

  v15 = *(fromCopy + 340);
  if ((v15 & 0x1000) != 0)
  {
    self->_likedState = *(fromCopy + 54);
    *&self->_has |= 0x1000uLL;
    v15 = *(fromCopy + 340);
    if ((v15 & 0x8000) == 0)
    {
LABEL_55:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_126;
    }
  }

  else if ((v15 & 0x8000) == 0)
  {
    goto LABEL_55;
  }

  self->_remoteSourceType = *(fromCopy + 66);
  *&self->_has |= 0x8000uLL;
  v15 = *(fromCopy + 340);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_56:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_127;
  }

LABEL_126:
  self->_owner = fromCopy[336];
  *&self->_has |= 0x80000000uLL;
  v15 = *(fromCopy + 340);
  if ((v15 & 0x8000000) == 0)
  {
LABEL_57:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_128;
  }

LABEL_127:
  self->_editable = fromCopy[332];
  *&self->_has |= 0x8000000uLL;
  v15 = *(fromCopy + 340);
  if ((v15 & 0x2000) == 0)
  {
LABEL_58:
    if ((v15 & 0x200000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_129;
  }

LABEL_128:
  self->_playCount = *(fromCopy + 60);
  *&self->_has |= 0x2000uLL;
  v15 = *(fromCopy + 340);
  if ((v15 & 0x200000000) == 0)
  {
LABEL_59:
    if ((v15 & 0x400000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_130;
  }

LABEL_129:
  self->_shared = fromCopy[338];
  *&self->_has |= 0x200000000uLL;
  v15 = *(fromCopy + 340);
  if ((v15 & 0x400000000) == 0)
  {
LABEL_60:
    if ((v15 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_130:
  self->_visible = fromCopy[339];
  *&self->_has |= 0x400000000uLL;
  if (*(fromCopy + 340))
  {
LABEL_61:
    self->_authorStoreId = *(fromCopy + 1);
    *&self->_has |= 1uLL;
  }

LABEL_62:
  if (*(fromCopy + 11))
  {
    [(MIPPlaylist *)self setAuthorDisplayName:?];
  }

  if (*(fromCopy + 13))
  {
    [(MIPPlaylist *)self setAuthorStoreURL:?];
  }

  if (*(fromCopy + 12))
  {
    [(MIPPlaylist *)self setAuthorHandle:?];
  }

  v16 = *(fromCopy + 340);
  if ((v16 & 0x40) != 0)
  {
    self->_minRefreshInterval = *(fromCopy + 7);
    *&self->_has |= 0x40uLL;
    v16 = *(fromCopy + 340);
    if ((v16 & 2) == 0)
    {
LABEL_70:
      if ((v16 & 0x40000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_134;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_70;
  }

  self->_cloudLastUpdateTime = *(fromCopy + 2);
  *&self->_has |= 2uLL;
  v16 = *(fromCopy + 340);
  if ((v16 & 0x40000) == 0)
  {
LABEL_71:
    if ((v16 & 0x100000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_135;
  }

LABEL_134:
  self->_subscriberCount = *(fromCopy + 75);
  *&self->_has |= 0x40000uLL;
  v16 = *(fromCopy + 340);
  if ((v16 & 0x100000) == 0)
  {
LABEL_72:
    if ((v16 & 0x80000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_135:
  self->_subscriberPlayCount = *(fromCopy + 77);
  *&self->_has |= 0x100000uLL;
  if ((*(fromCopy + 340) & 0x80000) != 0)
  {
LABEL_73:
    self->_subscriberLikedCount = *(fromCopy + 76);
    *&self->_has |= 0x80000uLL;
  }

LABEL_74:
  if (*(fromCopy + 39))
  {
    [(MIPPlaylist *)self setSubscriberURL:?];
  }

  if (*(fromCopy + 31))
  {
    [(MIPPlaylist *)self setPlaylistDescription:?];
  }

  if (*(fromCopy + 16))
  {
    [(MIPPlaylist *)self setCloudUniversalLibraryId:?];
  }

  if (fromCopy[342])
  {
    self->_secondaryArtworkSourceType = *(fromCopy + 70);
    *&self->_has |= 0x10000uLL;
  }

  if (*(fromCopy + 34))
  {
    [(MIPPlaylist *)self setSecondaryArtworkId:?];
  }

  if ((fromCopy[341] & 0x40) != 0)
  {
    self->_playlistCategoryTypeMask = *(fromCopy + 61);
    *&self->_has |= 0x4000uLL;
  }

  if (*(fromCopy + 32))
  {
    [(MIPPlaylist *)self setPlaylistGroupingSortKey:?];
  }

  v17 = *(fromCopy + 340);
  if ((v17 & 0x20) != 0)
  {
    self->_likedStateChangedDate = *(fromCopy + 6);
    *&self->_has |= 0x20uLL;
    v17 = *(fromCopy + 340);
  }

  if ((v17 & 0x200000) != 0)
  {
    self->_traits = *(fromCopy + 80);
    *&self->_has |= 0x200000uLL;
  }

  if (*(fromCopy + 20))
  {
    [(MIPPlaylist *)self setCoverArtworkRecipe:?];
  }

  v18 = *(fromCopy + 340);
  if ((v18 & 0x40000000) != 0)
  {
    self->_isCollaborative = fromCopy[335];
    *&self->_has |= 0x40000000uLL;
    v18 = *(fromCopy + 340);
  }

  if ((v18 & 0x200) != 0)
  {
    self->_collaborationMode = *(fromCopy + 38);
    *&self->_has |= 0x200uLL;
  }

  if (*(fromCopy + 18))
  {
    [(MIPPlaylist *)self setCollaborationInvitationURL:?];
  }

  v19 = *(fromCopy + 340);
  if ((v19 & 4) != 0)
  {
    self->_collaborationInvitationURLExpirationDate = *(fromCopy + 3);
    *&self->_has |= 4uLL;
    v19 = *(fromCopy + 340);
    if ((v19 & 0x4000000) == 0)
    {
LABEL_102:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_103;
    }
  }

  else if ((v19 & 0x4000000) == 0)
  {
    goto LABEL_102;
  }

  self->_collaborationJoinRequestPending = fromCopy[331];
  *&self->_has |= 0x4000000uLL;
  if ((*(fromCopy + 340) & 0x400) != 0)
  {
LABEL_103:
    self->_collaboratorStatus = *(fromCopy + 39);
    *&self->_has |= 0x400uLL;
  }

LABEL_104:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = *(fromCopy + 14);
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(MIPPlaylist *)self addChildIdentifiers:*(*(&v34 + 1) + 8 * i)];
      }

      v22 = [v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v22);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = *(fromCopy + 26);
  v26 = [v25 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(MIPPlaylist *)self addItems:*(*(&v30 + 1) + 8 * j), v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v27);
  }
}

- (unint64_t)hash
{
  v68 = [(NSString *)self->_name hash];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
    v67 = 0;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v66 = 0;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v67 = 2654435761 * self->_storeId;
  if ((*&has & 0x400000) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v66 = 2654435761 * self->_type;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_4:
    v65 = 2654435761 * self->_hidden;
    goto LABEL_8;
  }

LABEL_7:
  v65 = 0;
LABEL_8:
  v64 = [(MIPSmartPlaylistInfo *)self->_smartPlaylistInfo hash];
  v4 = self->_has;
  if ((*&v4 & 0x20000) != 0)
  {
    v63 = 2654435761 * self->_sortType;
    if ((*&v4 & 0x100000000) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v63 = 0;
    if ((*&v4 & 0x100000000) != 0)
    {
LABEL_10:
      v62 = 2654435761 * self->_reversedSorting;
      goto LABEL_13;
    }
  }

  v62 = 0;
LABEL_13:
  v61 = [(MIPMultiverseIdentifier *)self->_parentIdentifier hash];
  v60 = [(MIPMultiverseIdentifier *)self->_geniusSeedTrackIdentifier hash];
  if ((*(&self->_has + 1) & 8) != 0)
  {
    v59 = 2654435761 * self->_distinguishedKind;
  }

  else
  {
    v59 = 0;
  }

  v58 = [(NSString *)self->_cloudGlobalId hash];
  v5 = self->_has;
  if ((*&v5 & 0x2000000) != 0)
  {
    v57 = 2654435761 * self->_cloudIsSubscribed;
    if ((*&v5 & 0x800000) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v57 = 0;
    if ((*&v5 & 0x800000) != 0)
    {
LABEL_18:
      v56 = 2654435761 * self->_cloudIsCuratorPlaylist;
      goto LABEL_21;
    }
  }

  v56 = 0;
LABEL_21:
  v55 = [(NSString *)self->_externalVendorIdentifier hash];
  v54 = [(NSString *)self->_externalVendorDisplayName hash];
  v53 = [(NSString *)self->_externalVendorTag hash];
  v6 = self->_has;
  if ((*&v6 & 0x10000000) != 0)
  {
    v52 = 2654435761 * self->_externalVendorPlaylist;
    if ((*&v6 & 8) != 0)
    {
LABEL_23:
      v51 = 2654435761 * self->_creationDateTime;
      if ((*&v6 & 0x80) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v52 = 0;
    if ((*&v6 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

  v51 = 0;
  if ((*&v6 & 0x80) != 0)
  {
LABEL_24:
    v50 = 2654435761 * self->_modificationDateTime;
    if ((*&v6 & 0x10) != 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    v49 = 0;
    if ((*&v6 & 0x1000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

LABEL_29:
  v50 = 0;
  if ((*&v6 & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  v49 = 2654435761 * self->_lastPlayedDateTime;
  if ((*&v6 & 0x1000000) != 0)
  {
LABEL_26:
    v48 = 2654435761 * self->_cloudIsSharingDisabled;
    goto LABEL_32;
  }

LABEL_31:
  v48 = 0;
LABEL_32:
  v47 = [(NSString *)self->_cloudVersionHash hash];
  v46 = [(NSString *)self->_artworkId hash];
  v7 = self->_has;
  if ((*&v7 & 0x1000) != 0)
  {
    v45 = 2654435761 * self->_likedState;
    if ((*&v7 & 0x8000) != 0)
    {
LABEL_34:
      v44 = 2654435761 * self->_remoteSourceType;
      if ((*&v7 & 0x80000000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v45 = 0;
    if ((*&v7 & 0x8000) != 0)
    {
      goto LABEL_34;
    }
  }

  v44 = 0;
  if ((*&v7 & 0x80000000) != 0)
  {
LABEL_35:
    v43 = 2654435761 * self->_owner;
    if ((*&v7 & 0x8000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

LABEL_43:
  v43 = 0;
  if ((*&v7 & 0x8000000) != 0)
  {
LABEL_36:
    v42 = 2654435761 * self->_editable;
    if ((*&v7 & 0x2000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

LABEL_44:
  v42 = 0;
  if ((*&v7 & 0x2000) != 0)
  {
LABEL_37:
    v41 = 2654435761 * self->_playCount;
    if ((*&v7 & 0x200000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

LABEL_45:
  v41 = 0;
  if ((*&v7 & 0x200000000) != 0)
  {
LABEL_38:
    v40 = 2654435761 * self->_shared;
    if ((*&v7 & 0x400000000) != 0)
    {
      goto LABEL_39;
    }

LABEL_47:
    v39 = 0;
    if (*&v7)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

LABEL_46:
  v40 = 0;
  if ((*&v7 & 0x400000000) == 0)
  {
    goto LABEL_47;
  }

LABEL_39:
  v39 = 2654435761 * self->_visible;
  if (*&v7)
  {
LABEL_40:
    v38 = 2654435761 * self->_authorStoreId;
    goto LABEL_49;
  }

LABEL_48:
  v38 = 0;
LABEL_49:
  v37 = [(NSString *)self->_authorDisplayName hash];
  v36 = [(NSString *)self->_authorStoreURL hash];
  v35 = [(NSString *)self->_authorHandle hash];
  v8 = self->_has;
  if ((*&v8 & 0x40) != 0)
  {
    v34 = 2654435761 * self->_minRefreshInterval;
    if ((*&v8 & 2) != 0)
    {
LABEL_51:
      v33 = 2654435761 * self->_cloudLastUpdateTime;
      if ((*&v8 & 0x40000) != 0)
      {
        goto LABEL_52;
      }

      goto LABEL_57;
    }
  }

  else
  {
    v34 = 0;
    if ((*&v8 & 2) != 0)
    {
      goto LABEL_51;
    }
  }

  v33 = 0;
  if ((*&v8 & 0x40000) != 0)
  {
LABEL_52:
    v32 = 2654435761 * self->_subscriberCount;
    if ((*&v8 & 0x100000) != 0)
    {
      goto LABEL_53;
    }

LABEL_58:
    v31 = 0;
    if ((*&v8 & 0x80000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

LABEL_57:
  v32 = 0;
  if ((*&v8 & 0x100000) == 0)
  {
    goto LABEL_58;
  }

LABEL_53:
  v31 = 2654435761 * self->_subscriberPlayCount;
  if ((*&v8 & 0x80000) != 0)
  {
LABEL_54:
    v30 = 2654435761 * self->_subscriberLikedCount;
    goto LABEL_60;
  }

LABEL_59:
  v30 = 0;
LABEL_60:
  v29 = [(NSString *)self->_subscriberURL hash];
  v28 = [(NSString *)self->_playlistDescription hash];
  v27 = [(NSString *)self->_cloudUniversalLibraryId hash];
  if (*(&self->_has + 2))
  {
    v26 = 2654435761 * self->_secondaryArtworkSourceType;
  }

  else
  {
    v26 = 0;
  }

  v25 = [(NSString *)self->_secondaryArtworkId hash];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v9 = 2654435761 * self->_playlistCategoryTypeMask;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_playlistGroupingSortKey hash];
  v11 = self->_has;
  if ((*&v11 & 0x20) != 0)
  {
    v12 = 2654435761 * self->_likedStateChangedDate;
    if ((*&v11 & 0x200000) != 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v12 = 0;
    if ((*&v11 & 0x200000) != 0)
    {
LABEL_68:
      v13 = 2654435761 * self->_traits;
      goto LABEL_71;
    }
  }

  v13 = 0;
LABEL_71:
  v14 = [(NSString *)self->_coverArtworkRecipe hash];
  v15 = self->_has;
  if ((*&v15 & 0x40000000) != 0)
  {
    v16 = 2654435761 * self->_isCollaborative;
    if ((*&v15 & 0x200) != 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v16 = 0;
    if ((*&v15 & 0x200) != 0)
    {
LABEL_73:
      v17 = 2654435761 * self->_collaborationMode;
      goto LABEL_76;
    }
  }

  v17 = 0;
LABEL_76:
  v18 = [(NSString *)self->_collaborationInvitationURL hash];
  v19 = self->_has;
  if ((*&v19 & 4) == 0)
  {
    v20 = 0;
    if ((*&v19 & 0x4000000) != 0)
    {
      goto LABEL_78;
    }

LABEL_81:
    v21 = 0;
    if ((*&v19 & 0x400) != 0)
    {
      goto LABEL_79;
    }

LABEL_82:
    v22 = 0;
    goto LABEL_83;
  }

  v20 = 2654435761 * self->_collaborationInvitationURLExpirationDate;
  if ((*&v19 & 0x4000000) == 0)
  {
    goto LABEL_81;
  }

LABEL_78:
  v21 = 2654435761 * self->_collaborationJoinRequestPending;
  if ((*&v19 & 0x400) == 0)
  {
    goto LABEL_82;
  }

LABEL_79:
  v22 = 2654435761 * self->_collaboratorStatus;
LABEL_83:
  v23 = v67 ^ v68 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v18 ^ v20 ^ v21 ^ v22 ^ [(NSMutableArray *)self->_childIdentifiers hash];
  return v23 ^ [(NSMutableArray *)self->_items hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  name = self->_name;
  if (name | *(equalCopy + 28))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_40;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 340);
  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_storeId != *(equalCopy + 9))
    {
      goto LABEL_40;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_40;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_type != *(equalCopy + 81))
    {
      goto LABEL_40;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_hidden)
    {
      if ((equalCopy[334] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[334])
    {
      goto LABEL_40;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_40;
  }

  smartPlaylistInfo = self->_smartPlaylistInfo;
  if (smartPlaylistInfo | *(equalCopy + 36))
  {
    if (![(MIPSmartPlaylistInfo *)smartPlaylistInfo isEqual:?])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v7 = *(equalCopy + 340);
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_sortType != *(equalCopy + 74))
    {
      goto LABEL_40;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_reversedSorting)
    {
      if ((equalCopy[337] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[337])
    {
      goto LABEL_40;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_40;
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(equalCopy + 29) && ![(MIPMultiverseIdentifier *)parentIdentifier isEqual:?])
  {
    goto LABEL_40;
  }

  geniusSeedTrackIdentifier = self->_geniusSeedTrackIdentifier;
  if (geniusSeedTrackIdentifier | *(equalCopy + 25))
  {
    if (![(MIPMultiverseIdentifier *)geniusSeedTrackIdentifier isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v11 = self->_has;
  v12 = *(equalCopy + 340);
  if ((*&v11 & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_distinguishedKind != *(equalCopy + 42))
    {
      goto LABEL_40;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_40;
  }

  cloudGlobalId = self->_cloudGlobalId;
  if (cloudGlobalId | *(equalCopy + 15))
  {
    if (![(NSString *)cloudGlobalId isEqual:?])
    {
      goto LABEL_40;
    }

    v11 = self->_has;
    v12 = *(equalCopy + 340);
  }

  if ((*&v11 & 0x2000000) != 0)
  {
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_cloudIsSubscribed)
    {
      if ((equalCopy[330] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[330])
    {
      goto LABEL_40;
    }
  }

  else if ((v12 & 0x2000000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v11 & 0x800000) != 0)
  {
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_cloudIsCuratorPlaylist)
    {
      if ((equalCopy[328] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[328])
    {
      goto LABEL_40;
    }
  }

  else if ((v12 & 0x800000) != 0)
  {
    goto LABEL_40;
  }

  externalVendorIdentifier = self->_externalVendorIdentifier;
  if (externalVendorIdentifier | *(equalCopy + 23) && ![(NSString *)externalVendorIdentifier isEqual:?])
  {
    goto LABEL_40;
  }

  externalVendorDisplayName = self->_externalVendorDisplayName;
  if (externalVendorDisplayName | *(equalCopy + 22))
  {
    if (![(NSString *)externalVendorDisplayName isEqual:?])
    {
      goto LABEL_40;
    }
  }

  externalVendorTag = self->_externalVendorTag;
  if (externalVendorTag | *(equalCopy + 24))
  {
    if (![(NSString *)externalVendorTag isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v19 = self->_has;
  v20 = *(equalCopy + 340);
  if ((*&v19 & 0x10000000) != 0)
  {
    if ((v20 & 0x10000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_externalVendorPlaylist)
    {
      if ((equalCopy[333] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[333])
    {
      goto LABEL_40;
    }
  }

  else if ((v20 & 0x10000000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v19 & 8) != 0)
  {
    if ((v20 & 8) == 0 || self->_creationDateTime != *(equalCopy + 4))
    {
      goto LABEL_40;
    }
  }

  else if ((v20 & 8) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v19 & 0x80) != 0)
  {
    if ((v20 & 0x80) == 0 || self->_modificationDateTime != *(equalCopy + 8))
    {
      goto LABEL_40;
    }
  }

  else if ((v20 & 0x80) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v19 & 0x10) != 0)
  {
    if ((v20 & 0x10) == 0 || self->_lastPlayedDateTime != *(equalCopy + 5))
    {
      goto LABEL_40;
    }
  }

  else if ((v20 & 0x10) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v19 & 0x1000000) != 0)
  {
    if ((v20 & 0x1000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_cloudIsSharingDisabled)
    {
      if ((equalCopy[329] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[329])
    {
      goto LABEL_40;
    }
  }

  else if ((v20 & 0x1000000) != 0)
  {
    goto LABEL_40;
  }

  cloudVersionHash = self->_cloudVersionHash;
  if (cloudVersionHash | *(equalCopy + 17) && ![(NSString *)cloudVersionHash isEqual:?])
  {
    goto LABEL_40;
  }

  artworkId = self->_artworkId;
  if (artworkId | *(equalCopy + 10))
  {
    if (![(NSString *)artworkId isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v23 = self->_has;
  v24 = *(equalCopy + 340);
  if ((*&v23 & 0x1000) != 0)
  {
    if ((v24 & 0x1000) == 0 || self->_likedState != *(equalCopy + 54))
    {
      goto LABEL_40;
    }
  }

  else if ((v24 & 0x1000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v23 & 0x8000) != 0)
  {
    if ((v24 & 0x8000) == 0 || self->_remoteSourceType != *(equalCopy + 66))
    {
      goto LABEL_40;
    }
  }

  else if ((v24 & 0x8000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v23 & 0x80000000) != 0)
  {
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_owner)
    {
      if ((equalCopy[336] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[336])
    {
      goto LABEL_40;
    }
  }

  else if ((v24 & 0x80000000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v23 & 0x8000000) != 0)
  {
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_editable)
    {
      if ((equalCopy[332] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[332])
    {
      goto LABEL_40;
    }
  }

  else if ((v24 & 0x8000000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v23 & 0x2000) != 0)
  {
    if ((v24 & 0x2000) == 0 || self->_playCount != *(equalCopy + 60))
    {
      goto LABEL_40;
    }
  }

  else if ((v24 & 0x2000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v23 & 0x200000000) != 0)
  {
    if ((v24 & 0x200000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_shared)
    {
      if ((equalCopy[338] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[338])
    {
      goto LABEL_40;
    }
  }

  else if ((v24 & 0x200000000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v23 & 0x400000000) != 0)
  {
    if ((v24 & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_visible)
    {
      if ((equalCopy[339] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[339])
    {
      goto LABEL_40;
    }
  }

  else if ((v24 & 0x400000000) != 0)
  {
    goto LABEL_40;
  }

  if (*&v23)
  {
    if ((v24 & 1) == 0 || self->_authorStoreId != *(equalCopy + 1))
    {
      goto LABEL_40;
    }
  }

  else if (v24)
  {
    goto LABEL_40;
  }

  authorDisplayName = self->_authorDisplayName;
  if (authorDisplayName | *(equalCopy + 11) && ![(NSString *)authorDisplayName isEqual:?])
  {
    goto LABEL_40;
  }

  authorStoreURL = self->_authorStoreURL;
  if (authorStoreURL | *(equalCopy + 13))
  {
    if (![(NSString *)authorStoreURL isEqual:?])
    {
      goto LABEL_40;
    }
  }

  authorHandle = self->_authorHandle;
  if (authorHandle | *(equalCopy + 12))
  {
    if (![(NSString *)authorHandle isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v28 = self->_has;
  v29 = *(equalCopy + 340);
  if ((*&v28 & 0x40) != 0)
  {
    if ((v29 & 0x40) == 0 || self->_minRefreshInterval != *(equalCopy + 7))
    {
      goto LABEL_40;
    }
  }

  else if ((v29 & 0x40) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v28 & 2) != 0)
  {
    if ((v29 & 2) == 0 || self->_cloudLastUpdateTime != *(equalCopy + 2))
    {
      goto LABEL_40;
    }
  }

  else if ((v29 & 2) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v28 & 0x40000) != 0)
  {
    if ((v29 & 0x40000) == 0 || self->_subscriberCount != *(equalCopy + 75))
    {
      goto LABEL_40;
    }
  }

  else if ((v29 & 0x40000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v28 & 0x100000) != 0)
  {
    if ((v29 & 0x100000) == 0 || self->_subscriberPlayCount != *(equalCopy + 77))
    {
      goto LABEL_40;
    }
  }

  else if ((v29 & 0x100000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v28 & 0x80000) != 0)
  {
    if ((v29 & 0x80000) == 0 || self->_subscriberLikedCount != *(equalCopy + 76))
    {
      goto LABEL_40;
    }
  }

  else if ((v29 & 0x80000) != 0)
  {
    goto LABEL_40;
  }

  subscriberURL = self->_subscriberURL;
  if (subscriberURL | *(equalCopy + 39) && ![(NSString *)subscriberURL isEqual:?])
  {
    goto LABEL_40;
  }

  playlistDescription = self->_playlistDescription;
  if (playlistDescription | *(equalCopy + 31))
  {
    if (![(NSString *)playlistDescription isEqual:?])
    {
      goto LABEL_40;
    }
  }

  cloudUniversalLibraryId = self->_cloudUniversalLibraryId;
  if (cloudUniversalLibraryId | *(equalCopy + 16))
  {
    if (![(NSString *)cloudUniversalLibraryId isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v33 = self->_has;
  v34 = *(equalCopy + 340);
  if ((*&v33 & 0x10000) != 0)
  {
    if ((v34 & 0x10000) == 0 || self->_secondaryArtworkSourceType != *(equalCopy + 70))
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x10000) != 0)
  {
    goto LABEL_40;
  }

  secondaryArtworkId = self->_secondaryArtworkId;
  if (secondaryArtworkId | *(equalCopy + 34))
  {
    if (![(NSString *)secondaryArtworkId isEqual:?])
    {
      goto LABEL_40;
    }

    v33 = self->_has;
    v34 = *(equalCopy + 340);
  }

  if ((*&v33 & 0x4000) != 0)
  {
    if ((v34 & 0x4000) == 0 || self->_playlistCategoryTypeMask != *(equalCopy + 61))
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x4000) != 0)
  {
    goto LABEL_40;
  }

  playlistGroupingSortKey = self->_playlistGroupingSortKey;
  if (playlistGroupingSortKey | *(equalCopy + 32))
  {
    if (![(NSString *)playlistGroupingSortKey isEqual:?])
    {
      goto LABEL_40;
    }

    v33 = self->_has;
    v34 = *(equalCopy + 340);
  }

  if ((*&v33 & 0x20) != 0)
  {
    if ((v34 & 0x20) == 0 || self->_likedStateChangedDate != *(equalCopy + 6))
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x20) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v33 & 0x200000) != 0)
  {
    if ((v34 & 0x200000) == 0 || self->_traits != *(equalCopy + 80))
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x200000) != 0)
  {
    goto LABEL_40;
  }

  coverArtworkRecipe = self->_coverArtworkRecipe;
  if (coverArtworkRecipe | *(equalCopy + 20))
  {
    if (![(NSString *)coverArtworkRecipe isEqual:?])
    {
      goto LABEL_40;
    }

    v33 = self->_has;
    v34 = *(equalCopy + 340);
  }

  if ((*&v33 & 0x40000000) != 0)
  {
    if ((v34 & 0x40000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_isCollaborative)
    {
      if ((equalCopy[335] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[335])
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x40000000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v33 & 0x200) != 0)
  {
    if ((v34 & 0x200) == 0 || self->_collaborationMode != *(equalCopy + 38))
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x200) != 0)
  {
    goto LABEL_40;
  }

  collaborationInvitationURL = self->_collaborationInvitationURL;
  if (collaborationInvitationURL | *(equalCopy + 18))
  {
    if (![(NSString *)collaborationInvitationURL isEqual:?])
    {
      goto LABEL_40;
    }

    v33 = self->_has;
    v34 = *(equalCopy + 340);
  }

  if ((*&v33 & 4) != 0)
  {
    if ((v34 & 4) == 0 || self->_collaborationInvitationURLExpirationDate != *(equalCopy + 3))
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 4) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v33 & 0x4000000) != 0)
  {
    if ((v34 & 0x4000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_collaborationJoinRequestPending)
    {
      if ((equalCopy[331] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (equalCopy[331])
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x4000000) != 0)
  {
    goto LABEL_40;
  }

  if ((*&v33 & 0x400) == 0)
  {
    if ((v34 & 0x400) == 0)
    {
      goto LABEL_261;
    }

LABEL_40:
    v13 = 0;
    goto LABEL_41;
  }

  if ((v34 & 0x400) == 0 || self->_collaboratorStatus != *(equalCopy + 39))
  {
    goto LABEL_40;
  }

LABEL_261:
  childIdentifiers = self->_childIdentifiers;
  if (childIdentifiers | *(equalCopy + 14) && ![(NSMutableArray *)childIdentifiers isEqual:?])
  {
    goto LABEL_40;
  }

  items = self->_items;
  if (items | *(equalCopy + 26))
  {
    v13 = [(NSMutableArray *)items isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_41:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 224);
  *(v5 + 224) = v6;

  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    *(v5 + 72) = self->_storeId;
    *(v5 + 340) |= 0x100uLL;
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 324) = self->_type;
  *(v5 + 340) |= 0x400000uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_4:
    *(v5 + 334) = self->_hidden;
    *(v5 + 340) |= 0x20000000uLL;
  }

LABEL_5:
  v9 = [(MIPSmartPlaylistInfo *)self->_smartPlaylistInfo copyWithZone:zone];
  v10 = *(v5 + 288);
  *(v5 + 288) = v9;

  v11 = self->_has;
  if ((*&v11 & 0x20000) != 0)
  {
    *(v5 + 296) = self->_sortType;
    *(v5 + 340) |= 0x20000uLL;
    v11 = self->_has;
  }

  if ((*&v11 & 0x100000000) != 0)
  {
    *(v5 + 337) = self->_reversedSorting;
    *(v5 + 340) |= 0x100000000uLL;
  }

  v12 = [(MIPMultiverseIdentifier *)self->_parentIdentifier copyWithZone:zone];
  v13 = *(v5 + 232);
  *(v5 + 232) = v12;

  v14 = [(MIPMultiverseIdentifier *)self->_geniusSeedTrackIdentifier copyWithZone:zone];
  v15 = *(v5 + 200);
  *(v5 + 200) = v14;

  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(v5 + 168) = self->_distinguishedKind;
    *(v5 + 340) |= 0x800uLL;
  }

  v16 = [(NSString *)self->_cloudGlobalId copyWithZone:zone];
  v17 = *(v5 + 120);
  *(v5 + 120) = v16;

  v18 = self->_has;
  if ((*&v18 & 0x2000000) != 0)
  {
    *(v5 + 330) = self->_cloudIsSubscribed;
    *(v5 + 340) |= 0x2000000uLL;
    v18 = self->_has;
  }

  if ((*&v18 & 0x800000) != 0)
  {
    *(v5 + 328) = self->_cloudIsCuratorPlaylist;
    *(v5 + 340) |= 0x800000uLL;
  }

  v19 = [(NSString *)self->_externalVendorIdentifier copyWithZone:zone];
  v20 = *(v5 + 184);
  *(v5 + 184) = v19;

  v21 = [(NSString *)self->_externalVendorDisplayName copyWithZone:zone];
  v22 = *(v5 + 176);
  *(v5 + 176) = v21;

  v23 = [(NSString *)self->_externalVendorTag copyWithZone:zone];
  v24 = *(v5 + 192);
  *(v5 + 192) = v23;

  v25 = self->_has;
  if ((*&v25 & 0x10000000) != 0)
  {
    *(v5 + 333) = self->_externalVendorPlaylist;
    *(v5 + 340) |= 0x10000000uLL;
    v25 = self->_has;
    if ((*&v25 & 8) == 0)
    {
LABEL_17:
      if ((*&v25 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v25 & 8) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 32) = self->_creationDateTime;
  *(v5 + 340) |= 8uLL;
  v25 = self->_has;
  if ((*&v25 & 0x80) == 0)
  {
LABEL_18:
    if ((*&v25 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 64) = self->_modificationDateTime;
  *(v5 + 340) |= 0x80uLL;
  v25 = self->_has;
  if ((*&v25 & 0x10) == 0)
  {
LABEL_19:
    if ((*&v25 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_73:
  *(v5 + 40) = self->_lastPlayedDateTime;
  *(v5 + 340) |= 0x10uLL;
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_20:
    *(v5 + 329) = self->_cloudIsSharingDisabled;
    *(v5 + 340) |= 0x1000000uLL;
  }

LABEL_21:
  v26 = [(NSString *)self->_cloudVersionHash copyWithZone:zone];
  v27 = *(v5 + 136);
  *(v5 + 136) = v26;

  v28 = [(NSString *)self->_artworkId copyWithZone:zone];
  v29 = *(v5 + 80);
  *(v5 + 80) = v28;

  v30 = self->_has;
  if ((*&v30 & 0x1000) != 0)
  {
    *(v5 + 216) = self->_likedState;
    *(v5 + 340) |= 0x1000uLL;
    v30 = self->_has;
    if ((*&v30 & 0x8000) == 0)
    {
LABEL_23:
      if ((*&v30 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_77;
    }
  }

  else if ((*&v30 & 0x8000) == 0)
  {
    goto LABEL_23;
  }

  *(v5 + 264) = self->_remoteSourceType;
  *(v5 + 340) |= 0x8000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x80000000) == 0)
  {
LABEL_24:
    if ((*&v30 & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 336) = self->_owner;
  *(v5 + 340) |= 0x80000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x8000000) == 0)
  {
LABEL_25:
    if ((*&v30 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 332) = self->_editable;
  *(v5 + 340) |= 0x8000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x2000) == 0)
  {
LABEL_26:
    if ((*&v30 & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 240) = self->_playCount;
  *(v5 + 340) |= 0x2000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x200000000) == 0)
  {
LABEL_27:
    if ((*&v30 & 0x400000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v5 + 338) = self->_shared;
  *(v5 + 340) |= 0x200000000uLL;
  v30 = self->_has;
  if ((*&v30 & 0x400000000) == 0)
  {
LABEL_28:
    if ((*&v30 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_81:
  *(v5 + 339) = self->_visible;
  *(v5 + 340) |= 0x400000000uLL;
  if (*&self->_has)
  {
LABEL_29:
    *(v5 + 8) = self->_authorStoreId;
    *(v5 + 340) |= 1uLL;
  }

LABEL_30:
  v31 = [(NSString *)self->_authorDisplayName copyWithZone:zone];
  v32 = *(v5 + 88);
  *(v5 + 88) = v31;

  v33 = [(NSString *)self->_authorStoreURL copyWithZone:zone];
  v34 = *(v5 + 104);
  *(v5 + 104) = v33;

  v35 = [(NSString *)self->_authorHandle copyWithZone:zone];
  v36 = *(v5 + 96);
  *(v5 + 96) = v35;

  v37 = self->_has;
  if ((*&v37 & 0x40) != 0)
  {
    *(v5 + 56) = self->_minRefreshInterval;
    *(v5 + 340) |= 0x40uLL;
    v37 = self->_has;
    if ((*&v37 & 2) == 0)
    {
LABEL_32:
      if ((*&v37 & 0x40000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_85;
    }
  }

  else if ((*&v37 & 2) == 0)
  {
    goto LABEL_32;
  }

  *(v5 + 16) = self->_cloudLastUpdateTime;
  *(v5 + 340) |= 2uLL;
  v37 = self->_has;
  if ((*&v37 & 0x40000) == 0)
  {
LABEL_33:
    if ((*&v37 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v5 + 300) = self->_subscriberCount;
  *(v5 + 340) |= 0x40000uLL;
  v37 = self->_has;
  if ((*&v37 & 0x100000) == 0)
  {
LABEL_34:
    if ((*&v37 & 0x80000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_86:
  *(v5 + 308) = self->_subscriberPlayCount;
  *(v5 + 340) |= 0x100000uLL;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_35:
    *(v5 + 304) = self->_subscriberLikedCount;
    *(v5 + 340) |= 0x80000uLL;
  }

LABEL_36:
  v38 = [(NSString *)self->_subscriberURL copyWithZone:zone];
  v39 = *(v5 + 312);
  *(v5 + 312) = v38;

  v40 = [(NSString *)self->_playlistDescription copyWithZone:zone];
  v41 = *(v5 + 248);
  *(v5 + 248) = v40;

  v42 = [(NSString *)self->_cloudUniversalLibraryId copyWithZone:zone];
  v43 = *(v5 + 128);
  *(v5 + 128) = v42;

  if (*(&self->_has + 2))
  {
    *(v5 + 280) = self->_secondaryArtworkSourceType;
    *(v5 + 340) |= 0x10000uLL;
  }

  v44 = [(NSString *)self->_secondaryArtworkId copyWithZone:zone];
  v45 = *(v5 + 272);
  *(v5 + 272) = v44;

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v5 + 244) = self->_playlistCategoryTypeMask;
    *(v5 + 340) |= 0x4000uLL;
  }

  v46 = [(NSString *)self->_playlistGroupingSortKey copyWithZone:zone];
  v47 = *(v5 + 256);
  *(v5 + 256) = v46;

  v48 = self->_has;
  if ((*&v48 & 0x20) != 0)
  {
    *(v5 + 48) = self->_likedStateChangedDate;
    *(v5 + 340) |= 0x20uLL;
    v48 = self->_has;
  }

  if ((*&v48 & 0x200000) != 0)
  {
    *(v5 + 320) = self->_traits;
    *(v5 + 340) |= 0x200000uLL;
  }

  v49 = [(NSString *)self->_coverArtworkRecipe copyWithZone:zone];
  v50 = *(v5 + 160);
  *(v5 + 160) = v49;

  v51 = self->_has;
  if ((*&v51 & 0x40000000) != 0)
  {
    *(v5 + 335) = self->_isCollaborative;
    *(v5 + 340) |= 0x40000000uLL;
    v51 = self->_has;
  }

  if ((*&v51 & 0x200) != 0)
  {
    *(v5 + 152) = self->_collaborationMode;
    *(v5 + 340) |= 0x200uLL;
  }

  v52 = [(NSString *)self->_collaborationInvitationURL copyWithZone:zone];
  v53 = *(v5 + 144);
  *(v5 + 144) = v52;

  v54 = self->_has;
  if ((*&v54 & 4) != 0)
  {
    *(v5 + 24) = self->_collaborationInvitationURLExpirationDate;
    *(v5 + 340) |= 4uLL;
    v54 = self->_has;
    if ((*&v54 & 0x4000000) == 0)
    {
LABEL_50:
      if ((*&v54 & 0x400) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  else if ((*&v54 & 0x4000000) == 0)
  {
    goto LABEL_50;
  }

  *(v5 + 331) = self->_collaborationJoinRequestPending;
  *(v5 + 340) |= 0x4000000uLL;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_51:
    *(v5 + 156) = self->_collaboratorStatus;
    *(v5 + 340) |= 0x400uLL;
  }

LABEL_52:
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v55 = self->_childIdentifiers;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v74;
    do
    {
      v59 = 0;
      do
      {
        if (*v74 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = [*(*(&v73 + 1) + 8 * v59) copyWithZone:zone];
        [v5 addChildIdentifiers:v60];

        ++v59;
      }

      while (v57 != v59);
      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v73 objects:v78 count:16];
    }

    while (v57);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v61 = self->_items;
  v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v70;
    do
    {
      v65 = 0;
      do
      {
        if (*v70 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = [*(*(&v69 + 1) + 8 * v65) copyWithZone:{zone, v69}];
        [v5 addItems:v66];

        ++v65;
      }

      while (v63 != v65);
      v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v63);
  }

  v67 = v5;
  return v67;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v22 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v22;
  }

  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    *(toCopy + 9) = self->_storeId;
    *(toCopy + 340) |= 0x100uLL;
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_5:
      if ((*&has & 0x20000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 81) = self->_type;
  *(toCopy + 340) |= 0x400000uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_6:
    toCopy[334] = self->_hidden;
    *(toCopy + 340) |= 0x20000000uLL;
  }

LABEL_7:
  if (self->_smartPlaylistInfo)
  {
    [v22 setSmartPlaylistInfo:?];
    toCopy = v22;
  }

  v6 = self->_has;
  if ((*&v6 & 0x20000) != 0)
  {
    *(toCopy + 74) = self->_sortType;
    *(toCopy + 340) |= 0x20000uLL;
    v6 = self->_has;
  }

  if ((*&v6 & 0x100000000) != 0)
  {
    toCopy[337] = self->_reversedSorting;
    *(toCopy + 340) |= 0x100000000uLL;
  }

  if (self->_parentIdentifier)
  {
    [v22 setParentIdentifier:?];
    toCopy = v22;
  }

  if (self->_geniusSeedTrackIdentifier)
  {
    [v22 setGeniusSeedTrackIdentifier:?];
    toCopy = v22;
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(toCopy + 42) = self->_distinguishedKind;
    *(toCopy + 340) |= 0x800uLL;
  }

  if (self->_cloudGlobalId)
  {
    [v22 setCloudGlobalId:?];
    toCopy = v22;
  }

  v7 = self->_has;
  if ((*&v7 & 0x2000000) != 0)
  {
    toCopy[330] = self->_cloudIsSubscribed;
    *(toCopy + 340) |= 0x2000000uLL;
    v7 = self->_has;
  }

  if ((*&v7 & 0x800000) != 0)
  {
    toCopy[328] = self->_cloudIsCuratorPlaylist;
    *(toCopy + 340) |= 0x800000uLL;
  }

  if (self->_externalVendorIdentifier)
  {
    [v22 setExternalVendorIdentifier:?];
    toCopy = v22;
  }

  if (self->_externalVendorDisplayName)
  {
    [v22 setExternalVendorDisplayName:?];
    toCopy = v22;
  }

  if (self->_externalVendorTag)
  {
    [v22 setExternalVendorTag:?];
    toCopy = v22;
  }

  v8 = self->_has;
  if ((*&v8 & 0x10000000) != 0)
  {
    toCopy[333] = self->_externalVendorPlaylist;
    *(toCopy + 340) |= 0x10000000uLL;
    v8 = self->_has;
    if ((*&v8 & 8) == 0)
    {
LABEL_33:
      if ((*&v8 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_108;
    }
  }

  else if ((*&v8 & 8) == 0)
  {
    goto LABEL_33;
  }

  *(toCopy + 4) = self->_creationDateTime;
  *(toCopy + 340) |= 8uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80) == 0)
  {
LABEL_34:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(toCopy + 8) = self->_modificationDateTime;
  *(toCopy + 340) |= 0x80uLL;
  v8 = self->_has;
  if ((*&v8 & 0x10) == 0)
  {
LABEL_35:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_109:
  *(toCopy + 5) = self->_lastPlayedDateTime;
  *(toCopy + 340) |= 0x10uLL;
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_36:
    toCopy[329] = self->_cloudIsSharingDisabled;
    *(toCopy + 340) |= 0x1000000uLL;
  }

LABEL_37:
  if (self->_cloudVersionHash)
  {
    [v22 setCloudVersionHash:?];
    toCopy = v22;
  }

  if (self->_artworkId)
  {
    [v22 setArtworkId:?];
    toCopy = v22;
  }

  v9 = self->_has;
  if ((*&v9 & 0x1000) != 0)
  {
    *(toCopy + 54) = self->_likedState;
    *(toCopy + 340) |= 0x1000uLL;
    v9 = self->_has;
    if ((*&v9 & 0x8000) == 0)
    {
LABEL_43:
      if ((*&v9 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_113;
    }
  }

  else if ((*&v9 & 0x8000) == 0)
  {
    goto LABEL_43;
  }

  *(toCopy + 66) = self->_remoteSourceType;
  *(toCopy + 340) |= 0x8000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x80000000) == 0)
  {
LABEL_44:
    if ((*&v9 & 0x8000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_114;
  }

LABEL_113:
  toCopy[336] = self->_owner;
  *(toCopy + 340) |= 0x80000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x8000000) == 0)
  {
LABEL_45:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_115;
  }

LABEL_114:
  toCopy[332] = self->_editable;
  *(toCopy + 340) |= 0x8000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_46:
    if ((*&v9 & 0x200000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(toCopy + 60) = self->_playCount;
  *(toCopy + 340) |= 0x2000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x200000000) == 0)
  {
LABEL_47:
    if ((*&v9 & 0x400000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_117;
  }

LABEL_116:
  toCopy[338] = self->_shared;
  *(toCopy + 340) |= 0x200000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x400000000) == 0)
  {
LABEL_48:
    if ((*&v9 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_117:
  toCopy[339] = self->_visible;
  *(toCopy + 340) |= 0x400000000uLL;
  if (*&self->_has)
  {
LABEL_49:
    *(toCopy + 1) = self->_authorStoreId;
    *(toCopy + 340) |= 1uLL;
  }

LABEL_50:
  if (self->_authorDisplayName)
  {
    [v22 setAuthorDisplayName:?];
    toCopy = v22;
  }

  if (self->_authorStoreURL)
  {
    [v22 setAuthorStoreURL:?];
    toCopy = v22;
  }

  if (self->_authorHandle)
  {
    [v22 setAuthorHandle:?];
    toCopy = v22;
  }

  v10 = self->_has;
  if ((*&v10 & 0x40) != 0)
  {
    *(toCopy + 7) = self->_minRefreshInterval;
    *(toCopy + 340) |= 0x40uLL;
    v10 = self->_has;
    if ((*&v10 & 2) == 0)
    {
LABEL_58:
      if ((*&v10 & 0x40000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_121;
    }
  }

  else if ((*&v10 & 2) == 0)
  {
    goto LABEL_58;
  }

  *(toCopy + 2) = self->_cloudLastUpdateTime;
  *(toCopy + 340) |= 2uLL;
  v10 = self->_has;
  if ((*&v10 & 0x40000) == 0)
  {
LABEL_59:
    if ((*&v10 & 0x100000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(toCopy + 75) = self->_subscriberCount;
  *(toCopy + 340) |= 0x40000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x100000) == 0)
  {
LABEL_60:
    if ((*&v10 & 0x80000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_122:
  *(toCopy + 77) = self->_subscriberPlayCount;
  *(toCopy + 340) |= 0x100000uLL;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_61:
    *(toCopy + 76) = self->_subscriberLikedCount;
    *(toCopy + 340) |= 0x80000uLL;
  }

LABEL_62:
  if (self->_subscriberURL)
  {
    [v22 setSubscriberURL:?];
    toCopy = v22;
  }

  if (self->_playlistDescription)
  {
    [v22 setPlaylistDescription:?];
    toCopy = v22;
  }

  if (self->_cloudUniversalLibraryId)
  {
    [v22 setCloudUniversalLibraryId:?];
    toCopy = v22;
  }

  if (*(&self->_has + 2))
  {
    *(toCopy + 70) = self->_secondaryArtworkSourceType;
    *(toCopy + 340) |= 0x10000uLL;
  }

  if (self->_secondaryArtworkId)
  {
    [v22 setSecondaryArtworkId:?];
    toCopy = v22;
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(toCopy + 61) = self->_playlistCategoryTypeMask;
    *(toCopy + 340) |= 0x4000uLL;
  }

  if (self->_playlistGroupingSortKey)
  {
    [v22 setPlaylistGroupingSortKey:?];
    toCopy = v22;
  }

  v11 = self->_has;
  if ((*&v11 & 0x20) != 0)
  {
    *(toCopy + 6) = self->_likedStateChangedDate;
    *(toCopy + 340) |= 0x20uLL;
    v11 = self->_has;
  }

  if ((*&v11 & 0x200000) != 0)
  {
    *(toCopy + 80) = self->_traits;
    *(toCopy + 340) |= 0x200000uLL;
  }

  if (self->_coverArtworkRecipe)
  {
    [v22 setCoverArtworkRecipe:?];
    toCopy = v22;
  }

  v12 = self->_has;
  if ((*&v12 & 0x40000000) != 0)
  {
    toCopy[335] = self->_isCollaborative;
    *(toCopy + 340) |= 0x40000000uLL;
    v12 = self->_has;
  }

  if ((*&v12 & 0x200) != 0)
  {
    *(toCopy + 38) = self->_collaborationMode;
    *(toCopy + 340) |= 0x200uLL;
  }

  if (self->_collaborationInvitationURL)
  {
    [v22 setCollaborationInvitationURL:?];
    toCopy = v22;
  }

  v13 = self->_has;
  if ((*&v13 & 4) == 0)
  {
    if ((*&v13 & 0x4000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_125:
    toCopy[331] = self->_collaborationJoinRequestPending;
    *(toCopy + 340) |= 0x4000000uLL;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  *(toCopy + 3) = self->_collaborationInvitationURLExpirationDate;
  *(toCopy + 340) |= 4uLL;
  v13 = self->_has;
  if ((*&v13 & 0x4000000) != 0)
  {
    goto LABEL_125;
  }

LABEL_90:
  if ((*&v13 & 0x400) != 0)
  {
LABEL_91:
    *(toCopy + 39) = self->_collaboratorStatus;
    *(toCopy + 340) |= 0x400uLL;
  }

LABEL_92:
  if ([(MIPPlaylist *)self childIdentifiersCount])
  {
    [v22 clearChildIdentifiers];
    childIdentifiersCount = [(MIPPlaylist *)self childIdentifiersCount];
    if (childIdentifiersCount)
    {
      v15 = childIdentifiersCount;
      for (i = 0; i != v15; ++i)
      {
        v17 = [(MIPPlaylist *)self childIdentifiersAtIndex:i];
        [v22 addChildIdentifiers:v17];
      }
    }
  }

  if ([(MIPPlaylist *)self itemsCount])
  {
    [v22 clearItems];
    itemsCount = [(MIPPlaylist *)self itemsCount];
    if (itemsCount)
    {
      v19 = itemsCount;
      for (j = 0; j != v19; ++j)
      {
        v21 = [(MIPPlaylist *)self itemsAtIndex:j];
        [v22 addItems:v21];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v34 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_5:
      if ((*&has & 0x20000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_6:
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
  if (self->_smartPlaylistInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = self->_has;
  if ((*&v6 & 0x20000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
  }

  if ((*&v6 & 0x100000000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_parentIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_geniusSeedTrackIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_cloudGlobalId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x2000000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = self->_has;
  }

  if ((*&v7 & 0x800000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_externalVendorIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_externalVendorDisplayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_externalVendorTag)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((*&v8 & 0x10000000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v8 = self->_has;
    if ((*&v8 & 8) == 0)
    {
LABEL_33:
      if ((*&v8 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_112;
    }
  }

  else if ((*&v8 & 8) == 0)
  {
    goto LABEL_33;
  }

  PBDataWriterWriteInt64Field();
  v8 = self->_has;
  if ((*&v8 & 0x80) == 0)
  {
LABEL_34:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_113;
  }

LABEL_112:
  PBDataWriterWriteInt64Field();
  v8 = self->_has;
  if ((*&v8 & 0x10) == 0)
  {
LABEL_35:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_113:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_36:
    PBDataWriterWriteBOOLField();
  }

LABEL_37:
  if (self->_cloudVersionHash)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_artworkId)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((*&v9 & 0x1000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = self->_has;
    if ((*&v9 & 0x8000) == 0)
    {
LABEL_43:
      if ((*&v9 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_117;
    }
  }

  else if ((*&v9 & 0x8000) == 0)
  {
    goto LABEL_43;
  }

  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x80000000) == 0)
  {
LABEL_44:
    if ((*&v9 & 0x8000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_118;
  }

LABEL_117:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x8000000) == 0)
  {
LABEL_45:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_119;
  }

LABEL_118:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_46:
    if ((*&v9 & 0x200000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_120;
  }

LABEL_119:
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x200000000) == 0)
  {
LABEL_47:
    if ((*&v9 & 0x400000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_121;
  }

LABEL_120:
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x400000000) == 0)
  {
LABEL_48:
    if ((*&v9 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_121:
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
LABEL_49:
    PBDataWriterWriteInt64Field();
  }

LABEL_50:
  if (self->_authorDisplayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_authorStoreURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_authorHandle)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((*&v10 & 0x40) != 0)
  {
    PBDataWriterWriteInt64Field();
    v10 = self->_has;
    if ((*&v10 & 2) == 0)
    {
LABEL_58:
      if ((*&v10 & 0x40000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_125;
    }
  }

  else if ((*&v10 & 2) == 0)
  {
    goto LABEL_58;
  }

  PBDataWriterWriteInt64Field();
  v10 = self->_has;
  if ((*&v10 & 0x40000) == 0)
  {
LABEL_59:
    if ((*&v10 & 0x100000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_126;
  }

LABEL_125:
  PBDataWriterWriteInt32Field();
  v10 = self->_has;
  if ((*&v10 & 0x100000) == 0)
  {
LABEL_60:
    if ((*&v10 & 0x80000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_126:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_61:
    PBDataWriterWriteInt32Field();
  }

LABEL_62:
  if (self->_subscriberURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_playlistDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cloudUniversalLibraryId)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 2))
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_secondaryArtworkId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_playlistGroupingSortKey)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  if ((*&v11 & 0x20) != 0)
  {
    PBDataWriterWriteInt64Field();
    v11 = self->_has;
  }

  if ((*&v11 & 0x200000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_coverArtworkRecipe)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((*&v12 & 0x40000000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v12 = self->_has;
  }

  if ((*&v12 & 0x200) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_collaborationInvitationURL)
  {
    PBDataWriterWriteStringField();
  }

  v13 = self->_has;
  if ((*&v13 & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
    v13 = self->_has;
    if ((*&v13 & 0x4000000) == 0)
    {
LABEL_90:
      if ((*&v13 & 0x400) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  else if ((*&v13 & 0x4000000) == 0)
  {
    goto LABEL_90;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_91:
    PBDataWriterWriteInt32Field();
  }

LABEL_92:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_childIdentifiers;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v16);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = self->_items;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v21);
  }
}

- (id)dictionaryRepresentation
{
  v100 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_storeId];
    [v4 setObject:v13 forKey:@"storeId"];

    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_5:
      if ((*&has & 0x20000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_5;
  }

  v14 = self->_type - 1;
  if (v14 >= 4)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v15 = off_278762F00[v14];
  }

  [v4 setObject:v15 forKey:@"type"];

  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidden];
    [v4 setObject:v7 forKey:@"hidden"];
  }

LABEL_7:
  smartPlaylistInfo = self->_smartPlaylistInfo;
  if (smartPlaylistInfo)
  {
    dictionaryRepresentation = [(MIPSmartPlaylistInfo *)smartPlaylistInfo dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"smartPlaylistInfo"];
  }

  v10 = self->_has;
  if ((*&v10 & 0x20000) != 0)
  {
    sortType = self->_sortType;
    if (sortType >= 0x4C)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_sortType];
    }

    else
    {
      v12 = off_278762F20[sortType];
    }

    [v4 setObject:v12 forKey:@"sortType"];

    v10 = self->_has;
  }

  if ((*&v10 & 0x100000000) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_reversedSorting];
    [v4 setObject:v16 forKey:@"reversedSorting"];
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier)
  {
    dictionaryRepresentation2 = [(MIPMultiverseIdentifier *)parentIdentifier dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"parentIdentifier"];
  }

  geniusSeedTrackIdentifier = self->_geniusSeedTrackIdentifier;
  if (geniusSeedTrackIdentifier)
  {
    dictionaryRepresentation3 = [(MIPMultiverseIdentifier *)geniusSeedTrackIdentifier dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"geniusSeedTrackIdentifier"];
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithInt:self->_distinguishedKind];
    [v4 setObject:v21 forKey:@"distinguishedKind"];
  }

  cloudGlobalId = self->_cloudGlobalId;
  if (cloudGlobalId)
  {
    [v4 setObject:cloudGlobalId forKey:@"cloudGlobalId"];
  }

  v23 = self->_has;
  if ((*&v23 & 0x2000000) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_cloudIsSubscribed];
    [v4 setObject:v24 forKey:@"cloudIsSubscribed"];

    v23 = self->_has;
  }

  if ((*&v23 & 0x800000) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_cloudIsCuratorPlaylist];
    [v4 setObject:v25 forKey:@"cloudIsCuratorPlaylist"];
  }

  externalVendorIdentifier = self->_externalVendorIdentifier;
  if (externalVendorIdentifier)
  {
    [v4 setObject:externalVendorIdentifier forKey:@"externalVendorIdentifier"];
  }

  externalVendorDisplayName = self->_externalVendorDisplayName;
  if (externalVendorDisplayName)
  {
    [v4 setObject:externalVendorDisplayName forKey:@"externalVendorDisplayName"];
  }

  externalVendorTag = self->_externalVendorTag;
  if (externalVendorTag)
  {
    [v4 setObject:externalVendorTag forKey:@"externalVendorTag"];
  }

  v29 = self->_has;
  if ((*&v29 & 0x10000000) != 0)
  {
    v73 = [MEMORY[0x277CCABB0] numberWithBool:self->_externalVendorPlaylist];
    [v4 setObject:v73 forKey:@"externalVendorPlaylist"];

    v29 = self->_has;
    if ((*&v29 & 8) == 0)
    {
LABEL_39:
      if ((*&v29 & 0x80) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_119;
    }
  }

  else if ((*&v29 & 8) == 0)
  {
    goto LABEL_39;
  }

  v74 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_creationDateTime];
  [v4 setObject:v74 forKey:@"creationDateTime"];

  v29 = self->_has;
  if ((*&v29 & 0x80) == 0)
  {
LABEL_40:
    if ((*&v29 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_120;
  }

LABEL_119:
  v75 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_modificationDateTime];
  [v4 setObject:v75 forKey:@"modificationDateTime"];

  v29 = self->_has;
  if ((*&v29 & 0x10) == 0)
  {
LABEL_41:
    if ((*&v29 & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_120:
  v76 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastPlayedDateTime];
  [v4 setObject:v76 forKey:@"lastPlayedDateTime"];

  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_42:
    v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_cloudIsSharingDisabled];
    [v4 setObject:v30 forKey:@"cloudIsSharingDisabled"];
  }

LABEL_43:
  cloudVersionHash = self->_cloudVersionHash;
  if (cloudVersionHash)
  {
    [v4 setObject:cloudVersionHash forKey:@"cloudVersionHash"];
  }

  artworkId = self->_artworkId;
  if (artworkId)
  {
    [v4 setObject:artworkId forKey:@"artworkId"];
  }

  v33 = self->_has;
  if ((*&v33 & 0x1000) != 0)
  {
    v77 = [MEMORY[0x277CCABB0] numberWithInt:self->_likedState];
    [v4 setObject:v77 forKey:@"likedState"];

    v33 = self->_has;
    if ((*&v33 & 0x8000) == 0)
    {
LABEL_49:
      if ((*&v33 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_124;
    }
  }

  else if ((*&v33 & 0x8000) == 0)
  {
    goto LABEL_49;
  }

  v78 = [MEMORY[0x277CCABB0] numberWithInt:self->_remoteSourceType];
  [v4 setObject:v78 forKey:@"remoteSourceType"];

  v33 = self->_has;
  if ((*&v33 & 0x80000000) == 0)
  {
LABEL_50:
    if ((*&v33 & 0x8000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_125;
  }

LABEL_124:
  v79 = [MEMORY[0x277CCABB0] numberWithBool:self->_owner];
  [v4 setObject:v79 forKey:@"owner"];

  v33 = self->_has;
  if ((*&v33 & 0x8000000) == 0)
  {
LABEL_51:
    if ((*&v33 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_126;
  }

LABEL_125:
  v80 = [MEMORY[0x277CCABB0] numberWithBool:self->_editable];
  [v4 setObject:v80 forKey:@"editable"];

  v33 = self->_has;
  if ((*&v33 & 0x2000) == 0)
  {
LABEL_52:
    if ((*&v33 & 0x200000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_127;
  }

LABEL_126:
  v81 = [MEMORY[0x277CCABB0] numberWithInt:self->_playCount];
  [v4 setObject:v81 forKey:@"playCount"];

  v33 = self->_has;
  if ((*&v33 & 0x200000000) == 0)
  {
LABEL_53:
    if ((*&v33 & 0x400000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_128;
  }

LABEL_127:
  v82 = [MEMORY[0x277CCABB0] numberWithBool:self->_shared];
  [v4 setObject:v82 forKey:@"shared"];

  v33 = self->_has;
  if ((*&v33 & 0x400000000) == 0)
  {
LABEL_54:
    if ((*&v33 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_128:
  v83 = [MEMORY[0x277CCABB0] numberWithBool:self->_visible];
  [v4 setObject:v83 forKey:@"visible"];

  if (*&self->_has)
  {
LABEL_55:
    v34 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_authorStoreId];
    [v4 setObject:v34 forKey:@"authorStoreId"];
  }

LABEL_56:
  authorDisplayName = self->_authorDisplayName;
  if (authorDisplayName)
  {
    [v4 setObject:authorDisplayName forKey:@"authorDisplayName"];
  }

  authorStoreURL = self->_authorStoreURL;
  if (authorStoreURL)
  {
    [v4 setObject:authorStoreURL forKey:@"authorStoreURL"];
  }

  authorHandle = self->_authorHandle;
  if (authorHandle)
  {
    [v4 setObject:authorHandle forKey:@"authorHandle"];
  }

  v38 = self->_has;
  if ((*&v38 & 0x40) != 0)
  {
    v84 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minRefreshInterval];
    [v4 setObject:v84 forKey:@"minRefreshInterval"];

    v38 = self->_has;
    if ((*&v38 & 2) == 0)
    {
LABEL_64:
      if ((*&v38 & 0x40000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_132;
    }
  }

  else if ((*&v38 & 2) == 0)
  {
    goto LABEL_64;
  }

  v85 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cloudLastUpdateTime];
  [v4 setObject:v85 forKey:@"cloudLastUpdateTime"];

  v38 = self->_has;
  if ((*&v38 & 0x40000) == 0)
  {
LABEL_65:
    if ((*&v38 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_133;
  }

LABEL_132:
  v86 = [MEMORY[0x277CCABB0] numberWithInt:self->_subscriberCount];
  [v4 setObject:v86 forKey:@"subscriberCount"];

  v38 = self->_has;
  if ((*&v38 & 0x100000) == 0)
  {
LABEL_66:
    if ((*&v38 & 0x80000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_133:
  v87 = [MEMORY[0x277CCABB0] numberWithInt:self->_subscriberPlayCount];
  [v4 setObject:v87 forKey:@"subscriberPlayCount"];

  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_67:
    v39 = [MEMORY[0x277CCABB0] numberWithInt:self->_subscriberLikedCount];
    [v4 setObject:v39 forKey:@"subscriberLikedCount"];
  }

LABEL_68:
  subscriberURL = self->_subscriberURL;
  if (subscriberURL)
  {
    [v4 setObject:subscriberURL forKey:@"subscriberURL"];
  }

  playlistDescription = self->_playlistDescription;
  if (playlistDescription)
  {
    [v4 setObject:playlistDescription forKey:@"playlistDescription"];
  }

  cloudUniversalLibraryId = self->_cloudUniversalLibraryId;
  if (cloudUniversalLibraryId)
  {
    [v4 setObject:cloudUniversalLibraryId forKey:@"cloudUniversalLibraryId"];
  }

  if (*(&self->_has + 2))
  {
    v43 = [MEMORY[0x277CCABB0] numberWithInt:self->_secondaryArtworkSourceType];
    [v4 setObject:v43 forKey:@"secondaryArtworkSourceType"];
  }

  secondaryArtworkId = self->_secondaryArtworkId;
  if (secondaryArtworkId)
  {
    [v4 setObject:secondaryArtworkId forKey:@"secondaryArtworkId"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithInt:self->_playlistCategoryTypeMask];
    [v4 setObject:v45 forKey:@"playlistCategoryTypeMask"];
  }

  playlistGroupingSortKey = self->_playlistGroupingSortKey;
  if (playlistGroupingSortKey)
  {
    [v4 setObject:playlistGroupingSortKey forKey:@"playlistGroupingSortKey"];
  }

  v47 = self->_has;
  if ((*&v47 & 0x20) != 0)
  {
    v48 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_likedStateChangedDate];
    [v4 setObject:v48 forKey:@"likedStateChangedDate"];

    v47 = self->_has;
  }

  if ((*&v47 & 0x200000) != 0)
  {
    v49 = [MEMORY[0x277CCABB0] numberWithInt:self->_traits];
    [v4 setObject:v49 forKey:@"traits"];
  }

  coverArtworkRecipe = self->_coverArtworkRecipe;
  if (coverArtworkRecipe)
  {
    [v4 setObject:coverArtworkRecipe forKey:@"coverArtworkRecipe"];
  }

  v51 = self->_has;
  if ((*&v51 & 0x40000000) != 0)
  {
    v52 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCollaborative];
    [v4 setObject:v52 forKey:@"isCollaborative"];

    v51 = self->_has;
  }

  if ((*&v51 & 0x200) != 0)
  {
    v53 = [MEMORY[0x277CCABB0] numberWithInt:self->_collaborationMode];
    [v4 setObject:v53 forKey:@"collaborationMode"];
  }

  collaborationInvitationURL = self->_collaborationInvitationURL;
  if (collaborationInvitationURL)
  {
    [v4 setObject:collaborationInvitationURL forKey:@"collaborationInvitationURL"];
  }

  v55 = self->_has;
  if ((*&v55 & 4) != 0)
  {
    v88 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_collaborationInvitationURLExpirationDate];
    [v4 setObject:v88 forKey:@"collaborationInvitationURLExpirationDate"];

    v55 = self->_has;
    if ((*&v55 & 0x4000000) == 0)
    {
LABEL_96:
      if ((*&v55 & 0x400) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }
  }

  else if ((*&v55 & 0x4000000) == 0)
  {
    goto LABEL_96;
  }

  v89 = [MEMORY[0x277CCABB0] numberWithBool:self->_collaborationJoinRequestPending];
  [v4 setObject:v89 forKey:@"collaborationJoinRequestPending"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_97:
    v56 = [MEMORY[0x277CCABB0] numberWithInt:self->_collaboratorStatus];
    [v4 setObject:v56 forKey:@"collaboratorStatus"];
  }

LABEL_98:
  if ([(NSMutableArray *)self->_childIdentifiers count])
  {
    v57 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_childIdentifiers, "count")}];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v58 = self->_childIdentifiers;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v94 objects:v99 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v95;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v95 != v61)
          {
            objc_enumerationMutation(v58);
          }

          dictionaryRepresentation4 = [*(*(&v94 + 1) + 8 * i) dictionaryRepresentation];
          [v57 addObject:dictionaryRepresentation4];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v94 objects:v99 count:16];
      }

      while (v60);
    }

    [v4 setObject:v57 forKey:@"childIdentifiers"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v64 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v65 = self->_items;
    v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v90 objects:v98 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v91;
      do
      {
        for (j = 0; j != v67; ++j)
        {
          if (*v91 != v68)
          {
            objc_enumerationMutation(v65);
          }

          dictionaryRepresentation5 = [*(*(&v90 + 1) + 8 * j) dictionaryRepresentation];
          [v64 addObject:dictionaryRepresentation5];
        }

        v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v90 objects:v98 count:16];
      }

      while (v67);
    }

    [v4 setObject:v64 forKey:@"items"];
  }

  v71 = v4;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPPlaylist;
  v4 = [(MIPPlaylist *)&v8 description];
  dictionaryRepresentation = [(MIPPlaylist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addItems:(id)items
{
  itemsCopy = items;
  items = self->_items;
  v8 = itemsCopy;
  if (!items)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_items;
    self->_items = v6;

    itemsCopy = v8;
    items = self->_items;
  }

  [(NSMutableArray *)items addObject:itemsCopy];
}

- (void)addChildIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  childIdentifiers = self->_childIdentifiers;
  v8 = identifiersCopy;
  if (!childIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_childIdentifiers;
    self->_childIdentifiers = v6;

    identifiersCopy = v8;
    childIdentifiers = self->_childIdentifiers;
  }

  [(NSMutableArray *)childIdentifiers addObject:identifiersCopy];
}

- (void)setHasCollaboratorStatus:(BOOL)status
{
  v3 = 1024;
  if (!status)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasCollaborationJoinRequestPending:(BOOL)pending
{
  v3 = 0x4000000;
  if (!pending)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasCollaborationInvitationURLExpirationDate:(BOOL)date
{
  v3 = 4;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasCollaborationMode:(BOOL)mode
{
  v3 = 512;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasIsCollaborative:(BOOL)collaborative
{
  v3 = 0x40000000;
  if (!collaborative)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasTraits:(BOOL)traits
{
  v3 = 0x200000;
  if (!traits)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasLikedStateChangedDate:(BOOL)date
{
  v3 = 32;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasPlaylistCategoryTypeMask:(BOOL)mask
{
  v3 = 0x4000;
  if (!mask)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasSecondaryArtworkSourceType:(BOOL)type
{
  v3 = 0x10000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasSubscriberLikedCount:(BOOL)count
{
  v3 = 0x80000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSubscriberPlayCount:(BOOL)count
{
  v3 = 0x100000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasSubscriberCount:(BOOL)count
{
  v3 = 0x40000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasCloudLastUpdateTime:(BOOL)time
{
  v3 = 2;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasMinRefreshInterval:(BOOL)interval
{
  v3 = 64;
  if (!interval)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasVisible:(BOOL)visible
{
  v3 = 0x400000000;
  if (!visible)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasShared:(BOOL)shared
{
  v3 = 0x200000000;
  if (!shared)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasPlayCount:(BOOL)count
{
  v3 = 0x2000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasEditable:(BOOL)editable
{
  v3 = 0x8000000;
  if (!editable)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasOwner:(BOOL)owner
{
  v3 = 0x80000000;
  if (!owner)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasRemoteSourceType:(BOOL)type
{
  v3 = 0x8000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasLikedState:(BOOL)state
{
  v3 = 4096;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasCloudIsSharingDisabled:(BOOL)disabled
{
  v3 = 0x1000000;
  if (!disabled)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasLastPlayedDateTime:(BOOL)time
{
  v3 = 16;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasModificationDateTime:(BOOL)time
{
  v3 = 128;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
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

- (void)setHasExternalVendorPlaylist:(BOOL)playlist
{
  v3 = 0x10000000;
  if (!playlist)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasCloudIsCuratorPlaylist:(BOOL)playlist
{
  v3 = 0x800000;
  if (!playlist)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasCloudIsSubscribed:(BOOL)subscribed
{
  v3 = 0x2000000;
  if (!subscribed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasDistinguishedKind:(BOOL)kind
{
  v3 = 2048;
  if (!kind)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasReversedSorting:(BOOL)sorting
{
  v3 = 0x100000000;
  if (!sorting)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (int)StringAsSortType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Artist"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Album"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Name"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ReleaseDate"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"AddedDate"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"PlayedDate"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"SeriesName"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Physical"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"Shuffle"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"TrackID"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"PlaylistItemID"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"BitRate"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"Genre"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"Kind"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"Date"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"TrackNumber"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"TotalSize"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"TotalTime"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"Year"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"SampleRate"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"Category"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"Location"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"StreamStatus"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"Description"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"Comment"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"DateAdded"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"EQPreset"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"Composer"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"NormVolume"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"UserPlayCount"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"PlayDate"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"DiscNumber"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"TrackRating"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"CompilationArtist"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"CompilationGenre"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"FastArtist"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"FastAlbumArtistOrArtist"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"FastAlbum"])
  {
    v4 = 38;
  }

  else if ([typeCopy isEqualToString:@"FastGenre"])
  {
    v4 = 39;
  }

  else if ([typeCopy isEqualToString:@"FastComposer"])
  {
    v4 = 40;
  }

  else if ([typeCopy isEqualToString:@"Price"])
  {
    v4 = 41;
  }

  else if ([typeCopy isEqualToString:@"Relevance"])
  {
    v4 = 42;
  }

  else if ([typeCopy isEqualToString:@"PurchaseDate"])
  {
    v4 = 43;
  }

  else if ([typeCopy isEqualToString:@"BeatsPerMinute"])
  {
    v4 = 44;
  }

  else if ([typeCopy isEqualToString:@"Popularity"])
  {
    v4 = 45;
  }

  else if ([typeCopy isEqualToString:@"Grouping"])
  {
    v4 = 46;
  }

  else if ([typeCopy isEqualToString:@"SeasonNumber"])
  {
    v4 = 47;
  }

  else if ([typeCopy isEqualToString:@"EpisodeID"])
  {
    v4 = 48;
  }

  else if ([typeCopy isEqualToString:@"EpisodeSortID"])
  {
    v4 = 49;
  }

  else if ([typeCopy isEqualToString:@"UserSkipCount"])
  {
    v4 = 50;
  }

  else if ([typeCopy isEqualToString:@"SkipDate"])
  {
    v4 = 51;
  }

  else if ([typeCopy isEqualToString:@"AlbumArtist"])
  {
    v4 = 52;
  }

  else if ([typeCopy isEqualToString:@"AlbumByArtistYear"])
  {
    v4 = 53;
  }

  else if ([typeCopy isEqualToString:@"AlbumByArtist"])
  {
    v4 = 54;
  }

  else if ([typeCopy isEqualToString:@"AlbumRating"])
  {
    v4 = 55;
  }

  else if ([typeCopy isEqualToString:@"RentalExpirationDate"])
  {
    v4 = 56;
  }

  else if ([typeCopy isEqualToString:@"ComposerAlbum"])
  {
    v4 = 57;
  }

  else if ([typeCopy isEqualToString:@"CategoryAlbum"])
  {
    v4 = 58;
  }

  else if ([typeCopy isEqualToString:@"GenreAlbum"])
  {
    v4 = 59;
  }

  else if ([typeCopy isEqualToString:@"GenreName"])
  {
    v4 = 60;
  }

  else if ([typeCopy isEqualToString:@"GeniusID"])
  {
    v4 = 61;
  }

  else if ([typeCopy isEqualToString:@"PodcastCategory"])
  {
    v4 = 62;
  }

  else if ([typeCopy isEqualToString:@"StorePersistentID"])
  {
    v4 = 63;
  }

  else if ([typeCopy isEqualToString:@"Version"])
  {
    v4 = 64;
  }

  else if ([typeCopy isEqualToString:@"UncompressedSize"])
  {
    v4 = 65;
  }

  else if ([typeCopy isEqualToString:@"AppKind"])
  {
    v4 = 66;
  }

  else if ([typeCopy isEqualToString:@"UserDisabled"])
  {
    v4 = 67;
  }

  else if ([typeCopy isEqualToString:@"CloudDownload"])
  {
    v4 = 68;
  }

  else if ([typeCopy isEqualToString:@"CloudMatchState"])
  {
    v4 = 69;
  }

  else if ([typeCopy isEqualToString:@"CloudID"])
  {
    v4 = 70;
  }

  else if ([typeCopy isEqualToString:@"CloudUserID"])
  {
    v4 = 71;
  }

  else if ([typeCopy isEqualToString:@"CloudStatus"])
  {
    v4 = 72;
  }

  else if ([typeCopy isEqualToString:@"CloudFlavorID"])
  {
    v4 = 73;
  }

  else if ([typeCopy isEqualToString:@"CloudLibraryKind"])
  {
    v4 = 74;
  }

  else if ([typeCopy isEqualToString:@"Tags"])
  {
    v4 = 75;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sortTypeAsString:(int)string
{
  if (string >= 0x4C)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278762F20[string];
  }

  return v4;
}

- (void)setHasSortType:(BOOL)type
{
  v3 = 0x20000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (int)sortType
{
  if ((*(&self->_has + 2) & 2) != 0)
  {
    return self->_sortType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHidden:(BOOL)hidden
{
  v3 = 0x20000000;
  if (!hidden)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Normal"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Smart"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Genius"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Folder"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)typeAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278762F00[string - 1];
  }

  return v4;
}

- (void)setHasType:(BOOL)type
{
  v3 = 0x400000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (int)type
{
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (void)setHasStoreId:(BOOL)id
{
  v3 = 256;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

@end