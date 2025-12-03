@interface TCBundleResourcePackageEntry
- (TCBundleResourcePackageEntry)initWithZipEntry:(id)entry;
- (_xmlDoc)xmlDocument;
- (id)data;
- (void)dealloc;
@end

@implementation TCBundleResourcePackageEntry

- (TCBundleResourcePackageEntry)initWithZipEntry:(id)entry
{
  entryCopy = entry;
  v9.receiver = self;
  v9.super_class = TCBundleResourcePackageEntry;
  v6 = [(TCBundleResourcePackageEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mZipEntry, entry);
  }

  return v7;
}

- (void)dealloc
{
  mXmlDocument = self->mXmlDocument;
  if (mXmlDocument)
  {
    xmlFreeDoc(mXmlDocument);
  }

  v4.receiver = self;
  v4.super_class = TCBundleResourcePackageEntry;
  [(TCBundleResourcePackageEntry *)&v4 dealloc];
}

- (id)data
{
  data = [(OISFUZipEntry *)self->mZipEntry data];

  return data;
}

- (_xmlDoc)xmlDocument
{
  if (!self->mXmlDocument)
  {
    self->mXmlDocument = [(OISFUDataRepresentation *)self->mZipEntry xmlDocument];
  }

  return self->mXmlDocument;
}

@end