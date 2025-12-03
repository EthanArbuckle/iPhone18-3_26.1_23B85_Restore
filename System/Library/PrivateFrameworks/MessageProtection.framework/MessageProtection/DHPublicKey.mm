@interface DHPublicKey
- (id)description;
@end

@implementation DHPublicKey

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  dataRepresentation = [(PublicKey *)self dataRepresentation];
  v4 = [v2 stringWithFormat:@"DHPublicKey with data representation: %@", dataRepresentation];

  return v4;
}

@end