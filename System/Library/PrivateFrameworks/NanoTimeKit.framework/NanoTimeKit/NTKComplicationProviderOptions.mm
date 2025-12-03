@interface NTKComplicationProviderOptions
- (NTKComplicationProviderOptions)init;
- (id)_initWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NTKComplicationProviderOptions

- (NTKComplicationProviderOptions)init
{
  v10.receiver = self;
  v10.super_class = NTKComplicationProviderOptions;
  v2 = [(NTKComplicationProviderOptions *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    allowedComplicationTypes = v2->_allowedComplicationTypes;
    v2->_allowedComplicationTypes = v3;

    v5 = objc_opt_new();
    rankedFamilies = v2->_rankedFamilies;
    v2->_rankedFamilies = v5;

    v7 = objc_opt_new();
    supportedDateStyles = v2->_supportedDateStyles;
    v2->_supportedDateStyles = v7;

    *&v2->_includeDisabledTypes = 0;
    v2->_locationStyle = 0;
  }

  return v2;
}

- (id)_initWithOptions:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = NTKComplicationProviderOptions;
  v5 = [(NTKComplicationProviderOptions *)&v13 init];
  if (v5)
  {
    v6 = [*(optionsCopy + 2) copy];
    allowedComplicationTypes = v5->_allowedComplicationTypes;
    v5->_allowedComplicationTypes = v6;

    v8 = [*(optionsCopy + 3) copy];
    rankedFamilies = v5->_rankedFamilies;
    v5->_rankedFamilies = v8;

    v10 = [*(optionsCopy + 4) copy];
    supportedDateStyles = v5->_supportedDateStyles;
    v5->_supportedDateStyles = v10;

    v5->_includeDisabledTypes = *(optionsCopy + 8);
    v5->_allowGenericDateComplication = *(optionsCopy + 9);
    v5->_locationStyle = *(optionsCopy + 5);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 _initWithOptions:self];
}

@end