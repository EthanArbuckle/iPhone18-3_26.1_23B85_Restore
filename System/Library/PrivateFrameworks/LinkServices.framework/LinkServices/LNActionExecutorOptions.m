@interface LNActionExecutorOptions
- (LNActionExecutorOptions)init;
- (LNActionExecutorOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionExecutorOptions

- (LNActionExecutorOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  if (v5)
  {
    self = [(LNActionExecutorOptions *)self init];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executionUUID"];
    [(LNActionExecutorOptions *)self setExecutionUUID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientLabel"];
    [(LNActionExecutorOptions *)self setClientLabel:v7];

    -[LNActionExecutorOptions setSource:](self, "setSource:", [v4 decodeIntegerForKey:@"source"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceOverride"];
    [(LNActionExecutorOptions *)self setSourceOverride:v8];

    -[LNActionExecutorOptions setKind:](self, "setKind:", [v4 decodeIntegerForKey:@"kind"]);
    -[LNActionExecutorOptions setPriority:](self, "setPriority:", [v4 decodeIntegerForKey:@"priority"]);
    -[LNActionExecutorOptions setAssistantDismissalPolicy:](self, "setAssistantDismissalPolicy:", [v4 decodeIntegerForKey:@"assistantDismissalPolicy"]);
    -[LNActionExecutorOptions setInteractionMode:](self, "setInteractionMode:", [v4 decodeIntegerForKey:@"interactionMode"]);
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"viewActionIdentifier"];
    [(LNActionExecutorOptions *)self setViewActionIdentifier:v9];

    -[LNActionExecutorOptions setDonateToTranscript:](self, "setDonateToTranscript:", [v4 decodeBoolForKey:@"donateToTranscript"]);
    [(LNActionExecutorOptions *)self setEnvironment:v5];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemContext"];
    [(LNActionExecutorOptions *)self setSystemContext:v10];

    [v4 decodeDoubleForKey:@"connectionOperationTimeout"];
    [(LNActionExecutorOptions *)self setConnectionOperationTimeout:?];
    -[LNActionExecutorOptions setAllowsPrepareBeforePerform:](self, "setAllowsPrepareBeforePerform:", [v4 decodeBoolForKey:@"allowsPrepareBeforePerform"]);
    -[LNActionExecutorOptions setRequestUnlockIfNeeded:](self, "setRequestUnlockIfNeeded:", [v4 decodeBoolForKey:@"requestUnlockIfNeeded"]);
    -[LNActionExecutorOptions setPreferNoticePresentation:](self, "setPreferNoticePresentation:", [v4 decodeBoolForKey:@"preferNoticePresentation"]);
    -[LNActionExecutorOptions setConvertArrayResultToAsyncSequence:](self, "setConvertArrayResultToAsyncSequence:", [v4 decodeBoolForKey:@"convertArrayResultToAsyncSequence"]);
    self->_oneShotForSpringBoardOnly = [v4 decodeBoolForKey:@"oneShotForSpringBoardOnly"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exportedContentConfiguration"];
    [(LNActionExecutorOptions *)self setExportedContentConfiguration:v11];

    -[LNActionExecutorOptions setValidateConstraints:](self, "setValidateConstraints:", [v4 decodeBoolForKey:@"validateConstraints"]);
    -[LNActionExecutorOptions setAllowLiveActivities:](self, "setAllowLiveActivities:", [v4 decodeBoolForKey:@"allowLiveActivities"]);
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(LNActionExecutorOptions *)self executionUUID];
  [v11 encodeObject:v4 forKey:@"executionUUID"];

  v5 = [(LNActionExecutorOptions *)self clientLabel];
  [v11 encodeObject:v5 forKey:@"clientLabel"];

  [v11 encodeInteger:-[LNActionExecutorOptions source](self forKey:{"source"), @"source"}];
  v6 = [(LNActionExecutorOptions *)self sourceOverride];
  [v11 encodeObject:v6 forKey:@"sourceOverride"];

  [v11 encodeInteger:-[LNActionExecutorOptions kind](self forKey:{"kind"), @"kind"}];
  [v11 encodeInteger:-[LNActionExecutorOptions priority](self forKey:{"priority"), @"priority"}];
  [v11 encodeInteger:-[LNActionExecutorOptions assistantDismissalPolicy](self forKey:{"assistantDismissalPolicy"), @"assistantDismissalPolicy"}];
  [v11 encodeInteger:-[LNActionExecutorOptions interactionMode](self forKey:{"interactionMode"), @"interactionMode"}];
  v7 = [(LNActionExecutorOptions *)self viewActionIdentifier];
  [v11 encodeObject:v7 forKey:@"viewActionIdentifier"];

  [v11 encodeBool:-[LNActionExecutorOptions donateToTranscript](self forKey:{"donateToTranscript"), @"donateToTranscript"}];
  v8 = [(LNActionExecutorOptions *)self environment];
  [v11 encodeObject:v8 forKey:@"environment"];

  v9 = [(LNActionExecutorOptions *)self systemContext];
  [v11 encodeObject:v9 forKey:@"systemContext"];

  [(LNActionExecutorOptions *)self connectionOperationTimeout];
  [v11 encodeDouble:@"connectionOperationTimeout" forKey:?];
  [v11 encodeBool:-[LNActionExecutorOptions allowsPrepareBeforePerform](self forKey:{"allowsPrepareBeforePerform"), @"allowsPrepareBeforePerform"}];
  [v11 encodeBool:-[LNActionExecutorOptions requestUnlockIfNeeded](self forKey:{"requestUnlockIfNeeded"), @"requestUnlockIfNeeded"}];
  [v11 encodeBool:-[LNActionExecutorOptions preferNoticePresentation](self forKey:{"preferNoticePresentation"), @"preferNoticePresentation"}];
  [v11 encodeBool:-[LNActionExecutorOptions convertArrayResultToAsyncSequence](self forKey:{"convertArrayResultToAsyncSequence"), @"convertArrayResultToAsyncSequence"}];
  [v11 encodeBool:self->_oneShotForSpringBoardOnly forKey:@"oneShotForSpringBoardOnly"];
  v10 = [(LNActionExecutorOptions *)self exportedContentConfiguration];
  [v11 encodeObject:v10 forKey:@"exportedContentConfiguration"];

  [v11 encodeBool:-[LNActionExecutorOptions validateConstraints](self forKey:{"validateConstraints"), @"validateConstraints"}];
  [v11 encodeBool:-[LNActionExecutorOptions allowLiveActivities](self forKey:{"allowLiveActivities"), @"allowLiveActivities"}];
}

- (id)description
{
  v41 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(LNActionExecutorOptions *)self executionUUID];
  v6 = [(LNActionExecutorOptions *)self clientLabel];
  v7 = [(LNActionExecutorOptions *)self source];
  if (v7 > 0xA)
  {
    v8 = @"app";
  }

  else
  {
    v8 = off_1E74B0848[v7];
  }

  v9 = v8;
  v10 = [(LNActionExecutorOptions *)self sourceOverride];
  v39 = v10;
  if (!v10)
  {
    v11 = [(LNActionExecutorOptions *)self source];
    if (v11 > 0xA)
    {
      v12 = @"app";
    }

    else
    {
      v12 = off_1E74B0848[v11];
    }

    v10 = v12;
  }

  v44 = v4;
  v45 = v10;
  v40 = v9;
  v42 = v6;
  v43 = v5;
  v13 = [(LNActionExecutorOptions *)self kind];
  v14 = @"unknown";
  if (v13 == 1)
  {
    v14 = @"userShortcut";
  }

  if (v13 == 2)
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
  v36 = [(LNActionExecutorOptions *)self viewActionIdentifier];
  if ([(LNActionExecutorOptions *)self donateToTranscript])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v35 = v17;
  v18 = [(LNActionExecutorOptions *)self environment];
  v34 = [(LNActionExecutorOptions *)self systemContext];
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

  v24 = [(LNActionExecutorOptions *)self priority];
  v25 = @"background";
  if (v24 != 1)
  {
    v25 = @"unknown";
  }

  if (v24 == 2)
  {
    v25 = @"userInteractive";
  }

  v26 = v25;
  v27 = [(LNActionExecutorOptions *)self assistantDismissalPolicy];
  v28 = @"retainAssistant";
  if (v27 != 1)
  {
    v28 = @"unknown";
  }

  if (v27 == 2)
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

  v31 = [v41 stringWithFormat:@"<%@: %p, executionUUID: %@, clientLabel: %@, source: %@, sourceOverride: %@, kind: %@, interactionMode: %@, viewActionIdentifier: %@, donateToTranscript: %@, environment: %@, systemContext: %@, allowsPrepareBeforePerform: %@, requestUnlockIfNeeded: %@, preferNoticePresentation: %@, convertArrayResultToAsyncSequence: %@, useConstraintsEvaluator: %@, priority: %@, assistantDismissalPolicy: %@, allowLiveActivities: %@>", v44, self, v43, v42, v40, v45, v38, v37, v36, v35, v18, v34, v33, v20, v21, v22, v23, v26, v29, v30];

  if (!v39)
  {
  }

  return v31;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(LNActionExecutorOptions *)self executionUUID];
  [v4 setExecutionUUID:v5];

  v6 = [(LNActionExecutorOptions *)self clientLabel];
  [v4 setClientLabel:v6];

  [v4 setSource:{-[LNActionExecutorOptions source](self, "source")}];
  v7 = [(LNActionExecutorOptions *)self sourceOverride];
  [v4 setSourceOverride:v7];

  [v4 setKind:{-[LNActionExecutorOptions kind](self, "kind")}];
  [v4 setPriority:{-[LNActionExecutorOptions priority](self, "priority")}];
  [v4 setAssistantDismissalPolicy:{-[LNActionExecutorOptions assistantDismissalPolicy](self, "assistantDismissalPolicy")}];
  [v4 setInteractionMode:{-[LNActionExecutorOptions interactionMode](self, "interactionMode")}];
  v8 = [(LNActionExecutorOptions *)self viewActionIdentifier];
  [v4 setViewActionIdentifier:v8];

  [v4 setDonateToTranscript:{-[LNActionExecutorOptions donateToTranscript](self, "donateToTranscript")}];
  v9 = [(LNActionExecutorOptions *)self environment];
  [v4 setEnvironment:v9];

  v10 = [(LNActionExecutorOptions *)self systemContext];
  [v4 setSystemContext:v10];

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
    v3 = [MEMORY[0x1E696AFB0] UUID];
    executionUUID = v2->_executionUUID;
    v2->_executionUUID = v3;

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