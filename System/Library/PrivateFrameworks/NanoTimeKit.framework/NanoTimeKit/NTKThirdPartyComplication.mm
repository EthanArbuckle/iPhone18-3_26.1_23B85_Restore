@interface NTKThirdPartyComplication
- (CLKComplicationDescriptor)clkComplicationDescriptor;
- (NSString)clkClientIdentifier;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKThirdPartyComplication

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NTKThirdPartyComplication;
  coderCopy = coder;
  [(NTKComplication *)&v8 encodeWithCoder:coderCopy];
  v5 = [(NTKComplication *)self appIdentifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"RemoteComplicationAppBundleIdentifierKey"];

  clkClientIdentifier = [(NTKThirdPartyComplication *)self clkClientIdentifier];
  [coderCopy encodeObject:clkClientIdentifier forKey:@"RemoteComplicationClientIdentifierKey"];

  clkComplicationDescriptor = [(NTKThirdPartyComplication *)self clkComplicationDescriptor];
  [coderCopy encodeObject:clkComplicationDescriptor forKey:@"RemoteComplicationComplicationDescriptorKey"];
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  v9.receiver = self;
  v9.super_class = NTKThirdPartyComplication;
  dictionaryCopy = dictionary;
  [(NTKComplication *)&v9 _addKeysToJSONDictionary:dictionaryCopy];
  v5 = [(NTKComplication *)self appIdentifier:v9.receiver];
  [dictionaryCopy setObject:v5 forKeyedSubscript:@"app"];

  clkClientIdentifier = [(NTKThirdPartyComplication *)self clkClientIdentifier];
  [dictionaryCopy setObject:clkClientIdentifier forKeyedSubscript:@"extension"];

  clkComplicationDescriptor = [(NTKThirdPartyComplication *)self clkComplicationDescriptor];
  jSONObjectRepresentation = [clkComplicationDescriptor JSONObjectRepresentation];
  [dictionaryCopy setObject:jSONObjectRepresentation forKeyedSubscript:@"complication descriptor"];
}

- (NSString)clkClientIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (CLKComplicationDescriptor)clkComplicationDescriptor
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end