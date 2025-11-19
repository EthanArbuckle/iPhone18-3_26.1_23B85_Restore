@interface HDHealthOntologyCountryConfiguration
- (HDHealthOntologyCountryConfiguration)initWithCountryCode:(id)a3 supportedCodingSystems:(id)a4 analyticsOptions:(unint64_t)a5;
@end

@implementation HDHealthOntologyCountryConfiguration

- (HDHealthOntologyCountryConfiguration)initWithCountryCode:(id)a3 supportedCodingSystems:(id)a4 analyticsOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HDHealthOntologyCountryConfiguration;
  v10 = [(HDHealthOntologyCountryConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    countryCode = v10->_countryCode;
    v10->_countryCode = v11;

    v13 = [v9 copy];
    supportedCodingSystems = v10->_supportedCodingSystems;
    v10->_supportedCodingSystems = v13;

    v10->_analyticsOptions = a5;
  }

  return v10;
}

@end