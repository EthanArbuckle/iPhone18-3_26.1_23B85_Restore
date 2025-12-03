@interface LNActionOutput
- (BOOL)isEqual:(id)equal;
- (LNActionOutput)initWithCoder:(id)coder;
- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet attribution:(id)attribution value:(id)value showOutputAction:(id)action showOutputActionHint:(int64_t)hint showOutputActionOptions:(unint64_t)self0 deferred:(BOOL)self1 nextAction:(id)self2 suggestedFollowUpActions:(id)self3 activityIdentifier:(id)self4 confirmationActionName:(id)self5 showPrompt:(BOOL)self6 confirmationConditions:(int64_t)self7 undoContext:(id)self8;
- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet snippetAction:(id)action attribution:(id)attribution value:(id)value showOutputAction:(id)outputAction showOutputActionHint:(int64_t)self0 showOutputActionOptions:(unint64_t)self1 deferred:(BOOL)self2 nextAction:(id)self3 suggestedFollowUpActions:(id)self4 activityIdentifier:(id)self5 confirmationActionName:(id)self6 showPrompt:(BOOL)self7 confirmationConditions:(int64_t)self8 undoContext:(id)self9;
- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet value:(id)value showOutputAction:(id)action deferred:(BOOL)deferred nextAction:(id)nextAction confirmationActionName:(id)self0 showPrompt:(BOOL)self1;
- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet value:(id)value showOutputAction:(id)action showOutputActionHint:(int64_t)hint deferred:(BOOL)deferred nextAction:(id)self0 activityIdentifier:(id)self1 confirmationActionName:(id)self2 showPrompt:(BOOL)self3;
- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet value:(id)value showOutputAction:(id)action showOutputActionHint:(int64_t)hint deferred:(BOOL)deferred nextAction:(id)self0 confirmationActionName:(id)self1 showPrompt:(BOOL)self2 undoContext:(id)self3;
- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet value:(id)value showOutputAction:(id)action showOutputActionHint:(int64_t)hint deferred:(BOOL)deferred nextAction:(id)self0 suggestedFollowUpActions:(id)self1 activityIdentifier:(id)self2 confirmationActionName:(id)self3 showPrompt:(BOOL)self4 confirmationConditions:(int64_t)self5 undoContext:(id)self6;
- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet value:(id)value showOutputAction:(id)action showOutputActionHint:(int64_t)hint showOutputActionOptions:(unint64_t)options deferred:(BOOL)self0 nextAction:(id)self1 suggestedFollowUpActions:(id)self2 activityIdentifier:(id)self3 confirmationActionName:(id)self4 showPrompt:(BOOL)self5 confirmationConditions:(int64_t)self6 undoContext:(id)self7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionOutput

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_88:

      goto LABEL_89;
    }

    identifier = [(LNActionOutput *)self identifier];
    identifier2 = [(LNActionOutput *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_86;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_87:

        goto LABEL_88;
      }
    }

    dialog = [(LNActionOutput *)self dialog];
    dialog2 = [(LNActionOutput *)v6 dialog];
    v14 = dialog;
    v18 = dialog2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_85;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_86:

        goto LABEL_87;
      }
    }

    viewSnippet = [(LNActionOutput *)self viewSnippet];
    viewSnippet2 = [(LNActionOutput *)v6 viewSnippet];
    v20 = viewSnippet;
    v24 = viewSnippet2;
    v19 = v24;
    v89 = v20;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v25 = v24;
      if (!v20 || !v24)
      {
        goto LABEL_84;
      }

      v12 = [v20 isEqual:v24];

      if (!v12)
      {
        goto LABEL_85;
      }
    }

    v88 = v19;
    value = [(LNActionOutput *)self value];
    value2 = [(LNActionOutput *)v6 value];
    v28 = value;
    v29 = value2;
    v86 = v29;
    v87 = v28;
    if (v28 != v29)
    {
      LOBYTE(v12) = 0;
      if (v28)
      {
        v30 = v29;
        v19 = v88;
        if (v29)
        {
          v31 = [v28 isEqual:v29];

          if (!v31)
          {
            LOBYTE(v12) = 0;
            v19 = v88;
LABEL_83:
            v25 = v86;
            v20 = v87;
LABEL_84:

            v20 = v89;
LABEL_85:

            goto LABEL_86;
          }

LABEL_30:
          showOutputAction = [(LNActionOutput *)self showOutputAction];
          showOutputAction2 = [(LNActionOutput *)v6 showOutputAction];
          v28 = showOutputAction;
          v34 = showOutputAction2;
          v85 = v34;
          if (v28 != v34)
          {
            LOBYTE(v12) = 0;
            if (v28)
            {
              v35 = v34;
              v36 = v28;
              v19 = v88;
              if (v34)
              {
                v37 = v34;
                v38 = [v28 isEqual:v34];

                if (!v38)
                {
LABEL_39:
                  LOBYTE(v12) = 0;
                  v19 = v88;
LABEL_81:
                  v30 = v85;
                  goto LABEL_82;
                }

LABEL_36:
                showOutputActionHint = [(LNActionOutput *)self showOutputActionHint];
                if (showOutputActionHint != [(LNActionOutput *)v6 showOutputActionHint])
                {
                  goto LABEL_39;
                }

                showOutputActionOptions = [(LNActionOutput *)self showOutputActionOptions];
                if (showOutputActionOptions != [(LNActionOutput *)v6 showOutputActionOptions])
                {
                  goto LABEL_39;
                }

                isDeferred = [(LNActionOutput *)self isDeferred];
                if (isDeferred != [(LNActionOutput *)v6 isDeferred])
                {
                  goto LABEL_39;
                }

                nextAction = [(LNActionOutput *)self nextAction];
                nextAction2 = [(LNActionOutput *)v6 nextAction];
                v44 = nextAction;
                v45 = nextAction2;
                v83 = v45;
                v84 = v44;
                if (v44 != v45)
                {
                  LOBYTE(v12) = 0;
                  if (v44)
                  {
                    v46 = v45;
                    v47 = v44;
                    v19 = v88;
                    if (v45)
                    {
                      v81 = [v84 isEqual:v45];

                      if (!v81)
                      {
                        LOBYTE(v12) = 0;
                        v19 = v88;
LABEL_79:
                        v35 = v83;
                        v36 = v84;
                        goto LABEL_80;
                      }

LABEL_48:
                      suggestedFollowUpActions = [(LNActionOutput *)self suggestedFollowUpActions];
                      suggestedFollowUpActions2 = [(LNActionOutput *)v6 suggestedFollowUpActions];
                      v50 = suggestedFollowUpActions;
                      v51 = suggestedFollowUpActions2;
                      v80 = v51;
                      v82 = v50;
                      if (v50 != v51)
                      {
                        LOBYTE(v12) = 0;
                        if (v50)
                        {
                          v52 = v51;
                          v53 = v50;
                          v19 = v88;
                          if (v51)
                          {
                            v54 = [MEMORY[0x1E695DFD8] setWithArray:v82];
                            v55 = [MEMORY[0x1E695DFD8] setWithArray:v80];
                            v78 = [v54 isEqualToSet:v55];

                            if (!v78)
                            {
                              LOBYTE(v12) = 0;
                              v19 = v88;
LABEL_77:
                              v46 = v80;
                              v47 = v82;
                              goto LABEL_78;
                            }

LABEL_54:
                            activityIdentifier = [(LNActionOutput *)self activityIdentifier];
                            activityIdentifier2 = [(LNActionOutput *)v6 activityIdentifier];
                            v58 = activityIdentifier;
                            v59 = activityIdentifier2;
                            v77 = v59;
                            v79 = v58;
                            if (v58 == v59)
                            {
                            }

                            else
                            {
                              LOBYTE(v12) = 0;
                              if (!v58)
                              {
                                v60 = v59;
                                goto LABEL_74;
                              }

                              v60 = v59;
                              if (!v59)
                              {
LABEL_74:

                                goto LABEL_75;
                              }

                              v75 = [v58 isEqual:v59];

                              if (!v75)
                              {
                                LOBYTE(v12) = 0;
LABEL_75:
                                v19 = v88;
                                v52 = v77;
                                v53 = v79;
                                goto LABEL_76;
                              }
                            }

                            confirmationActionName = [(LNActionOutput *)self confirmationActionName];
                            confirmationActionName2 = [(LNActionOutput *)v6 confirmationActionName];
                            v58 = confirmationActionName;
                            v63 = confirmationActionName2;
                            if (v58 == v63)
                            {
                              v74 = v63;

                              v76 = v58;
LABEL_68:
                              shouldShowPrompt = [(LNActionOutput *)self shouldShowPrompt];
                              if (shouldShowPrompt == [(LNActionOutput *)v6 shouldShowPrompt])
                              {
                                confirmationConditions = [(LNActionOutput *)self confirmationConditions];
                                LOBYTE(v12) = confirmationConditions == [(LNActionOutput *)v6 confirmationConditions];
                                goto LABEL_73;
                              }

LABEL_69:
                              LOBYTE(v12) = 0;
LABEL_73:
                              v60 = v74;
                              v58 = v76;
                              goto LABEL_74;
                            }

                            if (v58 && v63)
                            {
                              v64 = v63;
                              v73 = [v58 isEqual:v63];
                              v74 = v64;

                              v76 = v58;
                              if (!v73)
                              {
                                goto LABEL_69;
                              }

                              goto LABEL_68;
                            }

                            v66 = v63;

                            v60 = v66;
                            LOBYTE(v12) = 0;
                            goto LABEL_74;
                          }
                        }

                        else
                        {
                          v52 = v51;
                          v53 = 0;
                          v19 = v88;
                        }

LABEL_76:
                        v68 = v53;

                        goto LABEL_77;
                      }

                      goto LABEL_54;
                    }
                  }

                  else
                  {
                    v46 = v45;
                    v47 = 0;
                    v19 = v88;
                  }

LABEL_78:
                  v69 = v47;

                  goto LABEL_79;
                }

                goto LABEL_48;
              }
            }

            else
            {
              v35 = v34;
              v36 = 0;
              v19 = v88;
            }

LABEL_80:
            v70 = v28;
            v71 = v36;

            v28 = v70;
            goto LABEL_81;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v30 = v29;
        v19 = v88;
      }

LABEL_82:

      goto LABEL_83;
    }

    goto LABEL_30;
  }

  LOBYTE(v12) = 1;
LABEL_89:

  return v12;
}

