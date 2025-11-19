@interface MIPPlaylist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sortTypeAsString:(int)a3;
- (id)typeAsString:(int)a3;
- (int)StringAsSortType:(id)a3;
- (int)StringAsType:(id)a3;
- (int)sortType;
- (int)type;
- (unint64_t)hash;
- (void)addChildIdentifiers:(id)a3;
- (void)addItems:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCloudIsCuratorPlaylist:(BOOL)a3;
- (void)setHasCloudIsSharingDisabled:(BOOL)a3;
- (void)setHasCloudIsSubscribed:(BOOL)a3;
- (void)setHasCloudLastUpdateTime:(BOOL)a3;
- (void)setHasCollaborationInvitationURLExpirationDate:(BOOL)a3;
- (void)setHasCollaborationJoinRequestPending:(BOOL)a3;
- (void)setHasCollaborationMode:(BOOL)a3;
- (void)setHasCollaboratorStatus:(BOOL)a3;
- (void)setHasCreationDateTime:(BOOL)a3;
- (void)setHasDistinguishedKind:(BOOL)a3;
- (void)setHasEditable:(BOOL)a3;
- (void)setHasExternalVendorPlaylist:(BOOL)a3;
- (void)setHasHidden:(BOOL)a3;
- (void)setHasIsCollaborative:(BOOL)a3;
- (void)setHasLastPlayedDateTime:(BOOL)a3;
- (void)setHasLikedState:(BOOL)a3;
- (void)setHasLikedStateChangedDate:(BOOL)a3;
- (void)setHasMinRefreshInterval:(BOOL)a3;
- (void)setHasModificationDateTime:(BOOL)a3;
- (void)setHasOwner:(BOOL)a3;
- (void)setHasPlayCount:(BOOL)a3;
- (void)setHasPlaylistCategoryTypeMask:(BOOL)a3;
- (void)setHasRemoteSourceType:(BOOL)a3;
- (void)setHasReversedSorting:(BOOL)a3;
- (void)setHasSecondaryArtworkSourceType:(BOOL)a3;
- (void)setHasShared:(BOOL)a3;
- (void)setHasSortType:(BOOL)a3;
- (void)setHasStoreId:(BOOL)a3;
- (void)setHasSubscriberCount:(BOOL)a3;
- (void)setHasSubscriberLikedCount:(BOOL)a3;
- (void)setHasSubscriberPlayCount:(BOOL)a3;
- (void)setHasTraits:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasVisible:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPPlaylist

