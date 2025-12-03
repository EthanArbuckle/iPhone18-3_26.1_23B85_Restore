@interface _ECSubjectFormatterContext
- (_ECSubjectFormatterContext)initWithRegex:(id)regex localizedPrefix:(id)prefix;
@end

@implementation _ECSubjectFormatterContext

- (_ECSubjectFormatterContext)initWithRegex:(id)regex localizedPrefix:(id)prefix
{
  regexCopy = regex;
  prefixCopy = prefix;
  v14.receiver = self;
  v14.super_class = _ECSubjectFormatterContext;
  v9 = [(_ECSubjectFormatterContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_regex, regex);
    v11 = [prefixCopy copy];
    localizedPrefix = v10->_localizedPrefix;
    v10->_localizedPrefix = v11;

    v10->_prefixLastStrongDirectionalityIsLeftToRight = [prefixCopy ef_lastStrongDirectionalityIsLeftToRight];
  }

  return v10;
}

@end