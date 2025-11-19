@interface PKMutableAccountUserPreferences
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKMutableAccountUserPreferences

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PKAccountUserPreferences allocWithZone:a3];

  return [(PKAccountUserPreferences *)v4 initWithAccountUserPreferences:self];
}

@end