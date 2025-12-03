@interface NMSKeepLocalRequestOptions
- (NMSKeepLocalRequestOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)resolvedConstraints:(unint64_t)constraints;
@end

@implementation NMSKeepLocalRequestOptions

- (NMSKeepLocalRequestOptions)init
{
  v3.receiver = self;
  v3.super_class = NMSKeepLocalRequestOptions;
  result = [(NMSKeepLocalRequestOptions *)&v3 init];
  if (result)
  {
    result->_requiresValidation = 1;
    result->_qualityOfService = -1;
    result->_timeout = 15.0;
  }

  return result;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NMSKeepLocalRequestOptions;
  v3 = [(NMSKeepLocalRequestOptions *)&v7 description];
  qualityOfService = self->_qualityOfService;
  v5 = [v3 stringByAppendingFormat:@"requiresValidation:%u, powerPolicy:%lu, cellularPolicy:%lu, qualityOfService:%lu, bundleIdentifier:%@", self->_requiresValidation, self->_powerPolicy, self->_cellularPolicy, qualityOfService, self->_cellularBundleIdentifier];

  return v5;
}

- (unint64_t)resolvedConstraints:(unint64_t)constraints
{
  if ([(NMSKeepLocalRequestOptions *)self powerPolicy]== 1)
  {
    constraints &= 0xFFFFFFFFFFFFFFF9;
  }

  else if ([(NMSKeepLocalRequestOptions *)self powerPolicy]== 2)
  {
    constraints |= 4uLL;
  }

  if ([(NMSKeepLocalRequestOptions *)self cellularPolicy]== 1)
  {
    constraints &= ~2uLL;
  }

  else if ([(NMSKeepLocalRequestOptions *)self cellularPolicy]== 2)
  {
    constraints |= 2uLL;
  }

  else if (![(NMSKeepLocalRequestOptions *)self cellularPolicy]&& [(NMSKeepLocalRequestOptions *)self powerPolicy]== 2)
  {
    constraints &= ~2uLL;
  }

  return constraints;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_requiresValidation;
    *(v4 + 24) = self->_powerPolicy;
    *(v4 + 32) = self->_cellularPolicy;
    *(v4 + 40) = self->_qualityOfService;
    *(v4 + 48) = self->_timeout;
    objc_storeStrong((v4 + 16), self->_cellularBundleIdentifier);
  }

  return v5;
}

@end