@interface OCPZipPackage
- (OCPZipPackage)initWithArchive:(id)archive;
- (OCPZipPackage)initWithData:(id)data;
- (OCPZipPackage)initWithPath:(id)path;
- (id)partForLocation:(id)location;
- (void)resetPartForLocation:(id)location;
@end

@implementation OCPZipPackage

- (OCPZipPackage)initWithPath:(id)path
{
  pathCopy = path;
  v5 = [[OISFUZipArchive alloc] initWithPath:pathCopy collapseCommonRootDirectory:0];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mParts = self->mParts;
  self->mParts = v6;

  v8 = [(OCPZipPackage *)self initWithArchive:v5];
  return v8;
}

- (OCPZipPackage)initWithData:(id)data
{
  dataCopy = data;
  v5 = [[OISFUZipArchive alloc] initWithData:dataCopy collapseCommonRootDirectory:0];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mParts = self->mParts;
  self->mParts = v6;

  v8 = [(OCPZipPackage *)self initWithArchive:v5];
  return v8;
}

- (id)partForLocation:(id)location
{
  locationCopy = location;
  null = [(NSMutableDictionary *)self->mParts objectForKey:locationCopy];
  if (!null)
  {
    if ([locationCopy isInternalToPackage])
    {
      path = [locationCopy path];
      if ([path isAbsolutePath] && objc_msgSend(path, "length") >= 2)
      {
        null = [[OCPZipPackagePart alloc] initWithArchive:self->mArchive location:locationCopy package:self];

        if (null)
        {
LABEL_9:
          [(NSMutableDictionary *)self->mParts setObject:null forKey:locationCopy];
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    null = [MEMORY[0x277CBEB68] null];
    goto LABEL_9;
  }

LABEL_10:
  null2 = [MEMORY[0x277CBEB68] null];

  if (null == null2)
  {

    null = 0;
  }

  return null;
}

- (void)resetPartForLocation:(id)location
{
  locationCopy = location;
  v4 = [(NSMutableDictionary *)self->mParts objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->mParts removeObjectForKey:locationCopy];
  }
}

- (OCPZipPackage)initWithArchive:(id)archive
{
  archiveCopy = archive;
  objc_storeStrong(&self->mArchive, archive);
  v18 = [@"." stringByAppendingString:@"rels"];
  v5 = [@"_rels" stringByAppendingPathComponent:v18];
  v6 = [(OISFUZipArchive *)self->mArchive entryWithName:v5];
  if (!v6)
  {
    [OCPException raise:@"OCPZipPackageError" format:@"No package relationships"];
  }

  xmlDocument = [v6 xmlDocument];
  v8 = [(OISFUZipArchive *)self->mArchive entryWithName:@"docProps/core.xml"];
  v9 = v8;
  if (v8)
  {
    xmlDocument2 = [v8 xmlDocument];
  }

  else
  {
    xmlDocument2 = 0;
  }

  v11 = [(OISFUZipArchive *)self->mArchive entryWithName:@"docProps/app.xml"];
  v12 = v11;
  if (v11)
  {
    xmlDocument3 = [v11 xmlDocument];
  }

  else
  {
    xmlDocument3 = 0;
  }

  v14 = [(OISFUZipArchive *)self->mArchive entryWithName:@"[Content_Types].xml"];
  if (!v14)
  {
    [OCPException raise:@"OCPZipPackageError" format:@"No package content types"];
  }

  xmlDocument4 = [v14 xmlDocument];

  v16 = [(OCPPackage *)self initWithRelationshipsXml:xmlDocument corePropertiesXml:xmlDocument2 appPropertiesXml:xmlDocument3 contentTypesXml:xmlDocument4];
  if (xmlDocument)
  {
    xmlFreeDoc(xmlDocument);
  }

  if (xmlDocument2)
  {
    xmlFreeDoc(xmlDocument2);
  }

  if (xmlDocument3)
  {
    xmlFreeDoc(xmlDocument3);
  }

  if (xmlDocument4)
  {
    xmlFreeDoc(xmlDocument4);
  }

  return v16;
}

@end