@interface TSArticleContext
- (NSDate)userActionDate;
- (NSURL)url;
- (TSAnalyticsReferral)referral;
- (TSArticleContext)init;
- (TSArticleContext)initWithUrl:(id)url title:(id)title sourceApplication:(id)application previousArticleID:(id)d previousArticleVersion:(id)version adPreviewSessionID:(id)iD adPreviewID:(id)previewID adQToken:(id)self0 maximumAdRequestsForCurrentAdPreviewID:(int64_t)self1 userActionDate:(id)self2 presentationReason:(int64_t)self3 notificationID:(id)self4 notificationSenderChannelID:(id)self5 referral:(id)self6 shouldAutoPlayVideo:(BOOL)self7;
- (void)setReferral:(id)referral;
@end

@implementation TSArticleContext

- (NSURL)url
{
  v3 = MEMORY[0x277CC9260];
  sub_2186E578C(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_21904F388(self + OBJC_IVAR___TSArticleContext_url, &v13 - v5, &unk_280EE9D00, v3);
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_219BDB854();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (NSDate)userActionDate
{
  v3 = MEMORY[0x277CC9578];
  sub_2186E578C(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_21904F388(self + OBJC_IVAR___TSArticleContext_userActionDate, &v13 - v5, &qword_280EE9C40, v3);
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_219BDBC04();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (TSAnalyticsReferral)referral
{
  v3 = OBJC_IVAR___TSArticleContext_referral;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setReferral:(id)referral
{
  v5 = OBJC_IVAR___TSArticleContext_referral;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = referral;
  referralCopy = referral;
}

- (TSArticleContext)initWithUrl:(id)url title:(id)title sourceApplication:(id)application previousArticleID:(id)d previousArticleVersion:(id)version adPreviewSessionID:(id)iD adPreviewID:(id)previewID adQToken:(id)self0 maximumAdRequestsForCurrentAdPreviewID:(int64_t)self1 userActionDate:(id)self2 presentationReason:(int64_t)self3 notificationID:(id)self4 notificationSenderChannelID:(id)self5 referral:(id)self6 shouldAutoPlayVideo:(BOOL)self7
{
  selfCopy = self;
  sub_2186E578C(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v23 - 8);
  v84 = &notificationIDCopy - v24;
  sub_2186E578C(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &notificationIDCopy - v26;
  if (url)
  {
    sub_219BDB8B4();
    v28 = sub_219BDB954();
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  }

  else
  {
    v29 = sub_219BDB954();
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  }

  dateCopy = date;
  channelIDCopy = channelID;
  previewIDCopy = previewID;
  tokenCopy = token;
  if (title)
  {
    v30 = sub_219BF5414();
    v76 = v31;
    v77 = v30;
    v78 = v27;
    if (application)
    {
LABEL_6:
      v32 = sub_219BF5414();
      v74 = v33;
      v75 = v32;
      goto LABEL_9;
    }
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v78 = v27;
    if (application)
    {
      goto LABEL_6;
    }
  }

  v74 = 0;
  v75 = 0;
LABEL_9:
  dCopy = d;
  versionCopy = version;
  iDCopy = iD;
  iDCopy2 = iD;
  v37 = previewIDCopy;
  v38 = tokenCopy;
  v39 = dateCopy;
  notificationIDCopy = notificationID;
  notificationIDCopy2 = notificationID;
  v70 = channelIDCopy;
  referralCopy = referral;
  if (dCopy)
  {
    v41 = sub_219BF5414();
    v72 = v42;
    v73 = v41;

    if (versionCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v72 = 0;
    v73 = 0;
    if (versionCopy)
    {
LABEL_11:
      v43 = sub_219BF5414();
      v45 = v44;

      v46 = v84;
      if (iDCopy2)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  v43 = 0;
  v45 = 0;
  v46 = v84;
  if (iDCopy2)
  {
LABEL_12:
    v47 = sub_219BF5414();
    v68 = v48;
    iDCopy = v47;

    if (v37)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_18:
  v68 = 0;
  iDCopy = 0;
  if (v37)
  {
LABEL_13:
    previewIDCopy = sub_219BF5414();
    v67 = v49;

    if (v38)
    {
      goto LABEL_14;
    }

LABEL_20:
    v50 = 0;
    tokenCopy = 0;
    if (v39)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

LABEL_19:
  previewIDCopy = 0;
  v67 = 0;
  if (!v38)
  {
    goto LABEL_20;
  }

LABEL_14:
  v50 = sub_219BF5414();
  tokenCopy = v51;

  if (v39)
  {
LABEL_15:
    sub_219BDBCA4();

    v52 = 0;
    goto LABEL_22;
  }

LABEL_21:
  v52 = 1;
LABEL_22:
  v53 = sub_219BDBD34();
  (*(*(v53 - 8) + 56))(v46, v52, 1, v53);
  if (notificationIDCopy2)
  {
    v54 = sub_219BF5414();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  if (v70)
  {
    dateCopy = v56;
    v57 = v54;
    v58 = v50;
    v59 = v45;
    v60 = v43;
    v61 = v70;
    v62 = sub_219BF5414();
    v64 = v63;

    v43 = v60;
    v45 = v59;
    v50 = v58;
    v54 = v57;
    v56 = dateCopy;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  return ArticleContext.init(url:title:sourceApplication:previousArticleID:previousArticleVersion:adPreviewSessionID:adPreviewID:adQToken:maximumAdRequestsForCurrentAdPreviewID:userActionDate:presentationReason:notificationID:notificationSenderChannelID:referral:shouldAutoPlayVideo:)(v78, v77, v76, v75, v74, v73, v72, v43, v45, iDCopy, v68, previewIDCopy, v67, v50, tokenCopy, adPreviewID, v84, reason, v54, v56, v62, v64, referralCopy, video);
}

- (TSArticleContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end