- (void)mergeFrom:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 28))
  {
    [(MIPPlaylist *)self setName:?];
  }

  v5 = *(v4 + 340);
  if ((v5 & 0x100) != 0)
  {
    self->_storeId = *(v4 + 9);
    *&self->_has |= 0x100uLL;
    v5 = *(v4 + 340);
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

  self->_type = *(v4 + 81);
  *&self->_has |= 0x400000uLL;
  if ((*(v4 + 340) & 0x20000000) != 0)
  {
LABEL_6:
    self->_hidden = v4[334];
    *&self->_has |= 0x20000000uLL;
  }

LABEL_7:
  smartPlaylistInfo = self->_smartPlaylistInfo;
  v7 = *(v4 + 36);
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

  v8 = *(v4 + 340);
  if ((v8 & 0x20000) != 0)
  {
    self->_sortType = *(v4 + 74);
    *&self->_has |= 0x20000uLL;
    v8 = *(v4 + 340);
  }

  if ((v8 & 0x100000000) != 0)
  {
    self->_reversedSorting = v4[337];
    *&self->_has |= 0x100000000uLL;
  }

  parentIdentifier = self->_parentIdentifier;
  v10 = *(v4 + 29);
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
  v12 = *(v4 + 25);
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

  if ((v4[341] & 8) != 0)
  {
    self->_distinguishedKind = *(v4 + 42);
    *&self->_has |= 0x800uLL;
  }

  if (*(v4 + 15))
  {
    [(MIPPlaylist *)self setCloudGlobalId:?];
  }

  v13 = *(v4 + 340);
  if ((v13 & 0x2000000) != 0)
  {
    self->_cloudIsSubscribed = v4[330];
    *&self->_has |= 0x2000000uLL;
    v13 = *(v4 + 340);
  }

  if ((v13 & 0x800000) != 0)
  {
    self->_cloudIsCuratorPlaylist = v4[328];
    *&self->_has |= 0x800000uLL;
  }

  if (*(v4 + 23))
  {
    [(MIPPlaylist *)self setExternalVendorIdentifier:?];
  }

  if (*(v4 + 22))
  {
    [(MIPPlaylist *)self setExternalVendorDisplayName:?];
  }

  if (*(v4 + 24))
  {
    [(MIPPlaylist *)self setExternalVendorTag:?];
  }

  v14 = *(v4 + 340);
  if ((v14 & 0x10000000) != 0)
  {
    self->_externalVendorPlaylist = v4[333];
    *&self->_has |= 0x10000000uLL;
    v14 = *(v4 + 340);
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

  self->_creationDateTime = *(v4 + 4);
  *&self->_has |= 8uLL;
  v14 = *(v4 + 340);
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
  self->_modificationDateTime = *(v4 + 8);
  *&self->_has |= 0x80uLL;
  v14 = *(v4 + 340);
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
  self->_lastPlayedDateTime = *(v4 + 5);
  *&self->_has |= 0x10uLL;
  if ((*(v4 + 340) & 0x1000000) != 0)
  {
LABEL_48:
    self->_cloudIsSharingDisabled = v4[329];
    *&self->_has |= 0x1000000uLL;
  }

LABEL_49:
  if (*(v4 + 17))
  {
    [(MIPPlaylist *)self setCloudVersionHash:?];
  }

  if (*(v4 + 10))
  {
    [(MIPPlaylist *)self setArtworkId:?];
  }

  v15 = *(v4 + 340);
  if ((v15 & 0x1000) != 0)
  {
    self->_likedState = *(v4 + 54);
    *&self->_has |= 0x1000uLL;
    v15 = *(v4 + 340);
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

  self->_remoteSourceType = *(v4 + 66);
  *&self->_has |= 0x8000uLL;
  v15 = *(v4 + 340);
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
  self->_owner = v4[336];
  *&self->_has |= 0x80000000uLL;
  v15 = *(v4 + 340);
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
  self->_editable = v4[332];
  *&self->_has |= 0x8000000uLL;
  v15 = *(v4 + 340);
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
  self->_playCount = *(v4 + 60);
  *&self->_has |= 0x2000uLL;
  v15 = *(v4 + 340);
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
  self->_shared = v4[338];
  *&self->_has |= 0x200000000uLL;
  v15 = *(v4 + 340);
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
  self->_visible = v4[339];
  *&self->_has |= 0x400000000uLL;
  if (*(v4 + 340))
  {
LABEL_61:
    self->_authorStoreId = *(v4 + 1);
    *&self->_has |= 1uLL;
  }

LABEL_62:
  if (*(v4 + 11))
  {
    [(MIPPlaylist *)self setAuthorDisplayName:?];
  }

  if (*(v4 + 13))
  {
    [(MIPPlaylist *)self setAuthorStoreURL:?];
  }

  if (*(v4 + 12))
  {
    [(MIPPlaylist *)self setAuthorHandle:?];
  }

  v16 = *(v4 + 340);
  if ((v16 & 0x40) != 0)
  {
    self->_minRefreshInterval = *(v4 + 7);
    *&self->_has |= 0x40uLL;
    v16 = *(v4 + 340);
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

  self->_cloudLastUpdateTime = *(v4 + 2);
  *&self->_has |= 2uLL;
  v16 = *(v4 + 340);
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
  self->_subscriberCount = *(v4 + 75);
  *&self->_has |= 0x40000uLL;
  v16 = *(v4 + 340);
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
  self->_subscriberPlayCount = *(v4 + 77);
  *&self->_has |= 0x100000uLL;
  if ((*(v4 + 340) & 0x80000) != 0)
  {
LABEL_73:
    self->_subscriberLikedCount = *(v4 + 76);
    *&self->_has |= 0x80000uLL;
  }

LABEL_74:
  if (*(v4 + 39))
  {
    [(MIPPlaylist *)self setSubscriberURL:?];
  }

  if (*(v4 + 31))
  {
    [(MIPPlaylist *)self setPlaylistDescription:?];
  }

  if (*(v4 + 16))
  {
    [(MIPPlaylist *)self setCloudUniversalLibraryId:?];
  }

  if (v4[342])
  {
    self->_secondaryArtworkSourceType = *(v4 + 70);
    *&self->_has |= 0x10000uLL;
  }

  if (*(v4 + 34))
  {
    [(MIPPlaylist *)self setSecondaryArtworkId:?];
  }

  if ((v4[341] & 0x40) != 0)
  {
    self->_playlistCategoryTypeMask = *(v4 + 61);
    *&self->_has |= 0x4000uLL;
  }

  if (*(v4 + 32))
  {
    [(MIPPlaylist *)self setPlaylistGroupingSortKey:?];
  }

  v17 = *(v4 + 340);
  if ((v17 & 0x20) != 0)
  {
    self->_likedStateChangedDate = *(v4 + 6);
    *&self->_has |= 0x20uLL;
    v17 = *(v4 + 340);
  }

  if ((v17 & 0x200000) != 0)
  {
    self->_traits = *(v4 + 80);
    *&self->_has |= 0x200000uLL;
  }

  if (*(v4 + 20))
  {
    [(MIPPlaylist *)self setCoverArtworkRecipe:?];
  }

  v18 = *(v4 + 340);
  if ((v18 & 0x40000000) != 0)
  {
    self->_isCollaborative = v4[335];
    *&self->_has |= 0x40000000uLL;
    v18 = *(v4 + 340);
  }

  if ((v18 & 0x200) != 0)
  {
    self->_collaborationMode = *(v4 + 38);
    *&self->_has |= 0x200uLL;
  }

  if (*(v4 + 18))
  {
    [(MIPPlaylist *)self setCollaborationInvitationURL:?];
  }

  v19 = *(v4 + 340);
  if ((v19 & 4) != 0)
  {
    self->_collaborationInvitationURLExpirationDate = *(v4 + 3);
    *&self->_has |= 4uLL;
    v19 = *(v4 + 340);
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

  self->_collaborationJoinRequestPending = v4[331];
  *&self->_has |= 0x4000000uLL;
  if ((*(v4 + 340) & 0x400) != 0)
  {
LABEL_103:
    self->_collaboratorStatus = *(v4 + 39);
    *&self->_has |= 0x400uLL;
  }

LABEL_104:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = *(v4 + 14);
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
  v25 = *(v4 + 26);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  name = self->_name;
  if (name | *(v4 + 28))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_40;
    }
  }

  has = self->_has;
  v7 = *(v4 + 340);
  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_storeId != *(v4 + 9))
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
    if ((v7 & 0x400000) == 0 || self->_type != *(v4 + 81))
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
      if ((v4[334] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[334])
    {
      goto LABEL_40;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_40;
  }

  smartPlaylistInfo = self->_smartPlaylistInfo;
  if (smartPlaylistInfo | *(v4 + 36))
  {
    if (![(MIPSmartPlaylistInfo *)smartPlaylistInfo isEqual:?])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v7 = *(v4 + 340);
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_sortType != *(v4 + 74))
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
      if ((v4[337] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[337])
    {
      goto LABEL_40;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_40;
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(v4 + 29) && ![(MIPMultiverseIdentifier *)parentIdentifier isEqual:?])
  {
    goto LABEL_40;
  }

  geniusSeedTrackIdentifier = self->_geniusSeedTrackIdentifier;
  if (geniusSeedTrackIdentifier | *(v4 + 25))
  {
    if (![(MIPMultiverseIdentifier *)geniusSeedTrackIdentifier isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v11 = self->_has;
  v12 = *(v4 + 340);
  if ((*&v11 & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_distinguishedKind != *(v4 + 42))
    {
      goto LABEL_40;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_40;
  }

  cloudGlobalId = self->_cloudGlobalId;
  if (cloudGlobalId | *(v4 + 15))
  {
    if (![(NSString *)cloudGlobalId isEqual:?])
    {
      goto LABEL_40;
    }

    v11 = self->_has;
    v12 = *(v4 + 340);
  }

  if ((*&v11 & 0x2000000) != 0)
  {
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_cloudIsSubscribed)
    {
      if ((v4[330] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[330])
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
      if ((v4[328] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[328])
    {
      goto LABEL_40;
    }
  }

  else if ((v12 & 0x800000) != 0)
  {
    goto LABEL_40;
  }

  externalVendorIdentifier = self->_externalVendorIdentifier;
  if (externalVendorIdentifier | *(v4 + 23) && ![(NSString *)externalVendorIdentifier isEqual:?])
  {
    goto LABEL_40;
  }

  externalVendorDisplayName = self->_externalVendorDisplayName;
  if (externalVendorDisplayName | *(v4 + 22))
  {
    if (![(NSString *)externalVendorDisplayName isEqual:?])
    {
      goto LABEL_40;
    }
  }

  externalVendorTag = self->_externalVendorTag;
  if (externalVendorTag | *(v4 + 24))
  {
    if (![(NSString *)externalVendorTag isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v19 = self->_has;
  v20 = *(v4 + 340);
  if ((*&v19 & 0x10000000) != 0)
  {
    if ((v20 & 0x10000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_externalVendorPlaylist)
    {
      if ((v4[333] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[333])
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
    if ((v20 & 8) == 0 || self->_creationDateTime != *(v4 + 4))
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
    if ((v20 & 0x80) == 0 || self->_modificationDateTime != *(v4 + 8))
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
    if ((v20 & 0x10) == 0 || self->_lastPlayedDateTime != *(v4 + 5))
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
      if ((v4[329] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[329])
    {
      goto LABEL_40;
    }
  }

  else if ((v20 & 0x1000000) != 0)
  {
    goto LABEL_40;
  }

  cloudVersionHash = self->_cloudVersionHash;
  if (cloudVersionHash | *(v4 + 17) && ![(NSString *)cloudVersionHash isEqual:?])
  {
    goto LABEL_40;
  }

  artworkId = self->_artworkId;
  if (artworkId | *(v4 + 10))
  {
    if (![(NSString *)artworkId isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v23 = self->_has;
  v24 = *(v4 + 340);
  if ((*&v23 & 0x1000) != 0)
  {
    if ((v24 & 0x1000) == 0 || self->_likedState != *(v4 + 54))
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
    if ((v24 & 0x8000) == 0 || self->_remoteSourceType != *(v4 + 66))
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
      if ((v4[336] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[336])
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
      if ((v4[332] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[332])
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
    if ((v24 & 0x2000) == 0 || self->_playCount != *(v4 + 60))
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
      if ((v4[338] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[338])
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
      if ((v4[339] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[339])
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
    if ((v24 & 1) == 0 || self->_authorStoreId != *(v4 + 1))
    {
      goto LABEL_40;
    }
  }

  else if (v24)
  {
    goto LABEL_40;
  }

  authorDisplayName = self->_authorDisplayName;
  if (authorDisplayName | *(v4 + 11) && ![(NSString *)authorDisplayName isEqual:?])
  {
    goto LABEL_40;
  }

  authorStoreURL = self->_authorStoreURL;
  if (authorStoreURL | *(v4 + 13))
  {
    if (![(NSString *)authorStoreURL isEqual:?])
    {
      goto LABEL_40;
    }
  }

  authorHandle = self->_authorHandle;
  if (authorHandle | *(v4 + 12))
  {
    if (![(NSString *)authorHandle isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v28 = self->_has;
  v29 = *(v4 + 340);
  if ((*&v28 & 0x40) != 0)
  {
    if ((v29 & 0x40) == 0 || self->_minRefreshInterval != *(v4 + 7))
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
    if ((v29 & 2) == 0 || self->_cloudLastUpdateTime != *(v4 + 2))
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
    if ((v29 & 0x40000) == 0 || self->_subscriberCount != *(v4 + 75))
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
    if ((v29 & 0x100000) == 0 || self->_subscriberPlayCount != *(v4 + 77))
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
    if ((v29 & 0x80000) == 0 || self->_subscriberLikedCount != *(v4 + 76))
    {
      goto LABEL_40;
    }
  }

  else if ((v29 & 0x80000) != 0)
  {
    goto LABEL_40;
  }

  subscriberURL = self->_subscriberURL;
  if (subscriberURL | *(v4 + 39) && ![(NSString *)subscriberURL isEqual:?])
  {
    goto LABEL_40;
  }

  playlistDescription = self->_playlistDescription;
  if (playlistDescription | *(v4 + 31))
  {
    if (![(NSString *)playlistDescription isEqual:?])
    {
      goto LABEL_40;
    }
  }

  cloudUniversalLibraryId = self->_cloudUniversalLibraryId;
  if (cloudUniversalLibraryId | *(v4 + 16))
  {
    if (![(NSString *)cloudUniversalLibraryId isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v33 = self->_has;
  v34 = *(v4 + 340);
  if ((*&v33 & 0x10000) != 0)
  {
    if ((v34 & 0x10000) == 0 || self->_secondaryArtworkSourceType != *(v4 + 70))
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x10000) != 0)
  {
    goto LABEL_40;
  }

  secondaryArtworkId = self->_secondaryArtworkId;
  if (secondaryArtworkId | *(v4 + 34))
  {
    if (![(NSString *)secondaryArtworkId isEqual:?])
    {
      goto LABEL_40;
    }

    v33 = self->_has;
    v34 = *(v4 + 340);
  }

  if ((*&v33 & 0x4000) != 0)
  {
    if ((v34 & 0x4000) == 0 || self->_playlistCategoryTypeMask != *(v4 + 61))
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x4000) != 0)
  {
    goto LABEL_40;
  }

  playlistGroupingSortKey = self->_playlistGroupingSortKey;
  if (playlistGroupingSortKey | *(v4 + 32))
  {
    if (![(NSString *)playlistGroupingSortKey isEqual:?])
    {
      goto LABEL_40;
    }

    v33 = self->_has;
    v34 = *(v4 + 340);
  }

  if ((*&v33 & 0x20) != 0)
  {
    if ((v34 & 0x20) == 0 || self->_likedStateChangedDate != *(v4 + 6))
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
    if ((v34 & 0x200000) == 0 || self->_traits != *(v4 + 80))
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x200000) != 0)
  {
    goto LABEL_40;
  }

  coverArtworkRecipe = self->_coverArtworkRecipe;
  if (coverArtworkRecipe | *(v4 + 20))
  {
    if (![(NSString *)coverArtworkRecipe isEqual:?])
    {
      goto LABEL_40;
    }

    v33 = self->_has;
    v34 = *(v4 + 340);
  }

  if ((*&v33 & 0x40000000) != 0)
  {
    if ((v34 & 0x40000000) == 0)
    {
      goto LABEL_40;
    }

    if (self->_isCollaborative)
    {
      if ((v4[335] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[335])
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
    if ((v34 & 0x200) == 0 || self->_collaborationMode != *(v4 + 38))
    {
      goto LABEL_40;
    }
  }

  else if ((v34 & 0x200) != 0)
  {
    goto LABEL_40;
  }

  collaborationInvitationURL = self->_collaborationInvitationURL;
  if (collaborationInvitationURL | *(v4 + 18))
  {
    if (![(NSString *)collaborationInvitationURL isEqual:?])
    {
      goto LABEL_40;
    }

    v33 = self->_has;
    v34 = *(v4 + 340);
  }

  if ((*&v33 & 4) != 0)
  {
    if ((v34 & 4) == 0 || self->_collaborationInvitationURLExpirationDate != *(v4 + 3))
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
      if ((v4[331] & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v4[331])
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

  if ((v34 & 0x400) == 0 || self->_collaboratorStatus != *(v4 + 39))
  {
    goto LABEL_40;
  }

LABEL_261:
  childIdentifiers = self->_childIdentifiers;
  if (childIdentifiers | *(v4 + 14) && ![(NSMutableArray *)childIdentifiers isEqual:?])
  {
    goto LABEL_40;
  }

  items = self->_items;
  if (items | *(v4 + 26))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
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
  v9 = [(MIPSmartPlaylistInfo *)self->_smartPlaylistInfo copyWithZone:a3];
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

  v12 = [(MIPMultiverseIdentifier *)self->_parentIdentifier copyWithZone:a3];
  v13 = *(v5 + 232);
  *(v5 + 232) = v12;

  v14 = [(MIPMultiverseIdentifier *)self->_geniusSeedTrackIdentifier copyWithZone:a3];
  v15 = *(v5 + 200);
  *(v5 + 200) = v14;

  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(v5 + 168) = self->_distinguishedKind;
    *(v5 + 340) |= 0x800uLL;
  }

  v16 = [(NSString *)self->_cloudGlobalId copyWithZone:a3];
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

  v19 = [(NSString *)self->_externalVendorIdentifier copyWithZone:a3];
  v20 = *(v5 + 184);
  *(v5 + 184) = v19;

  v21 = [(NSString *)self->_externalVendorDisplayName copyWithZone:a3];
  v22 = *(v5 + 176);
  *(v5 + 176) = v21;

  v23 = [(NSString *)self->_externalVendorTag copyWithZone:a3];
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
  v26 = [(NSString *)self->_cloudVersionHash copyWithZone:a3];
  v27 = *(v5 + 136);
  *(v5 + 136) = v26;

  v28 = [(NSString *)self->_artworkId copyWithZone:a3];
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
  v31 = [(NSString *)self->_authorDisplayName copyWithZone:a3];
  v32 = *(v5 + 88);
  *(v5 + 88) = v31;

  v33 = [(NSString *)self->_authorStoreURL copyWithZone:a3];
  v34 = *(v5 + 104);
  *(v5 + 104) = v33;

  v35 = [(NSString *)self->_authorHandle copyWithZone:a3];
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
  v38 = [(NSString *)self->_subscriberURL copyWithZone:a3];
  v39 = *(v5 + 312);
  *(v5 + 312) = v38;

  v40 = [(NSString *)self->_playlistDescription copyWithZone:a3];
  v41 = *(v5 + 248);
  *(v5 + 248) = v40;

  v42 = [(NSString *)self->_cloudUniversalLibraryId copyWithZone:a3];
  v43 = *(v5 + 128);
  *(v5 + 128) = v42;

  if (*(&self->_has + 2))
  {
    *(v5 + 280) = self->_secondaryArtworkSourceType;
    *(v5 + 340) |= 0x10000uLL;
  }

  v44 = [(NSString *)self->_secondaryArtworkId copyWithZone:a3];
  v45 = *(v5 + 272);
  *(v5 + 272) = v44;

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v5 + 244) = self->_playlistCategoryTypeMask;
    *(v5 + 340) |= 0x4000uLL;
  }

  v46 = [(NSString *)self->_playlistGroupingSortKey copyWithZone:a3];
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

  v49 = [(NSString *)self->_coverArtworkRecipe copyWithZone:a3];
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

  v52 = [(NSString *)self->_collaborationInvitationURL copyWithZone:a3];
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

        v60 = [*(*(&v73 + 1) + 8 * v59) copyWithZone:a3];
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

        v66 = [*(*(&v69 + 1) + 8 * v65) copyWithZone:{a3, v69}];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v22 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v22;
  }

  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    *(v4 + 9) = self->_storeId;
    *(v4 + 340) |= 0x100uLL;
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

  *(v4 + 81) = self->_type;
  *(v4 + 340) |= 0x400000uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_6:
    v4[334] = self->_hidden;
    *(v4 + 340) |= 0x20000000uLL;
  }

LABEL_7:
  if (self->_smartPlaylistInfo)
  {
    [v22 setSmartPlaylistInfo:?];
    v4 = v22;
  }

  v6 = self->_has;
  if ((*&v6 & 0x20000) != 0)
  {
    *(v4 + 74) = self->_sortType;
    *(v4 + 340) |= 0x20000uLL;
    v6 = self->_has;
  }

  if ((*&v6 & 0x100000000) != 0)
  {
    v4[337] = self->_reversedSorting;
    *(v4 + 340) |= 0x100000000uLL;
  }

  if (self->_parentIdentifier)
  {
    [v22 setParentIdentifier:?];
    v4 = v22;
  }

  if (self->_geniusSeedTrackIdentifier)
  {
    [v22 setGeniusSeedTrackIdentifier:?];
    v4 = v22;
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(v4 + 42) = self->_distinguishedKind;
    *(v4 + 340) |= 0x800uLL;
  }

  if (self->_cloudGlobalId)
  {
    [v22 setCloudGlobalId:?];
    v4 = v22;
  }

  v7 = self->_has;
  if ((*&v7 & 0x2000000) != 0)
  {
    v4[330] = self->_cloudIsSubscribed;
    *(v4 + 340) |= 0x2000000uLL;
    v7 = self->_has;
  }

  if ((*&v7 & 0x800000) != 0)
  {
    v4[328] = self->_cloudIsCuratorPlaylist;
    *(v4 + 340) |= 0x800000uLL;
  }

  if (self->_externalVendorIdentifier)
  {
    [v22 setExternalVendorIdentifier:?];
    v4 = v22;
  }

  if (self->_externalVendorDisplayName)
  {
    [v22 setExternalVendorDisplayName:?];
    v4 = v22;
  }

  if (self->_externalVendorTag)
  {
    [v22 setExternalVendorTag:?];
    v4 = v22;
  }

  v8 = self->_has;
  if ((*&v8 & 0x10000000) != 0)
  {
    v4[333] = self->_externalVendorPlaylist;
    *(v4 + 340) |= 0x10000000uLL;
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

  *(v4 + 4) = self->_creationDateTime;
  *(v4 + 340) |= 8uLL;
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
  *(v4 + 8) = self->_modificationDateTime;
  *(v4 + 340) |= 0x80uLL;
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
  *(v4 + 5) = self->_lastPlayedDateTime;
  *(v4 + 340) |= 0x10uLL;
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_36:
    v4[329] = self->_cloudIsSharingDisabled;
    *(v4 + 340) |= 0x1000000uLL;
  }

LABEL_37:
  if (self->_cloudVersionHash)
  {
    [v22 setCloudVersionHash:?];
    v4 = v22;
  }

  if (self->_artworkId)
  {
    [v22 setArtworkId:?];
    v4 = v22;
  }

  v9 = self->_has;
  if ((*&v9 & 0x1000) != 0)
  {
    *(v4 + 54) = self->_likedState;
    *(v4 + 340) |= 0x1000uLL;
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

  *(v4 + 66) = self->_remoteSourceType;
  *(v4 + 340) |= 0x8000uLL;
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
  v4[336] = self->_owner;
  *(v4 + 340) |= 0x80000000uLL;
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
  v4[332] = self->_editable;
  *(v4 + 340) |= 0x8000000uLL;
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
  *(v4 + 60) = self->_playCount;
  *(v4 + 340) |= 0x2000uLL;
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
  v4[338] = self->_shared;
  *(v4 + 340) |= 0x200000000uLL;
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
  v4[339] = self->_visible;
  *(v4 + 340) |= 0x400000000uLL;
  if (*&self->_has)
  {
LABEL_49:
    *(v4 + 1) = self->_authorStoreId;
    *(v4 + 340) |= 1uLL;
  }

LABEL_50:
  if (self->_authorDisplayName)
  {
    [v22 setAuthorDisplayName:?];
    v4 = v22;
  }

  if (self->_authorStoreURL)
  {
    [v22 setAuthorStoreURL:?];
    v4 = v22;
  }

  if (self->_authorHandle)
  {
    [v22 setAuthorHandle:?];
    v4 = v22;
  }

  v10 = self->_has;
  if ((*&v10 & 0x40) != 0)
  {
    *(v4 + 7) = self->_minRefreshInterval;
    *(v4 + 340) |= 0x40uLL;
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

  *(v4 + 2) = self->_cloudLastUpdateTime;
  *(v4 + 340) |= 2uLL;
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
  *(v4 + 75) = self->_subscriberCount;
  *(v4 + 340) |= 0x40000uLL;
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
  *(v4 + 77) = self->_subscriberPlayCount;
  *(v4 + 340) |= 0x100000uLL;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_61:
    *(v4 + 76) = self->_subscriberLikedCount;
    *(v4 + 340) |= 0x80000uLL;
  }

LABEL_62:
  if (self->_subscriberURL)
  {
    [v22 setSubscriberURL:?];
    v4 = v22;
  }

  if (self->_playlistDescription)
  {
    [v22 setPlaylistDescription:?];
    v4 = v22;
  }

  if (self->_cloudUniversalLibraryId)
  {
    [v22 setCloudUniversalLibraryId:?];
    v4 = v22;
  }

  if (*(&self->_has + 2))
  {
    *(v4 + 70) = self->_secondaryArtworkSourceType;
    *(v4 + 340) |= 0x10000uLL;
  }

  if (self->_secondaryArtworkId)
  {
    [v22 setSecondaryArtworkId:?];
    v4 = v22;
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v4 + 61) = self->_playlistCategoryTypeMask;
    *(v4 + 340) |= 0x4000uLL;
  }

  if (self->_playlistGroupingSortKey)
  {
    [v22 setPlaylistGroupingSortKey:?];
    v4 = v22;
  }

  v11 = self->_has;
  if ((*&v11 & 0x20) != 0)
  {
    *(v4 + 6) = self->_likedStateChangedDate;
    *(v4 + 340) |= 0x20uLL;
    v11 = self->_has;
  }

  if ((*&v11 & 0x200000) != 0)
  {
    *(v4 + 80) = self->_traits;
    *(v4 + 340) |= 0x200000uLL;
  }

  if (self->_coverArtworkRecipe)
  {
    [v22 setCoverArtworkRecipe:?];
    v4 = v22;
  }

  v12 = self->_has;
  if ((*&v12 & 0x40000000) != 0)
  {
    v4[335] = self->_isCollaborative;
    *(v4 + 340) |= 0x40000000uLL;
    v12 = self->_has;
  }

  if ((*&v12 & 0x200) != 0)
  {
    *(v4 + 38) = self->_collaborationMode;
    *(v4 + 340) |= 0x200uLL;
  }

  if (self->_collaborationInvitationURL)
  {
    [v22 setCollaborationInvitationURL:?];
    v4 = v22;
  }

  v13 = self->_has;
  if ((*&v13 & 4) == 0)
  {
    if ((*&v13 & 0x4000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_125:
    v4[331] = self->_collaborationJoinRequestPending;
    *(v4 + 340) |= 0x4000000uLL;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  *(v4 + 3) = self->_collaborationInvitationURLExpirationDate;
  *(v4 + 340) |= 4uLL;
  v13 = self->_has;
  if ((*&v13 & 0x4000000) != 0)
  {
    goto LABEL_125;
  }

LABEL_90:
  if ((*&v13 & 0x400) != 0)
  {
LABEL_91:
    *(v4 + 39) = self->_collaboratorStatus;
    *(v4 + 340) |= 0x400uLL;
  }

LABEL_92:
  if ([(MIPPlaylist *)self childIdentifiersCount])
  {
    [v22 clearChildIdentifiers];
    v14 = [(MIPPlaylist *)self childIdentifiersCount];
    if (v14)
    {
      v15 = v14;
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
    v18 = [(MIPPlaylist *)self itemsCount];
    if (v18)
    {
      v19 = v18;
      for (j = 0; j != v19; ++j)
      {
        v21 = [(MIPPlaylist *)self itemsAtIndex:j];
        [v22 addItems:v21];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
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
    v9 = [(MIPSmartPlaylistInfo *)smartPlaylistInfo dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"smartPlaylistInfo"];
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
    v18 = [(MIPMultiverseIdentifier *)parentIdentifier dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"parentIdentifier"];
  }

  geniusSeedTrackIdentifier = self->_geniusSeedTrackIdentifier;
  if (geniusSeedTrackIdentifier)
  {
    v20 = [(MIPMultiverseIdentifier *)geniusSeedTrackIdentifier dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"geniusSeedTrackIdentifier"];
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

          v63 = [*(*(&v94 + 1) + 8 * i) dictionaryRepresentation];
          [v57 addObject:v63];
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

          v70 = [*(*(&v90 + 1) + 8 * j) dictionaryRepresentation];
          [v64 addObject:v70];
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
  v5 = [(MIPPlaylist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addItems:(id)a3
{
  v4 = a3;
  items = self->_items;
  v8 = v4;
  if (!items)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_items;
    self->_items = v6;

    v4 = v8;
    items = self->_items;
  }

  [(NSMutableArray *)items addObject:v4];
}

- (void)addChildIdentifiers:(id)a3
{
  v4 = a3;
  childIdentifiers = self->_childIdentifiers;
  v8 = v4;
  if (!childIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_childIdentifiers;
    self->_childIdentifiers = v6;

    v4 = v8;
    childIdentifiers = self->_childIdentifiers;
  }

  [(NSMutableArray *)childIdentifiers addObject:v4];
}

- (void)setHasCollaboratorStatus:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasCollaborationJoinRequestPending:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasCollaborationInvitationURLExpirationDate:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasCollaborationMode:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasIsCollaborative:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasTraits:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasLikedStateChangedDate:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasPlaylistCategoryTypeMask:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasSecondaryArtworkSourceType:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasSubscriberLikedCount:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSubscriberPlayCount:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasSubscriberCount:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasCloudLastUpdateTime:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasMinRefreshInterval:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasVisible:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasShared:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasPlayCount:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasEditable:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasOwner:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasRemoteSourceType:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasLikedState:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasCloudIsSharingDisabled:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasLastPlayedDateTime:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasModificationDateTime:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasCreationDateTime:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasExternalVendorPlaylist:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasCloudIsCuratorPlaylist:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasCloudIsSubscribed:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasDistinguishedKind:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasReversedSorting:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (int)StringAsSortType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Artist"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Album"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Name"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ReleaseDate"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AddedDate"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PlayedDate"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SeriesName"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Physical"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Shuffle"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TrackID"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"PlaylistItemID"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"BitRate"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"Genre"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"Kind"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"Date"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"TrackNumber"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"TotalSize"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"TotalTime"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"Year"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SampleRate"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"Category"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"Location"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"StreamStatus"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"Description"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"Comment"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"DateAdded"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"EQPreset"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"Composer"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"NormVolume"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"UserPlayCount"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"PlayDate"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"DiscNumber"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"TrackRating"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"CompilationArtist"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"CompilationGenre"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"FastArtist"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"FastAlbumArtistOrArtist"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"FastAlbum"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"FastGenre"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"FastComposer"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"Price"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"Relevance"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"PurchaseDate"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"BeatsPerMinute"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"Popularity"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"Grouping"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"SeasonNumber"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"EpisodeID"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"EpisodeSortID"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"UserSkipCount"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"SkipDate"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"AlbumArtist"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"AlbumByArtistYear"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"AlbumByArtist"])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:@"AlbumRating"])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:@"RentalExpirationDate"])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:@"ComposerAlbum"])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:@"CategoryAlbum"])
  {
    v4 = 58;
  }

  else if ([v3 isEqualToString:@"GenreAlbum"])
  {
    v4 = 59;
  }

  else if ([v3 isEqualToString:@"GenreName"])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:@"GeniusID"])
  {
    v4 = 61;
  }

  else if ([v3 isEqualToString:@"PodcastCategory"])
  {
    v4 = 62;
  }

  else if ([v3 isEqualToString:@"StorePersistentID"])
  {
    v4 = 63;
  }

  else if ([v3 isEqualToString:@"Version"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"UncompressedSize"])
  {
    v4 = 65;
  }

  else if ([v3 isEqualToString:@"AppKind"])
  {
    v4 = 66;
  }

  else if ([v3 isEqualToString:@"UserDisabled"])
  {
    v4 = 67;
  }

  else if ([v3 isEqualToString:@"CloudDownload"])
  {
    v4 = 68;
  }

  else if ([v3 isEqualToString:@"CloudMatchState"])
  {
    v4 = 69;
  }

  else if ([v3 isEqualToString:@"CloudID"])
  {
    v4 = 70;
  }

  else if ([v3 isEqualToString:@"CloudUserID"])
  {
    v4 = 71;
  }

  else if ([v3 isEqualToString:@"CloudStatus"])
  {
    v4 = 72;
  }

  else if ([v3 isEqualToString:@"CloudFlavorID"])
  {
    v4 = 73;
  }

  else if ([v3 isEqualToString:@"CloudLibraryKind"])
  {
    v4 = 74;
  }

  else if ([v3 isEqualToString:@"Tags"])
  {
    v4 = 75;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sortTypeAsString:(int)a3
{
  if (a3 >= 0x4C)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_278762F20[a3];
  }

  return v4;
}

- (void)setHasSortType:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
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

- (void)setHasHidden:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Normal"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Smart"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Genius"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Folder"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)typeAsString:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_278762F00[a3 - 1];
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
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

- (void)setHasStoreId:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

@end