@interface IMDRelayMessageToSuper_FILE_Frame
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation IMDRelayMessageToSuper_FILE_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v8 = IMCopyNormalizedAttributes();
  v9 = [v8 _stringForKey:@"name"];
  if (v9)
  {
    v10 = [v8 _stringForKey:@"width"];
    v11 = [v8 _stringForKey:@"height"];
    v12 = [v8 _stringForKey:@"datasize"];
    v13 = [v8 _stringForKey:@"x-apple-anim-emoji"];
    v26 = [v8 _stringForKey:@"emoji-image-id"];
    v25 = [v8 _stringForKey:@"emoji-image-description"];
    v14 = [v8 mutableCopy];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"width", @"height", @"inline-file", @"datasize", 0}];
    [v14 removeObjectsForKeys:v15];

    v28 = v10;
    integerValue = [v10 integerValue];
    v27 = v11;
    integerValue2 = [v11 integerValue];
    integerValue3 = [v13 integerValue];
    v18 = +[IMDFileTransferCenter sharedInstance];
    lastPathComponent = [v9 lastPathComponent];
    v20 = [v18 guidForNewIncomingTransferWithFilename:lastPathComponent isDirectory:0 totalBytes:objc_msgSend(v12 hfsType:"longLongValue") hfsCreator:0 hfsFlags:{0, 0}];

    if (v20)
    {
      v21 = +[IMDFileTransferCenter sharedInstance];
      v22 = [v21 transferForGUID:v20];
    }

    else
    {
      v22 = 0;
    }

    v23 = [v26 length];
    if (v23)
    {
      [v22 setAdaptiveImageGlyphContentIdentifier:v26];
      [v22 setAdaptiveImageGlyphContentDescription:v25];
    }

    [v22 setUserInfo:v14];
    [contextCopy appendInlineImageWithGUID:v20 filename:v9 width:integerValue height:integerValue2 isAnimoji:integerValue3 isAdaptiveImageGlyph:v23 != 0];
  }
}

@end