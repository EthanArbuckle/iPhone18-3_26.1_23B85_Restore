@interface FMDSharedConfigurationEntry
- (FMDSharedConfigurationEntry)init;
@end

@implementation FMDSharedConfigurationEntry

- (FMDSharedConfigurationEntry)init
{
  v8.receiver = self;
  v8.super_class = FMDSharedConfigurationEntry;
  v2 = [(FMDSharedConfigurationEntry *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 0;
    title = v2->_title;
    v2->_title = &stru_1F5A998C8;

    message = v3->_message;
    v3->_message = &stru_1F5A998C8;

    disclaimer = v3->_disclaimer;
    v3->_disclaimer = &stru_1F5A998C8;
  }

  return v3;
}

@end