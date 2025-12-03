@interface CRKHostResourcesConfiguration
- (CRKHostResourcesConfiguration)initWithResourceURLs:(id)ls serverIdentity:(id)identity trustedAnchorCertificates:(id)certificates;
- (CRKHostResourcesConfiguration)initWithResourceURLs:(id)ls serverIdentity:(id)identity trustedCertificates:(id)certificates;
- (CRKIPAddressProviding)IPAddressProvider;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRKHostResourcesConfiguration

- (CRKHostResourcesConfiguration)initWithResourceURLs:(id)ls serverIdentity:(id)identity trustedCertificates:(id)certificates
{
  lsCopy = ls;
  identityCopy = identity;
  certificatesCopy = certificates;
  v17.receiver = self;
  v17.super_class = CRKHostResourcesConfiguration;
  v11 = [(CRKHostResourcesConfiguration *)&v17 init];
  if (v11)
  {
    v12 = [lsCopy copy];
    resourceURLs = v11->_resourceURLs;
    v11->_resourceURLs = v12;

    objc_storeStrong(&v11->_serverIdentity, identity);
    v14 = [certificatesCopy copy];
    trustedCertificates = v11->_trustedCertificates;
    v11->_trustedCertificates = v14;

    v11->_port = 3284;
  }

  return v11;
}

- (CRKIPAddressProviding)IPAddressProvider
{
  IPAddressProvider = self->_IPAddressProvider;
  if (!IPAddressProvider)
  {
    v4 = objc_opt_new();
    v5 = self->_IPAddressProvider;
    self->_IPAddressProvider = v4;

    IPAddressProvider = self->_IPAddressProvider;
  }

  return IPAddressProvider;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithResourceURLs:self->_resourceURLs serverIdentity:self->_serverIdentity trustedCertificates:self->_trustedCertificates];
  *(v4 + 40) = self->_maximumAllowedDownloads;
  *(v4 + 8) = self->_port;
  objc_storeStrong((v4 + 48), self->_IPAddressProvider);
  return v4;
}

- (CRKHostResourcesConfiguration)initWithResourceURLs:(id)ls serverIdentity:(id)identity trustedAnchorCertificates:(id)certificates
{
  certificatesCopy = certificates;
  identityCopy = identity;
  lsCopy = ls;
  v11 = [[CRKConcreteIdentity alloc] initWithIdentity:identityCopy];

  v12 = [certificatesCopy crk_mapUsingBlock:&__block_literal_global_32];

  v13 = [(CRKHostResourcesConfiguration *)self initWithResourceURLs:lsCopy serverIdentity:v11 trustedCertificates:v12];
  return v13;
}

CRKConcreteCertificate *__95__CRKHostResourcesConfiguration_initWithResourceURLs_serverIdentity_trustedAnchorCertificates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRKConcreteCertificate alloc] initWithCertificate:v2];

  return v3;
}

@end