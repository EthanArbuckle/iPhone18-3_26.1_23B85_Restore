@interface NPKIdentityExtendedReviewUserNotification
- (NPKIdentityExtendedReviewUserNotification)initWithNotificationType:(unint64_t)a3 documentType:(unint64_t)a4 issuerName:(id)a5;
- (id)body;
- (id)identifierHashComponents;
- (id)title;
@end

@implementation NPKIdentityExtendedReviewUserNotification

- (NPKIdentityExtendedReviewUserNotification)initWithNotificationType:(unint64_t)a3 documentType:(unint64_t)a4 issuerName:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = NPKIdentityExtendedReviewUserNotification;
  v9 = [(NPKIdentityExtendedReviewUserNotification *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_notificationType = a3;
    v9->_documentType = a4;
    v11 = [v8 copy];
    issuerName = v10->_issuerName;
    v10->_issuerName = v11;
  }

  return v10;
}

- (id)title
{
  v2 = 0;
  notificationType = self->_notificationType;
  if (notificationType > 3)
  {
    if (notificationType > 5)
    {
      switch(notificationType)
      {
        case 6:
          v2 = @"EXTENDED_REVIEW_VERIFICATION_ETA_TITLE";
          goto LABEL_21;
        case 7:
          documentType = self->_documentType;
          v5 = @"EXTENDED_REVIEW_LIVENESS_STEP_UP_REQUIRED_TITLE_STATE_ID";
          v6 = @"EXTENDED_REVIEW_LIVENESS_STEP_UP_REQUIRED_TITLE_DRIVER_LICENSE";
          v7 = @"EXTENDED_REVIEW_LIVENESS_STEP_UP_REQUIRED_TITLE_ID_CARD";
          break;
        case 8:
          documentType = self->_documentType;
          v5 = @"EXTENDED_REVIEW_PROOFING_EXPIRED_TITLE_STATE_ID";
          v6 = @"EXTENDED_REVIEW_PROOFING_EXPIRED_TITLE_DRIVER_LICENSE";
          v7 = @"EXTENDED_REVIEW_PROOFING_EXPIRED_TITLE_ID_CARD";
          break;
        default:
          goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (notificationType == 4)
    {
      documentType = self->_documentType;
      v5 = @"EXTENDED_REVIEW_FOLLOW_VERIFICATION_INSTRUCTION_REQUIRED_TITLE_STATE_ID";
      v6 = @"EXTENDED_REVIEW_FOLLOW_VERIFICATION_INSTRUCTION_REQUIRED_TITLE_DRIVER_LICENSE";
      v7 = @"EXTENDED_REVIEW_FOLLOW_VERIFICATION_INSTRUCTION_REQUIRED_TITLE_ID_CARD";
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (notificationType > 1)
  {
    documentType = self->_documentType;
    if (notificationType == 2)
    {
      v5 = @"EXTENDED_REVIEW_PROVISIONING_REJECTED_TITLE_STATE_ID";
      v6 = @"EXTENDED_REVIEW_PROVISIONING_REJECTED_TITLE_DRIVER_LICENSE";
      v7 = @"EXTENDED_REVIEW_PROVISIONING_REJECTED_TITLE_ID_CARD";
    }

    else
    {
      v5 = @"EXTENDED_REVIEW_UNABLE_TO_ADD_TITLE_STATE_ID";
      v6 = @"EXTENDED_REVIEW_UNABLE_TO_ADD_TITLE_DRIVER_LICENSE";
      v7 = @"EXTENDED_REVIEW_UNABLE_TO_ADD_TITLE_ID_CARD";
    }

    goto LABEL_20;
  }

  if (!notificationType)
  {
    documentType = self->_documentType;
    v5 = @"EXTENDED_REVIEW_ACTION_REQUIRED_TITLE_STATE_ID";
    v6 = @"EXTENDED_REVIEW_ACTION_REQUIRED_TITLE_DRIVER_LICENSE";
    v7 = @"EXTENDED_REVIEW_ACTION_REQUIRED_TITLE_ID_CARD";
    goto LABEL_20;
  }

  if (notificationType == 1)
  {
LABEL_14:
    documentType = self->_documentType;
    v5 = @"EXTENDED_REVIEW_VERIFICATION_CODE_REQUIRED_TITLE_STATE_ID";
    v6 = @"EXTENDED_REVIEW_VERIFICATION_CODE_REQUIRED_TITLE_DRIVER_LICENSE";
    v7 = @"EXTENDED_REVIEW_VERIFICATION_CODE_REQUIRED_TITLE_ID_CARD";
LABEL_20:
    v2 = NPKSelectStringForDocumentType(documentType, v5, v6, v7);
  }

LABEL_21:
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKit"];
  v9 = [v8 localizedStringForKey:v2 value:&stru_286C934F8 table:@"NanoPassKit-Identity"];

  return v9;
}

- (id)body
{
  v3 = 0;
  notificationType = self->_notificationType;
  if (notificationType <= 3)
  {
    v9 = @"EXTENDED_REVIEW_PROVISIONING_REJECTED_BODY";
    v10 = @"EXTENDED_REVIEW_UNABLE_TO_ADD_BODY";
    if (notificationType != 3)
    {
      v10 = 0;
    }

    if (notificationType != 2)
    {
      v9 = v10;
    }

    v11 = @"EXTENDED_REVIEW_ACTION_REQUIRED_BODY";
    v12 = @"EXTENDED_REVIEW_VERIFICATION_CODE_REQUIRED_BODY";
    if (notificationType != 1)
    {
      v12 = 0;
    }

    if (notificationType)
    {
      v11 = v12;
    }

    if (notificationType <= 1)
    {
      v3 = v11;
    }

    else
    {
      v3 = v9;
    }

    goto LABEL_18;
  }

  if (notificationType <= 5)
  {
    if (notificationType == 4)
    {
      v3 = @"EXTENDED_REVIEW_FOLLOW_VERIFICATION_INSTRUCTION_REQUIRED_BODY";
    }

    else
    {
      v3 = @"EXTENDED_REVIEW_VERIFICATION_CODE_TRY_AGAIN_BODY";
    }

    goto LABEL_25;
  }

  if (notificationType == 6)
  {
    v3 = @"EXTENDED_REVIEW_VERIFICATION_ETA_BODY";
    goto LABEL_18;
  }

  if (notificationType == 7)
  {
    documentType = self->_documentType;
    v6 = @"EXTENDED_REVIEW_LIVENESS_STEP_UP_REQUIRED_BODY_STATE_ID";
    v7 = @"EXTENDED_REVIEW_LIVENESS_STEP_UP_REQUIRED_BODY_DRIVER_LICENSE";
    v8 = @"EXTENDED_REVIEW_LIVENESS_STEP_UP_REQUIRED_BODY_ID_CARD";
    goto LABEL_24;
  }

  if (notificationType != 8)
  {
LABEL_18:
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKit"];
    v15 = [v14 localizedStringForKey:v3 value:&stru_286C934F8 table:@"NanoPassKit-Identity"];
    v16 = [v13 stringWithFormat:v15, self->_issuerName];

    goto LABEL_26;
  }

  documentType = self->_documentType;
  v6 = @"EXTENDED_REVIEW_PROOFING_EXPIRED_BODY_STATE_ID";
  v7 = @"EXTENDED_REVIEW_PROOFING_EXPIRED_BODY_DRIVER_LICENSE";
  v8 = @"EXTENDED_REVIEW_PROOFING_EXPIRED_BODY_ID_CARD";
LABEL_24:
  v3 = NPKSelectStringForDocumentType(documentType, v6, v7, v8);
LABEL_25:
  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKit"];
  v16 = [v14 localizedStringForKey:v3 value:&stru_286C934F8 table:@"NanoPassKit-Identity"];
LABEL_26:

  return v16;
}

- (id)identifierHashComponents
{
  v6.receiver = self;
  v6.super_class = NPKIdentityExtendedReviewUserNotification;
  v3 = [(NPKUserNotification *)&v6 identifierHashComponents];
  v4 = [v3 mutableCopy];

  [v4 safelyAddObject:self->_issuerName];

  return v4;
}

@end