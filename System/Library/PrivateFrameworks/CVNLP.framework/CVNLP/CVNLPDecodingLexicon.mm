@interface CVNLPDecodingLexicon
+ (_LXLexicon)_createLexiconForLocale:(id)locale;
+ (id)decodingLexiconForLocale:(id)locale;
+ (id)decodingLexiconForLocale:(id)locale priority:(unint64_t)priority;
- (CVNLPDecodingLexicon)initWithLexicon:(_LXLexicon *)lexicon priority:(unint64_t)priority;
- (void)dealloc;
@end

@implementation CVNLPDecodingLexicon

- (CVNLPDecodingLexicon)initWithLexicon:(_LXLexicon *)lexicon priority:(unint64_t)priority
{
  v8.receiver = self;
  v8.super_class = CVNLPDecodingLexicon;
  v6 = [(CVNLPDecodingLexicon *)&v8 init];
  if (v6)
  {
    v6->_lexicon = CFRetain(lexicon);
    v6->_priority = priority;
    v6->__rootCursor = LXLexiconCreateRootCursor();
  }

  return v6;
}

- (void)dealloc
{
  CFRelease(self->_lexicon);
  rootCursor = self->__rootCursor;
  if (rootCursor)
  {
    CFRelease(rootCursor);
    self->__rootCursor = 0;
  }

  v4.receiver = self;
  v4.super_class = CVNLPDecodingLexicon;
  [(CVNLPDecodingLexicon *)&v4 dealloc];
}

+ (_LXLexicon)_createLexiconForLocale:(id)locale
{
  v14[1] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v7 = objc_msgSend_localeIdentifier(localeCopy, v4, v5, v6, 0, *MEMORY[0x1E69ABFE8]);
  v14[0] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v14, &v13, 1);

  v10 = LXLexiconCreate();
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)decodingLexiconForLocale:(id)locale
{
  localeCopy = locale;
  v4 = objc_opt_class();
  LexiconForLocale = objc_msgSend__createLexiconForLocale_(v4, v5, localeCopy, v6);
  if (LexiconForLocale)
  {
    v8 = [CVNLPDecodingLexicon alloc];
    v11 = objc_msgSend_initWithLexicon_(v8, v9, LexiconForLocale, v10);
    CFRelease(LexiconForLocale);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)decodingLexiconForLocale:(id)locale priority:(unint64_t)priority
{
  localeCopy = locale;
  v6 = objc_opt_class();
  LexiconForLocale = objc_msgSend__createLexiconForLocale_(v6, v7, localeCopy, v8);
  if (LexiconForLocale)
  {
    v10 = [CVNLPDecodingLexicon alloc];
    v12 = objc_msgSend_initWithLexicon_priority_(v10, v11, LexiconForLocale, priority);
    CFRelease(LexiconForLocale);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end