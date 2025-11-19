@interface IdentityViewModel
- (void)closeUI;
- (void)displayIdentityInformation:(id)a3;
- (void)updateUIState:(int64_t)a3;
@end

@implementation IdentityViewModel

- (void)updateUIState:(int64_t)a3
{

  sub_24400D484(a3);
}

- (void)displayIdentityInformation:(id)a3
{
  v3 = a3;

  sub_24400D9D8(v3);
}

- (void)closeUI
{

  sub_24400DE58();
}

@end