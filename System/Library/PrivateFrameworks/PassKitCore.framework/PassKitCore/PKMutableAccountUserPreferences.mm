@interface PKMutableAccountUserPreferences
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKMutableAccountUserPreferences

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PKAccountUserPreferences allocWithZone:zone];

  return [(PKAccountUserPreferences *)v4 initWithAccountUserPreferences:self];
}

@end