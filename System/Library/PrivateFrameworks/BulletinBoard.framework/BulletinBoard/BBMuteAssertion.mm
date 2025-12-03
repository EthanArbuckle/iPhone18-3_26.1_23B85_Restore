@interface BBMuteAssertion
- (BBMuteAssertion)initWithCoder:(id)coder;
- (BOOL)isActiveForThreadIdentifier:(id)identifier currentDate:(id)date;
- (id)_init;
- (void)getNextExpirationDate:(id *)date wasPurged:(BOOL *)purged currentDate:(id)currentDate;
@end

@implementation BBMuteAssertion

- (id)_init
{
  v3.receiver = self;
  v3.super_class = BBMuteAssertion;
  return [(BBMuteAssertion *)&v3 init];
}

- (BOOL)isActiveForThreadIdentifier:(id)identifier currentDate:(id)date
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BBMuteAssertion.m" lineNumber:29 description:@"use subclasses"];

  return 0;
}

- (void)getNextExpirationDate:(id *)date wasPurged:(BOOL *)purged currentDate:(id)currentDate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BBMuteAssertion.m" lineNumber:34 description:@"use subclasses"];
}

- (BBMuteAssertion)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = BBMuteAssertion;
  return [(BBMuteAssertion *)&v4 init];
}

@end