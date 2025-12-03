@interface FAFamilyCloudKitProperties
- (FAFamilyCloudKitProperties)initWithCoder:(id)coder;
- (FAFamilyCloudKitProperties)initWithDictionaryRepresentation:(id)representation;
@end

@implementation FAFamilyCloudKitProperties

- (FAFamilyCloudKitProperties)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = FAFamilyCloudKitProperties;
  v5 = [(FAFamilyCloudKitProperties *)&v9 init];
  if (v5)
  {
    v6 = [representationCopy copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

- (FAFamilyCloudKitProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FAFamilyCloudKitProperties *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v11;
  }

  return v5;
}

@end