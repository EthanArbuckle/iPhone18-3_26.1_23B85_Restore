@interface BLTPBBulletin
+ (id)_handleThumbnailResponse:(id)a3 attachmentMetadata:(id)a4 transcodedAttachmentSaveURL:(id)a5 wantsData:(BOOL)a6 imageContentType:(id)a7;
+ (id)bulletinWithBBBulletin:(id)a3 sockPuppetAppBundleID:(id)a4 observer:(id)a5 feed:(unint64_t)a6 teamID:(id)a7 universalSectionID:(id)a8 shouldUseExpirationDate:(BOOL)a9 replyToken:(id)a10 gizmoLegacyPublisherBulletinID:(id)a11 gizmoLegacyCategoryID:(id)a12 gizmoSectionID:(id)a13 gizmoSectionSubtype:(id)a14 useUserInfoForContext:(BOOL)a15 removeSubtitleForOlderWatches:(BOOL)a16;
+ (void)_addAttachmentsFromBBBulletin:(id)a3 toBLTPBBulletin:(id)a4 observer:(id)a5 attachOption:(unint64_t)a6 completion:(id)a7;
+ (void)_attachmentFromBBAttachmentMetadata:(id)a3 bulletin:(id)a4 observer:(id)a5 fileOption:(unint64_t)a6 attachOption:(unint64_t)a7 completion:(id)a8;
+ (void)bulletinWithBBBulletin:(id)a3 sockPuppetAppBundleID:(id)a4 observer:(id)a5 feed:(unint64_t)a6 teamID:(id)a7 universalSectionID:(id)a8 shouldUseExpirationDate:(BOOL)a9 replyToken:(id)a10 gizmoLegacyPublisherBulletinID:(id)a11 gizmoLegacyCategoryID:(id)a12 gizmoSectionID:(id)a13 gizmoSectionSubtype:(id)a14 useUserInfoForContext:(BOOL)a15 removeSubtitleForOlderWatches:(BOOL)a16 attachOption:(unint64_t)a17 completion:(id)a18;
- (BOOL)isEqual:(id)a3;
- (id)attachmentKey:(id)a3;
- (id)attachmentURLURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)publisherMatchID;
- (unint64_t)hash;
- (void)addAdditionalAttachments:(id)a3;
- (void)addPeopleIDs:(id)a3;
- (void)addSubsectionIDs:(id)a3;
- (void)addSupplementaryActions:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAttachmentType:(BOOL)a3;
- (void)setHasContainsUpdateIcon:(BOOL)a3;
- (void)setHasContainsUpdatedAttachment:(BOOL)a3;
- (void)setHasHasCriticalIcon:(BOOL)a3;
- (void)setHasHasSubordinateIcon:(BOOL)a3;
- (void)setHasIgnoresQuietMode:(BOOL)a3;
- (void)setHasInterruptionLevel:(BOOL)a3;
- (void)setHasIsHighlight:(BOOL)a3;
- (void)setHasLoading:(BOOL)a3;
- (void)setHasPreemptsPresentedAlert:(BOOL)a3;
- (void)setHasPriorityNotificationStatus:(BOOL)a3;
- (void)setHasPublicationDate:(BOOL)a3;
- (void)setHasRequiredExpirationDate:(BOOL)a3;
- (void)setHasSectionSubtype:(BOOL)a3;
- (void)setHasSoundAlertType:(BOOL)a3;
- (void)setHasSoundAudioVolume:(BOOL)a3;
- (void)setHasSoundMaximumDuration:(BOOL)a3;
- (void)setHasSoundShouldIgnoreRingerSwitch:(BOOL)a3;
- (void)setHasSoundShouldRepeat:(BOOL)a3;
- (void)setHasSuppressDelayForForwardedBulletins:(BOOL)a3;
- (void)setHasTurnsOnDisplay:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBBulletin

- (void)addSupplementaryActions:(id)a3
{
  v4 = a3;
  supplementaryActions = self->_supplementaryActions;
  v8 = v4;
  if (!supplementaryActions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_supplementaryActions;
    self->_supplementaryActions = v6;

    v4 = v8;
    supplementaryActions = self->_supplementaryActions;
  }

  [(NSMutableArray *)supplementaryActions addObject:v4];
}

- (void)setHasSectionSubtype:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasPublicationDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasSoundAlertType:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasAttachmentType:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasContainsUpdatedAttachment:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasLoading:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasTurnsOnDisplay:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)addSubsectionIDs:(id)a3
{
  v4 = a3;
  subsectionIDs = self->_subsectionIDs;
  v8 = v4;
  if (!subsectionIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subsectionIDs;
    self->_subsectionIDs = v6;

    v4 = v8;
    subsectionIDs = self->_subsectionIDs;
  }

  [(NSMutableArray *)subsectionIDs addObject:v4];
}

- (void)addPeopleIDs:(id)a3
{
  v4 = a3;
  peopleIDs = self->_peopleIDs;
  v8 = v4;
  if (!peopleIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_peopleIDs;
    self->_peopleIDs = v6;

    v4 = v8;
    peopleIDs = self->_peopleIDs;
  }

  [(NSMutableArray *)peopleIDs addObject:v4];
}

- (void)setHasIgnoresQuietMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)addAdditionalAttachments:(id)a3
{
  v4 = a3;
  additionalAttachments = self->_additionalAttachments;
  v8 = v4;
  if (!additionalAttachments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_additionalAttachments;
    self->_additionalAttachments = v6;

    v4 = v8;
    additionalAttachments = self->_additionalAttachments;
  }

  [(NSMutableArray *)additionalAttachments addObject:v4];
}

- (void)setHasRequiredExpirationDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasSoundMaximumDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasSoundShouldRepeat:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasSoundShouldIgnoreRingerSwitch:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasHasCriticalIcon:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasSoundAudioVolume:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasPreemptsPresentedAlert:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasSuppressDelayForForwardedBulletins:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasContainsUpdateIcon:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasInterruptionLevel:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasHasSubordinateIcon:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasPriorityNotificationStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasIsHighlight:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBBulletin;
  v4 = [(BLTPBBulletin *)&v8 description];
  v5 = [(BLTPBBulletin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v103 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  bulletinID = self->_bulletinID;
  if (bulletinID)
  {
    [v3 setObject:bulletinID forKey:@"bulletinID"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [v4 setObject:sectionID forKey:@"sectionID"];
  }

  sectionDisplayName = self->_sectionDisplayName;
  if (sectionDisplayName)
  {
    [v4 setObject:sectionDisplayName forKey:@"sectionDisplayName"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  messageTitle = self->_messageTitle;
  if (messageTitle)
  {
    [v4 setObject:messageTitle forKey:@"messageTitle"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [v4 setObject:v11 forKey:@"date"];
  }

  attachment = self->_attachment;
  if (attachment)
  {
    [v4 setObject:attachment forKey:@"attachment"];
  }

  if ([(NSMutableArray *)self->_supplementaryActions count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_supplementaryActions, "count")}];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v14 = self->_supplementaryActions;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v97 objects:v102 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v98;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v98 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v97 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v97 objects:v102 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"supplementaryActions"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_feed];
  [v4 setObject:v20 forKey:@"feed"];

  snoozeAction = self->_snoozeAction;
  if (snoozeAction)
  {
    v22 = [(BLTPBAction *)snoozeAction dictionaryRepresentation];
    [v4 setObject:v22 forKey:@"snoozeAction"];
  }

  recordID = self->_recordID;
  if (recordID)
  {
    [v4 setObject:recordID forKey:@"recordID"];
  }

  publisherBulletinID = self->_publisherBulletinID;
  if (publisherBulletinID)
  {
    [v4 setObject:publisherBulletinID forKey:@"publisherBulletinID"];
  }

  dismissAction = self->_dismissAction;
  if (dismissAction)
  {
    v26 = [(BLTPBAction *)dismissAction dictionaryRepresentation];
    [v4 setObject:v26 forKey:@"dismissAction"];
  }

  if (*(&self->_has + 1))
  {
    v27 = [MEMORY[0x277CCABB0] numberWithInt:self->_sectionSubtype];
    [v4 setObject:v27 forKey:@"sectionSubtype"];
  }

  sockPuppetAppBundleID = self->_sockPuppetAppBundleID;
  if (sockPuppetAppBundleID)
  {
    [v4 setObject:sockPuppetAppBundleID forKey:@"sockPuppetAppBundleID"];
  }

  category = self->_category;
  if (category)
  {
    [v4 setObject:category forKey:@"category"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_publicationDate];
    [v4 setObject:v30 forKey:@"publicationDate"];
  }

  v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_includesSound];
  [v4 setObject:v31 forKey:@"includesSound"];

  teamID = self->_teamID;
  if (teamID)
  {
    [v4 setObject:teamID forKey:@"teamID"];
  }

  context = self->_context;
  if (context)
  {
    [v4 setObject:context forKey:@"context"];
  }

  universalSectionID = self->_universalSectionID;
  if (universalSectionID)
  {
    [v4 setObject:universalSectionID forKey:@"universalSectionID"];
  }

  alertSuppressionContexts = self->_alertSuppressionContexts;
  if (alertSuppressionContexts)
  {
    [v4 setObject:alertSuppressionContexts forKey:@"alertSuppressionContexts"];
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    v36 = [MEMORY[0x277CCABB0] numberWithInt:self->_soundAlertType];
    [v4 setObject:v36 forKey:@"soundAlertType"];
  }

  soundAccountIdentifier = self->_soundAccountIdentifier;
  if (soundAccountIdentifier)
  {
    [v4 setObject:soundAccountIdentifier forKey:@"soundAccountIdentifier"];
  }

  soundToneIdentifier = self->_soundToneIdentifier;
  if (soundToneIdentifier)
  {
    [v4 setObject:soundToneIdentifier forKey:@"soundToneIdentifier"];
  }

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_attachmentType];
    [v4 setObject:v84 forKey:@"attachmentType"];

    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_58:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_135;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_58;
  }

  v85 = [MEMORY[0x277CCABB0] numberWithBool:self->_containsUpdatedAttachment];
  [v4 setObject:v85 forKey:@"containsUpdatedAttachment"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_59:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_135:
  v86 = [MEMORY[0x277CCABB0] numberWithBool:self->_loading];
  [v4 setObject:v86 forKey:@"loading"];

  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_60:
    v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_turnsOnDisplay];
    [v4 setObject:v40 forKey:@"turnsOnDisplay"];
  }

