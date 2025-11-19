@interface BMPBSiriExecutionEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTaskStep:(id)a3;
- (int)taskStep;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTaskStep:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBSiriExecutionEvent

- (int)taskStep
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_taskStep;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTaskStep:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsTaskStep:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Start"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Authentication"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Wait"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Resume"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Canceled"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Failed"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Completed"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"None"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"HandoffToCompanion"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SiriExecutionTaskStepTypeSaved"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"UserAuthenticated"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ResolveConfirmStart"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"ResolveConfirmFinish"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"HandleIntentStart"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"HandleIntentFinish"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"Disambiguation"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"PromptForData"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"Confirmation"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"TapToEditCorrection"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"FetchData"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"ResolveApp"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"SuggestApp"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"DisambiguateApp"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"ConfirmApp"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"SearchCompleted"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"Generic"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"PromptUnlock"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"ShowInterstitial"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"ContactResolution"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"DeviceSearch"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"IntentAutoConfirm"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"CheckUnsetRelationship"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"ConfirmIntent"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"ModifySlotValue"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"ReadingStart"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"RememberUnsetRelationship"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"ResolveSlotAuthenticationRequired"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"ResolveSlotConfirm"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"ConfirmationAccepted"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"ConfirmationRejected"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"ResolveSlotDisambiguate"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"DisambiguationResponseReceived"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"DisambiguationManualOverride"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"ResolveSlotNeedsValue"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"ResolveSlotNotRequired"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"ResolveSlotSuccess"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"ResolveSlotUnsupported"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"SetUnsetRelationship"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"SubtaskCompleted"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"TermConditionCheck"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"DirectExecution"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"SearchKnowledgeFromSports"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"SearchLocalEventsFromSports"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"SearchWebFromSports"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"IntentReformation"])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:@"DialogCompleted"])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:@"DialogFailed"])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:@"SportsProbeStarted"])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:@"SportsProbeNoResultsOrUnsupported"])
  {
    v4 = 58;
  }

  else if ([v3 isEqualToString:@"SportsProbeFailed"])
  {
    v4 = 59;
  }

  else if ([v3 isEqualToString:@"SportsProbeSuccessful"])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:@"Preprocess"])
  {
    v4 = 61;
  }

  else if ([v3 isEqualToString:@"Render"])
  {
    v4 = 62;
  }

  else if ([v3 isEqualToString:@"FlowReplan"])
  {
    v4 = 63;
  }

  else if ([v3 isEqualToString:@"SendViaSnippet"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"ContentChangedViaSnippet"])
  {
    v4 = 65;
  }

  else if ([v3 isEqualToString:@"GateKeeperNewCall"])
  {
    v4 = 66;
  }

  else if ([v3 isEqualToString:@"GateKeeperNewMessage"])
  {
    v4 = 67;
  }

  else if ([v3 isEqualToString:@"GateKeeperReadMessage"])
  {
    v4 = 68;
  }

  else if ([v3 isEqualToString:@"Skip"])
  {
    v4 = 69;
  }

  else if ([v3 isEqualToString:@"Stop"])
  {
    v4 = 70;
  }

  else if ([v3 isEqualToString:@"Reply"])
  {
    v4 = 71;
  }

  else if ([v3 isEqualToString:@"AudioReply"])
  {
    v4 = 72;
  }

  else if ([v3 isEqualToString:@"ReadAgain"])
  {
    v4 = 73;
  }

  else if ([v3 isEqualToString:@"ModifyMessage"])
  {
    v4 = 74;
  }

  else if ([v3 isEqualToString:@"ReplyWithCall"])
  {
    v4 = 75;
  }

  else if ([v3 isEqualToString:@"TCCAccepted"])
  {
    v4 = 76;
  }

  else if ([v3 isEqualToString:@"TCCDeclined"])
  {
    v4 = 77;
  }

  else if ([v3 isEqualToString:@"GetCallBackgroundState"])
  {
    v4 = 78;
  }

  else if ([v3 isEqualToString:@"SearchFailed"])
  {
    v4 = 79;
  }

  else if ([v3 isEqualToString:@"Fallback"])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:@"PartialFailure"])
  {
    v4 = 81;
  }

  else if ([v3 isEqualToString:@"Correction"])
  {
    v4 = 82;
  }

  else if ([v3 isEqualToString:@"AutoSend"])
  {
    v4 = 83;
  }

  else if ([v3 isEqualToString:@"AutoSendStarted"])
  {
    v4 = 84;
  }

  else if ([v3 isEqualToString:@"CheckSharingPolicy"])
  {
    v4 = 85;
  }

  else if ([v3 isEqualToString:@"PostNotificationToCompanion"])
  {
    v4 = 86;
  }

  else if ([v3 isEqualToString:@"ExecuteOnRemote"])
  {
    v4 = 87;
  }

  else if ([v3 isEqualToString:@"NeedsServerExecution"])
  {
    v4 = 88;
  }

  else if ([v3 isEqualToString:@"CheckPersonalDomainSetting"])
  {
    v4 = 89;
  }

  else if ([v3 isEqualToString:@"CheckPersonalDomainSettingResponse"])
  {
    v4 = 90;
  }

  else if ([v3 isEqualToString:@"RequestIdentity"])
  {
    v4 = 91;
  }

  else if ([v3 isEqualToString:@"ConfirmIdentity"])
  {
    v4 = 92;
  }

  else if ([v3 isEqualToString:@"CheckCompanionCompatibility"])
  {
    v4 = 93;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSiriExecutionEvent;
  v4 = [(BMPBSiriExecutionEvent *)&v8 description];
  v5 = [(BMPBSiriExecutionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  taskId = self->_taskId;
  if (taskId)
  {
    [v3 setObject:taskId forKey:@"taskId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    taskStep = self->_taskStep;
    if (taskStep >= 0x5E)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_taskStep];
    }

    else
    {
      v7 = off_1E6E53D48[taskStep];
    }

    [v4 setObject:v7 forKey:@"taskStep"];
  }

  statusReason = self->_statusReason;
  if (statusReason)
  {
    [v4 setObject:statusReason forKey:@"statusReason"];
  }

  slotValue = self->_slotValue;
  if (slotValue)
  {
    [v4 setObject:slotValue forKey:@"slotValue"];
  }

  intentName = self->_intentName;
  if (intentName)
  {
    [v4 setObject:intentName forKey:@"intentName"];
  }

  appBundleId = self->_appBundleId;
  if (appBundleId)
  {
    [v4 setObject:appBundleId forKey:@"appBundleId"];
  }

  interactionId = self->_interactionId;
  if (interactionId)
  {
    [v4 setObject:interactionId forKey:@"interactionId"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v13 forKey:@"absoluteTimestamp"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_taskId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    taskStep = self->_taskStep;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_statusReason)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_slotValue)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_intentName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_appBundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_interactionId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_taskId)
  {
    [v4 setTaskId:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 16) = self->_taskStep;
    *(v4 + 68) |= 2u;
  }

  if (self->_statusReason)
  {
    [v5 setStatusReason:?];
    v4 = v5;
  }

  if (self->_slotValue)
  {
    [v5 setSlotValue:?];
    v4 = v5;
  }

  if (self->_intentName)
  {
    [v5 setIntentName:?];
    v4 = v5;
  }

  if (self->_appBundleId)
  {
    [v5 setAppBundleId:?];
    v4 = v5;
  }

  if (self->_interactionId)
  {
    [v5 setInteractionId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_absoluteTimestamp;
    *(v4 + 68) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_taskId copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 64) = self->_taskStep;
    *(v5 + 68) |= 2u;
  }

  v8 = [(NSString *)self->_statusReason copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_slotValue copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_intentName copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_appBundleId copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  v16 = [(NSString *)self->_interactionId copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 68) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  taskId = self->_taskId;
  if (taskId | *(v4 + 7))
  {
    if (![(NSString *)taskId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v6 = *(v4 + 68);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_taskStep != *(v4 + 16))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 68) & 2) != 0)
  {
LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  statusReason = self->_statusReason;
  if (statusReason | *(v4 + 6) && ![(NSString *)statusReason isEqual:?])
  {
    goto LABEL_23;
  }

  slotValue = self->_slotValue;
  if (slotValue | *(v4 + 5))
  {
    if (![(NSString *)slotValue isEqual:?])
    {
      goto LABEL_23;
    }
  }

  intentName = self->_intentName;
  if (intentName | *(v4 + 3))
  {
    if (![(NSString *)intentName isEqual:?])
    {
      goto LABEL_23;
    }
  }

  appBundleId = self->_appBundleId;
  if (appBundleId | *(v4 + 2))
  {
    if (![(NSString *)appBundleId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  interactionId = self->_interactionId;
  if (interactionId | *(v4 + 4))
  {
    if (![(NSString *)interactionId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v12 = (*(v4 + 68) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_23;
    }

    v12 = 1;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_taskId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_taskStep;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_statusReason hash];
  v6 = [(NSString *)self->_slotValue hash];
  v7 = [(NSString *)self->_intentName hash];
  v8 = [(NSString *)self->_appBundleId hash];
  v9 = [(NSString *)self->_interactionId hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v10.i64 = floor(absoluteTimestamp + 0.5);
    v14 = (absoluteTimestamp - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v11, v10).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 7))
  {
    [(BMPBSiriExecutionEvent *)self setTaskId:?];
    v4 = v5;
  }

  if ((*(v4 + 68) & 2) != 0)
  {
    self->_taskStep = *(v4 + 16);
    *&self->_has |= 2u;
  }

  if (*(v4 + 6))
  {
    [(BMPBSiriExecutionEvent *)self setStatusReason:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(BMPBSiriExecutionEvent *)self setSlotValue:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(BMPBSiriExecutionEvent *)self setIntentName:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(BMPBSiriExecutionEvent *)self setAppBundleId:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(BMPBSiriExecutionEvent *)self setInteractionId:?];
    v4 = v5;
  }

  if (*(v4 + 68))
  {
    self->_absoluteTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end