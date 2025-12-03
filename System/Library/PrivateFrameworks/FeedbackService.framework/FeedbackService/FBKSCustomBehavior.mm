@interface FBKSCustomBehavior
- (FBKSCustomBehavior)initWithDictionary:(id)dictionary;
- (NSString)description;
@end

@implementation FBKSCustomBehavior

- (FBKSCustomBehavior)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FBKSCustomBehavior;
  v5 = [(FBKSCustomBehavior *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"make_visible"];
    v5->_makeVisible = [v6 BOOLValue];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"notify_on_upload"];
    v5->_notifyOnUpload = [v7 BOOLValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"answers"];
    answers = v5->_answers;
    v5->_answers = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"launch_new_draft"];
    v5->_launchNewDraft = [v10 BOOLValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"is_captive"];
    v5->_isCaptive = [v11 BOOLValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"form_id"];
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

  formId = [(FBKSCustomBehavior *)self formId];
  if (formId)
  {
    formId2 = [(FBKSCustomBehavior *)self formId];
    stringValue = [formId2 stringValue];
  }

  else
  {
    stringValue = @"(null)";
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

  v11 = [v13 stringWithFormat:@"FBKSCustomBehavior – isCaptive:%@, makeVisible:%@, notifyOnUpload:%@, formID:%@, launchDraft:%@, answers:%@", v4, v5, v6, stringValue, v9, v10];
  if (formId)
  {
  }

  return v11;
}

@end