- (unint64_t)hash
{
  identifier = [(LNActionOutput *)self identifier];
  v3 = [identifier hash];
  identifier2 = [(LNActionOutput *)self identifier];
  v4 = [identifier2 hash] ^ v3;
  dialog = [(LNActionOutput *)self dialog];
  v5 = [dialog hash];
  viewSnippet = [(LNActionOutput *)self viewSnippet];
  v7 = v4 ^ v5 ^ [viewSnippet hash];
  value = [(LNActionOutput *)self value];
  v9 = [value hash];
  showOutputAction = [(LNActionOutput *)self showOutputAction];
  v11 = v9 ^ [showOutputAction hash];
  v12 = v7 ^ v11 ^ [(LNActionOutput *)self showOutputActionHint];
  showOutputActionOptions = [(LNActionOutput *)self showOutputActionOptions];
  v14 = showOutputActionOptions ^ [(LNActionOutput *)self isDeferred];
  nextAction = [(LNActionOutput *)self nextAction];
  v16 = v12 ^ v14 ^ [nextAction hash];
  suggestedFollowUpActions = [(LNActionOutput *)self suggestedFollowUpActions];
  v18 = [suggestedFollowUpActions hash];
  activityIdentifier = [(LNActionOutput *)self activityIdentifier];
  v20 = v18 ^ [activityIdentifier hash];
  confirmationActionName = [(LNActionOutput *)self confirmationActionName];
  v22 = v20 ^ [confirmationActionName hash];
  v23 = v22 ^ [(LNActionOutput *)self shouldShowPrompt];
  v24 = v23 ^ [(LNActionOutput *)self confirmationConditions];

  return v16 ^ v24;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  identifier = [(LNActionOutput *)self identifier];
  dialog = [(LNActionOutput *)self dialog];
  viewSnippet = [(LNActionOutput *)self viewSnippet];
  attribution = [(LNActionOutput *)self attribution];
  value = [(LNActionOutput *)self value];
  showOutputAction = [(LNActionOutput *)self showOutputAction];
  showOutputActionHint = [(LNActionOutput *)self showOutputActionHint];
  showOutputActionOptions = [(LNActionOutput *)self showOutputActionOptions];
  v6 = @"NO";
  if ([(LNActionOutput *)self isDeferred])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  nextAction = [(LNActionOutput *)self nextAction];
  suggestedFollowUpActions = [(LNActionOutput *)self suggestedFollowUpActions];
  activityIdentifier = [(LNActionOutput *)self activityIdentifier];
  confirmationActionName = [(LNActionOutput *)self confirmationActionName];
  if ([(LNActionOutput *)self shouldShowPrompt])
  {
    v6 = @"YES";
  }

  v12 = [v21 stringWithFormat:@"<%@: %p, identifier: %@, dialog: %@, viewSnippet: %@, attribution: %@, value: %@, showOutputAction: %@, showOutputActionHint: %ld, showOutputActionOptions: %ld, deferred: %@, nextAction: %@, suggestedFollowUpActions: %@, activityIdentifier: %@, confirmationActionName: %@, showPrompt: %@, confirmationConditions: %lu>", v20, self, identifier, dialog, viewSnippet, attribution, value, showOutputAction, showOutputActionHint, showOutputActionOptions, v7, nextAction, suggestedFollowUpActions, activityIdentifier, confirmationActionName, v6, -[LNActionOutput confirmationConditions](self, "confirmationConditions")];

  return v12;
}

