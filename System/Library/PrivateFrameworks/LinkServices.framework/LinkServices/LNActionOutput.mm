@interface LNActionOutput
- (BOOL)isEqual:(id)a3;
- (LNActionOutput)initWithCoder:(id)a3;
- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 attribution:(id)a6 value:(id)a7 showOutputAction:(id)a8 showOutputActionHint:(int64_t)a9 showOutputActionOptions:(unint64_t)a10 deferred:(BOOL)a11 nextAction:(id)a12 suggestedFollowUpActions:(id)a13 activityIdentifier:(id)a14 confirmationActionName:(id)a15 showPrompt:(BOOL)a16 confirmationConditions:(int64_t)a17 undoContext:(id)a18;
- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 snippetAction:(id)a6 attribution:(id)a7 value:(id)a8 showOutputAction:(id)a9 showOutputActionHint:(int64_t)a10 showOutputActionOptions:(unint64_t)a11 deferred:(BOOL)a12 nextAction:(id)a13 suggestedFollowUpActions:(id)a14 activityIdentifier:(id)a15 confirmationActionName:(id)a16 showPrompt:(BOOL)a17 confirmationConditions:(int64_t)a18 undoContext:(id)a19;
- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 value:(id)a6 showOutputAction:(id)a7 deferred:(BOOL)a8 nextAction:(id)a9 confirmationActionName:(id)a10 showPrompt:(BOOL)a11;
- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 value:(id)a6 showOutputAction:(id)a7 showOutputActionHint:(int64_t)a8 deferred:(BOOL)a9 nextAction:(id)a10 activityIdentifier:(id)a11 confirmationActionName:(id)a12 showPrompt:(BOOL)a13;
- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 value:(id)a6 showOutputAction:(id)a7 showOutputActionHint:(int64_t)a8 deferred:(BOOL)a9 nextAction:(id)a10 confirmationActionName:(id)a11 showPrompt:(BOOL)a12 undoContext:(id)a13;
- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 value:(id)a6 showOutputAction:(id)a7 showOutputActionHint:(int64_t)a8 deferred:(BOOL)a9 nextAction:(id)a10 suggestedFollowUpActions:(id)a11 activityIdentifier:(id)a12 confirmationActionName:(id)a13 showPrompt:(BOOL)a14 confirmationConditions:(int64_t)a15 undoContext:(id)a16;
- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 value:(id)a6 showOutputAction:(id)a7 showOutputActionHint:(int64_t)a8 showOutputActionOptions:(unint64_t)a9 deferred:(BOOL)a10 nextAction:(id)a11 suggestedFollowUpActions:(id)a12 activityIdentifier:(id)a13 confirmationActionName:(id)a14 showPrompt:(BOOL)a15 confirmationConditions:(int64_t)a16 undoContext:(id)a17;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionOutput

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_88:

      goto LABEL_89;
    }

    v7 = [(LNActionOutput *)self identifier];
    v8 = [(LNActionOutput *)v6 identifier];
    v9 = v7;
    v10 = v8;
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

    v16 = [(LNActionOutput *)self dialog];
    v17 = [(LNActionOutput *)v6 dialog];
    v14 = v16;
    v18 = v17;
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

    v22 = [(LNActionOutput *)self viewSnippet];
    v23 = [(LNActionOutput *)v6 viewSnippet];
    v20 = v22;
    v24 = v23;
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
    v26 = [(LNActionOutput *)self value];
    v27 = [(LNActionOutput *)v6 value];
    v28 = v26;
    v29 = v27;
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
          v32 = [(LNActionOutput *)self showOutputAction];
          v33 = [(LNActionOutput *)v6 showOutputAction];
          v28 = v32;
          v34 = v33;
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
                v39 = [(LNActionOutput *)self showOutputActionHint];
                if (v39 != [(LNActionOutput *)v6 showOutputActionHint])
                {
                  goto LABEL_39;
                }

                v40 = [(LNActionOutput *)self showOutputActionOptions];
                if (v40 != [(LNActionOutput *)v6 showOutputActionOptions])
                {
                  goto LABEL_39;
                }

                v41 = [(LNActionOutput *)self isDeferred];
                if (v41 != [(LNActionOutput *)v6 isDeferred])
                {
                  goto LABEL_39;
                }

                v42 = [(LNActionOutput *)self nextAction];
                v43 = [(LNActionOutput *)v6 nextAction];
                v44 = v42;
                v45 = v43;
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
                      v48 = [(LNActionOutput *)self suggestedFollowUpActions];
                      v49 = [(LNActionOutput *)v6 suggestedFollowUpActions];
                      v50 = v48;
                      v51 = v49;
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
                            v56 = [(LNActionOutput *)self activityIdentifier];
                            v57 = [(LNActionOutput *)v6 activityIdentifier];
                            v58 = v56;
                            v59 = v57;
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

                            v61 = [(LNActionOutput *)self confirmationActionName];
                            v62 = [(LNActionOutput *)v6 confirmationActionName];
                            v58 = v61;
                            v63 = v62;
                            if (v58 == v63)
                            {
                              v74 = v63;

                              v76 = v58;
LABEL_68:
                              v65 = [(LNActionOutput *)self shouldShowPrompt];
                              if (v65 == [(LNActionOutput *)v6 shouldShowPrompt])
                              {
                                v67 = [(LNActionOutput *)self confirmationConditions];
                                LOBYTE(v12) = v67 == [(LNActionOutput *)v6 confirmationConditions];
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
  v28 = [(LNActionOutput *)self identifier];
  v3 = [v28 hash];
  v27 = [(LNActionOutput *)self identifier];
  v4 = [v27 hash] ^ v3;
  v26 = [(LNActionOutput *)self dialog];
  v5 = [v26 hash];
  v6 = [(LNActionOutput *)self viewSnippet];
  v7 = v4 ^ v5 ^ [v6 hash];
  v8 = [(LNActionOutput *)self value];
  v9 = [v8 hash];
  v10 = [(LNActionOutput *)self showOutputAction];
  v11 = v9 ^ [v10 hash];
  v12 = v7 ^ v11 ^ [(LNActionOutput *)self showOutputActionHint];
  v13 = [(LNActionOutput *)self showOutputActionOptions];
  v14 = v13 ^ [(LNActionOutput *)self isDeferred];
  v15 = [(LNActionOutput *)self nextAction];
  v16 = v12 ^ v14 ^ [v15 hash];
  v17 = [(LNActionOutput *)self suggestedFollowUpActions];
  v18 = [v17 hash];
  v19 = [(LNActionOutput *)self activityIdentifier];
  v20 = v18 ^ [v19 hash];
  v21 = [(LNActionOutput *)self confirmationActionName];
  v22 = v20 ^ [v21 hash];
  v23 = v22 ^ [(LNActionOutput *)self shouldShowPrompt];
  v24 = v23 ^ [(LNActionOutput *)self confirmationConditions];

  return v16 ^ v24;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  v19 = [(LNActionOutput *)self identifier];
  v18 = [(LNActionOutput *)self dialog];
  v17 = [(LNActionOutput *)self viewSnippet];
  v4 = [(LNActionOutput *)self attribution];
  v16 = [(LNActionOutput *)self value];
  v15 = [(LNActionOutput *)self showOutputAction];
  v14 = [(LNActionOutput *)self showOutputActionHint];
  v5 = [(LNActionOutput *)self showOutputActionOptions];
  v6 = @"NO";
  if ([(LNActionOutput *)self isDeferred])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(LNActionOutput *)self nextAction];
  v9 = [(LNActionOutput *)self suggestedFollowUpActions];
  v10 = [(LNActionOutput *)self activityIdentifier];
  v11 = [(LNActionOutput *)self confirmationActionName];
  if ([(LNActionOutput *)self shouldShowPrompt])
  {
    v6 = @"YES";
  }

  v12 = [v21 stringWithFormat:@"<%@: %p, identifier: %@, dialog: %@, viewSnippet: %@, attribution: %@, value: %@, showOutputAction: %@, showOutputActionHint: %ld, showOutputActionOptions: %ld, deferred: %@, nextAction: %@, suggestedFollowUpActions: %@, activityIdentifier: %@, confirmationActionName: %@, showPrompt: %@, confirmationConditions: %lu>", v20, self, v19, v18, v17, v4, v16, v15, v14, v5, v7, v8, v9, v10, v11, v6, -[LNActionOutput confirmationConditions](self, "confirmationConditions")];

  return v12;
}

