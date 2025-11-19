@interface FBKSCustomBehavior
- (FBKSCustomBehavior)initWithDictionary:(id)a3;
- (NSString)description;
@end

@implementation FBKSCustomBehavior

- (FBKSCustomBehavior)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FBKSCustomBehavior;
  v5 = [(FBKSCustomBehavior *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"make_visible"];
    v5->_makeVisible = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"notify_on_upload"];
    v5->_notifyOnUpload = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"answers"];
    answers = v5->_answers;
    v5->_answers = v8;

    v10 = [v4 objectForKeyedSubscript:@"launch_new_draft"];
    v5->_launchNewDraft = [v10 BOOLValue];

    v11 = [v4 objectForKeyedSubscript:@"is_captive"];
    v5->_isCaptive = [v11 BOOLValue];

    v12 = [v4 objectForKeyedSubscript:@"form_id"];
    if (v12)
    {
      objc_storeStrong(&v5->_formId, v12);
    }
  }

  return v5;
}

- (NSString)description
{
  v13 = MEMORY[0x1E696AEC0];
  if ([(FBKSCustomBehavior *)self isCaptive])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(FBKSCustomBehavior *)self makeVisible])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(FBKSCustomBehavior *)self notifyOnUpload])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(FBKSCustomBehavior *)self formId];
  if (v7)
  {
    v2 = [(FBKSCustomBehavior *)self formId];
    v8 = [v2 stringValue];
  }

  else
  {
    v8 = @"(null)";
  }

  if ([(FBKSCustomBehavior *)self launchNewDraft])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(FBKSCustomBehavior *)self isCaptive])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v13 stringWithFormat:@"FBKSCustomBehavior – isCaptive:%@, makeVisible:%@, notifyOnUpload:%@, formID:%@, launchDraft:%@, answers:%@", v4, v5, v6, v8, v9, v10];
  if (v7)
  {
  }

  return v11;
}

@end