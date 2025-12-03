@interface _ICSearchContext
- (_ICSearchContext)initWithLocale:(id)locale recipients:(id)recipients applicationBundleIdentifier:(id)identifier isResponseContextDenylisted:(BOOL)denylisted shouldDisableAutoCaps:(BOOL)caps;
@end

@implementation _ICSearchContext

- (_ICSearchContext)initWithLocale:(id)locale recipients:(id)recipients applicationBundleIdentifier:(id)identifier isResponseContextDenylisted:(BOOL)denylisted shouldDisableAutoCaps:(BOOL)caps
{
  localeCopy = locale;
  recipientsCopy = recipients;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = _ICSearchContext;
  v16 = [(_ICSearchContext *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_locale, locale);
    v18 = [MEMORY[0x277CBEA60] arrayWithArray:recipientsCopy];
    recipients = v17->_recipients;
    v17->_recipients = v18;

    v20 = [recipientsCopy copy];
    v21 = v17->_recipients;
    v17->_recipients = v20;

    objc_storeStrong(&v17->_applicationBundleIdentifier, identifier);
    v17->_isResponseContextDenylisted = denylisted;
    v17->_shouldDisableAutoCaps = caps;
  }

  return v17;
}

@end