@interface PCMessages
+ (void)initialize;
@end

@implementation PCMessages

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    objc_opt_class();
    v2 = [TCTaggedMessage alloc];
    v6 = TCBundle();
    v3 = [v6 localizedStringForKey:@"This document was created with an unsupported version of PowerPoint." value:&stru_286EE1130 table:@"TCCompatibility"];
    v4 = [(TCTaggedMessage *)v2 initWithMessageText:v3];
    v5 = PCUnsupportedVersion;
    PCUnsupportedVersion = v4;
  }
}

@end