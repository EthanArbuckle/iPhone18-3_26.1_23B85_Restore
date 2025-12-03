@interface CRKCardPresentationConfiguration
- (CRKCardPresentationConfiguration)initWithCardRequest:(id)request;
- (CRKCardPresentationConfiguration)initWithContent:(id)content;
@end

@implementation CRKCardPresentationConfiguration

- (CRKCardPresentationConfiguration)initWithContent:(id)content
{
  v4 = MEMORY[0x277CF93D8];
  contentCopy = content;
  v6 = [[v4 alloc] initWithContent:contentCopy format:0];

  v7 = [(CRKCardPresentationConfiguration *)self initWithCardRequest:v6];
  return v7;
}

- (CRKCardPresentationConfiguration)initWithCardRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CRKCardPresentationConfiguration;
  v6 = [(CRKCardPresentationConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cardRequest, request);
    *&v7->_respectsUserConsent = 257;
  }

  return v7;
}

@end