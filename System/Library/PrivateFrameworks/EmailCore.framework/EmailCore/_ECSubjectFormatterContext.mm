@interface _ECSubjectFormatterContext
- (_ECSubjectFormatterContext)initWithRegex:(id)a3 localizedPrefix:(id)a4;
@end

@implementation _ECSubjectFormatterContext

- (_ECSubjectFormatterContext)initWithRegex:(id)a3 localizedPrefix:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _ECSubjectFormatterContext;
  v9 = [(_ECSubjectFormatterContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_regex, a3);
    v11 = [v8 copy];
    localizedPrefix = v10->_localizedPrefix;
    v10->_localizedPrefix = v11;

    v10->_prefixLastStrongDirectionalityIsLeftToRight = [v8 ef_lastStrongDirectionalityIsLeftToRight];
  }

  return v10;
}

@end