LABEL_61:
  subsectionIDs = self->_subsectionIDs;
  if (subsectionIDs)
  {
    [v4 setObject:subsectionIDs forKey:@"subsectionIDs"];
  }

  dismissalID = self->_dismissalID;
  if (dismissalID)
  {
    [v4 setObject:dismissalID forKey:@"dismissalID"];
  }

  attachmentURL = self->_attachmentURL;
  if (attachmentURL)
  {
    [v4 setObject:attachmentURL forKey:@"attachmentURL"];
  }

  peopleIDs = self->_peopleIDs;
  if (peopleIDs)
  {
    [v4 setObject:peopleIDs forKey:@"peopleIDs"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithBool:self->_ignoresQuietMode];
    [v4 setObject:v45 forKey:@"ignoresQuietMode"];
  }

  categoryID = self->_categoryID;
  if (categoryID)
  {
    [v4 setObject:categoryID forKey:@"categoryID"];
  }

  contextNulls = self->_contextNulls;
  if (contextNulls)
  {
    [v4 setObject:contextNulls forKey:@"contextNulls"];
  }

  alertSuppressionContextsNulls = self->_alertSuppressionContextsNulls;
  if (alertSuppressionContextsNulls)
  {
    [v4 setObject:alertSuppressionContextsNulls forKey:@"alertSuppressionContextsNulls"];
  }

  threadID = self->_threadID;
  if (threadID)
  {
    [v4 setObject:threadID forKey:@"threadID"];
  }

  attachmentID = self->_attachmentID;
  if (attachmentID)
  {
    [v4 setObject:attachmentID forKey:@"attachmentID"];
  }

  if ([(NSMutableArray *)self->_additionalAttachments count])
  {
    v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_additionalAttachments, "count")}];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v52 = self->_additionalAttachments;
    v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v93 objects:v101 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v94;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v94 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = [*(*(&v93 + 1) + 8 * j) dictionaryRepresentation];
          [v51 addObject:v57];
        }

        v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v93 objects:v101 count:16];
      }

      while (v54);
    }

    [v4 setObject:v51 forKey:@"additionalAttachments"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v58 = [MEMORY[0x277CCABB0] numberWithDouble:self->_requiredExpirationDate];
    [v4 setObject:v58 forKey:@"requiredExpirationDate"];
  }

  replyToken = self->_replyToken;
  if (replyToken)
  {
    [v4 setObject:replyToken forKey:@"replyToken"];
  }

  v60 = self->_has;
  if ((*&v60 & 0x20) != 0)
  {
    v87 = [MEMORY[0x277CCABB0] numberWithDouble:self->_soundMaximumDuration];
    [v4 setObject:v87 forKey:@"soundMaximumDuration"];

    v60 = self->_has;
    if ((*&v60 & 0x80000) == 0)
    {
LABEL_96:
      if ((*&v60 & 0x40000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_139;
    }
  }

  else if ((*&v60 & 0x80000) == 0)
  {
    goto LABEL_96;
  }

  v88 = [MEMORY[0x277CCABB0] numberWithBool:{self->_soundShouldRepeat, v93}];
  [v4 setObject:v88 forKey:@"soundShouldRepeat"];

  v60 = self->_has;
  if ((*&v60 & 0x40000) == 0)
  {
LABEL_97:
    if ((*&v60 & 0x1000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_140;
  }

LABEL_139:
  v89 = [MEMORY[0x277CCABB0] numberWithBool:{self->_soundShouldIgnoreRingerSwitch, v93}];
  [v4 setObject:v89 forKey:@"soundShouldIgnoreRingerSwitch"];

  v60 = self->_has;
  if ((*&v60 & 0x1000) == 0)
  {
LABEL_98:
    if ((*&v60 & 0x10) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_141;
  }

LABEL_140:
  v90 = [MEMORY[0x277CCABB0] numberWithBool:{self->_hasCriticalIcon, v93}];
  [v4 setObject:v90 forKey:@"hasCriticalIcon"];

  v60 = self->_has;
  if ((*&v60 & 0x10) == 0)
  {
LABEL_99:
    if ((*&v60 & 0x20000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_142;
  }

LABEL_141:
  v91 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_soundAudioVolume, v93}];
  [v4 setObject:v91 forKey:@"soundAudioVolume"];

  v60 = self->_has;
  if ((*&v60 & 0x20000) == 0)
  {
LABEL_100:
    if ((*&v60 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

LABEL_142:
  v92 = [MEMORY[0x277CCABB0] numberWithBool:{self->_preemptsPresentedAlert, v93}];
  [v4 setObject:v92 forKey:@"preemptsPresentedAlert"];

  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_101:
    v61 = [MEMORY[0x277CCABB0] numberWithBool:{self->_suppressDelayForForwardedBulletins, v93}];
    [v4 setObject:v61 forKey:@"suppressDelayForForwardedBulletins"];
  }

LABEL_102:
  icon = self->_icon;
  if (icon)
  {
    v63 = [(BLTPBSectionIcon *)icon dictionaryRepresentation];
    [v4 setObject:v63 forKey:@"icon"];
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    v64 = [MEMORY[0x277CCABB0] numberWithBool:self->_containsUpdateIcon];
    [v4 setObject:v64 forKey:@"containsUpdateIcon"];
  }

  header = self->_header;
  if (header)
  {
    [v4 setObject:header forKey:@"header"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_interruptionLevel];
    [v4 setObject:v66 forKey:@"interruptionLevel"];
  }

  communicationContext = self->_communicationContext;
  if (communicationContext)
  {
    v68 = [(BLTPBCommunicationContext *)communicationContext dictionaryRepresentation];
    [v4 setObject:v68 forKey:@"communicationContext"];
  }

  contentType = self->_contentType;
  if (contentType)
  {
    [v4 setObject:contentType forKey:@"contentType"];
  }

  filterCriteria = self->_filterCriteria;
  if (filterCriteria)
  {
    [v4 setObject:filterCriteria forKey:@"filterCriteria"];
  }

  followActivityAction = self->_followActivityAction;
  if (followActivityAction)
  {
    v72 = [(BLTPBAction *)followActivityAction dictionaryRepresentation];
    [v4 setObject:v72 forKey:@"followActivityAction"];
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v73 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasSubordinateIcon];
    [v4 setObject:v73 forKey:@"hasSubordinateIcon"];
  }

  summary = self->_summary;
  if (summary)
  {
    [v4 setObject:summary forKey:@"summary"];
  }

  threadSummary = self->_threadSummary;
  if (threadSummary)
  {
    [v4 setObject:threadSummary forKey:@"threadSummary"];
  }

  attributedMessage = self->_attributedMessage;
  if (attributedMessage)
  {
    [v4 setObject:attributedMessage forKey:@"attributedMessage"];
  }

  eventBehavior = self->_eventBehavior;
  if (eventBehavior)
  {
    [v4 setObject:eventBehavior forKey:@"eventBehavior"];
  }

  v78 = self->_has;
  if ((*&v78 & 2) != 0)
  {
    v79 = [MEMORY[0x277CCABB0] numberWithDouble:self->_priorityNotificationStatus];
    [v4 setObject:v79 forKey:@"priorityNotificationStatus"];

    v78 = self->_has;
  }

  if ((*&v78 & 0x8000) != 0)
  {
    v80 = [MEMORY[0x277CCABB0] numberWithBool:self->_isHighlight];
    [v4 setObject:v80 forKey:@"isHighlight"];
  }

  v81 = v4;

  v82 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)writeTo:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_bulletinID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sectionDisplayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
  }

  if (self->_attachment)
  {
    PBDataWriterWriteDataField();
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v6 = self->_supplementaryActions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v70;
    do
    {
      v10 = 0;
      do
      {
        if (*v70 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v69 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v8);
  }

  feed = self->_feed;
  PBDataWriterWriteUint32Field();
  if (self->_snoozeAction)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_publisherBulletinID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dismissAction)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_has + 1))
  {
    sectionSubtype = self->_sectionSubtype;
    PBDataWriterWriteInt32Field();
  }

  if (self->_sockPuppetAppBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    publicationDate = self->_publicationDate;
    PBDataWriterWriteDoubleField();
  }

  includesSound = self->_includesSound;
  PBDataWriterWriteBOOLField();
  if (self->_teamID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_context)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_universalSectionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alertSuppressionContexts)
  {
    PBDataWriterWriteDataField();
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    soundAlertType = self->_soundAlertType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_soundAccountIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_soundToneIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    attachmentType = self->_attachmentType;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_56:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_141;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_56;
  }

  containsUpdatedAttachment = self->_containsUpdatedAttachment;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_57:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_141:
  loading = self->_loading;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_58:
    turnsOnDisplay = self->_turnsOnDisplay;
    PBDataWriterWriteBOOLField();
  }

LABEL_59:
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v19 = self->_subsectionIDs;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v66;
    do
    {
      v23 = 0;
      do
      {
        if (*v66 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v65 + 1) + 8 * v23);
        PBDataWriterWriteStringField();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v21);
  }

  if (self->_dismissalID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_attachmentURL)
  {
    PBDataWriterWriteStringField();
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v25 = self->_peopleIDs;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v62;
    do
    {
      v29 = 0;
      do
      {
        if (*v62 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v61 + 1) + 8 * v29);
        PBDataWriterWriteStringField();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v27);
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    ignoresQuietMode = self->_ignoresQuietMode;
    PBDataWriterWriteBOOLField();
  }

  if (self->_categoryID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contextNulls)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_alertSuppressionContextsNulls)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_threadID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_attachmentID)
  {
    PBDataWriterWriteStringField();
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v32 = self->_additionalAttachments;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v58;
    do
    {
      v36 = 0;
      do
      {
        if (*v58 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v57 + 1) + 8 * v36);
        PBDataWriterWriteSubmessage();
        ++v36;
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v34);
  }

  if ((*&self->_has & 8) != 0)
  {
    requiredExpirationDate = self->_requiredExpirationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_replyToken)
  {
    PBDataWriterWriteStringField();
  }

  v39 = self->_has;
  if ((*&v39 & 0x20) != 0)
  {
    soundMaximumDuration = self->_soundMaximumDuration;
    PBDataWriterWriteDoubleField();
    v39 = self->_has;
    if ((*&v39 & 0x80000) == 0)
    {
LABEL_102:
      if ((*&v39 & 0x40000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_145;
    }
  }

  else if ((*&v39 & 0x80000) == 0)
  {
    goto LABEL_102;
  }

  soundShouldRepeat = self->_soundShouldRepeat;
  PBDataWriterWriteBOOLField();
  v39 = self->_has;
  if ((*&v39 & 0x40000) == 0)
  {
LABEL_103:
    if ((*&v39 & 0x1000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_146;
  }

LABEL_145:
  soundShouldIgnoreRingerSwitch = self->_soundShouldIgnoreRingerSwitch;
  PBDataWriterWriteBOOLField();
  v39 = self->_has;
  if ((*&v39 & 0x1000) == 0)
  {
LABEL_104:
    if ((*&v39 & 0x10) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_147;
  }

LABEL_146:
  hasCriticalIcon = self->_hasCriticalIcon;
  PBDataWriterWriteBOOLField();
  v39 = self->_has;
  if ((*&v39 & 0x10) == 0)
  {
LABEL_105:
    if ((*&v39 & 0x20000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_148;
  }

LABEL_147:
  soundAudioVolume = self->_soundAudioVolume;
  PBDataWriterWriteDoubleField();
  v39 = self->_has;
  if ((*&v39 & 0x20000) == 0)
  {
LABEL_106:
    if ((*&v39 & 0x100000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

LABEL_148:
  preemptsPresentedAlert = self->_preemptsPresentedAlert;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_107:
    suppressDelayForForwardedBulletins = self->_suppressDelayForForwardedBulletins;
    PBDataWriterWriteBOOLField();
  }

LABEL_108:
  if (self->_icon)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    containsUpdateIcon = self->_containsUpdateIcon;
    PBDataWriterWriteBOOLField();
  }

  if (self->_header)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    interruptionLevel = self->_interruptionLevel;
    PBDataWriterWriteUint32Field();
  }

  if (self->_communicationContext)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_contentType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_filterCriteria)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_followActivityAction)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    hasSubordinateIcon = self->_hasSubordinateIcon;
    PBDataWriterWriteBOOLField();
  }

  if (self->_summary)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_threadSummary)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_attributedMessage)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_eventBehavior)
  {
    PBDataWriterWriteDataField();
  }

  v44 = self->_has;
  if ((*&v44 & 2) != 0)
  {
    priorityNotificationStatus = self->_priorityNotificationStatus;
    PBDataWriterWriteDoubleField();
    v44 = self->_has;
  }

  if ((*&v44 & 0x8000) != 0)
  {
    isHighlight = self->_isHighlight;
    PBDataWriterWriteBOOLField();
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v26 = v4;
  if (self->_bulletinID)
  {
    [v4 setBulletinID:?];
    v4 = v26;
  }

  if (self->_sectionID)
  {
    [v26 setSectionID:?];
    v4 = v26;
  }

  if (self->_sectionDisplayName)
  {
    [v26 setSectionDisplayName:?];
    v4 = v26;
  }

  if (self->_title)
  {
    [v26 setTitle:?];
    v4 = v26;
  }

  if (self->_subtitle)
  {
    [v26 setSubtitle:?];
    v4 = v26;
  }

  if (self->_messageTitle)
  {
    [v26 setMessageTitle:?];
    v4 = v26;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_date;
    *(v4 + 110) |= 1u;
  }

  if (self->_attachment)
  {
    [v26 setAttachment:?];
  }

  if ([(BLTPBBulletin *)self supplementaryActionsCount])
  {
    [v26 clearSupplementaryActions];
    v5 = [(BLTPBBulletin *)self supplementaryActionsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BLTPBBulletin *)self supplementaryActionsAtIndex:i];
        [v26 addSupplementaryActions:v8];
      }
    }
  }

  v9 = v26;
  *(v26 + 50) = self->_feed;
  if (self->_snoozeAction)
  {
    [v26 setSnoozeAction:?];
    v9 = v26;
  }

  if (self->_recordID)
  {
    [v26 setRecordID:?];
    v9 = v26;
  }

  if (self->_publisherBulletinID)
  {
    [v26 setPublisherBulletinID:?];
    v9 = v26;
  }

  if (self->_dismissAction)
  {
    [v26 setDismissAction:?];
    v9 = v26;
  }

  if (*(&self->_has + 1))
  {
    v9[76] = self->_sectionSubtype;
    v9[110] |= 0x100u;
  }

  if (self->_sockPuppetAppBundleID)
  {
    [v26 setSockPuppetAppBundleID:?];
    v9 = v26;
  }

  if (self->_category)
  {
    [v26 setCategory:?];
    v9 = v26;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v9 + 3) = *&self->_publicationDate;
    v9[110] |= 4u;
  }

  *(v9 + 429) = self->_includesSound;
  if (self->_teamID)
  {
    [v26 setTeamID:?];
    v9 = v26;
  }

  if (self->_context)
  {
    [v26 setContext:?];
    v9 = v26;
  }

  if (self->_universalSectionID)
  {
    [v26 setUniversalSectionID:?];
    v9 = v26;
  }

  if (self->_alertSuppressionContexts)
  {
    [v26 setAlertSuppressionContexts:?];
    v9 = v26;
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    v9[84] = self->_soundAlertType;
    v9[110] |= 0x200u;
  }

  if (self->_soundAccountIdentifier)
  {
    [v26 setSoundAccountIdentifier:?];
    v9 = v26;
  }

  if (self->_soundToneIdentifier)
  {
    [v26 setSoundToneIdentifier:?];
    v9 = v26;
  }

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    v9[24] = self->_attachmentType;
    v9[110] |= 0x40u;
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_53:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_54;
      }

LABEL_131:
      *(v9 + 431) = self->_loading;
      v9[110] |= 0x10000u;
      if ((*&self->_has & 0x200000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_53;
  }

  *(v9 + 425) = self->_containsUpdatedAttachment;
  v9[110] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    goto LABEL_131;
  }

LABEL_54:
  if ((*&has & 0x200000) != 0)
  {
LABEL_55:
    *(v9 + 436) = self->_turnsOnDisplay;
    v9[110] |= 0x200000u;
  }

