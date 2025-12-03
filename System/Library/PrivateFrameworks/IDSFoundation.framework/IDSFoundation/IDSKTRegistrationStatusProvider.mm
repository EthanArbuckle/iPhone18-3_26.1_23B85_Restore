@interface IDSKTRegistrationStatusProvider
- (IDSKTRegistrationStatusProvider)init;
- (IDSKTRegistrationStatusProvider)initWithCoder:(id)coder;
- (id)statusForKTApplication:(id)application;
@end

@implementation IDSKTRegistrationStatusProvider

- (IDSKTRegistrationStatusProvider)init
{
  v6.receiver = self;
  v6.super_class = IDSKTRegistrationStatusProvider;
  v2 = [(IDSKTRegistrationStatusProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    ktApplicationToKTRegStatus = v2->_ktApplicationToKTRegStatus;
    v2->_ktApplicationToKTRegStatus = 0;
  }

  return v3;
}

- (IDSKTRegistrationStatusProvider)initWithCoder:(id)coder
{
  v13[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IDSKTRegistrationStatusProvider;
  v5 = [(IDSKTRegistrationStatusProvider *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kIDSKTAppToStatusKey"];
    ktApplicationToKTRegStatus = v5->_ktApplicationToKTRegStatus;
    v5->_ktApplicationToKTRegStatus = v9;
  }

  return v5;
}

- (id)statusForKTApplication:(id)application
{
  v3 = [(NSDictionary *)self->_ktApplicationToKTRegStatus objectForKeyedSubscript:application];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_alloc_init(IDSKTRegistrationStatus);
  }

  v5 = v4;

  return v5;
}

@end