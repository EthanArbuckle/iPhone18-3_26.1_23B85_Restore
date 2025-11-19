@interface ICLegacyContentUtilities
+ (id)contentStringFromWebArchive:(id)a3;
+ (id)createAttachmentFromWebResource:(id)a3 inContext:(id)a4;
+ (id)createAttachmentWithContentID:(id)a3 mimeType:(id)a4 data:(id)a5 filename:(id)a6 inContext:(id)a7;
+ (id)generateContentID;
+ (id)newNoteBasedOnModernNote:(id)a3 inFolder:(id)a4 context:(id)a5;
+ (id)suggestedFilenameForURL:(id)a3 mimeType:(id)a4;
@end

@implementation ICLegacyContentUtilities

+ (id)contentStringFromWebArchive:(id)a3
{
  v3 = [a3 mainResource];
  v4 = [v3 textEncodingName];
  v5 = CFStringConvertIANACharSetNameToEncoding(v4);
  v6 = CFStringConvertEncodingToNSStringEncoding(v5);
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [v3 data];
  v9 = [v7 initWithData:v8 encoding:v6];

  if (!v9)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"content" functionName:"+[ICLegacyContentUtilities contentStringFromWebArchive:]" simulateCrash:1 showAlert:0 format:@"Failed to convert content"];
  }

  return v9;
}

+ (id)suggestedFilenameForURL:(id)a3 mimeType:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/"];
  }

  v7 = [v5 _web_suggestedFilenameWithMIMEType:v6];

  return v7;
}

+ (id)generateContentID
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];
  v4 = [v3 stringByAppendingString:@"@mobilenotes.apple.com"];

  return v4;
}

+ (id)createAttachmentWithContentID:(id)a3 mimeType:(id)a4 data:(id)a5 filename:(id)a6 inContext:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v13 && [v11 length])
  {
    if (v15)
    {
      objc_opt_class();
      v16 = ICCheckedDynamicCast();
      v17 = [v16 newlyAddedAttachment];
    }

    else
    {
      v17 = 0;
    }

    [v17 setContentID:v11];
    [v17 setMimeType:v12];
    [v17 setFilename:v14];
    v22 = 0;
    v18 = [v17 persistAttachmentData:v13 error:&v22];
    v19 = v22;
    v20 = v19;
    if ((v18 & 1) == 0)
    {
      NSLog(&cfstr_CouldnTPersist.isa, v11, v19);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)createAttachmentFromWebResource:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 URL];
  v9 = [v8 scheme];
  v10 = [v9 isEqualToString:@"cid"];

  if (v10)
  {
    v11 = [v6 URL];
    v12 = [v11 resourceSpecifier];
  }

  else
  {
    v12 = [a1 generateContentID];
  }

  v13 = [v6 MIMEType];
  v14 = [v6 URL];
  v15 = [a1 suggestedFilenameForURL:v14 mimeType:v13];

  v16 = [v6 data];
  v17 = [a1 createAttachmentWithContentID:v12 mimeType:v13 data:v16 filename:v15 inContext:v7];

  return v17;
}

+ (id)newNoteBasedOnModernNote:(id)a3 inFolder:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = [v8 newNoteInContext:v7];

  v11 = ICCheckedDynamicCast();

  [v11 setIsPlainText:0];
  v12 = [v9 title];
  [v11 setTitle:v12];

  v13 = [v9 creationDate];
  [v11 setCreationDate:v13];

  v14 = [v9 modificationDate];

  [v11 setModificationDate:v14];
  return v11;
}

@end