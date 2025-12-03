@interface OCPZipPackagePart
- (OCPZipPackagePart)initWithArchive:(id)archive location:(id)location package:(id)package;
- (_xmlDoc)xmlDocument;
@end

@implementation OCPZipPackagePart

- (_xmlDoc)xmlDocument
{
  result = self->super.mDocument;
  if (!result)
  {
    xmlDocument = [(OISFUDataRepresentation *)self->mEntry xmlDocument];
    self->super.mDocument = xmlDocument;
    xmlDocument->_private = self;
    return self->super.mDocument;
  }

  return result;
}

- (OCPZipPackagePart)initWithArchive:(id)archive location:(id)location package:(id)package
{
  archiveCopy = archive;
  locationCopy = location;
  packageCopy = package;
  path = [locationCopy path];
  v12 = [path substringFromIndex:1];

  v13 = [archiveCopy entryWithName:v12];
  mEntry = self->mEntry;
  self->mEntry = v13;

  if (self->mEntry)
  {
    stringByDeletingLastPathComponent = [v12 stringByDeletingLastPathComponent];
    v16 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"_rels"];

    lastPathComponent = [v12 lastPathComponent];
    v18 = [lastPathComponent stringByAppendingPathExtension:@"rels"];

    v19 = [v16 stringByAppendingPathComponent:v18];
    v20 = [archiveCopy entryWithName:v19];
    v21 = v20;
    if (v20)
    {
      xmlDocument = [v20 xmlDocument];
    }

    else
    {
      xmlDocument = 0;
    }

    v24 = [(OCPPackagePart *)self initWithLocation:locationCopy relationshipsXml:xmlDocument package:packageCopy];
    xmlFreeDoc(xmlDocument);
    self = v24;
    selfCopy = self;
  }

  else
  {

    selfCopy = 0;
  }

  return selfCopy;
}

@end