LABEL_56:
  if ([(BLTPBBulletin *)self subsectionIDsCount])
  {
    [v26 clearSubsectionIDs];
    v11 = [(BLTPBBulletin *)self subsectionIDsCount];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(BLTPBBulletin *)self subsectionIDsAtIndex:j];
        [v26 addSubsectionIDs:v14];
      }
    }
  }

  if (self->_dismissalID)
  {
    [v26 setDismissalID:?];
  }

  if (self->_attachmentURL)
  {
    [v26 setAttachmentURL:?];
  }

  if ([(BLTPBBulletin *)self peopleIDsCount])
  {
    [v26 clearPeopleIDs];
    v15 = [(BLTPBBulletin *)self peopleIDsCount];
    if (v15)
    {
      v16 = v15;
      for (k = 0; k != v16; ++k)
      {
        v18 = [(BLTPBBulletin *)self peopleIDsAtIndex:k];
        [v26 addPeopleIDs:v18];
      }
    }
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v26 + 428) = self->_ignoresQuietMode;
    *(v26 + 110) |= 0x4000u;
  }

  if (self->_categoryID)
  {
    [v26 setCategoryID:?];
  }

  if (self->_contextNulls)
  {
    [v26 setContextNulls:?];
  }

  if (self->_alertSuppressionContextsNulls)
  {
    [v26 setAlertSuppressionContextsNulls:?];
  }

  if (self->_threadID)
  {
    [v26 setThreadID:?];
  }

  if (self->_attachmentID)
  {
    [v26 setAttachmentID:?];
  }

  if ([(BLTPBBulletin *)self additionalAttachmentsCount])
  {
    [v26 clearAdditionalAttachments];
    v19 = [(BLTPBBulletin *)self additionalAttachmentsCount];
    if (v19)
    {
      v20 = v19;
      for (m = 0; m != v20; ++m)
      {
        v22 = [(BLTPBBulletin *)self additionalAttachmentsAtIndex:m];
        [v26 addAdditionalAttachments:v22];
      }
    }
  }

  v23 = v26;
  if ((*&self->_has & 8) != 0)
  {
    *(v26 + 4) = *&self->_requiredExpirationDate;
    *(v26 + 110) |= 8u;
  }

  if (self->_replyToken)
  {
    [v26 setReplyToken:?];
    v23 = v26;
  }

  v24 = self->_has;
  if ((*&v24 & 0x20) != 0)
  {
    v23[6] = *&self->_soundMaximumDuration;
    *(v23 + 110) |= 0x20u;
    v24 = self->_has;
    if ((*&v24 & 0x80000) == 0)
    {
LABEL_90:
      if ((*&v24 & 0x40000) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_135;
    }
  }

  else if ((*&v24 & 0x80000) == 0)
  {
    goto LABEL_90;
  }

  *(v23 + 434) = self->_soundShouldRepeat;
  *(v23 + 110) |= 0x80000u;
  v24 = self->_has;
  if ((*&v24 & 0x40000) == 0)
  {
LABEL_91:
    if ((*&v24 & 0x1000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_136;
  }

LABEL_135:
  *(v23 + 433) = self->_soundShouldIgnoreRingerSwitch;
  *(v23 + 110) |= 0x40000u;
  v24 = self->_has;
  if ((*&v24 & 0x1000) == 0)
  {
LABEL_92:
    if ((*&v24 & 0x10) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(v23 + 426) = self->_hasCriticalIcon;
  *(v23 + 110) |= 0x1000u;
  v24 = self->_has;
  if ((*&v24 & 0x10) == 0)
  {
LABEL_93:
    if ((*&v24 & 0x20000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_138;
  }

LABEL_137:
  v23[5] = *&self->_soundAudioVolume;
  *(v23 + 110) |= 0x10u;
  v24 = self->_has;
  if ((*&v24 & 0x20000) == 0)
  {
LABEL_94:
    if ((*&v24 & 0x100000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_138:
  *(v23 + 432) = self->_preemptsPresentedAlert;
  *(v23 + 110) |= 0x20000u;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_95:
    *(v23 + 435) = self->_suppressDelayForForwardedBulletins;
    *(v23 + 110) |= 0x100000u;
  }

LABEL_96:
  if (self->_icon)
  {
    [v26 setIcon:?];
    v23 = v26;
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v23 + 424) = self->_containsUpdateIcon;
    *(v23 + 110) |= 0x400u;
  }

  if (self->_header)
  {
    [v26 setHeader:?];
    v23 = v26;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(v23 + 60) = self->_interruptionLevel;
    *(v23 + 110) |= 0x80u;
  }

  if (self->_communicationContext)
  {
    [v26 setCommunicationContext:?];
    v23 = v26;
  }

  if (self->_contentType)
  {
    [v26 setContentType:?];
    v23 = v26;
  }

  if (self->_filterCriteria)
  {
    [v26 setFilterCriteria:?];
    v23 = v26;
  }

  if (self->_followActivityAction)
  {
    [v26 setFollowActivityAction:?];
    v23 = v26;
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v23 + 427) = self->_hasSubordinateIcon;
    *(v23 + 110) |= 0x2000u;
  }

  if (self->_summary)
  {
    [v26 setSummary:?];
    v23 = v26;
  }

  if (self->_threadSummary)
  {
    [v26 setThreadSummary:?];
    v23 = v26;
  }

  if (self->_attributedMessage)
  {
    [v26 setAttributedMessage:?];
    v23 = v26;
  }

  if (self->_eventBehavior)
  {
    [v26 setEventBehavior:?];
    v23 = v26;
  }

  v25 = self->_has;
  if ((*&v25 & 2) != 0)
  {
    v23[2] = *&self->_priorityNotificationStatus;
    *(v23 + 110) |= 2u;
    v25 = self->_has;
  }

  if ((*&v25 & 0x8000) != 0)
  {
    *(v23 + 430) = self->_isHighlight;
    *(v23 + 110) |= 0x8000u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v129 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bulletinID copyWithZone:a3];
  v7 = *(v5 + 120);
  *(v5 + 120) = v6;

  v8 = [(NSString *)self->_sectionID copyWithZone:a3];
  v9 = *(v5 + 296);
  *(v5 + 296) = v8;

  v10 = [(NSString *)self->_sectionDisplayName copyWithZone:a3];
  v11 = *(v5 + 288);
  *(v5 + 288) = v10;

  v12 = [(NSString *)self->_title copyWithZone:a3];
  v13 = *(v5 + 408);
  *(v5 + 408) = v12;

  v14 = [(NSString *)self->_subtitle copyWithZone:a3];
  v15 = *(v5 + 360);
  *(v5 + 360) = v14;

  v16 = [(NSString *)self->_messageTitle copyWithZone:a3];
  v17 = *(v5 + 248);
  *(v5 + 248) = v16;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 440) |= 1u;
  }

  v18 = [(NSData *)self->_attachment copyWithZone:a3];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v20 = self->_supplementaryActions;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v121 objects:v128 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v122;
    do
    {
      v24 = 0;
      do
      {
        if (*v122 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v121 + 1) + 8 * v24) copyWithZone:a3];
        [v5 addSupplementaryActions:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v121 objects:v128 count:16];
    }

    while (v22);
  }

  *(v5 + 200) = self->_feed;
  v26 = [(BLTPBAction *)self->_snoozeAction copyWithZone:a3];
  v27 = *(v5 + 312);
  *(v5 + 312) = v26;

  v28 = [(NSString *)self->_recordID copyWithZone:a3];
  v29 = *(v5 + 272);
  *(v5 + 272) = v28;

  v30 = [(NSString *)self->_publisherBulletinID copyWithZone:a3];
  v31 = *(v5 + 264);
  *(v5 + 264) = v30;

  v32 = [(BLTPBAction *)self->_dismissAction copyWithZone:a3];
  v33 = *(v5 + 176);
  *(v5 + 176) = v32;

  if (*(&self->_has + 1))
  {
    *(v5 + 304) = self->_sectionSubtype;
    *(v5 + 440) |= 0x100u;
  }

  v34 = [(NSString *)self->_sockPuppetAppBundleID copyWithZone:a3];
  v35 = *(v5 + 320);
  *(v5 + 320) = v34;

  v36 = [(NSString *)self->_category copyWithZone:a3];
  v37 = *(v5 + 128);
  *(v5 + 128) = v36;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_publicationDate;
    *(v5 + 440) |= 4u;
  }

  *(v5 + 429) = self->_includesSound;
  v38 = [(NSString *)self->_teamID copyWithZone:a3];
  v39 = *(v5 + 384);
  *(v5 + 384) = v38;

  v40 = [(NSData *)self->_context copyWithZone:a3];
  v41 = *(v5 + 160);
  *(v5 + 160) = v40;

  v42 = [(NSString *)self->_universalSectionID copyWithZone:a3];
  v43 = *(v5 + 416);
  *(v5 + 416) = v42;

  v44 = [(NSData *)self->_alertSuppressionContexts copyWithZone:a3];
  v45 = *(v5 + 64);
  *(v5 + 64) = v44;

  if ((*(&self->_has + 1) & 2) != 0)
  {
    *(v5 + 336) = self->_soundAlertType;
    *(v5 + 440) |= 0x200u;
  }

  v46 = [(NSString *)self->_soundAccountIdentifier copyWithZone:a3];
  v47 = *(v5 + 328);
  *(v5 + 328) = v46;

  v48 = [(NSString *)self->_soundToneIdentifier copyWithZone:a3];
  v49 = *(v5 + 344);
  *(v5 + 344) = v48;

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    *(v5 + 96) = self->_attachmentType;
    *(v5 + 440) |= 0x40u;
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_18:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_67;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_18;
  }

  *(v5 + 425) = self->_containsUpdatedAttachment;
  *(v5 + 440) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_19:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_67:
  *(v5 + 431) = self->_loading;
  *(v5 + 440) |= 0x10000u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_20:
    *(v5 + 436) = self->_turnsOnDisplay;
    *(v5 + 440) |= 0x200000u;
  }

