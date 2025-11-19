@interface CDMOverridesProtoResponseCommand
- (CDMOverridesProtoResponseCommand)initWithParsesForReplacement:(id)a3 parsesForAppending:(id)a4;
@end

@implementation CDMOverridesProtoResponseCommand

- (CDMOverridesProtoResponseCommand)initWithParsesForReplacement:(id)a3 parsesForAppending:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CDMOverridesProtoResponseCommand;
  v8 = [(CDMBaseCommand *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    parsesForReplacement = v8->_parsesForReplacement;
    v8->_parsesForReplacement = v9;

    v11 = [v7 copy];
    parsesForAppending = v8->_parsesForAppending;
    v8->_parsesForAppending = v11;
  }

  return v8;
}

@end