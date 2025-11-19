@interface IPLocaleCoder
+ (id)localePreferenceKeysAndClasses;
+ (id)localeWithPreferences:(id)a3;
- (IPLocaleCoder)initWithDictionary:(id)a3;
- (IPLocaleCoder)initWithLocaleIdentifier:(id)a3;
- (NSString)localeIdentifier;
- (id)locale;
- (id)preferences;
- (void)setLanguageIdentifier:(id)a3;
- (void)setLocaleIdentifier:(id)a3;
@end

@implementation IPLocaleCoder

+ (id)localePreferenceKeysAndClasses
{
  v2 = qword_1000088C8;
  if (!qword_1000088C8)
  {
    v6 = @"AppleLocale";
    v7 = objc_opt_class();
    v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v4 = qword_1000088C8;
    qword_1000088C8 = v3;

    v2 = qword_1000088C8;
  }

  return v2;
}

+ (id)localeWithPreferences:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"AppleLocale"];
  if (!qword_1000088D0)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = [objc_opt_class() localePreferenceKeysAndClasses];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100001088;
    v13[3] = &unk_1000041F8;
    v14 = v5;
    v7 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v13];

    v8 = [v7 copy];
    v9 = qword_1000088D0;
    qword_1000088D0 = v8;
  }

  v10 = [NSMutableDictionary dictionaryWithDictionary:?];
  [v10 setValuesForKeysWithDictionary:v3];

  v11 = _CFLocaleCopyAsIfCurrentWithOverrides();

  return v11;
}

- (IPLocaleCoder)initWithLocaleIdentifier:(id)a3
{
  v8 = @"AppleLocale";
  v9 = a3;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v6 = [(IPLocaleCoder *)self initWithDictionary:v5];
  return v6;
}

- (IPLocaleCoder)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IPLocaleCoder;
  v5 = [(IPLocaleCoder *)&v8 init];
  if (v5)
  {
    v6 = [NSMutableDictionary dictionaryWithDictionary:v4];
    [(IPLocaleCoder *)v5 setMutablePreferences:v6];
  }

  return v5;
}

- (void)setLocaleIdentifier:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"*** setLocaleIdentifier: object cannot be nil" userInfo:0];
    [v4 raise];
  }

  [(IPLocaleCoder *)self willChangeValueForKey:@"localeIdentifier"];
  v5 = [(IPLocaleCoder *)self mutablePreferences];
  v6 = [NSLocale canonicalLocaleIdentifierFromString:v7];
  [v5 setObject:v6 forKey:@"AppleLocale"];

  [(IPLocaleCoder *)self didChangeValueForKey:@"localeIdentifier"];
}

- (NSString)localeIdentifier
{
  v2 = [(IPLocaleCoder *)self mutablePreferences];
  v3 = [v2 objectForKey:@"AppleLocale"];
  v4 = [NSLocale canonicalLocaleIdentifierFromString:v3];

  return v4;
}

- (void)setLanguageIdentifier:(id)a3
{
  v12 = a3;
  if (!v12)
  {
    v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"*** setLanguageIdentifier: object cannot be nil" userInfo:0];
    [v4 raise];
  }

  [(IPLocaleCoder *)self willChangeValueForKey:@"languageIdentifier"];
  v5 = [NSLocale componentsFromLocaleIdentifier:v12];
  v6 = [v5 objectForKey:NSLocaleLanguageCode];
  v7 = [v5 objectForKey:NSLocaleScriptCode];
  v8 = [(IPLocaleCoder *)self localeIdentifier];
  v9 = [NSLocale componentsFromLocaleIdentifier:v8];
  v10 = [v9 mutableCopy];

  [v10 setObject:v6 forKey:NSLocaleLanguageCode];
  if (v7)
  {
    [v10 setObject:v7 forKey:NSLocaleScriptCode];
  }

  else
  {
    [v10 removeObjectForKey:NSLocaleScriptCode];
  }

  v11 = [NSLocale localeIdentifierFromComponents:v10];
  [(IPLocaleCoder *)self setLocaleIdentifier:v11];

  [(IPLocaleCoder *)self didChangeValueForKey:@"languageIdentifier"];
}

- (id)preferences
{
  v2 = [(IPLocaleCoder *)self mutablePreferences];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)locale
{
  v3 = objc_opt_class();
  v4 = [(IPLocaleCoder *)self preferences];
  v5 = [v3 localeWithPreferences:v4];

  return v5;
}

@end