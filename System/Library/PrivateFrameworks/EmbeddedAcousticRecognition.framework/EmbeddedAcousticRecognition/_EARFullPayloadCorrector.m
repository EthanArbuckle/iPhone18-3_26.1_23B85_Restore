@interface _EARFullPayloadCorrector
+ (void)initialize;
- (_EARFullPayloadCorrector)initWithLanguage:(id)a3;
@end

@implementation _EARFullPayloadCorrector

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARFullPayloadCorrector)initWithLanguage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _EARFullPayloadCorrector;
  v6 = [(_EARFullPayloadCorrector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_language, a3);
  }

  return v7;
}

@end