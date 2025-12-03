@interface ECSubjectFormatter
+ (NSString)localizedForwardPrefix;
+ (NSString)localizedReplyPrefix;
+ (OS_os_log)log;
+ (id)_subjectStringForDisplayForObject:(id)object style:(int64_t)style;
+ (id)subjectStringForDisplayForMessage:(id)message;
+ (id)subjectStringForDisplayForMessage:(id)message style:(int64_t)style;
+ (id)subjectStringForDisplayForSubject:(id)subject;
+ (id)subjectStringForDisplayForSubject:(id)subject style:(int64_t)style;
+ (id)subjectStringForDisplayForSubjectString:(id)string;
+ (id)subjectStringForDisplayForSubjectString:(id)string style:(int64_t)style;
- (ECSubjectFormatter)initWithStyle:(int64_t)style;
- (id)_localizedPrefixForSubjectFromSubject:(id)subject;
- (id)stringForObjectValue:(id)value;
@end

@implementation ECSubjectFormatter

+ (NSString)localizedReplyPrefix
{
  if (localizedReplyPrefix_onceToken != -1)
  {
    +[ECSubjectFormatter localizedReplyPrefix];
  }

  v3 = localizedReplyPrefix_localizedReplyPrefix;

  return v3;
}

uint64_t __42__ECSubjectFormatter_localizedReplyPrefix__block_invoke()
{
  localizedReplyPrefix_localizedReplyPrefix = _EFLocalizedString();

  return MEMORY[0x2821F96F8]();
}

+ (NSString)localizedForwardPrefix
{
  if (localizedForwardPrefix_onceToken != -1)
  {
    +[ECSubjectFormatter localizedForwardPrefix];
  }

  v3 = localizedForwardPrefix_localizedForwardPrefix;

  return v3;
}

uint64_t __44__ECSubjectFormatter_localizedForwardPrefix__block_invoke()
{
  localizedForwardPrefix_localizedForwardPrefix = _EFLocalizedString();

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__ECSubjectFormatter_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_5 != -1)
  {
    dispatch_once(&log_onceToken_5, block);
  }

  v2 = log_log_5;

  return v2;
}

void __25__ECSubjectFormatter_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_5;
  log_log_5 = v1;
}

+ (id)subjectStringForDisplayForSubjectString:(id)string
{
  v3 = [self subjectStringForDisplayForSubjectString:string style:0];

  return v3;
}

+ (id)subjectStringForDisplayForSubjectString:(id)string style:(int64_t)style
{
  v4 = [self _subjectStringForDisplayForObject:string style:style];

  return v4;
}

+ (id)subjectStringForDisplayForSubject:(id)subject
{
  v3 = [self subjectStringForDisplayForSubject:subject style:0];

  return v3;
}

+ (id)subjectStringForDisplayForSubject:(id)subject style:(int64_t)style
{
  v4 = [self _subjectStringForDisplayForObject:subject style:style];

  return v4;
}

+ (id)subjectStringForDisplayForMessage:(id)message
{
  v3 = [self subjectStringForDisplayForMessage:message style:0];

  return v3;
}

+ (id)subjectStringForDisplayForMessage:(id)message style:(int64_t)style
{
  v4 = [self _subjectStringForDisplayForObject:message style:style];

  return v4;
}

+ (id)_subjectStringForDisplayForObject:(id)object style:(int64_t)style
{
  objectCopy = object;
  if (_subjectStringForDisplayForObject_style__onceToken != -1)
  {
    +[ECSubjectFormatter _subjectStringForDisplayForObject:style:];
  }

  v6 = _subjectStringForDisplayForObject_style__formatterCache;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ECSubjectFormatter__subjectStringForDisplayForObject_style___block_invoke_2;
  v11[3] = &__block_descriptor_40_e5__8__0l;
  v11[4] = style;
  v8 = [v6 objectForKey:v7 generator:v11];

  v9 = [v8 stringForObjectValue:objectCopy];

  return v9;
}

uint64_t __62__ECSubjectFormatter__subjectStringForDisplayForObject_style___block_invoke()
{
  _subjectStringForDisplayForObject_style__formatterCache = objc_alloc_init(MEMORY[0x277D07160]);

  return MEMORY[0x2821F96F8]();
}

