@interface BBParentSectionDataProviderFactory
+ (id)factoryFromSectionInfo:(id)a3;
- (BBParentSectionDataProviderFactory)initWithCoder:(id)a3;
- (BBParentSectionDataProviderFactory)initWithSectionInfo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBParentSectionDataProviderFactory

+ (id)factoryFromSectionInfo:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithSectionInfo:v3];

  return v4;
}

- (BBParentSectionDataProviderFactory)initWithSectionInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BBParentSectionDataProviderFactory;
  v5 = [(BBParentSectionDataProviderFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BBParentSectionDataProviderFactory *)v5 setSectionInfo:v4];
  }

  return v6;
}

- (BBParentSectionDataProviderFactory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sectionInfo"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_universalSectionIdentifier"];

  v7 = [(BBParentSectionDataProviderFactory *)self initWithSectionInfo:v5];
  v8 = v7;
  if (v7)
  {
    [(BBParentSectionDataProviderFactory *)v7 setUniversalSectionIdentifier:v6];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  sectionInfo = self->_sectionInfo;
  v5 = a3;
  [v5 encodeObject:sectionInfo forKey:@"_sectionInfo"];
  [v5 encodeObject:self->_universalSectionIdentifier forKey:@"_universalSectionIdentifier"];
}

@end