LABEL_21:
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v51 = self->_subsectionIDs;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v117 objects:v127 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v118;
    do
    {
      v55 = 0;
      do
      {
        if (*v118 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v117 + 1) + 8 * v55) copyWithZone:a3];
        [v5 addSubsectionIDs:v56];

        ++v55;
      }

      while (v53 != v55);
      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v117 objects:v127 count:16];
    }

    while (v53);
  }

  v57 = [(NSString *)self->_dismissalID copyWithZone:a3];
  v58 = *(v5 + 184);
  *(v5 + 184) = v57;

  v59 = [(NSString *)self->_attachmentURL copyWithZone:a3];
  v60 = *(v5 + 104);
  *(v5 + 104) = v59;

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v61 = self->_peopleIDs;
  v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v113 objects:v126 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v114;
    do
    {
      v65 = 0;
      do
      {
        if (*v114 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = [*(*(&v113 + 1) + 8 * v65) copyWithZone:a3];
        [v5 addPeopleIDs:v66];

        ++v65;
      }

      while (v63 != v65);
      v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v113 objects:v126 count:16];
    }

    while (v63);
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v5 + 428) = self->_ignoresQuietMode;
    *(v5 + 440) |= 0x4000u;
  }

  v67 = [(NSString *)self->_categoryID copyWithZone:a3];
  v68 = *(v5 + 136);
  *(v5 + 136) = v67;

  v69 = [(NSData *)self->_contextNulls copyWithZone:a3];
  v70 = *(v5 + 168);
  *(v5 + 168) = v69;

  v71 = [(NSData *)self->_alertSuppressionContextsNulls copyWithZone:a3];
  v72 = *(v5 + 72);
  *(v5 + 72) = v71;

  v73 = [(NSString *)self->_threadID copyWithZone:a3];
  v74 = *(v5 + 392);
  *(v5 + 392) = v73;

  v75 = [(NSString *)self->_attachmentID copyWithZone:a3];
  v76 = *(v5 + 88);
  *(v5 + 88) = v75;

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v77 = self->_additionalAttachments;
  v78 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v109 objects:v125 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v110;
    do
    {
      v81 = 0;
      do
      {
        if (*v110 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = [*(*(&v109 + 1) + 8 * v81) copyWithZone:{a3, v109}];
        [v5 addAdditionalAttachments:v82];

        ++v81;
      }

      while (v79 != v81);
      v79 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v109 objects:v125 count:16];
    }

    while (v79);
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_requiredExpirationDate;
    *(v5 + 440) |= 8u;
  }

  v83 = [(NSString *)self->_replyToken copyWithZone:a3, v109];
  v84 = *(v5 + 280);
  *(v5 + 280) = v83;

  v85 = self->_has;
  if ((*&v85 & 0x20) != 0)
  {
    *(v5 + 48) = self->_soundMaximumDuration;
    *(v5 + 440) |= 0x20u;
    v85 = self->_has;
    if ((*&v85 & 0x80000) == 0)
    {
LABEL_48:
      if ((*&v85 & 0x40000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_71;
    }
  }

  else if ((*&v85 & 0x80000) == 0)
  {
    goto LABEL_48;
  }

  *(v5 + 434) = self->_soundShouldRepeat;
  *(v5 + 440) |= 0x80000u;
  v85 = self->_has;
  if ((*&v85 & 0x40000) == 0)
  {
LABEL_49:
    if ((*&v85 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 433) = self->_soundShouldIgnoreRingerSwitch;
  *(v5 + 440) |= 0x40000u;
  v85 = self->_has;
  if ((*&v85 & 0x1000) == 0)
  {
LABEL_50:
    if ((*&v85 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 426) = self->_hasCriticalIcon;
  *(v5 + 440) |= 0x1000u;
  v85 = self->_has;
  if ((*&v85 & 0x10) == 0)
  {
LABEL_51:
    if ((*&v85 & 0x20000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 40) = self->_soundAudioVolume;
  *(v5 + 440) |= 0x10u;
  v85 = self->_has;
  if ((*&v85 & 0x20000) == 0)
  {
LABEL_52:
    if ((*&v85 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_74:
  *(v5 + 432) = self->_preemptsPresentedAlert;
  *(v5 + 440) |= 0x20000u;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_53:
    *(v5 + 435) = self->_suppressDelayForForwardedBulletins;
    *(v5 + 440) |= 0x100000u;
  }

LABEL_54:
  v86 = [(BLTPBSectionIcon *)self->_icon copyWithZone:a3];
  v87 = *(v5 + 232);
  *(v5 + 232) = v86;

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v5 + 424) = self->_containsUpdateIcon;
    *(v5 + 440) |= 0x400u;
  }

  v88 = [(NSString *)self->_header copyWithZone:a3];
  v89 = *(v5 + 224);
  *(v5 + 224) = v88;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v5 + 240) = self->_interruptionLevel;
    *(v5 + 440) |= 0x80u;
  }

  v90 = [(BLTPBCommunicationContext *)self->_communicationContext copyWithZone:a3];
  v91 = *(v5 + 144);
  *(v5 + 144) = v90;

  v92 = [(NSString *)self->_contentType copyWithZone:a3];
  v93 = *(v5 + 152);
  *(v5 + 152) = v92;

  v94 = [(NSString *)self->_filterCriteria copyWithZone:a3];
  v95 = *(v5 + 208);
  *(v5 + 208) = v94;

  v96 = [(BLTPBAction *)self->_followActivityAction copyWithZone:a3];
  v97 = *(v5 + 216);
  *(v5 + 216) = v96;

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v5 + 427) = self->_hasSubordinateIcon;
    *(v5 + 440) |= 0x2000u;
  }

  v98 = [(NSData *)self->_summary copyWithZone:a3];
  v99 = *(v5 + 368);
  *(v5 + 368) = v98;

  v100 = [(NSData *)self->_threadSummary copyWithZone:a3];
  v101 = *(v5 + 400);
  *(v5 + 400) = v100;

  v102 = [(NSData *)self->_attributedMessage copyWithZone:a3];
  v103 = *(v5 + 112);
  *(v5 + 112) = v102;

  v104 = [(NSData *)self->_eventBehavior copyWithZone:a3];
  v105 = *(v5 + 192);
  *(v5 + 192) = v104;

  v106 = self->_has;
  if ((*&v106 & 2) != 0)
  {
    *(v5 + 16) = self->_priorityNotificationStatus;
    *(v5 + 440) |= 2u;
    v106 = self->_has;
  }

  if ((*&v106 & 0x8000) != 0)
  {
    *(v5 + 430) = self->_isHighlight;
    *(v5 + 440) |= 0x8000u;
  }

  v107 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_223;
  }

  bulletinID = self->_bulletinID;
  if (bulletinID | *(v4 + 15))
  {
    if (![(NSString *)bulletinID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  sectionID = self->_sectionID;
  if (sectionID | *(v4 + 37))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  sectionDisplayName = self->_sectionDisplayName;
  if (sectionDisplayName | *(v4 + 36))
  {
    if (![(NSString *)sectionDisplayName isEqual:?])
    {
      goto LABEL_223;
    }
  }

  title = self->_title;
  if (title | *(v4 + 51))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_223;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(v4 + 45))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_223;
    }
  }

  messageTitle = self->_messageTitle;
  if (messageTitle | *(v4 + 31))
  {
    if (![(NSString *)messageTitle isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v11 = *(v4 + 110);
  if (*&self->_has)
  {
    if ((v11 & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_223;
    }
  }

  else if (v11)
  {
    goto LABEL_223;
  }

  attachment = self->_attachment;
  if (attachment | *(v4 + 10) && ![(NSData *)attachment isEqual:?])
  {
    goto LABEL_223;
  }

  supplementaryActions = self->_supplementaryActions;
  if (supplementaryActions | *(v4 + 47))
  {
    if (![(NSMutableArray *)supplementaryActions isEqual:?])
    {
      goto LABEL_223;
    }
  }

  if (self->_feed != *(v4 + 50))
  {
    goto LABEL_223;
  }

  snoozeAction = self->_snoozeAction;
  if (snoozeAction | *(v4 + 39))
  {
    if (![(BLTPBAction *)snoozeAction isEqual:?])
    {
      goto LABEL_223;
    }
  }

  recordID = self->_recordID;
  if (recordID | *(v4 + 34))
  {
    if (![(NSString *)recordID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  publisherBulletinID = self->_publisherBulletinID;
  if (publisherBulletinID | *(v4 + 33))
  {
    if (![(NSString *)publisherBulletinID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  dismissAction = self->_dismissAction;
  if (dismissAction | *(v4 + 22))
  {
    if (![(BLTPBAction *)dismissAction isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v18 = *(v4 + 110);
  if (*(&self->_has + 1))
  {
    if ((v18 & 0x100) == 0 || self->_sectionSubtype != *(v4 + 76))
    {
      goto LABEL_223;
    }
  }

  else if ((v18 & 0x100) != 0)
  {
    goto LABEL_223;
  }

  sockPuppetAppBundleID = self->_sockPuppetAppBundleID;
  if (sockPuppetAppBundleID | *(v4 + 40) && ![(NSString *)sockPuppetAppBundleID isEqual:?])
  {
    goto LABEL_223;
  }

  category = self->_category;
  if (category | *(v4 + 16))
  {
    if (![(NSString *)category isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v21 = *(v4 + 110);
  if ((*&self->_has & 4) != 0)
  {
    if ((v21 & 4) == 0 || self->_publicationDate != *(v4 + 3))
    {
      goto LABEL_223;
    }
  }

  else if ((v21 & 4) != 0)
  {
    goto LABEL_223;
  }

  v22 = *(v4 + 429);
  if (self->_includesSound)
  {
    if ((*(v4 + 429) & 1) == 0)
    {
      goto LABEL_223;
    }
  }

  else if (*(v4 + 429))
  {
    goto LABEL_223;
  }

  teamID = self->_teamID;
  if (teamID | *(v4 + 48) && ![(NSString *)teamID isEqual:?])
  {
    goto LABEL_223;
  }

  context = self->_context;
  if (context | *(v4 + 20))
  {
    if (![(NSData *)context isEqual:?])
    {
      goto LABEL_223;
    }
  }

  universalSectionID = self->_universalSectionID;
  if (universalSectionID | *(v4 + 52))
  {
    if (![(NSString *)universalSectionID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  alertSuppressionContexts = self->_alertSuppressionContexts;
  if (alertSuppressionContexts | *(v4 + 8))
  {
    if (![(NSData *)alertSuppressionContexts isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v27 = *(v4 + 110);
  if ((*(&self->_has + 1) & 2) != 0)
  {
    if ((v27 & 0x200) == 0 || self->_soundAlertType != *(v4 + 84))
    {
      goto LABEL_223;
    }
  }

  else if ((v27 & 0x200) != 0)
  {
    goto LABEL_223;
  }

  soundAccountIdentifier = self->_soundAccountIdentifier;
  if (soundAccountIdentifier | *(v4 + 41) && ![(NSString *)soundAccountIdentifier isEqual:?])
  {
    goto LABEL_223;
  }

  soundToneIdentifier = self->_soundToneIdentifier;
  if (soundToneIdentifier | *(v4 + 43))
  {
    if (![(NSString *)soundToneIdentifier isEqual:?])
    {
      goto LABEL_223;
    }
  }

  has = self->_has;
  v31 = *(v4 + 110);
  if ((*&has & 0x40) != 0)
  {
    if ((v31 & 0x40) == 0 || self->_attachmentType != *(v4 + 24))
    {
      goto LABEL_223;
    }
  }

  else if ((v31 & 0x40) != 0)
  {
    goto LABEL_223;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v31 & 0x800) == 0)
    {
      goto LABEL_223;
    }

    v37 = *(v4 + 425);
    if (self->_containsUpdatedAttachment)
    {
      if ((*(v4 + 425) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 425))
    {
      goto LABEL_223;
    }
  }

  else if ((v31 & 0x800) != 0)
  {
    goto LABEL_223;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v31 & 0x10000) == 0)
    {
      goto LABEL_223;
    }

    v38 = *(v4 + 431);
    if (self->_loading)
    {
      if ((*(v4 + 431) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 431))
    {
      goto LABEL_223;
    }
  }

  else if ((v31 & 0x10000) != 0)
  {
    goto LABEL_223;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v31 & 0x200000) == 0)
    {
      goto LABEL_223;
    }

    v39 = *(v4 + 436);
    if (self->_turnsOnDisplay)
    {
      if ((*(v4 + 436) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 436))
    {
      goto LABEL_223;
    }
  }

  else if ((v31 & 0x200000) != 0)
  {
    goto LABEL_223;
  }

  subsectionIDs = self->_subsectionIDs;
  if (subsectionIDs | *(v4 + 44) && ![(NSMutableArray *)subsectionIDs isEqual:?])
  {
    goto LABEL_223;
  }

  dismissalID = self->_dismissalID;
  if (dismissalID | *(v4 + 23))
  {
    if (![(NSString *)dismissalID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  attachmentURL = self->_attachmentURL;
  if (attachmentURL | *(v4 + 13))
  {
    if (![(NSString *)attachmentURL isEqual:?])
    {
      goto LABEL_223;
    }
  }

  peopleIDs = self->_peopleIDs;
  if (peopleIDs | *(v4 + 32))
  {
    if (![(NSMutableArray *)peopleIDs isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v36 = *(v4 + 110);
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    if ((v36 & 0x4000) == 0)
    {
      goto LABEL_223;
    }

    v40 = *(v4 + 428);
    if (self->_ignoresQuietMode)
    {
      if ((*(v4 + 428) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 428))
    {
      goto LABEL_223;
    }
  }

  else if ((v36 & 0x4000) != 0)
  {
    goto LABEL_223;
  }

  categoryID = self->_categoryID;
  if (categoryID | *(v4 + 17) && ![(NSString *)categoryID isEqual:?])
  {
    goto LABEL_223;
  }

  contextNulls = self->_contextNulls;
  if (contextNulls | *(v4 + 21))
  {
    if (![(NSData *)contextNulls isEqual:?])
    {
      goto LABEL_223;
    }
  }

  alertSuppressionContextsNulls = self->_alertSuppressionContextsNulls;
  if (alertSuppressionContextsNulls | *(v4 + 9))
  {
    if (![(NSData *)alertSuppressionContextsNulls isEqual:?])
    {
      goto LABEL_223;
    }
  }

  threadID = self->_threadID;
  if (threadID | *(v4 + 49))
  {
    if (![(NSString *)threadID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  attachmentID = self->_attachmentID;
  if (attachmentID | *(v4 + 11))
  {
    if (![(NSString *)attachmentID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  additionalAttachments = self->_additionalAttachments;
  if (additionalAttachments | *(v4 + 7))
  {
    if (![(NSMutableArray *)additionalAttachments isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v47 = self->_has;
  v48 = *(v4 + 110);
  if ((*&v47 & 8) != 0)
  {
    if ((v48 & 8) == 0 || self->_requiredExpirationDate != *(v4 + 4))
    {
      goto LABEL_223;
    }
  }

  else if ((v48 & 8) != 0)
  {
    goto LABEL_223;
  }

  replyToken = self->_replyToken;
  if (replyToken | *(v4 + 35))
  {
    if (![(NSString *)replyToken isEqual:?])
    {
      goto LABEL_223;
    }

    v47 = self->_has;
  }

  v50 = *(v4 + 110);
  if ((*&v47 & 0x20) != 0)
  {
    if ((v50 & 0x20) == 0 || self->_soundMaximumDuration != *(v4 + 6))
    {
      goto LABEL_223;
    }
  }

  else if ((v50 & 0x20) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v47 & 0x80000) != 0)
  {
    if ((v50 & 0x80000) == 0)
    {
      goto LABEL_223;
    }

    v51 = *(v4 + 434);
    if (self->_soundShouldRepeat)
    {
      if ((*(v4 + 434) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 434))
    {
      goto LABEL_223;
    }
  }

  else if ((v50 & 0x80000) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v47 & 0x40000) != 0)
  {
    if ((v50 & 0x40000) == 0)
    {
      goto LABEL_223;
    }

    v52 = *(v4 + 433);
    if (self->_soundShouldIgnoreRingerSwitch)
    {
      if ((*(v4 + 433) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 433))
    {
      goto LABEL_223;
    }
  }

  else if ((v50 & 0x40000) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v47 & 0x1000) != 0)
  {
    if ((v50 & 0x1000) == 0)
    {
      goto LABEL_223;
    }

    v53 = *(v4 + 426);
    if (self->_hasCriticalIcon)
    {
      if ((*(v4 + 426) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 426))
    {
      goto LABEL_223;
    }
  }

  else if ((v50 & 0x1000) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v47 & 0x10) != 0)
  {
    if ((v50 & 0x10) == 0 || self->_soundAudioVolume != *(v4 + 5))
    {
      goto LABEL_223;
    }
  }

  else if ((v50 & 0x10) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v47 & 0x20000) != 0)
  {
    if ((v50 & 0x20000) == 0)
    {
      goto LABEL_223;
    }

    v56 = *(v4 + 432);
    if (self->_preemptsPresentedAlert)
    {
      if ((*(v4 + 432) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 432))
    {
      goto LABEL_223;
    }
  }

  else if ((v50 & 0x20000) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v47 & 0x100000) != 0)
  {
    if ((v50 & 0x100000) == 0)
    {
      goto LABEL_223;
    }

    v57 = *(v4 + 435);
    if (self->_suppressDelayForForwardedBulletins)
    {
      if ((*(v4 + 435) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 435))
    {
      goto LABEL_223;
    }
  }

  else if ((v50 & 0x100000) != 0)
  {
    goto LABEL_223;
  }

  icon = self->_icon;
  if (icon | *(v4 + 29))
  {
    if (![(BLTPBSectionIcon *)icon isEqual:?])
    {
      goto LABEL_223;
    }

    v47 = self->_has;
  }

  v55 = *(v4 + 110);
  if ((*&v47 & 0x400) != 0)
  {
    if ((v55 & 0x400) == 0)
    {
      goto LABEL_223;
    }

    v58 = *(v4 + 424);
    if (self->_containsUpdateIcon)
    {
      if ((*(v4 + 424) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 424))
    {
      goto LABEL_223;
    }
  }

  else if ((v55 & 0x400) != 0)
  {
    goto LABEL_223;
  }

  header = self->_header;
  if (header | *(v4 + 28))
  {
    if (![(NSString *)header isEqual:?])
    {
      goto LABEL_223;
    }

    v47 = self->_has;
  }

  v60 = *(v4 + 110);
  if ((*&v47 & 0x80) != 0)
  {
    if ((v60 & 0x80) == 0 || self->_interruptionLevel != *(v4 + 60))
    {
      goto LABEL_223;
    }
  }

  else if ((v60 & 0x80) != 0)
  {
    goto LABEL_223;
  }

  communicationContext = self->_communicationContext;
  if (communicationContext | *(v4 + 18) && ![(BLTPBCommunicationContext *)communicationContext isEqual:?])
  {
    goto LABEL_223;
  }

  contentType = self->_contentType;
  if (contentType | *(v4 + 19))
  {
    if (![(NSString *)contentType isEqual:?])
    {
      goto LABEL_223;
    }
  }

  filterCriteria = self->_filterCriteria;
  if (filterCriteria | *(v4 + 26))
  {
    if (![(NSString *)filterCriteria isEqual:?])
    {
      goto LABEL_223;
    }
  }

  followActivityAction = self->_followActivityAction;
  if (followActivityAction | *(v4 + 27))
  {
    if (![(BLTPBAction *)followActivityAction isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v65 = *(v4 + 110);
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    if ((v65 & 0x2000) == 0)
    {
      goto LABEL_223;
    }

    v74 = *(v4 + 427);
    if (self->_hasSubordinateIcon)
    {
      if ((*(v4 + 427) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(v4 + 427))
    {
      goto LABEL_223;
    }
  }

  else if ((v65 & 0x2000) != 0)
  {
    goto LABEL_223;
  }

  summary = self->_summary;
  if (summary | *(v4 + 46) && ![(NSData *)summary isEqual:?])
  {
    goto LABEL_223;
  }

  threadSummary = self->_threadSummary;
  if (threadSummary | *(v4 + 50))
  {
    if (![(NSData *)threadSummary isEqual:?])
    {
      goto LABEL_223;
    }
  }

  attributedMessage = self->_attributedMessage;
  if (attributedMessage | *(v4 + 14))
  {
    if (![(NSData *)attributedMessage isEqual:?])
    {
      goto LABEL_223;
    }
  }

  eventBehavior = self->_eventBehavior;
  if (eventBehavior | *(v4 + 24))
  {
    if (![(NSData *)eventBehavior isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v70 = self->_has;
  v71 = *(v4 + 110);
  if ((*&v70 & 2) != 0)
  {
    if ((v71 & 2) == 0 || self->_priorityNotificationStatus != *(v4 + 2))
    {
      goto LABEL_223;
    }
  }

  else if ((v71 & 2) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v70 & 0x8000) == 0)
  {
    v72 = (*(v4 + 110) & 0x8000) == 0;
    goto LABEL_224;
  }

  if ((v71 & 0x8000) != 0)
  {
    if (self->_isHighlight)
    {
      if (*(v4 + 430))
      {
        goto LABEL_239;
      }
    }

    else if (!*(v4 + 430))
    {
LABEL_239:
      v72 = 1;
      goto LABEL_224;
    }
  }

LABEL_223:
  v72 = 0;
LABEL_224:

  return v72;
}

- (unint64_t)hash
{
  v104 = [(NSString *)self->_bulletinID hash];
  v103 = [(NSString *)self->_sectionID hash];
  v102 = [(NSString *)self->_sectionDisplayName hash];
  v101 = [(NSString *)self->_title hash];
  v100 = [(NSString *)self->_subtitle hash];
  v99 = [(NSString *)self->_messageTitle hash];
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v3.i64 = floor(date + 0.5);
    v7 = (date - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v98 = v5;
  v95 = [(NSData *)self->_attachment hash];
  v94 = [(NSMutableArray *)self->_supplementaryActions hash];
  feed = self->_feed;
  v97 = [(BLTPBAction *)self->_snoozeAction hash];
  v93 = [(NSString *)self->_recordID hash];
  v92 = [(NSString *)self->_publisherBulletinID hash];
  v91 = [(BLTPBAction *)self->_dismissAction hash];
  if (*(&self->_has + 1))
  {
    v90 = 2654435761 * self->_sectionSubtype;
  }

  else
  {
    v90 = 0;
  }

  v88 = [(NSString *)self->_sockPuppetAppBundleID hash];
  v87 = [(NSString *)self->_category hash];
  if ((*&self->_has & 4) != 0)
  {
    publicationDate = self->_publicationDate;
    if (publicationDate < 0.0)
    {
      publicationDate = -publicationDate;
    }

    *v9.i64 = floor(publicationDate + 0.5);
    v13 = (publicationDate - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v10, v9).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v89 = v11;
  includesSound = self->_includesSound;
  v86 = [(NSString *)self->_teamID hash];
  v85 = [(NSData *)self->_context hash];
  v83 = [(NSString *)self->_universalSectionID hash];
  v82 = [(NSData *)self->_alertSuppressionContexts hash];
  if ((*(&self->_has + 1) & 2) != 0)
  {
    v81 = 2654435761 * self->_soundAlertType;
  }

  else
  {
    v81 = 0;
  }

  v80 = [(NSString *)self->_soundAccountIdentifier hash];
  v79 = [(NSString *)self->_soundToneIdentifier hash];
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    v78 = 2654435761 * self->_attachmentType;
    if ((*&has & 0x800) != 0)
    {
LABEL_25:
      v77 = 2654435761 * self->_containsUpdatedAttachment;
      if ((*&has & 0x10000) != 0)
      {
        goto LABEL_26;
      }

LABEL_30:
      v76 = 0;
      if ((*&has & 0x200000) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v78 = 0;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_25;
    }
  }

  v77 = 0;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  v76 = 2654435761 * self->_loading;
  if ((*&has & 0x200000) != 0)
  {
LABEL_27:
    v75 = 2654435761 * self->_turnsOnDisplay;
    goto LABEL_32;
  }

LABEL_31:
  v75 = 0;
LABEL_32:
  v74 = [(NSMutableArray *)self->_subsectionIDs hash];
  v73 = [(NSString *)self->_dismissalID hash];
  v72 = [(NSString *)self->_attachmentURL hash];
  v71 = [(NSMutableArray *)self->_peopleIDs hash];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v70 = 2654435761 * self->_ignoresQuietMode;
  }

  else
  {
    v70 = 0;
  }

  v69 = [(NSString *)self->_categoryID hash];
  v68 = [(NSData *)self->_contextNulls hash];
  v67 = [(NSData *)self->_alertSuppressionContextsNulls hash];
  v66 = [(NSString *)self->_threadID hash];
  v65 = [(NSString *)self->_attachmentID hash];
  v64 = [(NSMutableArray *)self->_additionalAttachments hash];
  if ((*&self->_has & 8) != 0)
  {
    requiredExpirationDate = self->_requiredExpirationDate;
    if (requiredExpirationDate < 0.0)
    {
      requiredExpirationDate = -requiredExpirationDate;
    }

    *v16.i64 = floor(requiredExpirationDate + 0.5);
    v20 = (requiredExpirationDate - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v17, v16).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  v63 = v18;
  v62 = [(NSString *)self->_replyToken hash];
  v24 = self->_has;
  if ((*&v24 & 0x20) != 0)
  {
    soundMaximumDuration = self->_soundMaximumDuration;
    if (soundMaximumDuration < 0.0)
    {
      soundMaximumDuration = -soundMaximumDuration;
    }

    *v22.i64 = floor(soundMaximumDuration + 0.5);
    v27 = (soundMaximumDuration - *v22.i64) * 1.84467441e19;
    *v23.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v22 = vbslq_s8(vnegq_f64(v28), v23, v22);
    v25 = 2654435761u * *v22.i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((*&v24 & 0x80000) != 0)
  {
    v59 = 2654435761 * self->_soundShouldRepeat;
    if ((*&v24 & 0x40000) != 0)
    {
LABEL_53:
      v58 = 2654435761 * self->_soundShouldIgnoreRingerSwitch;
      if ((*&v24 & 0x1000) != 0)
      {
        goto LABEL_54;
      }

LABEL_61:
      v60 = 0;
      if ((*&v24 & 0x10) != 0)
      {
        goto LABEL_55;
      }

LABEL_62:
      v32 = 0;
      goto LABEL_63;
    }
  }

  else
  {
    v59 = 0;
    if ((*&v24 & 0x40000) != 0)
    {
      goto LABEL_53;
    }
  }

  v58 = 0;
  if ((*&v24 & 0x1000) == 0)
  {
    goto LABEL_61;
  }

LABEL_54:
  v60 = 2654435761 * self->_hasCriticalIcon;
  if ((*&v24 & 0x10) == 0)
  {
    goto LABEL_62;
  }

LABEL_55:
  soundAudioVolume = self->_soundAudioVolume;
  if (soundAudioVolume < 0.0)
  {
    soundAudioVolume = -soundAudioVolume;
  }

  *v22.i64 = floor(soundAudioVolume + 0.5);
  v30 = (soundAudioVolume - *v22.i64) * 1.84467441e19;
  *v23.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
  v31.f64[0] = NAN;
  v31.f64[1] = NAN;
  v32 = 2654435761u * *vbslq_s8(vnegq_f64(v31), v23, v22).i64;
  if (v30 >= 0.0)
  {
    if (v30 > 0.0)
    {
      v32 += v30;
    }
  }

  else
  {
    v32 -= fabs(v30);
  }

LABEL_63:
  if ((*&v24 & 0x20000) != 0)
  {
    v56 = 2654435761 * self->_preemptsPresentedAlert;
  }

  else
  {
    v56 = 0;
  }

  v61 = v25;
  v57 = v32;
  if ((*&v24 & 0x100000) != 0)
  {
    v55 = 2654435761 * self->_suppressDelayForForwardedBulletins;
  }

  else
  {
    v55 = 0;
  }

  v54 = [(BLTPBSectionIcon *)self->_icon hash];
  if ((*(&self->_has + 1) & 4) != 0)
  {
    v53 = 2654435761 * self->_containsUpdateIcon;
  }

  else
  {
    v53 = 0;
  }

  v52 = [(NSString *)self->_header hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v51 = 2654435761 * self->_interruptionLevel;
  }

  else
  {
    v51 = 0;
  }

  v50 = [(BLTPBCommunicationContext *)self->_communicationContext hash];
  v33 = [(NSString *)self->_contentType hash];
  v34 = [(NSString *)self->_filterCriteria hash];
  v35 = [(BLTPBAction *)self->_followActivityAction hash];
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v36 = 2654435761 * self->_hasSubordinateIcon;
  }

  else
  {
    v36 = 0;
  }

  v37 = [(NSData *)self->_summary hash];
  v38 = [(NSData *)self->_threadSummary hash];
  v39 = [(NSData *)self->_attributedMessage hash];
  v40 = [(NSData *)self->_eventBehavior hash];
  v43 = self->_has;
  if ((*&v43 & 2) != 0)
  {
    priorityNotificationStatus = self->_priorityNotificationStatus;
    if (priorityNotificationStatus < 0.0)
    {
      priorityNotificationStatus = -priorityNotificationStatus;
    }

    *v41.i64 = floor(priorityNotificationStatus + 0.5);
    v46 = (priorityNotificationStatus - *v41.i64) * 1.84467441e19;
    *v42.i64 = *v41.i64 - trunc(*v41.i64 * 5.42101086e-20) * 1.84467441e19;
    v47.f64[0] = NAN;
    v47.f64[1] = NAN;
    v44 = 2654435761u * *vbslq_s8(vnegq_f64(v47), v42, v41).i64;
    if (v46 >= 0.0)
    {
      if (v46 > 0.0)
      {
        v44 += v46;
      }
    }

    else
    {
      v44 -= fabs(v46);
    }
  }

  else
  {
    v44 = 0;
  }

  if ((*&v43 & 0x8000) != 0)
  {
    v48 = 2654435761 * self->_isHighlight;
  }

  else
  {
    v48 = 0;
  }

  return v103 ^ v104 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v95 ^ v94 ^ (2654435761 * feed) ^ v97 ^ v93 ^ v92 ^ v91 ^ v90 ^ v88 ^ v87 ^ v89 ^ (2654435761 * includesSound) ^ v86 ^ v85 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v59 ^ v58 ^ v60 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v44 ^ v48;
}

- (void)mergeFrom:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 15))
  {
    [(BLTPBBulletin *)self setBulletinID:?];
  }

  if (*(v4 + 37))
  {
    [(BLTPBBulletin *)self setSectionID:?];
  }

  if (*(v4 + 36))
  {
    [(BLTPBBulletin *)self setSectionDisplayName:?];
  }

  if (*(v4 + 51))
  {
    [(BLTPBBulletin *)self setTitle:?];
  }

  if (*(v4 + 45))
  {
    [(BLTPBBulletin *)self setSubtitle:?];
  }

  if (*(v4 + 31))
  {
    [(BLTPBBulletin *)self setMessageTitle:?];
  }

  if (*(v4 + 440))
  {
    self->_date = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 10))
  {
    [(BLTPBBulletin *)self setAttachment:?];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = *(v4 + 47);
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BLTPBBulletin *)self addSupplementaryActions:*(*(&v51 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v7);
  }

  self->_feed = *(v4 + 50);
  snoozeAction = self->_snoozeAction;
  v11 = *(v4 + 39);
  if (snoozeAction)
  {
    if (v11)
    {
      [(BLTPBAction *)snoozeAction mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(BLTPBBulletin *)self setSnoozeAction:?];
  }

  if (*(v4 + 34))
  {
    [(BLTPBBulletin *)self setRecordID:?];
  }

  if (*(v4 + 33))
  {
    [(BLTPBBulletin *)self setPublisherBulletinID:?];
  }

  dismissAction = self->_dismissAction;
  v13 = *(v4 + 22);
  if (dismissAction)
  {
    if (v13)
    {
      [(BLTPBAction *)dismissAction mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(BLTPBBulletin *)self setDismissAction:?];
  }

  if (*(v4 + 441))
  {
    self->_sectionSubtype = *(v4 + 76);
    *&self->_has |= 0x100u;
  }

  if (*(v4 + 40))
  {
    [(BLTPBBulletin *)self setSockPuppetAppBundleID:?];
  }

  if (*(v4 + 16))
  {
    [(BLTPBBulletin *)self setCategory:?];
  }

  if ((*(v4 + 440) & 4) != 0)
  {
    self->_publicationDate = *(v4 + 3);
    *&self->_has |= 4u;
  }

  self->_includesSound = *(v4 + 429);
  if (*(v4 + 48))
  {
    [(BLTPBBulletin *)self setTeamID:?];
  }

  if (*(v4 + 20))
  {
    [(BLTPBBulletin *)self setContext:?];
  }

  if (*(v4 + 52))
  {
    [(BLTPBBulletin *)self setUniversalSectionID:?];
  }

  if (*(v4 + 8))
  {
    [(BLTPBBulletin *)self setAlertSuppressionContexts:?];
  }

  if ((*(v4 + 441) & 2) != 0)
  {
    self->_soundAlertType = *(v4 + 84);
    *&self->_has |= 0x200u;
  }

  if (*(v4 + 41))
  {
    [(BLTPBBulletin *)self setSoundAccountIdentifier:?];
  }

  if (*(v4 + 43))
  {
    [(BLTPBBulletin *)self setSoundToneIdentifier:?];
  }

  v14 = *(v4 + 110);
  if ((v14 & 0x40) != 0)
  {
    self->_attachmentType = *(v4 + 24);
    *&self->_has |= 0x40u;
    v14 = *(v4 + 110);
    if ((v14 & 0x800) == 0)
    {
LABEL_62:
      if ((v14 & 0x10000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_119;
    }
  }

  else if ((v14 & 0x800) == 0)
  {
    goto LABEL_62;
  }

  self->_containsUpdatedAttachment = *(v4 + 425);
  *&self->_has |= 0x800u;
  v14 = *(v4 + 110);
  if ((v14 & 0x10000) == 0)
  {
LABEL_63:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_119:
  self->_loading = *(v4 + 431);
  *&self->_has |= 0x10000u;
  if ((*(v4 + 110) & 0x200000) != 0)
  {
LABEL_64:
    self->_turnsOnDisplay = *(v4 + 436);
    *&self->_has |= 0x200000u;
  }

LABEL_65:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = *(v4 + 44);
  v16 = [v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(BLTPBBulletin *)self addSubsectionIDs:*(*(&v47 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v17);
  }

  if (*(v4 + 23))
  {
    [(BLTPBBulletin *)self setDismissalID:?];
  }

  if (*(v4 + 13))
  {
    [(BLTPBBulletin *)self setAttachmentURL:?];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = *(v4 + 32);
  v21 = [v20 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v44;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(BLTPBBulletin *)self addPeopleIDs:*(*(&v43 + 1) + 8 * k)];
      }

      v22 = [v20 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v22);
  }

  if ((*(v4 + 441) & 0x40) != 0)
  {
    self->_ignoresQuietMode = *(v4 + 428);
    *&self->_has |= 0x4000u;
  }

  if (*(v4 + 17))
  {
    [(BLTPBBulletin *)self setCategoryID:?];
  }

  if (*(v4 + 21))
  {
    [(BLTPBBulletin *)self setContextNulls:?];
  }

  if (*(v4 + 9))
  {
    [(BLTPBBulletin *)self setAlertSuppressionContextsNulls:?];
  }

  if (*(v4 + 49))
  {
    [(BLTPBBulletin *)self setThreadID:?];
  }

  if (*(v4 + 11))
  {
    [(BLTPBBulletin *)self setAttachmentID:?];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = *(v4 + 7);
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(BLTPBBulletin *)self addAdditionalAttachments:*(*(&v39 + 1) + 8 * m), v39];
      }

      v27 = [v25 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v27);
  }

  if ((*(v4 + 440) & 8) != 0)
  {
    self->_requiredExpirationDate = *(v4 + 4);
    *&self->_has |= 8u;
  }

  if (*(v4 + 35))
  {
    [(BLTPBBulletin *)self setReplyToken:?];
  }

  v30 = *(v4 + 110);
  if ((v30 & 0x20) != 0)
  {
    self->_soundMaximumDuration = *(v4 + 6);
    *&self->_has |= 0x20u;
    v30 = *(v4 + 110);
    if ((v30 & 0x80000) == 0)
    {
LABEL_108:
      if ((v30 & 0x40000) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_123;
    }
  }

  else if ((v30 & 0x80000) == 0)
  {
    goto LABEL_108;
  }

  self->_soundShouldRepeat = *(v4 + 434);
  *&self->_has |= 0x80000u;
  v30 = *(v4 + 110);
  if ((v30 & 0x40000) == 0)
  {
LABEL_109:
    if ((v30 & 0x1000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_124;
  }

LABEL_123:
  self->_soundShouldIgnoreRingerSwitch = *(v4 + 433);
  *&self->_has |= 0x40000u;
  v30 = *(v4 + 110);
  if ((v30 & 0x1000) == 0)
  {
LABEL_110:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_125;
  }

LABEL_124:
  self->_hasCriticalIcon = *(v4 + 426);
  *&self->_has |= 0x1000u;
  v30 = *(v4 + 110);
  if ((v30 & 0x10) == 0)
  {
LABEL_111:
    if ((v30 & 0x20000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

LABEL_125:
  self->_soundAudioVolume = *(v4 + 5);
  *&self->_has |= 0x10u;
  v30 = *(v4 + 110);
  if ((v30 & 0x20000) == 0)
  {
LABEL_112:
    if ((v30 & 0x100000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_126:
  self->_preemptsPresentedAlert = *(v4 + 432);
  *&self->_has |= 0x20000u;
  if ((*(v4 + 110) & 0x100000) != 0)
  {
LABEL_113:
    self->_suppressDelayForForwardedBulletins = *(v4 + 435);
    *&self->_has |= 0x100000u;
  }

LABEL_114:
  icon = self->_icon;
  v32 = *(v4 + 29);
  if (icon)
  {
    if (v32)
    {
      [(BLTPBSectionIcon *)icon mergeFrom:?];
    }
  }

  else if (v32)
  {
    [(BLTPBBulletin *)self setIcon:?];
  }

  if ((*(v4 + 441) & 4) != 0)
  {
    self->_containsUpdateIcon = *(v4 + 424);
    *&self->_has |= 0x400u;
  }

  if (*(v4 + 28))
  {
    [(BLTPBBulletin *)self setHeader:?];
  }

  if ((*(v4 + 440) & 0x80) != 0)
  {
    self->_interruptionLevel = *(v4 + 60);
    *&self->_has |= 0x80u;
  }

  communicationContext = self->_communicationContext;
  v34 = *(v4 + 18);
  if (communicationContext)
  {
    if (v34)
    {
      [(BLTPBCommunicationContext *)communicationContext mergeFrom:?];
    }
  }

  else if (v34)
  {
    [(BLTPBBulletin *)self setCommunicationContext:?];
  }

  if (*(v4 + 19))
  {
    [(BLTPBBulletin *)self setContentType:?];
  }

  if (*(v4 + 26))
  {
    [(BLTPBBulletin *)self setFilterCriteria:?];
  }

  followActivityAction = self->_followActivityAction;
  v36 = *(v4 + 27);
  if (followActivityAction)
  {
    if (v36)
    {
      [(BLTPBAction *)followActivityAction mergeFrom:?];
    }
  }

  else if (v36)
  {
    [(BLTPBBulletin *)self setFollowActivityAction:?];
  }

  if ((*(v4 + 441) & 0x20) != 0)
  {
    self->_hasSubordinateIcon = *(v4 + 427);
    *&self->_has |= 0x2000u;
  }

  if (*(v4 + 46))
  {
    [(BLTPBBulletin *)self setSummary:?];
  }

  if (*(v4 + 50))
  {
    [(BLTPBBulletin *)self setThreadSummary:?];
  }

  if (*(v4 + 14))
  {
    [(BLTPBBulletin *)self setAttributedMessage:?];
  }

  if (*(v4 + 24))
  {
    [(BLTPBBulletin *)self setEventBehavior:?];
  }

  v37 = *(v4 + 110);
  if ((v37 & 2) != 0)
  {
    self->_priorityNotificationStatus = *(v4 + 2);
    *&self->_has |= 2u;
    v37 = *(v4 + 110);
  }

  if ((v37 & 0x8000) != 0)
  {
    self->_isHighlight = *(v4 + 430);
    *&self->_has |= 0x8000u;
  }

  v38 = *MEMORY[0x277D85DE8];
}

+ (id)bulletinWithBBBulletin:(id)a3 sockPuppetAppBundleID:(id)a4 observer:(id)a5 feed:(unint64_t)a6 teamID:(id)a7 universalSectionID:(id)a8 shouldUseExpirationDate:(BOOL)a9 replyToken:(id)a10 gizmoLegacyPublisherBulletinID:(id)a11 gizmoLegacyCategoryID:(id)a12 gizmoSectionID:(id)a13 gizmoSectionSubtype:(id)a14 useUserInfoForContext:(BOOL)a15 removeSubtitleForOlderWatches:(BOOL)a16
{
  v288 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v235 = a4;
  v226 = a5;
  v234 = a7;
  v233 = a8;
  v227 = a10;
  v21 = a11;
  v22 = a12;
  v232 = a13;
  v231 = a14;
  v23 = +[BLTPBActionFactory sharedInstance];
  v24 = MEMORY[0x277CBEB18];
  v25 = [v20 supplementaryActions];
  v26 = [v24 arrayWithCapacity:{objc_msgSend(v25, "count")}];

  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  v27 = [v20 supplementaryActions];
  v28 = [v27 countByEnumeratingWithState:&v272 objects:v287 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v273;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v273 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [v23 actionWithBBAction:*(*(&v272 + 1) + 8 * i)];
        if (v32)
        {
          [v26 addObject:v32];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v272 objects:v287 count:16];
    }

    while (v29);
  }

  v33 = [v20 snoozeAction];
  v230 = [v23 actionWithBBAction:v33];

  v34 = [v20 dismissAction];
  v229 = [v23 actionWithBBAction:v34];

  v35 = objc_alloc_init(BLTPBBulletin);
  v36 = [v20 bulletinID];
  v37 = nilForNSNull(v36);
  [(BLTPBBulletin *)v35 setBulletinID:v37];

  v38 = v232;
  if (!v232)
  {
    v38 = [v20 sectionID];
  }

  v39 = nilForNSNull(v38);
  [(BLTPBBulletin *)v35 setSectionID:v39];

  if (!v232)
  {
  }

  v40 = [v20 sectionDisplayName];
  v41 = nilForNSNull(v40);
  [(BLTPBBulletin *)v35 setSectionDisplayName:v41];

  v42 = [v20 recordID];
  v43 = nilForNSNull(v42);
  [(BLTPBBulletin *)v35 setRecordID:v43];

  v44 = v21;
  if (!v21)
  {
    v44 = [v20 publisherBulletinID];
  }

  v45 = nilForNSNull(v44);
  [(BLTPBBulletin *)v35 setPublisherBulletinID:v45];

  if (!v21)
  {
  }

  v225 = v21;
  if (v231)
  {
    v46 = [v231 integerValue];
  }

  else
  {
    v46 = [v20 sectionSubtype];
  }

  [(BLTPBBulletin *)v35 setSectionSubtype:v46];
  [(BLTPBBulletin *)v35 setFeed:a6];
  v47 = [v20 dismissalID];
  v48 = nilForNSNull(v47);
  [(BLTPBBulletin *)v35 setDismissalID:v48];

  if (v22)
  {
    v49 = nilForNSNull(v22);
  }

  else
  {
    v50 = [v20 categoryID];
    v49 = nilForNSNull(v50);
  }

  [(BLTPBBulletin *)v35 setCategoryID:v49];
  if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportsSendingOnlyCategoryID] & 1) == 0)
  {
    [(BLTPBBulletin *)v35 setCategory:v49];
  }

  v223 = v49;
  v51 = [v20 threadID];
  v52 = nilForNSNull(v51);
  [(BLTPBBulletin *)v35 setThreadID:v52];

  if (a9)
  {
    v53 = [v20 expirationDate];
    [v53 timeIntervalSince1970];
    [(BLTPBBulletin *)v35 setRequiredExpirationDate:?];
  }

  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAddBulletinReplyToken])
  {
    [(BLTPBBulletin *)v35 setReplyToken:v227];
  }

  v54 = [v20 subsectionIDs];
  v55 = [v54 count];

  if (v55)
  {
    v56 = MEMORY[0x277CBEB18];
    v57 = [v20 subsectionIDs];
    v58 = [v56 arrayWithCapacity:{objc_msgSend(v57, "count")}];

    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    v59 = [v20 subsectionIDs];
    v60 = [v59 countByEnumeratingWithState:&v268 objects:v286 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v269;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v269 != v62)
          {
            objc_enumerationMutation(v59);
          }

          [v58 addObject:*(*(&v268 + 1) + 8 * j)];
        }

        v61 = [v59 countByEnumeratingWithState:&v268 objects:v286 count:16];
      }

      while (v61);
    }

    [(BLTPBBulletin *)v35 setSubsectionIDs:v58];
  }

  v64 = [v20 peopleIDs];
  v65 = [v64 mutableCopy];
  [(BLTPBBulletin *)v35 setPeopleIDs:v65];

  v66 = [v20 date];

  if (v66)
  {
    v67 = [v20 date];
    [v67 timeIntervalSince1970];
    [(BLTPBBulletin *)v35 setDate:?];
  }

  v68 = [v20 title];
  v69 = nilForNSNull(v68);

  v70 = [v20 subtitle];
  v71 = nilForNSNull(v70);

  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsDisplayingSubtitle])
  {
    v228 = v69;
  }

  else
  {
    if (v69 && v71)
    {
      v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v69, v71];

      v228 = v72;
      v69 = v72;
    }

    else
    {
      if (v69)
      {
        v73 = v69;
      }

      else
      {
        v73 = v71;
      }

      v228 = v73;
    }

    if (a16)
    {

      v71 = 0;
    }
  }

  v74 = [v20 summary];
  if (v74)
  {
    v75 = v74;
    v76 = MEMORY[0x277CCAAB0];
    v77 = [v20 summary];
    v267 = 0;
    v78 = [v76 archivedDataWithRootObject:v77 requiringSecureCoding:1 error:&v267];
    v79 = v267;
    v80 = v78;

    if (v79)
    {
      v81 = blt_ids_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        +[BLTPBBulletin(BBBulletin) bulletinWithBBBulletin:sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:];
      }
    }

    if (v80)
    {
      [(BLTPBBulletin *)v35 setSummary:v80];
    }
  }

  v82 = [v20 threadSummary];
  if (v82)
  {
    v83 = v82;
    v84 = MEMORY[0x277CCAAB0];
    v85 = [v20 threadSummary];
    v266 = 0;
    v86 = [v84 archivedDataWithRootObject:v85 requiringSecureCoding:1 error:&v266];
    v87 = v266;
    v88 = v86;

    if (v87)
    {
      v89 = blt_ids_log();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        +[BLTPBBulletin(BBBulletin) bulletinWithBBBulletin:sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:];
      }
    }

    if (v88)
    {
      [(BLTPBBulletin *)v35 setThreadSummary:v88];
    }
  }

  v90 = [v20 attributedMessage];
  if (v90)
  {
    v91 = v90;
    v92 = MEMORY[0x277CCAAB0];
    v93 = [v20 attributedMessage];
    v265 = 0;
    v94 = [v92 archivedDataWithRootObject:v93 requiringSecureCoding:1 error:&v265];
    v95 = v265;
    v96 = v94;

    if (v95)
    {
      v97 = blt_ids_log();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        +[BLTPBBulletin(BBBulletin) bulletinWithBBBulletin:sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:];
      }
    }

    if (v96)
    {
      [(BLTPBBulletin *)v35 setAttributedMessage:v96];
    }
  }

  v98 = [v20 eventBehavior];
  if (v98)
  {
    v99 = v98;
    v100 = MEMORY[0x277CCAAB0];
    v101 = [v20 eventBehavior];
    v264 = 0;
    v102 = [v100 archivedDataWithRootObject:v101 requiringSecureCoding:1 error:&v264];
    v103 = v264;
    v104 = v102;

    if (v103)
    {
      v105 = blt_ids_log();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        +[BLTPBBulletin(BBBulletin) bulletinWithBBBulletin:sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:];
      }
    }

    if (v104)
    {
      [(BLTPBBulletin *)v35 setEventBehavior:v104];
    }
  }

  v106 = [v20 header];
  v107 = nilForNSNull(v106);
  [(BLTPBBulletin *)v35 setHeader:v107];

  [(BLTPBBulletin *)v35 setTitle:v228];
  [(BLTPBBulletin *)v35 setSubtitle:v71];
  v108 = [v20 message];
  v109 = nilForNSNull(v108);
  [(BLTPBBulletin *)v35 setMessageTitle:v109];

  -[BLTPBBulletin setLoading:](v35, "setLoading:", [v20 isLoading]);
  -[BLTPBBulletin setTurnsOnDisplay:](v35, "setTurnsOnDisplay:", [v20 turnsOnDisplay]);
  [(BLTPBBulletin *)v35 setSnoozeAction:v230];
  [(BLTPBBulletin *)v35 setDismissAction:v229];
  [(BLTPBBulletin *)v35 setSupplementaryActions:v26];
  [(BLTPBBulletin *)v35 setSockPuppetAppBundleID:v235];
  if ([v20 suppressDelayForForwardedBulletins])
  {
    [(BLTPBBulletin *)v35 setSuppressDelayForForwardedBulletins:1];
  }

  v221 = [v20 publishDate];
  [v221 timeIntervalSince1970];
  [(BLTPBBulletin *)v35 setPublicationDate:?];
  v110 = [v20 sound];
  [(BLTPBBulletin *)v35 setIncludesSound:v110 != 0];
  v111 = [v110 alertConfiguration];
  -[BLTPBBulletin setSoundAlertType:](v35, "setSoundAlertType:", [v111 type]);

  v112 = [v110 alertConfiguration];
  v113 = [v112 topic];
  v114 = nilForNSNull(v113);
  [(BLTPBBulletin *)v35 setSoundAccountIdentifier:v114];

  v115 = [v110 alertConfiguration];
  v116 = [v115 toneIdentifier];
  v117 = nilForNSNull(v116);
  [(BLTPBBulletin *)v35 setSoundToneIdentifier:v117];

  v118 = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  v119 = [v118 bltVersion];

  if (v119 >= 6)
  {
    v120 = v119;
    v121 = [v110 alertConfiguration];
    if ([v121 shouldRepeat])
    {
      v122 = [v20 blt_isVOIPCall] ^ 1;
    }

    else
    {
      v122 = 0;
    }

    [(BLTPBBulletin *)v35 setSoundShouldRepeat:v122];
    v123 = [v110 alertConfiguration];
    -[BLTPBBulletin setSoundShouldIgnoreRingerSwitch:](v35, "setSoundShouldIgnoreRingerSwitch:", [v123 shouldIgnoreRingerSwitch]);

    v124 = [v110 alertConfiguration];
    [v124 maximumDuration];
    [(BLTPBBulletin *)v35 setSoundMaximumDuration:?];

    v119 = v120;
  }

  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsCriticalAndGroupingSettings])
  {
    -[BLTPBBulletin setHasCriticalIcon:](v35, "setHasCriticalIcon:", [v20 hasCriticalIcon]);
    v125 = [v110 alertConfiguration];
    [v125 audioVolume];
    [(BLTPBBulletin *)v35 setSoundAudioVolume:v126];
  }

  [(BLTPBBulletin *)v35 setTeamID:v234];
  -[BLTPBBulletin setIgnoresQuietMode:](v35, "setIgnoresQuietMode:", [v20 ignoresQuietMode]);
  -[BLTPBBulletin setPreemptsPresentedAlert:](v35, "setPreemptsPresentedAlert:", [v20 preemptsPresentedAlert]);
  v127 = [v20 bltContext];
  v128 = v127;
  v224 = v22;
  v222 = v71;
  v220 = v110;
  if (v127 && v119 <= 7)
  {
    v129 = a15;
    v237 = v127;
    v130 = [v127 mutableCopy];
    [v130 removeObjectForKey:@"userInfo"];
    if (v119 == 7)
    {
      [MEMORY[0x277CE1F78] notificationForBulletin:v20];
      v260 = 0u;
      v261 = 0u;
      v262 = 0u;
      v217 = v263 = 0u;
      v131 = [v217 request];
      v132 = [v131 content];
      v133 = [v132 attachments];

      v134 = [v133 countByEnumeratingWithState:&v260 objects:v285 count:16];
      if (v134)
      {
        v135 = v134;
        v136 = *v261;
        do
        {
          for (k = 0; k != v135; ++k)
          {
            if (*v261 != v136)
            {
              objc_enumerationMutation(v133);
            }

            [*(*(&v260 + 1) + 8 * k) blt_preEncodeShouldAddNotificationAttachmentOptions];
          }

          v135 = [v133 countByEnumeratingWithState:&v260 objects:v285 count:16];
        }

        while (v135);
      }

      v138 = [v217 bs_secureEncoded];
      v256 = 0u;
      v257 = 0u;
      v258 = 0u;
      v259 = 0u;
      v139 = [v217 request];
      v140 = [v139 content];
      v141 = [v140 attachments];

      v142 = [v141 countByEnumeratingWithState:&v256 objects:v284 count:16];
      if (v142)
      {
        v143 = v142;
        v144 = *v257;
        do
        {
          for (m = 0; m != v143; ++m)
          {
            if (*v257 != v144)
            {
              objc_enumerationMutation(v141);
            }

            [*(*(&v256 + 1) + 8 * m) blt_postEncodeNotificationAttachmentOptions];
          }

          v143 = [v141 countByEnumeratingWithState:&v256 objects:v284 count:16];
        }

        while (v143);
      }

      v119 = 7;
      v129 = a15;
      if (v217 && v138)
      {
        goto LABEL_111;
      }

      v146 = blt_ids_log();
      if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v279 = v20;
        v280 = 2112;
        v281 = v217;
        v282 = 2112;
        v283 = v138;
        _os_log_error_impl(&dword_241FB3000, v146, OS_LOG_TYPE_ERROR, "Error getting a plist serialazable UNNotification from BBBulletin,  bulletin=%@ UNNotification=%@  plistSeriazableData=%@", buf, 0x20u);
      }

      if (v138)
      {
LABEL_111:
        [v130 setObject:v138 forKeyedSubscript:@"UNBulletinContextArchivedUserNotification"];
      }
    }

    v147 = v130;

    if (v129 || ![MEMORY[0x277D2BCC8] activePairedDeviceSupportsUserNotificationListDestination] || (v128 = v147, (objc_msgSend(MEMORY[0x277D2BCC8], "activePairedDeviceSupportsNoLocalRemoteNotificationInBulletinContext") & 1) == 0))
    {
      if (v147 && ([MEMORY[0x277CE1F78] notificationForBulletin:v20], v148 = objc_claimAutoreleasedReturnValue(), v148, v148))
      {
        if (v129)
        {
          v149 = [v148 request];
          [v149 content];
          v151 = v150 = v119;
          v152 = [v151 userInfo];

          v119 = v150;
          v128 = v152;
        }

        else
        {
          v153 = [v147 mutableCopy];
          v216 = v119;
          if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportsUserNotificationListDestination] & 1) == 0)
          {
            v154 = [v148 request];
            v155 = [v154 content];

            if (v155)
            {
              v238 = v153;
              v156 = [v148 request];
              v157 = [v156 destinations] & 6;

              v158 = blt_ids_log();
              if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v279) = v157 != 0;
                _os_log_impl(&dword_241FB3000, v158, OS_LOG_TYPE_DEFAULT, "Adding back shouldAddToNotificationsList: %{BOOL}u", buf, 8u);
              }

              v215 = v157;

              v254 = 0u;
              v255 = 0u;
              v252 = 0u;
              v253 = 0u;
              v218 = v155;
              v159 = [v155 attachments];
              v160 = [v159 countByEnumeratingWithState:&v252 objects:v277 count:16];
              if (v160)
              {
                v161 = v160;
                v162 = *v253;
                do
                {
                  for (n = 0; n != v161; ++n)
                  {
                    if (*v253 != v162)
                    {
                      objc_enumerationMutation(v159);
                    }

                    [*(*(&v252 + 1) + 8 * n) blt_preEncodeShouldAddNotificationAttachmentOptions];
                  }

                  v161 = [v159 countByEnumeratingWithState:&v252 objects:v277 count:16];
                }

                while (v161);
              }

              v155 = v218;
              [v218 blt_preEncodeShouldAddToNotificationsList:v215 != 0];
              v164 = [v148 bs_secureEncoded];
              [v238 setObject:v164 forKeyedSubscript:@"UNBulletinContextArchivedUserNotification"];

              [v218 blt_postEncode];
              v250 = 0u;
              v251 = 0u;
              v248 = 0u;
              v249 = 0u;
              v165 = [v218 attachments];
              v166 = [v165 countByEnumeratingWithState:&v248 objects:v276 count:16];
              if (v166)
              {
                v167 = v166;
                v168 = *v249;
                do
                {
                  for (ii = 0; ii != v167; ++ii)
                  {
                    if (*v249 != v168)
                    {
                      objc_enumerationMutation(v165);
                    }

                    [*(*(&v248 + 1) + 8 * ii) blt_postEncodeNotificationAttachmentOptions];
                  }

                  v167 = [v165 countByEnumeratingWithState:&v248 objects:v276 count:16];
                }

                while (v167);
                v153 = v238;
                v155 = v218;
              }

              else
              {
                v153 = v238;
              }
            }

            else
            {
              v165 = blt_ids_log();
              if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
              {
                [BLTPBBulletin(BBBulletin) bulletinWithBBBulletin:v148 sockPuppetAppBundleID:v165 observer:? feed:? teamID:? universalSectionID:? shouldUseExpirationDate:? replyToken:? gizmoLegacyPublisherBulletinID:? gizmoLegacyCategoryID:? gizmoSectionID:? gizmoSectionSubtype:? useUserInfoForContext:? removeSubtitleForOlderWatches:?];
              }
            }

            v119 = v216;
          }

          if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportsNoLocalRemoteNotificationInBulletinContext] & 1) == 0)
          {
            v239 = v153;
            v170 = [v148 request];
            v171 = [v170 trigger];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v173 = blt_ids_log();
            v174 = os_log_type_enabled(v173, OS_LOG_TYPE_INFO);
            if (isKindOfClass)
            {
              if (v174)
              {
                *buf = 0;
                _os_log_impl(&dword_241FB3000, v173, OS_LOG_TYPE_INFO, "Adding back remoteNotification to bulletin context for paired watch", buf, 2u);
              }

              v175 = [v148 request];
              v176 = [v175 content];
              v177 = [v176 userInfo];
              v153 = v239;
              [v239 setObject:v177 forKey:@"remoteNotification"];
            }

            else
            {
              if (v174)
              {
                *buf = 0;
                _os_log_impl(&dword_241FB3000, v173, OS_LOG_TYPE_INFO, "Adding back localNotification to bulletin context for paired watch", buf, 2u);
              }

              v175 = (*(*MEMORY[0x277D772E0] + 16))();
              v176 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v175 requiringSecureCoding:1 error:0];
              v153 = v239;
              [v239 setObject:v176 forKey:@"localNotification"];
            }

            v119 = v216;
          }

          v128 = v153;
        }
      }

      else
      {
        v148 = blt_ids_log();
        if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241FB3000, v148, OS_LOG_TYPE_DEFAULT, "Changes to bulletin context were requested but context does not contain a valid UNNotification. No changes will be made to bulletin context.", buf, 2u);
        }

        v128 = v147;
      }
    }
  }

  v240 = v128;
  if (v119 > 7)
  {
    v245 = 0;
    v181 = &v245;
    v182 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v128 requiringSecureCoding:1 error:&v245];
  }

  else
  {
    v178 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsNSNullPListExtenion];
    v179 = v178;
    if (v178)
    {
      v180 = &v247;
    }

    else
    {
      v180 = 0;
    }

    if (v178)
    {
      v247 = 0;
    }

    v246 = 0;
    v181 = &v246;
    v182 = [BLTObjectSerializer serializeObject:v128 nulls:v180 error:&v246];
    if (v179)
    {
      v183 = v247;
      v181 = &v246;
      goto LABEL_168;
    }
  }

  v183 = 0;
LABEL_168:
  v184 = *v181;
  v219 = v182;
  if (v184)
  {
    v185 = blt_ids_log();
    if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v279 = v184;
      v280 = 2112;
      v281 = v182;
      v282 = 2112;
      v283 = v20;
      _os_log_error_impl(&dword_241FB3000, v185, OS_LOG_TYPE_ERROR, "Error serializing bulletin context: %@, %@, %@", buf, 0x20u);
    }
  }

  else
  {
    [(BLTPBBulletin *)v35 setContext:v182];
    [(BLTPBBulletin *)v35 setContextNulls:v183];
  }

  v186 = MEMORY[0x277CBEB18];
  v187 = [v20 alertSuppressionContexts];
  v188 = [v186 arrayWithCapacity:{objc_msgSend(v187, "count")}];

  v189 = [v20 alertSuppressionContexts];
  v243[0] = MEMORY[0x277D85DD0];
  v243[1] = 3221225472;
  v243[2] = __289__BLTPBBulletin_BBBulletin__bulletinWithBBBulletin_sockPuppetAppBundleID_observer_feed_teamID_universalSectionID_shouldUseExpirationDate_replyToken_gizmoLegacyPublisherBulletinID_gizmoLegacyCategoryID_gizmoSectionID_gizmoSectionSubtype_useUserInfoForContext_removeSubtitleForOlderWatches___block_invoke;
  v243[3] = &unk_278D32E30;
  v190 = v188;
  v244 = v190;
  [v189 enumerateObjectsUsingBlock:v243];

  v191 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsNSNullPListExtenion];
  v192 = v191;
  if (v191)
  {
    v193 = &v242;
  }

  else
  {
    v193 = 0;
  }

  if (v191)
  {
    v242 = 0;
  }

  v241 = v184;
  v194 = [BLTObjectSerializer serializeObject:v190 nulls:v193 error:&v241];
  if (v192)
  {
    v195 = v242;
  }

  else
  {
    v195 = 0;
  }

  v196 = v241;

  if (v196)
  {
    v197 = blt_ids_log();
    if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v279 = v196;
      v280 = 2112;
      v281 = v194;
      v282 = 2112;
      v283 = v20;
      _os_log_error_impl(&dword_241FB3000, v197, OS_LOG_TYPE_ERROR, "Error serializing alert suppression contexts: %@, %@, %@", buf, 0x20u);
    }
  }

  else
  {
    [(BLTPBBulletin *)v35 setAlertSuppressionContexts:v194];
    [(BLTPBBulletin *)v35 setAlertSuppressionContextsNulls:v195];
  }

  v198 = [(BLTPBBulletin *)v35 sectionDisplayName];

  if (!v198)
  {
    v199 = MEMORY[0x277CC1E88];
    v200 = [(BLTPBBulletin *)v35 sectionID];
    v201 = [v199 bundleProxyForIdentifier:v200];

    if (v201)
    {
      v202 = [v201 localizedName];
      [(BLTPBBulletin *)v35 setSectionDisplayName:v202];
    }
  }

  [(BLTPBBulletin *)v35 setUniversalSectionID:v233];
  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsIconsPerNotification])
  {
    v203 = [v20 icon];
    v204 = BLTPBSectionIconFromBBSectionIcon(v203, 0);
    [(BLTPBBulletin *)v35 setIcon:v204];
  }

  v205 = [v20 contentType];
  [(BLTPBBulletin *)v35 setContentType:v205];

  -[BLTPBBulletin setInterruptionLevel:](v35, "setInterruptionLevel:", [v20 interruptionLevel]);
  v206 = [v20 communicationContext];
  v207 = [v206 blt_protobuf];
  [(BLTPBBulletin *)v35 setCommunicationContext:v207];

  v208 = [v20 filterCriteria];
  [(BLTPBBulletin *)v35 setFilterCriteria:v208];

  v209 = [v20 followActivityAction];

  if (v209)
  {
    v210 = [v20 followActivityAction];
    v211 = [v23 actionWithBBAction:v210];
    [(BLTPBBulletin *)v35 setFollowActivityAction:v211];
  }

  -[BLTPBBulletin setHasSubordinateIcon:](v35, "setHasSubordinateIcon:", [v20 hasSubordinateIcon]);
  -[BLTPBBulletin setPriorityNotificationStatus:](v35, "setPriorityNotificationStatus:", [v20 priorityNotificationStatus]);
  -[BLTPBBulletin setIsHighlight:](v35, "setIsHighlight:", [v20 isHighlight]);
  v212 = v35;

  v213 = *MEMORY[0x277D85DE8];
  return v35;
}

+ (void)bulletinWithBBBulletin:(id)a3 sockPuppetAppBundleID:(id)a4 observer:(id)a5 feed:(unint64_t)a6 teamID:(id)a7 universalSectionID:(id)a8 shouldUseExpirationDate:(BOOL)a9 replyToken:(id)a10 gizmoLegacyPublisherBulletinID:(id)a11 gizmoLegacyCategoryID:(id)a12 gizmoSectionID:(id)a13 gizmoSectionSubtype:(id)a14 useUserInfoForContext:(BOOL)a15 removeSubtitleForOlderWatches:(BOOL)a16 attachOption:(unint64_t)a17 completion:(id)a18
{
  v23 = a18;
  v24 = a5;
  v25 = a3;
  LOWORD(v29) = __PAIR16__(a16, a15);
  LOBYTE(v28) = a9;
  v26 = [a1 bulletinWithBBBulletin:v25 sockPuppetAppBundleID:a4 observer:v24 feed:a6 teamID:a7 universalSectionID:a8 shouldUseExpirationDate:v28 replyToken:a10 gizmoLegacyPublisherBulletinID:a11 gizmoLegacyCategoryID:a12 gizmoSectionID:a13 gizmoSectionSubtype:a14 useUserInfoForContext:v29 removeSubtitleForOlderWatches:?];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __313__BLTPBBulletin_BBBulletin__bulletinWithBBBulletin_sockPuppetAppBundleID_observer_feed_teamID_universalSectionID_shouldUseExpirationDate_replyToken_gizmoLegacyPublisherBulletinID_gizmoLegacyCategoryID_gizmoSectionID_gizmoSectionSubtype_useUserInfoForContext_removeSubtitleForOlderWatches_attachOption_completion___block_invoke;
  v32[3] = &unk_278D32E58;
  v33 = v23;
  v27 = v23;
  [a1 _addAttachmentsFromBBBulletin:v25 toBLTPBBulletin:v26 observer:v24 attachOption:a17 completion:v32];
}

uint64_t __313__BLTPBBulletin_BBBulletin__bulletinWithBBBulletin_sockPuppetAppBundleID_observer_feed_teamID_universalSectionID_shouldUseExpirationDate_replyToken_gizmoLegacyPublisherBulletinID_gizmoLegacyCategoryID_gizmoSectionID_gizmoSectionSubtype_useUserInfoForContext_removeSubtitleForOlderWatches_attachOption_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)publisherMatchID
{
  v3 = [(BLTPBBulletin *)self publisherBulletinID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(BLTPBBulletin *)self recordID];
  }

  v6 = v5;

  return v6;
}

- (id)attachmentKey:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [(BLTPBBulletin *)self sectionID];
  v7 = [(BLTPBBulletin *)self publisherMatchID];
  v8 = v7;
  if (v4)
  {
    [v5 stringWithFormat:@"%@--%@--%@", v6, v7, v4];
  }

  else
  {
    [v5 stringWithFormat:@"%@--%@", v6, v7, v11];
  }
  v9 = ;

  return v9;
}

- (id)attachmentURLURL
{
  v3 = [(BLTPBBulletin *)self attachmentURL];
  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(BLTPBBulletin *)self attachmentURL];
    v6 = [v4 URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_attachmentFromBBAttachmentMetadata:(id)a3 bulletin:(id)a4 observer:(id)a5 fileOption:(unint64_t)a6 attachOption:(unint64_t)a7 completion:(id)a8
{
  v118 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (!v17)
  {
    +[BLTPBBulletin(BBBulletin) _attachmentFromBBAttachmentMetadata:bulletin:observer:fileOption:attachOption:completion:];
  }

  v18 = v17;
  v19 = [v14 type];
  v20 = a7 == 1;
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke;
  v108[3] = &unk_278D32E80;
  v112 = v19;
  v21 = v14;
  v109 = v21;
  v114 = a7 == 2;
  v22 = v15;
  v110 = v22;
  v23 = v18;
  v111 = v23;
  v113 = a6;
  v24 = MEMORY[0x245D067A0](v108);
  if (a7 == 2)
  {
    goto LABEL_39;
  }

  if (v19 == 1)
  {
    v25 = blt_ids_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_impl(&dword_241FB3000, v25, OS_LOG_TYPE_INFO, "%@ Image attachment processing", buf, 0xCu);
    }

    if (!a6)
    {
      goto LABEL_39;
    }

    v26 = [v21 URL];
    if (!v26)
    {
      goto LABEL_39;
    }

    v27 = v26;
    v28 = [v21 URL];
    v29 = [MEMORY[0x277CBEB68] null];
    v30 = v29;
    if (v28 == v29)
    {
    }

    else
    {
      [v21 URL];
      v31 = v88 = v16;
      [v31 path];
      v86 = v27;
      v32 = v20;
      v33 = a1;
      v35 = v34 = v28;

      v16 = v88;
      v36 = v33;
      v37 = v32;

      if (!v35)
      {
LABEL_39:
        v24[2](v24, 0);
        goto LABEL_40;
      }

      v27 = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
      v38 = MEMORY[0x277CBEBC0];
      v39 = [v21 URL];
      v40 = [v39 path];
      v41 = [v38 fileURLWithPath:v40];

      v42 = BLTFileURLInAttachmentsPath(v22, v21);
      v87 = v41;
      v43 = [BLTImageAttachmentInfo imageAttachmentInfoForImageURL:v41];
      v44 = v43;
      if (!v43 || ([v43 contentType], v45 = objc_claimAutoreleasedReturnValue(), v45, !v45))
      {
        v77 = blt_ids_log();
        v64 = v87;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          +[BLTPBBulletin(BBBulletin) _attachmentFromBBAttachmentMetadata:bulletin:observer:fileOption:attachOption:completion:];
        }

        (*(v23 + 2))(v23, 0, 0);
        goto LABEL_44;
      }

      v85 = v42;
      v46 = blt_ids_log();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = [v22 publisherBulletinID];
        *buf = 138412546;
        *&buf[4] = v47;
        v116 = 2112;
        v117 = v87;
        _os_log_impl(&dword_241FB3000, v46, OS_LOG_TYPE_INFO, "%@ Image attachment processing: %@", buf, 0x16u);
      }

      if (v27 && v85)
      {
        v48 = [v27 valueForProperty:*MEMORY[0x277D2BBE8]];
        [v48 floatValue];
        v50 = v49;

        v51 = [v27 valueForProperty:*MEMORY[0x277D2BBF0]];
        [v51 CGSizeValue];
        v53 = v52;
        v55 = v54;

        v56 = v53 / v50;
        v57 = v55 / v50;
        [v44 size];
        if (v58 <= 0.0 || ([v44 size], v56 <= v59) || (objc_msgSend(v44, "size"), v60 <= 0.0) || (objc_msgSend(v44, "size"), v57 <= v61))
        {
          v84 = v37;
          v79 = blt_ids_log();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            v80 = [v22 publisherBulletinID];
            *buf = 138412546;
            *&buf[4] = v80;
            v116 = 2112;
            v117 = v87;
            _os_log_impl(&dword_241FB3000, v79, OS_LOG_TYPE_INFO, "%@ Image attachment will be sent scaled: %@", buf, 0x16u);
          }

          v83 = [objc_alloc(MEMORY[0x277CDAAD8]) initWithFileAtURL:v87 size:4 scale:v56 representationTypes:{v57, v50}];
          [v83 setMinimumDimension:50.0];
          v81 = [MEMORY[0x277CDAAE0] sharedGenerator];
          v82 = [v44 contentType];
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_97;
          v94[3] = &unk_278D32EF8;
          v99 = v36;
          v95 = v21;
          v96 = v85;
          v100 = v84;
          v97 = v44;
          v98 = v24;
          v64 = v87;
          [v81 saveBestRepresentationForRequest:v83 toFileAtURL:v96 withContentType:v82 completionHandler:v94];

          v42 = v85;
        }

        else
        {
          v62 = blt_ids_log();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = [v22 publisherBulletinID];
            *buf = 138412546;
            *&buf[4] = v63;
            v116 = 2112;
            v117 = v87;
            _os_log_impl(&dword_241FB3000, v62, OS_LOG_TYPE_INFO, "%@ Image attachment will be sent without scaling: %@", buf, 0x16u);
          }

          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_94;
          v101[3] = &unk_278D32EA8;
          v106 = v36;
          v102 = v21;
          v64 = v87;
          v103 = v87;
          v107 = v37;
          v104 = v44;
          v105 = v24;
          BLTDispatchWorkQueue(v101);

          v42 = v85;
        }

LABEL_44:

        v16 = v88;
        goto LABEL_40;
      }

      v28 = v87;
      v16 = v88;
    }

    goto LABEL_37;
  }

  v65 = [v21 URL];
  v27 = v65;
  if ((v19 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
LABEL_38:

    goto LABEL_39;
  }

  v66 = [v21 URL];
  if (!v27)
  {
    v27 = v66;
    goto LABEL_38;
  }

  v89 = v16;
  v67 = MEMORY[0x277CCAA00];
  v27 = v66;
  v68 = [v67 defaultManager];
  v69 = [v27 absoluteURL];

  v70 = [v69 path];
  *buf = 0;
  v71 = [v68 attributesOfItemAtPath:v70 error:buf];
  v72 = [v71 fileSize];

  if (v72 <= 0x100000)
  {
    v16 = v89;
    goto LABEL_38;
  }

  v73 = BLTFileURLInAttachmentsPath(v22, v21);
  v16 = v89;
  if (!v73)
  {
    v28 = blt_general_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [BLTPBBulletin(BBBulletin) _attachmentFromBBAttachmentMetadata:v22 bulletin:v28 observer:? fileOption:? attachOption:? completion:?];
    }

LABEL_37:

    goto LABEL_38;
  }

  v74 = v73;
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_100;
  v90[3] = &unk_278D32F20;
  v91 = v27;
  v92 = v73;
  v93 = v24;
  v75 = v74;
  v76 = v27;
  [BLTAVUtil transcodeURL:v76 outURL:v75 maxBytes:0x100000 completion:v90];

LABEL_40:
  v78 = *MEMORY[0x277D85DE8];
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 56);
  if ((v4 - 1) <= 2)
  {
    v5 = "Video";
    if (v4 == 3)
    {
      v5 = "Sound";
    }

    if (v4 == 1)
    {
      v6 = "Image";
    }

    else
    {
      v6 = v5;
    }

    v7 = blt_ids_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v36 = 136315138;
      v37 = v6;
      _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_INFO, "%s attachment will be sent with bulletin", &v36, 0xCu);
    }

    v8 = objc_alloc_init(BLTPBBulletinAttachment);
    v9 = [*(a1 + 32) UUID];
    v10 = [v9 UUIDString];
    [(BLTPBBulletinAttachment *)v8 setIdentifier:v10];

    [(BLTPBBulletinAttachment *)v8 setType:*(a1 + 56)];
    if ((*(a1 + 72) & 1) == 0)
    {
      v11 = [*(a1 + 32) URL];
      if (v11)
      {
        v12 = v11;
        v13 = [*(a1 + 32) URL];
        v14 = [MEMORY[0x277CBEB68] null];

        if (v13 != v14)
        {
          v15 = blt_ids_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v36 = 136315138;
            v37 = v6;
            _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_INFO, "%s retrieved url", &v36, 0xCu);
          }

          v16 = BLTTranscodedFileURLForBulletin(*(a1 + 40), *(a1 + 32));
          v17 = v16;
          if (v16)
          {
            v18 = [v16 absoluteString];
            [(BLTPBBulletinAttachment *)v8 setURL:v18];
          }

          else
          {
            v18 = [*(a1 + 32) URL];
            v21 = [v18 absoluteString];
            [(BLTPBBulletinAttachment *)v8 setURL:v21];
          }
        }
      }
    }

    if (*(a1 + 72) != 1)
    {
      v22 = *(a1 + 64);
      if (v22 != 2)
      {
        if (v22 != 1 || ([(BLTPBBulletinAttachment *)v8 uRL], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
        {
          v24 = *(a1 + 56);
          if (v24 == 3)
          {
            v26 = blt_ids_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v36 = 136315138;
              v37 = v6;
              _os_log_impl(&dword_241FB3000, v26, OS_LOG_TYPE_INFO, "%s retrieving data", &v36, 0xCu);
            }

            v27 = [*(a1 + 32) URL];
            if (v27)
            {
              v28 = v27;
              v29 = [*(a1 + 32) URL];
              v30 = [MEMORY[0x277CBEB68] null];

              if (v29 != v30)
              {
                v31 = MEMORY[0x277CBEA90];
                v32 = [*(a1 + 32) URL];
                v33 = [v31 dataWithContentsOfURL:v32];

                (*(*(a1 + 48) + 16))();
              }
            }

            goto LABEL_39;
          }

          if (v24 == 1)
          {
            v25 = *(*(a1 + 48) + 16);
LABEL_38:
            v25();
LABEL_39:

            goto LABEL_40;
          }

          if (!v8)
          {
            v34 = blt_ids_log();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_cold_1(v6, v34);
            }
          }
        }
      }
    }

    v25 = *(*(a1 + 48) + 16);
    goto LABEL_38;
  }

  v19 = blt_ids_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 56);
    v36 = 134217984;
    v37 = v20;
    _os_log_impl(&dword_241FB3000, v19, OS_LOG_TYPE_INFO, "Attachment data will be ignored for attachment type %ld", &v36, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_40:

  v35 = *MEMORY[0x277D85DE8];
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_94(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 72);
  v6 = [*(a1 + 48) contentType];
  v7 = [v2 _handleThumbnailResponse:0 attachmentMetadata:v3 transcodedAttachmentSaveURL:v4 wantsData:v5 imageContentType:v6];

  (*(*(a1 + 56) + 16))();
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_97(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_2;
  v11[3] = &unk_278D32ED0;
  v15 = *(a1 + 64);
  v12 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 72);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  BLTDispatchWorkQueue(v11);
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 80);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) contentType];
  v8 = [v2 _handleThumbnailResponse:v3 attachmentMetadata:v4 transcodedAttachmentSaveURL:v6 wantsData:v5 imageContentType:v7];

  (*(*(a1 + 64) + 16))();
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_100(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = blt_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_100_cold_1(a1, v3, v4);
    }
  }

  (*(*(a1 + 48) + 16))();
}