ECSubjectFormatter *__62__ECSubjectFormatter__subjectStringForDisplayForObject_style___block_invoke_2(uint64_t a1)
{
  v1 = [[ECSubjectFormatter alloc] initWithStyle:*(a1 + 32)];

  return v1;
}

- (ECSubjectFormatter)initWithStyle:(int64_t)style
{
  v15.receiver = self;
  v15.super_class = ECSubjectFormatter;
  v4 = [(ECSubjectFormatter *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    localizedReplyPrefix = [objc_opt_class() localizedReplyPrefix];
    nonLocalizedReplyPrefix = [objc_opt_class() nonLocalizedReplyPrefix];
    v8 = __36__ECSubjectFormatter_initWithStyle___block_invoke(nonLocalizedReplyPrefix, localizedReplyPrefix, nonLocalizedReplyPrefix);
    replyContext = v5->_replyContext;
    v5->_replyContext = v8;

    localizedForwardPrefix = [objc_opt_class() localizedForwardPrefix];
    nonLocalizedForwardPrefix = [objc_opt_class() nonLocalizedForwardPrefix];
    v12 = __36__ECSubjectFormatter_initWithStyle___block_invoke(nonLocalizedForwardPrefix, localizedForwardPrefix, nonLocalizedForwardPrefix);
    forwardContext = v5->_forwardContext;
    v5->_forwardContext = v12;
  }

  return v5;
}

_ECSubjectFormatterContext *__36__ECSubjectFormatter_initWithStyle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isEqualToString:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCAC68] escapedPatternForString:v5];
    v8 = [v7 stringByAppendingString:@"(\\s*)(.*)"];

    v13 = 0;
    v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v8 options:0 error:&v13];
    v10 = v13;
    if (v9)
    {
      v6 = [[_ECSubjectFormatterContext alloc] initWithRegex:v9 localizedPrefix:v4];
    }

    else
    {
      v11 = +[ECSubjectFormatter log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __36__ECSubjectFormatter_initWithStyle___block_invoke_cold_1(v8, v11);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    v8 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
    style = [(ECSubjectFormatter *)self style];
    if (!style)
    {
      subjectWithoutPrefix = [(ECSubjectFormatter *)self _localizedPrefixForSubjectFromSubject:v5];
      goto LABEL_16;
    }

    if (style == 1)
    {
      subjectWithoutPrefix = [ECSubjectParser subjectWithoutPrefixForSubject:v5];
LABEL_16:
      subject = v5;
LABEL_21:
      v12 = subjectWithoutPrefix;
      goto LABEL_22;
    }

    subject = v5;
    goto LABEL_19;
  }

  if ([valueCopy conformsToProtocol:&unk_284062EF0])
  {
    subject = [valueCopy subject];
    if (!subject)
    {
      goto LABEL_19;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      subject = 0;
LABEL_19:
      v12 = 0;
      goto LABEL_22;
    }

    subject = valueCopy;
  }

  style2 = [(ECSubjectFormatter *)self style];
  if (style2 == 1)
  {
    subjectWithoutPrefix = [subject subjectWithoutPrefix];
    goto LABEL_21;
  }

  if (style2)
  {
    goto LABEL_19;
  }

  subjectString = [subject subjectString];
  v12 = [(ECSubjectFormatter *)self _localizedPrefixForSubjectFromSubject:subjectString];

LABEL_22:
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v14 = [v12 componentsSeparatedByCharactersInSet:newlineCharacterSet];
  v15 = [v14 componentsJoinedByString:@" "];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

LABEL_23:

  return v8;
}

- (id)_localizedPrefixForSubjectFromSubject:(id)subject
{
  subjectCopy = subject;
  replyContext = [(ECSubjectFormatter *)self replyContext];

  v6 = subjectCopy;
  if (replyContext)
  {
    replyContext2 = [(ECSubjectFormatter *)self replyContext];
    v6 = localizePrefixIfNeeded(subjectCopy, replyContext2);
  }

  forwardContext = [(ECSubjectFormatter *)self forwardContext];

  if (forwardContext)
  {
    forwardContext2 = [(ECSubjectFormatter *)self forwardContext];
    v10 = localizePrefixIfNeeded(v6, forwardContext2);

    v6 = v10;
  }

  return v6;
}

void __36__ECSubjectFormatter_initWithStyle___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_22D092000, a2, OS_LOG_TYPE_DEBUG, "Failed to create regex with patter: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end