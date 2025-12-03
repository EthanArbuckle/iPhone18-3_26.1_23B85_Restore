@interface HMDSymptomContainer
- (HMDAccessorySymptomsDelegate)delegate;
- (HMDSymptomContainer)initWithIDSIdentifier:(id)identifier;
@end

@implementation HMDSymptomContainer

- (HMDAccessorySymptomsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDSymptomContainer)initWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = identifierCopy;
    v12.receiver = self;
    v12.super_class = HMDSymptomContainer;
    v7 = [(HMDSymptomContainer *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_idsIdentifier, identifier);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMDSymptomManager *)v10 dealloc];
  }

  return result;
}

@end