@interface IdentityViewModel
- (void)closeUI;
- (void)displayIdentityInformation:(id)information;
- (void)updateUIState:(int64_t)state;
@end

@implementation IdentityViewModel

- (void)updateUIState:(int64_t)state
{

  sub_24400D484(state);
}

- (void)displayIdentityInformation:(id)information
{
  informationCopy = information;

  sub_24400D9D8(informationCopy);
}

- (void)closeUI
{

  sub_24400DE58();
}

@end