@interface OCPZipPackage
- (OCPZipPackage)initWithArchive:(id)a3;
- (OCPZipPackage)initWithData:(id)a3;
- (OCPZipPackage)initWithPath:(id)a3;
- (id)partForLocation:(id)a3;
- (void)resetPartForLocation:(id)a3;
@end

@implementation OCPZipPackage

- (OCPZipPackage)initWithPath:(id)a3
{
  v4 = a3;
  v5 = [[OISFUZipArchive alloc] initWithPath:v4 collapseCommonRootDirectory:0];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mParts = self->mParts;
  self->mParts = v6;

  v8 = [(OCPZipPackage *)self initWithArchive:v5];
  return v8;
}

- (OCPZipPackage)initWithData:(id)a3
{
  v4 = a3;
  v5 = [[OISFUZipArchive alloc] initWithData:v4 collapseCommonRootDirectory:0];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mParts = self->mParts;
  self->mParts = v6;

  v8 = [(OCPZipPackage *)self initWithArchive:v5];
  return v8;
}

- (id)partForLocation:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->mParts objectForKey:v4];
  if (!v5)
  {
    if ([v4 isInternalToPackage])
    {
      v6 = [v4 path];
      if ([v6 isAbsolutePath] && objc_msgSend(v6, "length") >= 2)
      {
        v5 = [[OCPZipPackagePart alloc] initWithArchive:self->mArchive location:v4 package:self];

        if (v5)
        {
LABEL_9:
          [(NSMutableDictionary *)self->mParts setObject:v5 forKey:v4];
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v5 = [MEMORY[0x277CBEB68] null];
    goto LABEL_9;
  }

LABEL_10:
  v7 = [MEMORY[0x277CBEB68] null];

  if (v5 == v7)
  {

    v5 = 0;
  }

  return v5;
}

- (void)resetPartForLocation:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->mParts objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->mParts removeObjectForKey:v5];
  }
}

- (OCPZipPackage)initWithArchive:(id)a3
{
  v19 = a3;
  objc_storeStrong(&self->mArchive, a3);
  v18 = [@"." stringByAppendingString:@"rels"];
  v5 = [@"_rels" stringByAppendingPathComponent:v18];
  v6 = [(OISFUZipArchive *)self->mArchive entryWithName:v5];
  if (!v6)
  {
    [OCPException raise:@"OCPZipPackageError" format:@"No package relationships"];
  }

  v7 = [v6 xmlDocument];
  v8 = [(OISFUZipArchive *)self->mArchive entryWithName:@"docProps/core.xml"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 xmlDocument];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(OISFUZipArchive *)self->mArchive entryWithName:@"docProps/app.xml"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 xmlDocument];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(OISFUZipArchive *)self->mArchive entryWithName:@"[Content_Types].xml"];
  if (!v14)
  {
    [OCPException raise:@"OCPZipPackageError" format:@"No package content types"];
  }

  v15 = [v14 xmlDocument];

  v16 = [(OCPPackage *)self initWithRelationshipsXml:v7 corePropertiesXml:v10 appPropertiesXml:v13 contentTypesXml:v15];
  if (v7)
  {
    xmlFreeDoc(v7);
  }

  if (v10)
  {
    xmlFreeDoc(v10);
  }

  if (v13)
  {
    xmlFreeDoc(v13);
  }

  if (v15)
  {
    xmlFreeDoc(v15);
  }

  return v16;
}

@end