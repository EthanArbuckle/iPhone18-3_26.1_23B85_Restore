@interface PKODIServiceProviderAssessment
- (PKODIServiceProviderAssessment)initWithServiceProviderIdentifier:(id)identifier locationBundle:(id)bundle;
- (id)description;
- (void)createODISession;
- (void)getAssessmentWithCompletion:(id)completion;
- (void)setServiceIdentifier:(id)identifier;
@end

@implementation PKODIServiceProviderAssessment

- (PKODIServiceProviderAssessment)initWithServiceProviderIdentifier:(id)identifier locationBundle:(id)bundle
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleCopy = bundle;
  v13.receiver = self;
  v13.super_class = PKODIServiceProviderAssessment;
  v9 = [(PKODIAssessment *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceIdentifier, identifier);
    objc_storeStrong(&v10->_locationBundle, bundle);
  }

  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = bundleCopy;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Creating PKODIServiceProviderAssessment with locationBundle %@, %@", buf, 0x16u);
  }

  return v10;
}

- (void)createODISession
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69983C0]) initWithServiceIdentifier:self->_serviceIdentifier forDSIDType:1 andLocationBundle:self->_locationBundle];
  [(PKODIAssessment *)self setOdiSession:v3];

  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Created ODISession %@", &v5, 0xCu);
  }
}

- (void)getAssessmentWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
    odiSession = [(PKODIAssessment *)self odiSession];

    if (odiSession)
    {
      odiSession2 = [(PKODIAssessment *)self odiSession];
      [odiSession2 getAssessment:v7];
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0);
    }

    completionCopy = v7;
  }
}

- (void)setServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_serviceIdentifier != identifierCopy)
  {
    v6 = identifierCopy;
    objc_storeStrong(&self->_serviceIdentifier, identifier);
    [(PKODIServiceProviderAssessment *)self createODISession];
    identifierCopy = v6;
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"serviceIdentifier: '%@'; ", self->_serviceIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

@end