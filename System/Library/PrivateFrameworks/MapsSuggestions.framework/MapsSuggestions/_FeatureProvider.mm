@interface _FeatureProvider
- (id)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation _FeatureProvider

- (id)featureNames
{
  if (qword_100085588 != -1)
  {
    sub_10004CB14();
  }

  v3 = qword_100085580;

  return v3;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = _FeatureProvider;
  v5 = [(_FeatureProvider *)&v8 featureValueForName:nameCopy];
  if (!v5)
  {
    v5 = [MLFeatureValue undefinedFeatureValueWithType:2];
  }

  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v10 = nameCopy;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Will respond: %@ => %@", buf, 0x16u);
  }

  return v5;
}

@end