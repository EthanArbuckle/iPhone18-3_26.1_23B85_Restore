@interface MFBasicMessageDataSection
- (void)dealloc;
@end

@implementation MFBasicMessageDataSection

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFBasicMessageDataSection;
  [(MFBasicMessageDataSection *)&v3 dealloc];
}

@end