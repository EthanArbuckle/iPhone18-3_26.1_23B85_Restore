@interface ICLegacyContentUtilities
+ (id)contentStringFromWebArchive:(id)archive;
+ (id)createAttachmentFromWebResource:(id)resource inContext:(id)context;
+ (id)createAttachmentWithContentID:(id)d mimeType:(id)type data:(id)data filename:(id)filename inContext:(id)context;
+ (id)generateContentID;
+ (id)newNoteBasedOnModernNote:(id)note inFolder:(id)folder context:(id)context;
+ (id)suggestedFilenameForURL:(id)l mimeType:(id)type;
@end

@implementation ICLegacyContentUtilities

+ (id)contentStringFromWebArchive:(id)archive
{
  mainResource = [archive mainResource];
  textEncodingName = [mainResource textEncodingName];
  v5 = CFStringConvertIANACharSetNameToEncoding(textEncodingName);
  v6 = CFStringConvertEncodingToNSStringEncoding(v5);
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  data = [mainResource data];
  v9 = [v7 initWithData:data encoding:v6];

  if (!v9)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"content" functionName:"+[ICLegacyContentUtilities contentStringFromWebArchive:]" simulateCrash:1 showAlert:0 format:@"Failed to convert content"];
  }

  return v9;
}

+ (id)suggestedFilenameForURL:(id)l mimeType:(id)type
{
  lCopy = l;
  typeCopy = type;
  if (!lCopy)
  {
    lCopy = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/"];
  }

  v7 = [lCopy _web_suggestedFilenameWithMIMEType:typeCopy];

  return v7;
}

+ (id)generateContentID
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v4 = [uUIDString stringByAppendingString:@"@mobilenotes.apple.com"];

  return v4;
}

+ (id)createAttachmentWithContentID:(id)d mimeType:(id)type data:(id)data filename:(id)filename inContext:(id)context
{
  dCopy = d;
  typeCopy = type;
  dataCopy = data;
  filenameCopy = filename;
  contextCopy = context;
  if (dataCopy && [dCopy length])
  {
    if (contextCopy)
    {
      objc_opt_class();
      v16 = ICCheckedDynamicCast();
      newlyAddedAttachment = [v16 newlyAddedAttachment];
    }

    else
    {
      newlyAddedAttachment = 0;
    }

    [newlyAddedAttachment setContentID:dCopy];
    [newlyAddedAttachment setMimeType:typeCopy];
    [newlyAddedAttachment setFilename:filenameCopy];
    v22 = 0;
    v18 = [newlyAddedAttachment persistAttachmentData:dataCopy error:&v22];
    v19 = v22;
    v20 = v19;
    if ((v18 & 1) == 0)
    {
      NSLog(&cfstr_CouldnTPersist.isa, dCopy, v19);
    }
  }

  else
  {
    newlyAddedAttachment = 0;
  }

  return newlyAddedAttachment;
}

+ (id)createAttachmentFromWebResource:(id)resource inContext:(id)context
{
  resourceCopy = resource;
  contextCopy = context;
  v8 = [resourceCopy URL];
  scheme = [v8 scheme];
  v10 = [scheme isEqualToString:@"cid"];

  if (v10)
  {
    v11 = [resourceCopy URL];
    resourceSpecifier = [v11 resourceSpecifier];
  }

  else
  {
    resourceSpecifier = [self generateContentID];
  }

  mIMEType = [resourceCopy MIMEType];
  v14 = [resourceCopy URL];
  v15 = [self suggestedFilenameForURL:v14 mimeType:mIMEType];

  data = [resourceCopy data];
  v17 = [self createAttachmentWithContentID:resourceSpecifier mimeType:mIMEType data:data filename:v15 inContext:contextCopy];

  return v17;
}

+ (id)newNoteBasedOnModernNote:(id)note inFolder:(id)folder context:(id)context
{
  contextCopy = context;
  folderCopy = folder;
  noteCopy = note;
  objc_opt_class();
  v10 = [folderCopy newNoteInContext:contextCopy];

  v11 = ICCheckedDynamicCast();

  [v11 setIsPlainText:0];
  title = [noteCopy title];
  [v11 setTitle:title];

  creationDate = [noteCopy creationDate];
  [v11 setCreationDate:creationDate];

  modificationDate = [noteCopy modificationDate];

  [v11 setModificationDate:modificationDate];
  return v11;
}

@end