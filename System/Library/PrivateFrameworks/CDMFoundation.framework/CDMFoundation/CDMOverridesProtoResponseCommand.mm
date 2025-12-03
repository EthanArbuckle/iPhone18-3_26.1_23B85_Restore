@interface CDMOverridesProtoResponseCommand
- (CDMOverridesProtoResponseCommand)initWithParsesForReplacement:(id)replacement parsesForAppending:(id)appending;
@end

@implementation CDMOverridesProtoResponseCommand

- (CDMOverridesProtoResponseCommand)initWithParsesForReplacement:(id)replacement parsesForAppending:(id)appending
{
  replacementCopy = replacement;
  appendingCopy = appending;
  v14.receiver = self;
  v14.super_class = CDMOverridesProtoResponseCommand;
  v8 = [(CDMBaseCommand *)&v14 init];
  if (v8)
  {
    v9 = [replacementCopy copy];
    parsesForReplacement = v8->_parsesForReplacement;
    v8->_parsesForReplacement = v9;

    v11 = [appendingCopy copy];
    parsesForAppending = v8->_parsesForAppending;
    v8->_parsesForAppending = v11;
  }

  return v8;
}

@end