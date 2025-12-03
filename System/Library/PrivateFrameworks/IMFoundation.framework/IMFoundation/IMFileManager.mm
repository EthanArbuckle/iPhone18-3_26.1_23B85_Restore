@interface IMFileManager
+ (id)defaultHFSFileManager;
- (id)MIMETypeOfPath:(id)path;
- (id)MIMETypeOfPathExtension:(id)extension;
- (id)UTITypeOfMimeType:(id)type;
- (id)UTITypeOfPath:(id)path;
- (id)UTITypeOfPathExtension:(id)extension;
- (id)displayNameOfFileWithName:(id)name hfsFlags:(unsigned __int16)flags;
- (id)pathExtensionForMIMEType:(id)type;
- (id)pathExtensionForUTIType:(id)type;
@end

@implementation IMFileManager

+ (id)defaultHFSFileManager
{
  if (qword_1EAED8DC0 != -1)
  {
    sub_1959D4DC0();
  }

  v3 = qword_1EAED8DB8;

  return v3;
}

- (id)displayNameOfFileWithName:(id)name hfsFlags:(unsigned __int16)flags
{
  flagsCopy = flags;
  nameCopy = name;
  v8 = nameCopy;
  if ((flagsCopy & 0x10) != 0 || (objc_msgSend_pathExtension(nameCopy, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"app"), v9, isEqualToString))
  {
    v12 = objc_msgSend_stringByDeletingPathExtension(v8, v6, v7);
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  return v13;
}

- (id)pathExtensionForMIMEType:(id)type
{
  typeCopy = type;
  v6 = objc_msgSend_sharedMappings(MEMORY[0x1E696AF48], v4, v5);
  v8 = objc_msgSend_preferredExtensionForMIMEType_(v6, v7, typeCopy);

  if (v8)
  {
    goto LABEL_2;
  }

  if (objc_msgSend_isEqualToIgnoringCase_(typeCopy, v9, @"text/x-vlocation"))
  {
    v10 = @"vcf";
  }

  else
  {
    if ((objc_msgSend_isEqualToIgnoringCase_(typeCopy, v11, @"text/x-vcalendar") & 1) == 0)
    {
LABEL_2:
      v10 = v8;
      goto LABEL_7;
    }

    v10 = @"vcs";
  }

LABEL_7:

  return v10;
}

- (id)UTITypeOfMimeType:(id)type
{
  typeCopy = type;
  if (qword_1EAED8FC0 != -1)
  {
    sub_1959D4DD4();
  }

  v4 = off_1EAED8FB8;
  if (qword_1EAED8FF8 != -1)
  {
    sub_1959D4DE8();
  }

  v5 = v4(qword_1EAED9000, typeCopy, 0);

  return v5;
}

- (id)MIMETypeOfPathExtension:(id)extension
{
  extensionCopy = extension;
  if (objc_msgSend_isEqualToString_(extensionCopy, v4, @"vcs"))
  {
    v7 = @"text/x-vcalendar";
  }

  else
  {
    v8 = objc_msgSend_sharedMappings(MEMORY[0x1E696AF48], v5, v6);
    v7 = objc_msgSend_MIMETypeForExtension_(v8, v9, extensionCopy);
  }

  return v7;
}

- (id)MIMETypeOfPath:(id)path
{
  pathCopy = path;
  v7 = objc_msgSend_pathExtension(pathCopy, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, @"vcf") && (objc_msgSend_hasSuffix_(pathCopy, v9, @".loc.vcf") & 1) != 0)
  {
    v10 = @"text/x-vlocation";
  }

  else
  {
    v10 = objc_msgSend_MIMETypeOfPathExtension_(self, v9, v7);
  }

  return v10;
}

- (id)pathExtensionForUTIType:(id)type
{
  typeCopy = type;
  if (qword_1EAED8FD0 != -1)
  {
    sub_1959D4DFC();
  }

  if (objc_msgSend_length(typeCopy, v3, v4))
  {
    v6 = off_1EAED8FC8;
    if (qword_1EAED8D08 != -1)
    {
      sub_1959D4E10();
    }

    v7 = v6(typeCopy, qword_1EAED8D10);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)UTITypeOfPath:(id)path
{
  pathCopy = path;
  v6 = objc_msgSend_pathExtension(pathCopy, v4, v5);
  if (objc_msgSend_isEqualToString_(v6, v7, @"vcf") && (objc_msgSend_hasSuffix_(pathCopy, v8, @".loc.vcf") & 1) != 0)
  {
    v10 = @"public.vlocation";
  }

  else if (objc_msgSend_length(v6, v8, v9))
  {
    if (qword_1EAED8FE0 != -1)
    {
      sub_1959D4E24();
    }

    v11 = off_1EAED8FD8;
    if (qword_1EAED8D08 != -1)
    {
      sub_1959D4E10();
    }

    v10 = v11(qword_1EAED8D10, v6, 0);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)UTITypeOfPathExtension:(id)extension
{
  extensionCopy = extension;
  if (objc_msgSend_length(extensionCopy, v4, v5))
  {
    if (qword_1EAED8FF0 != -1)
    {
      sub_1959D4E38();
    }

    v6 = off_1EAED8FE8;
    if (qword_1EAED8D08 != -1)
    {
      sub_1959D4E10();
    }

    v7 = v6(qword_1EAED8D10, extensionCopy, 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end