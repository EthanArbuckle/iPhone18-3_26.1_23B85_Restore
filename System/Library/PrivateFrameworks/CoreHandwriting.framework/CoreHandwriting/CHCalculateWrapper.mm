@interface CHCalculateWrapper
+ (BOOL)isLatexTranscriptionValidExpression:(id)expression;
+ (BOOL)isTextTranscriptionUnitConversion:(id)conversion locales:(id)locales;
+ (id)textTranscriptionForLatex:(id)latex;
- (CHCalculateWrapper)init;
@end

@implementation CHCalculateWrapper

+ (id)textTranscriptionForLatex:(id)latex
{
  sub_1839BD0FC();
  sub_18366E4E8();

  v3 = sub_1839BD0CC();

  return v3;
}

+ (BOOL)isTextTranscriptionUnitConversion:(id)conversion locales:(id)locales
{
  v4 = sub_1839BD0FC();
  v6 = v5;
  sub_1839BCEEC();
  v7 = sub_1839BD14C();
  LOBYTE(v4) = sub_18366E718(v4, v6, v7);

  return v4 & 1;
}

+ (BOOL)isLatexTranscriptionValidExpression:(id)expression
{
  sub_1839BD0FC();
  v3 = sub_18366E90C();

  return v3 & 1;
}

- (CHCalculateWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CHCalculateWrapper();
  return [(CHCalculateWrapper *)&v3 init];
}

@end