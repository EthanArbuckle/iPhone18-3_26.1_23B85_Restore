@interface FlexSongAssetProvider_V2
- (FlexSongAssetProvider_V2)initWithFolderPath:(id)path audioFileExtension:(id)extension;
- (id)_folderNameForSegmentType:(unint64_t)type;
- (id)urlToAudioContainerForSegmentType:(unint64_t)type;
- (id)urlToAudioForSegment:(id)segment;
- (id)urlToRoot;
@end

@implementation FlexSongAssetProvider_V2

- (FlexSongAssetProvider_V2)initWithFolderPath:(id)path audioFileExtension:(id)extension
{
  pathCopy = path;
  extensionCopy = extension;
  v12.receiver = self;
  v12.super_class = FlexSongAssetProvider_V2;
  v9 = [(FlexSongAssetProvider_V2 *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rootFolderPath, path);
    objc_storeStrong(&v10->_audioFileExtension, extension);
  }

  return v10;
}

- (id)urlToRoot
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = objc_msgSend_rootFolderPath(self, a2, v2, v3, v4);
  v10 = objc_msgSend_fileURLWithPath_(v5, v7, v6, v8, v9);

  return v10;
}

- (id)_folderNameForSegmentType:(unint64_t)type
{
  if (type - 1 > 4)
  {
    return @"?";
  }

  else
  {
    return off_27900EC60[type - 1];
  }
}

- (id)urlToAudioContainerForSegmentType:(unint64_t)type
{
  v6 = objc_msgSend__folderNameForSegmentType_(self, a2, type, v3, v4);
  v11 = objc_msgSend_rootFolderPath(self, v7, v8, v9, v10);
  v15 = objc_msgSend_stringByAppendingPathComponent_(v11, v12, v6, v13, v14);

  v19 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v16, v15, v17, v18);

  return v19;
}

- (id)urlToAudioForSegment:(id)segment
{
  if (segment)
  {
    segmentCopy = segment;
    v9 = objc_msgSend_type(segmentCopy, v5, v6, v7, v8);
    v13 = objc_msgSend__folderNameForSegmentType_(self, v10, v9, v11, v12);
    v18 = objc_msgSend_rootFolderPath(self, v14, v15, v16, v17);
    v22 = objc_msgSend_stringByAppendingPathComponent_(v18, v19, v13, v20, v21);

    v27 = objc_msgSend_name(segmentCopy, v23, v24, v25, v26);

    v31 = objc_msgSend_stringByAppendingPathComponent_(v22, v28, v27, v29, v30);

    v36 = objc_msgSend_audioFileExtension(self, v32, v33, v34, v35);
    v40 = objc_msgSend_stringByAppendingPathExtension_(v31, v37, v36, v38, v39);

    v44 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v41, v40, v42, v43);
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

@end