@interface CRKCardPresentationConfiguration
- (CRKCardPresentationConfiguration)initWithCardRequest:(id)a3;
- (CRKCardPresentationConfiguration)initWithContent:(id)a3;
@end

@implementation CRKCardPresentationConfiguration

- (CRKCardPresentationConfiguration)initWithContent:(id)a3
{
  v4 = MEMORY[0x277CF93D8];
  v5 = a3;
  v6 = [[v4 alloc] initWithContent:v5 format:0];

  v7 = [(CRKCardPresentationConfiguration *)self initWithCardRequest:v6];
  return v7;
}

- (CRKCardPresentationConfiguration)initWithCardRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKCardPresentationConfiguration;
  v6 = [(CRKCardPresentationConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cardRequest, a3);
    *&v7->_respectsUserConsent = 257;
  }

  return v7;
}

@end