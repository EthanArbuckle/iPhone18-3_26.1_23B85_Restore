@interface LNActionExecutorOptions
- (LNActionExecutorOptions)init;
- (LNActionExecutorOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionExecutorOptions

- (LNActionExecutorOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  if (v5)
  {
    self = [(LNActionExecutorOptions *)self init];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executionUUID"];
    [(LNActionExecutorOptions *)self setExecutionUUID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientLabel"];
    [(LNActionExecutorOptions *)self setClientLabel:v7];

    -[LNActionExecutorOptions setSource:](self, "setSource:", [coderCopy decodeIntegerForKey:@"source"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceOverride"];
    [(LNActionExecutorOptions *)self setSourceOverride:v8];

    -[LNActionExecutorOptions setKind:](self, "setKind:", [coderCopy decodeIntegerForKey:@"kind"]);
    -[LNActionExecutorOptions setPriority:](self, "setPriority:", [coderCopy decodeIntegerForKey:@"priority"]);
    -[LNActionExecutorOptions setAssistantDismissalPolicy:](self, "setAssistantDismissalPolicy:", [coderCopy decodeIntegerForKey:@"assistantDismissalPolicy"]);
    -[LNActionExecutorOptions setInteractionMode:](self, "setInteractionMode:", [coderCopy decodeIntegerForKey:@"interactionMode"]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"viewActionIdentifier"];
    [(LNActionExecutorOptions *)self setViewActionIdentifier:v9];

    -[LNActionExecutorOptions setDonateToTranscript:](self, "setDonateToTranscript:", [coderCopy decodeBoolForKey:@"donateToTranscript"]);
    [(LNActionExecutorOptions *)self setEnvironment:v5];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemContext"];
    [(LNActionExecutorOptions *)self setSystemContext:v10];

    [coderCopy decodeDoubleForKey:@"connectionOperationTimeout"];
    [(LNActionExecutorOptions *)self setConnectionOperationTimeout:?];
    -[LNActionExecutorOptions setAllowsPrepareBeforePerform:](self, "setAllowsPrepareBeforePerform:", [coderCopy decodeBoolForKey:@"allowsPrepareBeforePerform"]);
    -[LNActionExecutorOptions setRequestUnlockIfNeeded:](self, "setRequestUnlockIfNeeded:", [coderCopy decodeBoolForKey:@"requestUnlockIfNeeded"]);
    -[LNActionExecutorOptions setPreferNoticePresentation:](self, "setPreferNoticePresentation:", [coderCopy decodeBoolForKey:@"preferNoticePresentation"]);
    -[LNActionExecutorOptions setConvertArrayResultToAsyncSequence:](self, "setConvertArrayResultToAsyncSequence:", [coderCopy decodeBoolForKey:@"convertArrayResultToAsyncSequence"]);
    self->_oneShotForSpringBoardOnly = [coderCopy decodeBoolForKey:@"oneShotForSpringBoardOnly"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exportedContentConfiguration"];
    [(LNActionExecutorOptions *)self setExportedContentConfiguration:v11];

    -[LNActionExecutorOptions setValidateConstraints:](self, "setValidateConstraints:", [coderCopy decodeBoolForKey:@"validateConstraints"]);
    -[LNActionExecutorOptions setAllowLiveActivities:](self, "setAllowLiveActivities:", [coderCopy decodeBoolForKey:@"allowLiveActivities"]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  executionUUID = [(LNActionExecutorOptions *)self executionUUID];
  [coderCopy encodeObject:executionUUID forKey:@"executionUUID"];

  clientLabel = [(LNActionExecutorOptions *)self clientLabel];
  [coderCopy encodeObject:clientLabel forKey:@"clientLabel"];

  [coderCopy encodeInteger:-[LNActionExecutorOptions source](self forKey:{"source"), @"source"}];
  sourceOverride = [(LNActionExecutorOptions *)self sourceOverride];
  [coderCopy encodeObject:sourceOverride forKey:@"sourceOverride"];

  [coderCopy encodeInteger:-[LNActionExecutorOptions kind](self forKey:{"kind"), @"kind"}];
  [coderCopy encodeInteger:-[LNActionExecutorOptions priority](self forKey:{"priority"), @"priority"}];
  [coderCopy encodeInteger:-[LNActionExecutorOptions assistantDismissalPolicy](self forKey:{"assistantDismissalPolicy"), @"assistantDismissalPolicy"}];
  [coderCopy encodeInteger:-[LNActionExecutorOptions interactionMode](self forKey:{"interactionMode"), @"interactionMode"}];
  viewActionIdentifier = [(LNActionExecutorOptions *)self viewActionIdentifier];
  [coderCopy encodeObject:viewActionIdentifier forKey:@"viewActionIdentifier"];

  [coderCopy encodeBool:-[LNActionExecutorOptions donateToTranscript](self forKey:{"donateToTranscript"), @"donateToTranscript"}];
  environment = [(LNActionExecutorOptions *)self environment];
  [coderCopy encodeObject:environment forKey:@"environment"];

  systemContext = [(LNActionExecutorOptions *)self systemContext];
  [coderCopy encodeObject:systemContext forKey:@"systemContext"];

  [(LNActionExecutorOptions *)self connectionOperationTimeout];
  [coderCopy encodeDouble:@"connectionOperationTimeout" forKey:?];
  [coderCopy encodeBool:-[LNActionExecutorOptions allowsPrepareBeforePerform](self forKey:{"allowsPrepareBeforePerform"), @"allowsPrepareBeforePerform"}];
  [coderCopy encodeBool:-[LNActionExecutorOptions requestUnlockIfNeeded](self forKey:{"requestUnlockIfNeeded"), @"requestUnlockIfNeeded"}];
  [coderCopy encodeBool:-[LNActionExecutorOptions preferNoticePresentation](self forKey:{"preferNoticePresentation"), @"preferNoticePresentation"}];
  [coderCopy encodeBool:-[LNActionExecutorOptions convertArrayResultToAsyncSequence](self forKey:{"convertArrayResultToAsyncSequence"), @"convertArrayResultToAsyncSequence"}];
  [coderCopy encodeBool:self->_oneShotForSpringBoardOnly forKey:@"oneShotForSpringBoardOnly"];
  exportedContentConfiguration = [(LNActionExecutorOptions *)self exportedContentConfiguration];
  [coderCopy encodeObject:exportedContentConfiguration forKey:@"exportedContentConfiguration"];

  [coderCopy encodeBool:-[LNActionExecutorOptions validateConstraints](self forKey:{"validateConstraints"), @"validateConstraints"}];
  [coderCopy encodeBool:-[LNActionExecutorOptions allowLiveActivities](self forKey:{"allowLiveActivities"), @"allowLiveActivities"}];
}

- (id)description
{
  v41 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  executionUUID = [(LNActionExecutorOptions *)self executionUUID];
  clientLabel = [(LNActionExecutorOptions *)self clientLabel];
  source = [(LNActionExecutorOptions *)self source];
  if (source > 0xA)
  {
    v8 = @"app";
  }

  else
  {
    v8 = off_1E74B0848[source];
  }

  v9 = v8;
  sourceOverride = [(LNActionExecutorOptions *)self sourceOverride];
  v39 = sourceOverride;
  if (!sourceOverride)
  {
    source2 = [(LNActionExecutorOptions *)self source];
    if (source2 > 0xA)
    {
      v12 = @"app";
    }

    else
    {
      v12 = off_1E74B0848[source2];
    }

    sourceOverride = v12;
  }

  v44 = v4;
  v45 = sourceOverride;
  v40 = v9;
  v42 = clientLabel;
  v43 = executionUUID;
  kind = [(LNActionExecutorOptions *)self kind];
  v14 = @"unknown";
  if (kind == 1)
  {
    v14 = @"userShortcut";
  }

  if (kind == 2)
  {
    v14 = @"appShortcut";
  }

  v38 = v14;
  v15 = [(LNActionExecutorOptions *)self interactionMode]- 1;
  v16 = @"unknown";
  if (v15 <= 3)
  {
    v16 = off_1E74B1030[v15];
  }

  v37 = v16;
  viewActionIdentifier = [(LNActionExecutorOptions *)self viewActionIdentifier];
  if ([(LNActionExecutorOptions *)self donateToTranscript])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v35 = v17;
  environment = [(LNActionExecutorOptions *)self environment];
  systemContext = [(LNActionExecutorOptions *)self systemContext];
  if ([(LNActionExecutorOptions *)self allowsPrepareBeforePerform])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v33 = v19;
  if ([(LNActionExecutorOptions *)self requestUnlockIfNeeded])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  if ([(LNActionExecutorOptions *)self preferNoticePresentation])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  if ([(LNActionExecutorOptions *)self convertArrayResultToAsyncSequence])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  if ([(LNActionExecutorOptions *)self validateConstraints])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  priority = [(LNActionExecutorOptions *)self priority];
  v25 = @"background";
  if (priority != 1)
  {
    v25 = @"unknown";
  }

  if (priority == 2)
  {
    v25 = @"userInteractive";
  }

  v26 = v25;
  assistantDismissalPolicy = [(LNActionExecutorOptions *)self assistantDismissalPolicy];
  v28 = @"retainAssistant";
  if (assistantDismissalPolicy != 1)
  {
    v28 = @"unknown";
  }

  if (assistantDismissalPolicy == 2)
  {
    v28 = @"dismissAssistant";
  }

  v29 = v28;
  if ([(LNActionExecutorOptions *)self allowLiveActivities])
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  v31 = [v41 stringWithFormat:@"<%@: %p, executionUUID: %@, clientLabel: %@, source: %@, sourceOverride: %@, kind: %@, interactionMode: %@, viewActionIdentifier: %@, donateToTranscript: %@, environment: %@, systemContext: %@, allowsPrepareBeforePerform: %@, requestUnlockIfNeeded: %@, preferNoticePresentation: %@, convertArrayResultToAsyncSequence: %@, useConstraintsEvaluator: %@, priority: %@, assistantDismissalPolicy: %@, allowLiveActivities: %@>", v44, self, v43, v42, v40, v45, v38, v37, viewActionIdentifier, v35, environment, systemContext, v33, v20, v21, v22, v23, v26, v29, v30];

  if (!v39)
  {
  }

  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  executionUUID = [(LNActionExecutorOptions *)self executionUUID];
  [v4 setExecutionUUID:executionUUID];

  clientLabel = [(LNActionExecutorOptions *)self clientLabel];
  [v4 setClientLabel:clientLabel];

  [v4 setSource:{-[LNActionExecutorOptions source](self, "source")}];
  sourceOverride = [(LNActionExecutorOptions *)self sourceOverride];
  [v4 setSourceOverride:sourceOverride];

  [v4 setKind:{-[LNActionExecutorOptions kind](self, "kind")}];
  [v4 setPriority:{-[LNActionExecutorOptions priority](self, "priority")}];
  [v4 setAssistantDismissalPolicy:{-[LNActionExecutorOptions assistantDismissalPolicy](self, "assistantDismissalPolicy")}];
  [v4 setInteractionMode:{-[LNActionExecutorOptions interactionMode](self, "interactionMode")}];
  viewActionIdentifier = [(LNActionExecutorOptions *)self viewActionIdentifier];
  [v4 setViewActionIdentifier:viewActionIdentifier];

  [v4 setDonateToTranscript:{-[LNActionExecutorOptions donateToTranscript](self, "donateToTranscript")}];
  environment = [(LNActionExecutorOptions *)self environment];
  [v4 setEnvironment:environment];

  systemContext = [(LNActionExecutorOptions *)self systemContext];
  [v4 setSystemContext:systemContext];

  [(LNActionExecutorOptions *)self connectionOperationTimeout];
  [v4 setConnectionOperationTimeout:?];
  [v4 setAllowsPrepareBeforePerform:{-[LNActionExecutorOptions allowsPrepareBeforePerform](self, "allowsPrepareBeforePerform")}];
  [v4 setRequestUnlockIfNeeded:{-[LNActionExecutorOptions requestUnlockIfNeeded](self, "requestUnlockIfNeeded")}];
  [v4 setPreferNoticePresentation:{-[LNActionExecutorOptions preferNoticePresentation](self, "preferNoticePresentation")}];
  [v4 setConvertArrayResultToAsyncSequence:{-[LNActionExecutorOptions convertArrayResultToAsyncSequence](self, "convertArrayResultToAsyncSequence")}];
  *(v4 + 8) = self->_oneShotForSpringBoardOnly;
  objc_storeStrong((v4 + 112), self->_exportedContentConfiguration);
  [v4 setValidateConstraints:{-[LNActionExecutorOptions validateConstraints](self, "validateConstraints")}];
  [v4 setAllowLiveActivities:{-[LNActionExecutorOptions allowLiveActivities](self, "allowLiveActivities")}];
  return v4;
}

- (LNActionExecutorOptions)init
{
  v11.receiver = self;
  v11.super_class = LNActionExecutorOptions;
  v2 = [(LNActionExecutorOptions *)&v11 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    executionUUID = v2->_executionUUID;
    v2->_executionUUID = uUID;

    v2->_source = 0;
    v2->_priority = 0;
    v2->_assistantDismissalPolicy = 0;
    *&v2->_kind = xmmword_19775A870;
    v2->_donateToTranscript = 1;
    v5 = +[LNEnvironment defaultEnvironment];
    environment = v2->_environment;
    v2->_environment = v5;

    v7 = objc_opt_new();
    systemContext = v2->_systemContext;
    v2->_systemContext = v7;

    *&v2->_connectionOperationTimeout = LNConnectionOperationRequestTimeout;
    *&v2->_preferNoticePresentation = 0x10000;
    v9 = v2;
  }

  return v2;
}

@end