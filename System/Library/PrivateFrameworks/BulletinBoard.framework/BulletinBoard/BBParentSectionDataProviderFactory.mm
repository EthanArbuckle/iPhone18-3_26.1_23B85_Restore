@interface BBParentSectionDataProviderFactory
+ (id)factoryFromSectionInfo:(id)info;
- (BBParentSectionDataProviderFactory)initWithCoder:(id)coder;
- (BBParentSectionDataProviderFactory)initWithSectionInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBParentSectionDataProviderFactory

+ (id)factoryFromSectionInfo:(id)info
{
  infoCopy = info;
  v4 = [objc_alloc(objc_opt_class()) initWithSectionInfo:infoCopy];

  return v4;
}

- (BBParentSectionDataProviderFactory)initWithSectionInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = BBParentSectionDataProviderFactory;
  v5 = [(BBParentSectionDataProviderFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BBParentSectionDataProviderFactory *)v5 setSectionInfo:infoCopy];
  }

  return v6;
}

- (BBParentSectionDataProviderFactory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sectionInfo"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_universalSectionIdentifier"];

  v7 = [(BBParentSectionDataProviderFactory *)self initWithSectionInfo:v5];
  v8 = v7;
  if (v7)
  {
    [(BBParentSectionDataProviderFactory *)v7 setUniversalSectionIdentifier:v6];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  sectionInfo = self->_sectionInfo;
  coderCopy = coder;
  [coderCopy encodeObject:sectionInfo forKey:@"_sectionInfo"];
  [coderCopy encodeObject:self->_universalSectionIdentifier forKey:@"_universalSectionIdentifier"];
}

@end