+ (id)_handleThumbnailResponse:(id)a3 attachmentMetadata:(id)a4 transcodedAttachmentSaveURL:(id)a5 wantsData:(BOOL)a6 imageContentType:(id)a7
{
  v8 = a6;
  v32 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (v11)
  {
    v15 = blt_general_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BLTPBBulletin(BBBulletin) _handleThumbnailResponse:v11 attachmentMetadata:v12 transcodedAttachmentSaveURL:? wantsData:? imageContentType:?];
    }

    v16 = 0;
  }

  else
  {
    v17 = blt_ids_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      v27 = v13;
      _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_INFO, "_handleThumbnailResponse: Image attachment generated and saved to file URL %@", &v26, 0xCu);
    }

    if (!v8)
    {
      v16 = 0;
      goto LABEL_18;
    }

    v15 = [(UIImage *)v13 path];
    v18 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v15];
    v19 = [*MEMORY[0x277CE1E10] identifier];
    v20 = [v14 isEqualToString:v19];

    v21 = blt_ids_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v20)
    {
      if (v22)
      {
        v26 = 138412802;
        v27 = v18;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v14;
        _os_log_impl(&dword_241FB3000, v21, OS_LOG_TYPE_INFO, "_handleThumbnailResponse: PNG is being added manually, backwards compatibility for older watches image: %@ filepath: %@ imageContentType: %@", &v26, 0x20u);
      }

      v23 = UIImagePNGRepresentation(v18);
    }

    else
    {
      if (v22)
      {
        v26 = 138412802;
        v27 = v18;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v14;
        _os_log_impl(&dword_241FB3000, v21, OS_LOG_TYPE_INFO, "_handleThumbnailResponse: JPEG attachment is being added manually, backwards compatibility for older watches image: %@ filepath: %@ imageContentType: %@", &v26, 0x20u);
      }

      v23 = UIImageJPEGRepresentation(v18, 0.899999976);
    }

    v16 = v23;
  }

