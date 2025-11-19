@interface _ICSearchContext
- (_ICSearchContext)initWithLocale:(id)a3 recipients:(id)a4 applicationBundleIdentifier:(id)a5 isResponseContextDenylisted:(BOOL)a6 shouldDisableAutoCaps:(BOOL)a7;
@end

@implementation _ICSearchContext

- (_ICSearchContext)initWithLocale:(id)a3 recipients:(id)a4 applicationBundleIdentifier:(id)a5 isResponseContextDenylisted:(BOOL)a6 shouldDisableAutoCaps:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v23.receiver = self;
  v23.super_class = _ICSearchContext;
  v16 = [(_ICSearchContext *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_locale, a3);
    v18 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
    recipients = v17->_recipients;
    v17->_recipients = v18;

    v20 = [v14 copy];
    v21 = v17->_recipients;
    v17->_recipients = v20;

    objc_storeStrong(&v17->_applicationBundleIdentifier, a5);
    v17->_isResponseContextDenylisted = a6;
    v17->_shouldDisableAutoCaps = a7;
  }

  return v17;
}

@end