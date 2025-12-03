@interface BMPBSiriExecutionEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTaskStep:(id)step;
- (int)taskStep;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTaskStep:(BOOL)step;
- (void)writeTo:(id)to;
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

- (void)setHasTaskStep:(BOOL)step
{
  if (step)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsTaskStep:(id)step
{
  stepCopy = step;
  if ([stepCopy isEqualToString:@"Start"])
  {
    v4 = 0;
  }

  else if ([stepCopy isEqualToString:@"Authentication"])
  {
    v4 = 1;
  }

  else if ([stepCopy isEqualToString:@"Wait"])
  {
    v4 = 2;
  }

  else if ([stepCopy isEqualToString:@"Resume"])
  {
    v4 = 3;
  }

  else if ([stepCopy isEqualToString:@"Canceled"])
  {
    v4 = 4;
  }

  else if ([stepCopy isEqualToString:@"Failed"])
  {
    v4 = 5;
  }

  else if ([stepCopy isEqualToString:@"Completed"])
  {
    v4 = 6;
  }

  else if ([stepCopy isEqualToString:@"None"])
  {
    v4 = 7;
  }

  else if ([stepCopy isEqualToString:@"HandoffToCompanion"])
  {
    v4 = 8;
  }

  else if ([stepCopy isEqualToString:@"SiriExecutionTaskStepTypeSaved"])
  {
    v4 = 9;
  }

  else if ([stepCopy isEqualToString:@"UserAuthenticated"])
  {
    v4 = 10;
  }

  else if ([stepCopy isEqualToString:@"ResolveConfirmStart"])
  {
    v4 = 11;
  }

  else if ([stepCopy isEqualToString:@"ResolveConfirmFinish"])
  {
    v4 = 12;
  }

  else if ([stepCopy isEqualToString:@"HandleIntentStart"])
  {
    v4 = 13;
  }

  else if ([stepCopy isEqualToString:@"HandleIntentFinish"])
  {
    v4 = 14;
  }

  else if ([stepCopy isEqualToString:@"Disambiguation"])
  {
    v4 = 15;
  }

  else if ([stepCopy isEqualToString:@"PromptForData"])
  {
    v4 = 16;
  }

  else if ([stepCopy isEqualToString:@"Confirmation"])
  {
    v4 = 17;
  }

  else if ([stepCopy isEqualToString:@"TapToEditCorrection"])
  {
    v4 = 18;
  }

  else if ([stepCopy isEqualToString:@"FetchData"])
  {
    v4 = 19;
  }

  else if ([stepCopy isEqualToString:@"ResolveApp"])
  {
    v4 = 20;
  }

  else if ([stepCopy isEqualToString:@"SuggestApp"])
  {
    v4 = 21;
  }

  else if ([stepCopy isEqualToString:@"DisambiguateApp"])
  {
    v4 = 22;
  }

  else if ([stepCopy isEqualToString:@"ConfirmApp"])
  {
    v4 = 23;
  }

  else if ([stepCopy isEqualToString:@"SearchCompleted"])
  {
    v4 = 24;
  }

  else if ([stepCopy isEqualToString:@"Generic"])
  {
    v4 = 25;
  }

  else if ([stepCopy isEqualToString:@"PromptUnlock"])
  {
    v4 = 26;
  }

  else if ([stepCopy isEqualToString:@"ShowInterstitial"])
  {
    v4 = 27;
  }

  else if ([stepCopy isEqualToString:@"ContactResolution"])
  {
    v4 = 28;
  }

  else if ([stepCopy isEqualToString:@"DeviceSearch"])
  {
    v4 = 29;
  }

  else if ([stepCopy isEqualToString:@"IntentAutoConfirm"])
  {
    v4 = 30;
  }

  else if ([stepCopy isEqualToString:@"CheckUnsetRelationship"])
  {
    v4 = 31;
  }

  else if ([stepCopy isEqualToString:@"ConfirmIntent"])
  {
    v4 = 32;
  }

  else if ([stepCopy isEqualToString:@"ModifySlotValue"])
  {
    v4 = 33;
  }

  else if ([stepCopy isEqualToString:@"ReadingStart"])
  {
    v4 = 34;
  }

  else if ([stepCopy isEqualToString:@"RememberUnsetRelationship"])
  {
    v4 = 35;
  }

  else if ([stepCopy isEqualToString:@"ResolveSlotAuthenticationRequired"])
  {
    v4 = 36;
  }

  else if ([stepCopy isEqualToString:@"ResolveSlotConfirm"])
  {
    v4 = 37;
  }

  else if ([stepCopy isEqualToString:@"ConfirmationAccepted"])
  {
    v4 = 38;
  }

  else if ([stepCopy isEqualToString:@"ConfirmationRejected"])
  {
    v4 = 39;
  }

  else if ([stepCopy isEqualToString:@"ResolveSlotDisambiguate"])
  {
    v4 = 40;
  }

  else if ([stepCopy isEqualToString:@"DisambiguationResponseReceived"])
  {
    v4 = 41;
  }

  else if ([stepCopy isEqualToString:@"DisambiguationManualOverride"])
  {
    v4 = 42;
  }

  else if ([stepCopy isEqualToString:@"ResolveSlotNeedsValue"])
  {
    v4 = 43;
  }

  else if ([stepCopy isEqualToString:@"ResolveSlotNotRequired"])
  {
    v4 = 44;
  }

  else if ([stepCopy isEqualToString:@"ResolveSlotSuccess"])
  {
    v4 = 45;
  }

  else if ([stepCopy isEqualToString:@"ResolveSlotUnsupported"])
  {
    v4 = 46;
  }

  else if ([stepCopy isEqualToString:@"SetUnsetRelationship"])
  {
    v4 = 47;
  }

  else if ([stepCopy isEqualToString:@"SubtaskCompleted"])
  {
    v4 = 48;
  }

  else if ([stepCopy isEqualToString:@"TermConditionCheck"])
  {
    v4 = 49;
  }

  else if ([stepCopy isEqualToString:@"DirectExecution"])
  {
    v4 = 50;
  }

  else if ([stepCopy isEqualToString:@"SearchKnowledgeFromSports"])
  {
    v4 = 51;
  }

  else if ([stepCopy isEqualToString:@"SearchLocalEventsFromSports"])
  {
    v4 = 52;
  }

  else if ([stepCopy isEqualToString:@"SearchWebFromSports"])
  {
    v4 = 53;
  }

  else if ([stepCopy isEqualToString:@"IntentReformation"])
  {
    v4 = 54;
  }

  else if ([stepCopy isEqualToString:@"DialogCompleted"])
  {
    v4 = 55;
  }

  else if ([stepCopy isEqualToString:@"DialogFailed"])
  {
    v4 = 56;
  }

  else if ([stepCopy isEqualToString:@"SportsProbeStarted"])
  {
    v4 = 57;
  }

  else if ([stepCopy isEqualToString:@"SportsProbeNoResultsOrUnsupported"])
  {
    v4 = 58;
  }

  else if ([stepCopy isEqualToString:@"SportsProbeFailed"])
  {
    v4 = 59;
  }

  else if ([stepCopy isEqualToString:@"SportsProbeSuccessful"])
  {
    v4 = 60;
  }

  else if ([stepCopy isEqualToString:@"Preprocess"])
  {
    v4 = 61;
  }

  else if ([stepCopy isEqualToString:@"Render"])
  {
    v4 = 62;
  }

  else if ([stepCopy isEqualToString:@"FlowReplan"])
  {
    v4 = 63;
  }

  else if ([stepCopy isEqualToString:@"SendViaSnippet"])
  {
    v4 = 64;
  }

  else if ([stepCopy isEqualToString:@"ContentChangedViaSnippet"])
  {
    v4 = 65;
  }

  else if ([stepCopy isEqualToString:@"GateKeeperNewCall"])
  {
    v4 = 66;
  }

  else if ([stepCopy isEqualToString:@"GateKeeperNewMessage"])
  {
    v4 = 67;
  }

  else if ([stepCopy isEqualToString:@"GateKeeperReadMessage"])
  {
    v4 = 68;
  }

  else if ([stepCopy isEqualToString:@"Skip"])
  {
    v4 = 69;
  }

  else if ([stepCopy isEqualToString:@"Stop"])
  {
    v4 = 70;
  }

  else if ([stepCopy isEqualToString:@"Reply"])
  {
    v4 = 71;
  }

  else if ([stepCopy isEqualToString:@"AudioReply"])
  {
    v4 = 72;
  }

  else if ([stepCopy isEqualToString:@"ReadAgain"])
  {
    v4 = 73;
  }

  else if ([stepCopy isEqualToString:@"ModifyMessage"])
  {
    v4 = 74;
  }

  else if ([stepCopy isEqualToString:@"ReplyWithCall"])
  {
    v4 = 75;
  }

  else if ([stepCopy isEqualToString:@"TCCAccepted"])
  {
    v4 = 76;
  }

  else if ([stepCopy isEqualToString:@"TCCDeclined"])
  {
    v4 = 77;
  }

  else if ([stepCopy isEqualToString:@"GetCallBackgroundState"])
  {
    v4 = 78;
  }

  else if ([stepCopy isEqualToString:@"SearchFailed"])
  {
    v4 = 79;
  }

  else if ([stepCopy isEqualToString:@"Fallback"])
  {
    v4 = 80;
  }

  else if ([stepCopy isEqualToString:@"PartialFailure"])
  {
    v4 = 81;
  }

  else if ([stepCopy isEqualToString:@"Correction"])
  {
    v4 = 82;
  }

  else if ([stepCopy isEqualToString:@"AutoSend"])
  {
    v4 = 83;
  }

  else if ([stepCopy isEqualToString:@"AutoSendStarted"])
  {
    v4 = 84;
  }

  else if ([stepCopy isEqualToString:@"CheckSharingPolicy"])
  {
    v4 = 85;
  }

  else if ([stepCopy isEqualToString:@"PostNotificationToCompanion"])
  {
    v4 = 86;
  }

  else if ([stepCopy isEqualToString:@"ExecuteOnRemote"])
  {
    v4 = 87;
  }

  else if ([stepCopy isEqualToString:@"NeedsServerExecution"])
  {
    v4 = 88;
  }

  else if ([stepCopy isEqualToString:@"CheckPersonalDomainSetting"])
  {
    v4 = 89;
  }

  else if ([stepCopy isEqualToString:@"CheckPersonalDomainSettingResponse"])
  {
    v4 = 90;
  }

  else if ([stepCopy isEqualToString:@"RequestIdentity"])
  {
    v4 = 91;
  }

  else if ([stepCopy isEqualToString:@"ConfirmIdentity"])
  {
    v4 = 92;
  }

  else if ([stepCopy isEqualToString:@"CheckCompanionCompatibility"])
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
  dictionaryRepresentation = [(BMPBSiriExecutionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  taskId = self->_taskId;
  if (taskId)
  {
    [dictionary setObject:taskId forKey:@"taskId"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_taskId)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    taskStep = self->_taskStep;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_statusReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_slotValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_intentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_appBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_interactionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_taskId)
  {
    [toCopy setTaskId:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 16) = self->_taskStep;
    *(toCopy + 68) |= 2u;
  }

  if (self->_statusReason)
  {
    [v5 setStatusReason:?];
    toCopy = v5;
  }

  if (self->_slotValue)
  {
    [v5 setSlotValue:?];
    toCopy = v5;
  }

  if (self->_intentName)
  {
    [v5 setIntentName:?];
    toCopy = v5;
  }

  if (self->_appBundleId)
  {
    [v5 setAppBundleId:?];
    toCopy = v5;
  }

  if (self->_interactionId)
  {
    [v5 setInteractionId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_absoluteTimestamp;
    *(toCopy + 68) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_taskId copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 64) = self->_taskStep;
    *(v5 + 68) |= 2u;
  }

  v8 = [(NSString *)self->_statusReason copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_slotValue copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_intentName copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_appBundleId copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  v16 = [(NSString *)self->_interactionId copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 68) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  taskId = self->_taskId;
  if (taskId | *(equalCopy + 7))
  {
    if (![(NSString *)taskId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v6 = *(equalCopy + 68);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_taskStep != *(equalCopy + 16))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 68) & 2) != 0)
  {
LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  statusReason = self->_statusReason;
  if (statusReason | *(equalCopy + 6) && ![(NSString *)statusReason isEqual:?])
  {
    goto LABEL_23;
  }

  slotValue = self->_slotValue;
  if (slotValue | *(equalCopy + 5))
  {
    if (![(NSString *)slotValue isEqual:?])
    {
      goto LABEL_23;
    }
  }

  intentName = self->_intentName;
  if (intentName | *(equalCopy + 3))
  {
    if (![(NSString *)intentName isEqual:?])
    {
      goto LABEL_23;
    }
  }

  appBundleId = self->_appBundleId;
  if (appBundleId | *(equalCopy + 2))
  {
    if (![(NSString *)appBundleId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  interactionId = self->_interactionId;
  if (interactionId | *(equalCopy + 4))
  {
    if (![(NSString *)interactionId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v12 = (*(equalCopy + 68) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 7))
  {
    [(BMPBSiriExecutionEvent *)self setTaskId:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 68) & 2) != 0)
  {
    self->_taskStep = *(fromCopy + 16);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 6))
  {
    [(BMPBSiriExecutionEvent *)self setStatusReason:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(BMPBSiriExecutionEvent *)self setSlotValue:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBSiriExecutionEvent *)self setIntentName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(BMPBSiriExecutionEvent *)self setAppBundleId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBSiriExecutionEvent *)self setInteractionId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 68))
  {
    self->_absoluteTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end