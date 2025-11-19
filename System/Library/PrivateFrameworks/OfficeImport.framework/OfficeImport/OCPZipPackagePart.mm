@interface OCPZipPackagePart
- (OCPZipPackagePart)initWithArchive:(id)a3 location:(id)a4 package:(id)a5;
- (_xmlDoc)xmlDocument;
@end

@implementation OCPZipPackagePart

- (_xmlDoc)xmlDocument
{
  result = self->super.mDocument;
  if (!result)
  {
    v4 = [(OISFUDataRepresentation *)self->mEntry xmlDocument];
    self->super.mDocument = v4;
    v4->_private = self;
    return self->super.mDocument;
  }

  return result;
}

- (OCPZipPackagePart)initWithArchive:(id)a3 location:(id)a4 package:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 path];
  v12 = [v11 substringFromIndex:1];

  v13 = [v8 entryWithName:v12];
  mEntry = self->mEntry;
  self->mEntry = v13;

  if (self->mEntry)
  {
    v15 = [v12 stringByDeletingLastPathComponent];
    v16 = [v15 stringByAppendingPathComponent:@"_rels"];

    v17 = [v12 lastPathComponent];
    v18 = [v17 stringByAppendingPathExtension:@"rels"];

    v19 = [v16 stringByAppendingPathComponent:v18];
    v20 = [v8 entryWithName:v19];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 xmlDocument];
    }

    else
    {
      v22 = 0;
    }

    v24 = [(OCPPackagePart *)self initWithLocation:v9 relationshipsXml:v22 package:v10];
    xmlFreeDoc(v22);
    self = v24;
    v23 = self;
  }

  else
  {

    v23 = 0;
  }

  return v23;
}

@end