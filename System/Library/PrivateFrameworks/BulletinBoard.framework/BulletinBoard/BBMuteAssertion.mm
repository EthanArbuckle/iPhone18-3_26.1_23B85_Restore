@interface BBMuteAssertion
- (BBMuteAssertion)initWithCoder:(id)a3;
- (BOOL)isActiveForThreadIdentifier:(id)a3 currentDate:(id)a4;
- (id)_init;
- (void)getNextExpirationDate:(id *)a3 wasPurged:(BOOL *)a4 currentDate:(id)a5;
@end

@implementation BBMuteAssertion

- (id)_init
{
  v3.receiver = self;
  v3.super_class = BBMuteAssertion;
  return [(BBMuteAssertion *)&v3 init];
}

- (BOOL)isActiveForThreadIdentifier:(id)a3 currentDate:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"BBMuteAssertion.m" lineNumber:29 description:@"use subclasses"];

  return 0;
}

- (void)getNextExpirationDate:(id *)a3 wasPurged:(BOOL *)a4 currentDate:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"BBMuteAssertion.m" lineNumber:34 description:@"use subclasses"];
}

- (BBMuteAssertion)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = BBMuteAssertion;
  return [(BBMuteAssertion *)&v4 init];
}

@end