- (LNActionOutput)initWithCoder:(id)a3
{
  v3 = a3;
  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"snippetAction"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attribution"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"showOutputAction"];
  v21 = [v3 decodeIntegerForKey:@"showOutputActionHint"];
  v20 = [v3 decodeIntegerForKey:@"showOutputActionOptions"];
  v4 = [v3 decodeBoolForKey:@"deferred"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"nextAction"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v17 = [v3 decodeObjectOfClasses:v8 forKey:@"suggestedFollowUpActions"];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationActionName"];
  v11 = [v3 decodeBoolForKey:@"showPrompt"];
  v12 = [v3 decodeIntegerForKey:@"confirmationConditions"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"undoContext"];

  LOBYTE(v16) = v11;
  LOBYTE(v15) = v4;
  v27 = [(LNActionOutput *)self initWithIdentifier:v28 dialog:v23 viewSnippet:v19 snippetAction:v25 attribution:v24 value:v22 showOutputAction:v18 showOutputActionHint:v21 showOutputActionOptions:v20 deferred:v15 nextAction:v5 suggestedFollowUpActions:v17 activityIdentifier:v9 confirmationActionName:v10 showPrompt:v16 confirmationConditions:v12 undoContext:v13];

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionOutput *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNActionOutput *)self dialog];
  [v4 encodeObject:v6 forKey:@"dialog"];

  v7 = [(LNActionOutput *)self viewSnippet];
  [v4 encodeObject:v7 forKey:@"viewSnippet"];

  v8 = [(LNActionOutput *)self snippetAction];
  [v4 encodeObject:v8 forKey:@"snippetAction"];

  v9 = [(LNActionOutput *)self attribution];
  [v4 encodeObject:v9 forKey:@"attribution"];

  v10 = [(LNActionOutput *)self value];
  [v4 encodeObject:v10 forKey:@"value"];

  v11 = [(LNActionOutput *)self showOutputAction];
  [v4 encodeObject:v11 forKey:@"showOutputAction"];

  [v4 encodeInteger:-[LNActionOutput showOutputActionHint](self forKey:{"showOutputActionHint"), @"showOutputActionHint"}];
  [v4 encodeInteger:-[LNActionOutput showOutputActionOptions](self forKey:{"showOutputActionOptions"), @"showOutputActionOptions"}];
  [v4 encodeBool:-[LNActionOutput isDeferred](self forKey:{"isDeferred"), @"deferred"}];
  v12 = [(LNActionOutput *)self nextAction];
  [v4 encodeObject:v12 forKey:@"nextAction"];

  v13 = [(LNActionOutput *)self suggestedFollowUpActions];
  [v4 encodeObject:v13 forKey:@"suggestedFollowUpActions"];

  v14 = [(LNActionOutput *)self activityIdentifier];
  [v4 encodeObject:v14 forKey:@"activityIdentifier"];

  v15 = [(LNActionOutput *)self confirmationActionName];
  [v4 encodeObject:v15 forKey:@"confirmationActionName"];

  [v4 encodeBool:-[LNActionOutput shouldShowPrompt](self forKey:{"shouldShowPrompt"), @"showPrompt"}];
  [v4 encodeInteger:-[LNActionOutput confirmationConditions](self forKey:{"confirmationConditions"), @"confirmationConditions"}];
  v16 = [(LNActionOutput *)self undoContext];
  [v4 encodeObject:v16 forKey:@"undoContext"];
}

- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 snippetAction:(id)a6 attribution:(id)a7 value:(id)a8 showOutputAction:(id)a9 showOutputActionHint:(int64_t)a10 showOutputActionOptions:(unint64_t)a11 deferred:(BOOL)a12 nextAction:(id)a13 suggestedFollowUpActions:(id)a14 activityIdentifier:(id)a15 confirmationActionName:(id)a16 showPrompt:(BOOL)a17 confirmationConditions:(int64_t)a18 undoContext:(id)a19
{
  v47 = a3;
  v36 = a4;
  v44 = a4;
  v37 = a5;
  v42 = a5;
  v38 = a6;
  v41 = a6;
  v39 = a7;
  v24 = a7;
  v46 = a8;
  v45 = a9;
  v43 = a13;
  v25 = a14;
  v26 = a15;
  v27 = a16;
  v28 = a19;
  v48.receiver = self;
  v48.super_class = LNActionOutput;
  v29 = [(LNActionOutput *)&v48 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_identifier, a3);
    objc_storeStrong(&v30->_dialog, v36);
    objc_storeStrong(&v30->_viewSnippet, v37);
    objc_storeStrong(&v30->_snippetAction, v38);
    objc_storeStrong(&v30->_attribution, v39);
    objc_storeStrong(&v30->_value, a8);
    objc_storeStrong(&v30->_showOutputAction, a9);
    v30->_showOutputActionHint = a10;
    v30->_showOutputActionOptions = a11;
    v30->_deferred = a12;
    objc_storeStrong(&v30->_nextAction, a13);
    objc_storeStrong(&v30->_suggestedFollowUpActions, a14);
    v31 = [v26 copy];
    activityIdentifier = v30->_activityIdentifier;
    v30->_activityIdentifier = v31;

    objc_storeStrong(&v30->_confirmationActionName, a16);
    v30->_showPrompt = a17;
    v30->_confirmationConditions = a18;
    objc_storeStrong(&v30->_undoContext, a19);
    v33 = v30;
  }

  return v30;
}

- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 value:(id)a6 showOutputAction:(id)a7 showOutputActionHint:(int64_t)a8 deferred:(BOOL)a9 nextAction:(id)a10 suggestedFollowUpActions:(id)a11 activityIdentifier:(id)a12 confirmationActionName:(id)a13 showPrompt:(BOOL)a14 confirmationConditions:(int64_t)a15 undoContext:(id)a16
{
  LOBYTE(v18) = a14;
  LOBYTE(v17) = a9;
  return [(LNActionOutput *)self initWithIdentifier:a3 dialog:a4 viewSnippet:a5 value:a6 showOutputAction:a7 showOutputActionHint:a8 showOutputActionOptions:0 deferred:v17 nextAction:a10 suggestedFollowUpActions:a11 activityIdentifier:a12 confirmationActionName:a13 showPrompt:v18 confirmationConditions:a15 undoContext:a16];
}

- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 value:(id)a6 showOutputAction:(id)a7 showOutputActionHint:(int64_t)a8 deferred:(BOOL)a9 nextAction:(id)a10 activityIdentifier:(id)a11 confirmationActionName:(id)a12 showPrompt:(BOOL)a13
{
  LOBYTE(v15) = a13;
  LOBYTE(v14) = a9;
  return [(LNActionOutput *)self initWithIdentifier:a3 dialog:a4 viewSnippet:a5 value:a6 showOutputAction:a7 showOutputActionHint:a8 deferred:v14 nextAction:a10 suggestedFollowUpActions:0 activityIdentifier:0 confirmationActionName:a12 showPrompt:v15 confirmationConditions:0 undoContext:0];
}

- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 value:(id)a6 showOutputAction:(id)a7 showOutputActionHint:(int64_t)a8 deferred:(BOOL)a9 nextAction:(id)a10 confirmationActionName:(id)a11 showPrompt:(BOOL)a12 undoContext:(id)a13
{
  LOBYTE(v15) = a12;
  LOBYTE(v14) = a9;
  return [(LNActionOutput *)self initWithIdentifier:a3 dialog:a4 viewSnippet:a5 value:a6 showOutputAction:a7 showOutputActionHint:a8 deferred:v14 nextAction:a10 suggestedFollowUpActions:0 activityIdentifier:0 confirmationActionName:a11 showPrompt:v15 confirmationConditions:0 undoContext:a13];
}

- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 value:(id)a6 showOutputAction:(id)a7 deferred:(BOOL)a8 nextAction:(id)a9 confirmationActionName:(id)a10 showPrompt:(BOOL)a11
{
  LOBYTE(v13) = a11;
  LOBYTE(v12) = a8;
  return [(LNActionOutput *)self initWithIdentifier:a3 dialog:a4 viewSnippet:a5 value:a6 showOutputAction:a7 showOutputActionHint:0 deferred:v12 nextAction:a9 confirmationActionName:a10 showPrompt:v13 undoContext:0];
}

- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 value:(id)a6 showOutputAction:(id)a7 showOutputActionHint:(int64_t)a8 showOutputActionOptions:(unint64_t)a9 deferred:(BOOL)a10 nextAction:(id)a11 suggestedFollowUpActions:(id)a12 activityIdentifier:(id)a13 confirmationActionName:(id)a14 showPrompt:(BOOL)a15 confirmationConditions:(int64_t)a16 undoContext:(id)a17
{
  LOBYTE(v19) = a15;
  LOBYTE(v18) = a10;
  return [(LNActionOutput *)self initWithIdentifier:a3 dialog:a4 viewSnippet:a5 attribution:0 value:a6 showOutputAction:a7 showOutputActionHint:a8 showOutputActionOptions:0 deferred:v18 nextAction:a11 suggestedFollowUpActions:a12 activityIdentifier:a13 confirmationActionName:a14 showPrompt:v19 confirmationConditions:a16 undoContext:a17];
}

- (LNActionOutput)initWithIdentifier:(id)a3 dialog:(id)a4 viewSnippet:(id)a5 attribution:(id)a6 value:(id)a7 showOutputAction:(id)a8 showOutputActionHint:(int64_t)a9 showOutputActionOptions:(unint64_t)a10 deferred:(BOOL)a11 nextAction:(id)a12 suggestedFollowUpActions:(id)a13 activityIdentifier:(id)a14 confirmationActionName:(id)a15 showPrompt:(BOOL)a16 confirmationConditions:(int64_t)a17 undoContext:(id)a18
{
  LOBYTE(v20) = a16;
  LOBYTE(v19) = a11;
  return [(LNActionOutput *)self initWithIdentifier:a3 dialog:a4 viewSnippet:a5 snippetAction:0 attribution:a6 value:a7 showOutputAction:a8 showOutputActionHint:a9 showOutputActionOptions:0 deferred:v19 nextAction:a12 suggestedFollowUpActions:a13 activityIdentifier:a14 confirmationActionName:a15 showPrompt:v20 confirmationConditions:a17 undoContext:a18];
}

@end