- (LNActionOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snippetAction"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attribution"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showOutputAction"];
  v21 = [coderCopy decodeIntegerForKey:@"showOutputActionHint"];
  v20 = [coderCopy decodeIntegerForKey:@"showOutputActionOptions"];
  v4 = [coderCopy decodeBoolForKey:@"deferred"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nextAction"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v8 forKey:@"suggestedFollowUpActions"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationActionName"];
  v11 = [coderCopy decodeBoolForKey:@"showPrompt"];
  v12 = [coderCopy decodeIntegerForKey:@"confirmationConditions"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"undoContext"];

  LOBYTE(v16) = v11;
  LOBYTE(v15) = v4;
  v27 = [(LNActionOutput *)self initWithIdentifier:v28 dialog:v23 viewSnippet:v19 snippetAction:v25 attribution:v24 value:v22 showOutputAction:v18 showOutputActionHint:v21 showOutputActionOptions:v20 deferred:v15 nextAction:v5 suggestedFollowUpActions:v17 activityIdentifier:v9 confirmationActionName:v10 showPrompt:v16 confirmationConditions:v12 undoContext:v13];

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNActionOutput *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  dialog = [(LNActionOutput *)self dialog];
  [coderCopy encodeObject:dialog forKey:@"dialog"];

  viewSnippet = [(LNActionOutput *)self viewSnippet];
  [coderCopy encodeObject:viewSnippet forKey:@"viewSnippet"];

  snippetAction = [(LNActionOutput *)self snippetAction];
  [coderCopy encodeObject:snippetAction forKey:@"snippetAction"];

  attribution = [(LNActionOutput *)self attribution];
  [coderCopy encodeObject:attribution forKey:@"attribution"];

  value = [(LNActionOutput *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  showOutputAction = [(LNActionOutput *)self showOutputAction];
  [coderCopy encodeObject:showOutputAction forKey:@"showOutputAction"];

  [coderCopy encodeInteger:-[LNActionOutput showOutputActionHint](self forKey:{"showOutputActionHint"), @"showOutputActionHint"}];
  [coderCopy encodeInteger:-[LNActionOutput showOutputActionOptions](self forKey:{"showOutputActionOptions"), @"showOutputActionOptions"}];
  [coderCopy encodeBool:-[LNActionOutput isDeferred](self forKey:{"isDeferred"), @"deferred"}];
  nextAction = [(LNActionOutput *)self nextAction];
  [coderCopy encodeObject:nextAction forKey:@"nextAction"];

  suggestedFollowUpActions = [(LNActionOutput *)self suggestedFollowUpActions];
  [coderCopy encodeObject:suggestedFollowUpActions forKey:@"suggestedFollowUpActions"];

  activityIdentifier = [(LNActionOutput *)self activityIdentifier];
  [coderCopy encodeObject:activityIdentifier forKey:@"activityIdentifier"];

  confirmationActionName = [(LNActionOutput *)self confirmationActionName];
  [coderCopy encodeObject:confirmationActionName forKey:@"confirmationActionName"];

  [coderCopy encodeBool:-[LNActionOutput shouldShowPrompt](self forKey:{"shouldShowPrompt"), @"showPrompt"}];
  [coderCopy encodeInteger:-[LNActionOutput confirmationConditions](self forKey:{"confirmationConditions"), @"confirmationConditions"}];
  undoContext = [(LNActionOutput *)self undoContext];
  [coderCopy encodeObject:undoContext forKey:@"undoContext"];
}

- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet snippetAction:(id)action attribution:(id)attribution value:(id)value showOutputAction:(id)outputAction showOutputActionHint:(int64_t)self0 showOutputActionOptions:(unint64_t)self1 deferred:(BOOL)self2 nextAction:(id)self3 suggestedFollowUpActions:(id)self4 activityIdentifier:(id)self5 confirmationActionName:(id)self6 showPrompt:(BOOL)self7 confirmationConditions:(int64_t)self8 undoContext:(id)self9
{
  identifierCopy = identifier;
  dialogCopy = dialog;
  dialogCopy2 = dialog;
  snippetCopy = snippet;
  snippetCopy2 = snippet;
  actionCopy = action;
  actionCopy2 = action;
  attributionCopy = attribution;
  attributionCopy2 = attribution;
  valueCopy = value;
  outputActionCopy = outputAction;
  nextActionCopy = nextAction;
  actionsCopy = actions;
  activityIdentifierCopy = activityIdentifier;
  nameCopy = name;
  contextCopy = context;
  v48.receiver = self;
  v48.super_class = LNActionOutput;
  v29 = [(LNActionOutput *)&v48 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_identifier, identifier);
    objc_storeStrong(&v30->_dialog, dialogCopy);
    objc_storeStrong(&v30->_viewSnippet, snippetCopy);
    objc_storeStrong(&v30->_snippetAction, actionCopy);
    objc_storeStrong(&v30->_attribution, attributionCopy);
    objc_storeStrong(&v30->_value, value);
    objc_storeStrong(&v30->_showOutputAction, outputAction);
    v30->_showOutputActionHint = hint;
    v30->_showOutputActionOptions = options;
    v30->_deferred = deferred;
    objc_storeStrong(&v30->_nextAction, nextAction);
    objc_storeStrong(&v30->_suggestedFollowUpActions, actions);
    v31 = [activityIdentifierCopy copy];
    activityIdentifier = v30->_activityIdentifier;
    v30->_activityIdentifier = v31;

    objc_storeStrong(&v30->_confirmationActionName, name);
    v30->_showPrompt = prompt;
    v30->_confirmationConditions = conditions;
    objc_storeStrong(&v30->_undoContext, context);
    v33 = v30;
  }

  return v30;
}

- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet value:(id)value showOutputAction:(id)action showOutputActionHint:(int64_t)hint deferred:(BOOL)deferred nextAction:(id)self0 suggestedFollowUpActions:(id)self1 activityIdentifier:(id)self2 confirmationActionName:(id)self3 showPrompt:(BOOL)self4 confirmationConditions:(int64_t)self5 undoContext:(id)self6
{
  LOBYTE(v18) = prompt;
  LOBYTE(v17) = deferred;
  return [(LNActionOutput *)self initWithIdentifier:identifier dialog:dialog viewSnippet:snippet value:value showOutputAction:action showOutputActionHint:hint showOutputActionOptions:0 deferred:v17 nextAction:nextAction suggestedFollowUpActions:actions activityIdentifier:activityIdentifier confirmationActionName:name showPrompt:v18 confirmationConditions:conditions undoContext:context];
}

- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet value:(id)value showOutputAction:(id)action showOutputActionHint:(int64_t)hint deferred:(BOOL)deferred nextAction:(id)self0 activityIdentifier:(id)self1 confirmationActionName:(id)self2 showPrompt:(BOOL)self3
{
  LOBYTE(v15) = prompt;
  LOBYTE(v14) = deferred;
  return [(LNActionOutput *)self initWithIdentifier:identifier dialog:dialog viewSnippet:snippet value:value showOutputAction:action showOutputActionHint:hint deferred:v14 nextAction:nextAction suggestedFollowUpActions:0 activityIdentifier:0 confirmationActionName:name showPrompt:v15 confirmationConditions:0 undoContext:0];
}

- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet value:(id)value showOutputAction:(id)action showOutputActionHint:(int64_t)hint deferred:(BOOL)deferred nextAction:(id)self0 confirmationActionName:(id)self1 showPrompt:(BOOL)self2 undoContext:(id)self3
{
  LOBYTE(v15) = prompt;
  LOBYTE(v14) = deferred;
  return [(LNActionOutput *)self initWithIdentifier:identifier dialog:dialog viewSnippet:snippet value:value showOutputAction:action showOutputActionHint:hint deferred:v14 nextAction:nextAction suggestedFollowUpActions:0 activityIdentifier:0 confirmationActionName:name showPrompt:v15 confirmationConditions:0 undoContext:context];
}

- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet value:(id)value showOutputAction:(id)action deferred:(BOOL)deferred nextAction:(id)nextAction confirmationActionName:(id)self0 showPrompt:(BOOL)self1
{
  LOBYTE(v13) = prompt;
  LOBYTE(v12) = deferred;
  return [(LNActionOutput *)self initWithIdentifier:identifier dialog:dialog viewSnippet:snippet value:value showOutputAction:action showOutputActionHint:0 deferred:v12 nextAction:nextAction confirmationActionName:name showPrompt:v13 undoContext:0];
}

- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet value:(id)value showOutputAction:(id)action showOutputActionHint:(int64_t)hint showOutputActionOptions:(unint64_t)options deferred:(BOOL)self0 nextAction:(id)self1 suggestedFollowUpActions:(id)self2 activityIdentifier:(id)self3 confirmationActionName:(id)self4 showPrompt:(BOOL)self5 confirmationConditions:(int64_t)self6 undoContext:(id)self7
{
  LOBYTE(v19) = prompt;
  LOBYTE(v18) = deferred;
  return [(LNActionOutput *)self initWithIdentifier:identifier dialog:dialog viewSnippet:snippet attribution:0 value:value showOutputAction:action showOutputActionHint:hint showOutputActionOptions:0 deferred:v18 nextAction:nextAction suggestedFollowUpActions:actions activityIdentifier:activityIdentifier confirmationActionName:name showPrompt:v19 confirmationConditions:conditions undoContext:context];
}

- (LNActionOutput)initWithIdentifier:(id)identifier dialog:(id)dialog viewSnippet:(id)snippet attribution:(id)attribution value:(id)value showOutputAction:(id)action showOutputActionHint:(int64_t)hint showOutputActionOptions:(unint64_t)self0 deferred:(BOOL)self1 nextAction:(id)self2 suggestedFollowUpActions:(id)self3 activityIdentifier:(id)self4 confirmationActionName:(id)self5 showPrompt:(BOOL)self6 confirmationConditions:(int64_t)self7 undoContext:(id)self8
{
  LOBYTE(v20) = prompt;
  LOBYTE(v19) = deferred;
  return [(LNActionOutput *)self initWithIdentifier:identifier dialog:dialog viewSnippet:snippet snippetAction:0 attribution:attribution value:value showOutputAction:action showOutputActionHint:hint showOutputActionOptions:0 deferred:v19 nextAction:nextAction suggestedFollowUpActions:actions activityIdentifier:activityIdentifier confirmationActionName:name showPrompt:v20 confirmationConditions:conditions undoContext:context];
}

@end