@interface CDMCcqrAerCbROverridesProxy
- (id)getRewriteHypothesisWithOverrideUtterance:(id)utterance;
- (id)matchWithInputs:(id)inputs;
@end

@implementation CDMCcqrAerCbROverridesProxy

- (id)matchWithInputs:(id)inputs
{
  sub_1DC298C74(0, &qword_1EDAC7F98, 0x1E69D1338);
  sub_1DC517A1C();

  return 0;
}

- (id)getRewriteHypothesisWithOverrideUtterance:(id)utterance
{
  sub_1DC51772C();
  selfCopy = self;
  v5 = sub_1DC338A74();

  return v5;
}

@end