LABEL_18:
  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)_addAttachmentsFromBBBulletin:(id)a3 toBLTPBBulletin:(id)a4 observer:(id)a5 attachOption:(unint64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsMultipleAttachments];
  v17 = [v12 primaryAttachment];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __108__BLTPBBulletin_BBBulletin___addAttachmentsFromBBBulletin_toBLTPBBulletin_observer_attachOption_completion___block_invoke;
  v22[3] = &unk_278D32F70;
  v29 = a6 == 1;
  v30 = v16;
  v23 = v13;
  v24 = v12;
  v27 = a1;
  v28 = a6;
  v25 = v14;
  v26 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v12;
  v21 = v13;
  [a1 _attachmentFromBBAttachmentMetadata:v17 bulletin:v20 observer:v19 fileOption:v16 attachOption:a6 completion:v22];
}

void __108__BLTPBBulletin_BBBulletin___addAttachmentsFromBBBulletin_toBLTPBBulletin_observer_attachOption_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 identifier];
  [v7 setAttachmentID:v8];

  [*(a1 + 32) setAttachmentType:{objc_msgSend(v5, "type")}];
  if (*(a1 + 80))
  {
    if (!v6)
    {
      v6 = [v5 uRL];

      if (v6)
      {
        v9 = MEMORY[0x277CBEA90];
        v10 = MEMORY[0x277CBEBC0];
        v11 = [v5 uRL];
        v12 = [v10 URLWithString:v11];
        v6 = [v9 dataWithContentsOfURL:v12];
      }
    }

    goto LABEL_9;
  }

  if (*(a1 + 81) == 1)
  {
    v13 = [v5 uRL];
    if (v13)
    {

LABEL_10:
      v14 = *(a1 + 32);
      v15 = [v5 uRL];
      [v14 setAttachmentURL:v15];

      goto LABEL_11;
    }
  }

  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  [*(a1 + 32) setAttachment:v6];
