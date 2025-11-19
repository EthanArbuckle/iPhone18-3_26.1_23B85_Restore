@interface SWHighlightMentionEvent
- (id)__bdInitWithHighlightURL:(id)a3 mentionedPersonHandle:(id)a4 mentionedPersonIdentity:(id)a5;
- (id)__bdSWMentionedPersonIdentity;
@end

@implementation SWHighlightMentionEvent

- (id)__bdInitWithHighlightURL:(id)a3 mentionedPersonHandle:(id)a4 mentionedPersonIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(SWHighlightMentionEvent *)self initWithHighlightURL:v8 mentionedPersonHandle:v9 mentionedPersonIdentity:v10];
LABEL_5:
    v12 = v11;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [(SWHighlightMentionEvent *)self initWithHighlightURL:v8 mentionedPersonHandle:v9];
    goto LABEL_5;
  }

  v13 = sub_10000CF34();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1000C108C(v13);
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)__bdSWMentionedPersonIdentity
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(SWHighlightMentionEvent *)self mentionedPersonIdentity];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end