LABEL_11:
  if (*(a1 + 81) == 1 && ([*(a1 + 40) additionalAttachments], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v17))
  {
    v30 = v6;
    v31 = v5;
    v18 = dispatch_group_create();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [*(a1 + 40) additionalAttachments];
    v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v33 = *v41;
      do
      {
        v21 = 0;
        do
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v40 + 1) + 8 * v21);
          dispatch_group_enter(v18);
          v23 = *(a1 + 40);
          v24 = *(a1 + 48);
          v26 = *(a1 + 64);
          v25 = *(a1 + 72);
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __108__BLTPBBulletin_BBBulletin___addAttachmentsFromBBBulletin_toBLTPBBulletin_observer_attachOption_completion___block_invoke_2;
          v37[3] = &unk_278D32F48;
          v38 = *(a1 + 32);
          v39 = v18;
          [v26 _attachmentFromBBAttachmentMetadata:v22 bulletin:v23 observer:v24 fileOption:2 attachOption:v25 completion:v37];

          ++v21;
        }

        while (v20 != v21);
        v20 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v20);
    }

    v27 = BLTWorkQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__BLTPBBulletin_BBBulletin___addAttachmentsFromBBBulletin_toBLTPBBulletin_observer_attachOption_completion___block_invoke_3;
    block[3] = &unk_278D31478;
    v36 = *(a1 + 56);
    v35 = *(a1 + 32);
    dispatch_group_notify(v18, v27, block);

    v6 = v30;
    v5 = v31;
  }

  else
  {
    v28 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __108__BLTPBBulletin_BBBulletin___addAttachmentsFromBBBulletin_toBLTPBBulletin_observer_attachOption_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addAdditionalAttachments:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_fault_impl(&dword_241FB3000, a2, OS_LOG_TYPE_FAULT, "%s could not be retrieved from BulletinBoard!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_100_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = 138412802;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "Error transcoding %@ to %@: %@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end