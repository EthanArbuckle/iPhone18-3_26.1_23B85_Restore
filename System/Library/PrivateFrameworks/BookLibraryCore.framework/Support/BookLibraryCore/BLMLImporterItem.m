@interface BLMLImporterItem
+ (unsigned)mediaTypeForStoreDownload:(id)a3;
- (BLDownloadMetadata)itemMetadata;
- (BLMLImporterItem)init;
- (BOOL)hasItemArtwork;
- (BOOL)isDownloading;
- (NSArray)chapters;
- (NSData)itemArtworkData;
- (NSDictionary)additionalEntityProperties;
- (NSString)itemDownloadIdentifier;
- (NSString)itemMediaPath;
- (double)durationInSeconds;
- (id)_copyChapterVideoTracksForAsset:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)assetType;
- (int64_t)downloadType;
- (int64_t)libraryPersistentIdentifier;
- (int64_t)protectionType;
- (int64_t)updateType;
- (void)loadPropertiesFromMediaPath:(id)a3 includeTracks:(BOOL)a4;
- (void)setAdditionalEntityProperties:(id)a3;
- (void)setAssetType:(int64_t)a3;
- (void)setChapters:(id)a3;
- (void)setDownloadType:(int64_t)a3;
- (void)setDurationInSeconds:(double)a3;
- (void)setItemArtworkData:(id)a3;
- (void)setItemDownloadIdentifier:(id)a3;
- (void)setItemMediaPath:(id)a3;
- (void)setItemMetadata:(id)a3;
- (void)setLibraryPersistentIdentifier:(int64_t)a3;
- (void)setProtectionType:(int64_t)a3;
- (void)setUpdateType:(int64_t)a3;
- (void)setValue:(id)a3 forAdditionalEntityProperty:(id)a4;
@end

@implementation BLMLImporterItem

- (BLMLImporterItem)init
{
  v6.receiver = self;
  v6.super_class = BLMLImporterItem;
  v2 = [(BLMLImporterItem *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.bookassetd.BLMLImporterItem", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007573C;
  block[3] = &unk_10011D7E0;
  v7 = v5;
  v11 = v7;
  v12 = self;
  v13 = a3;
  dispatch_sync(dispatchQueue, block);
  v8 = v7;

  return v8;
}

+ (unsigned)mediaTypeForStoreDownload:(id)a3
{
  v3 = a3;
  v4 = [v3 kind];
  v5 = [v3 podcastType];

  v6 = [v5 isEqualToString:BLDownloadPodcastTypeITunesU];
  if ([v4 isEqualToString:BLDownloadKindPodcast])
  {
    v7 = v6 == 0;
    v8 = 4;
    v9 = 32;
  }

  else if ([v4 isEqualToString:BLDownloadKindVideoPodcast])
  {
    v7 = v6 == 0;
    v8 = 256;
    v9 = 4096;
  }

  else
  {
    if ([v4 isEqualToString:BLDownloadKindAudiobook])
    {
      v10 = 2;
      goto LABEL_8;
    }

    if ([v4 isEqualToString:BLDownloadKindMovie])
    {
      v10 = 2048;
      goto LABEL_8;
    }

    if ([v4 isEqualToString:BLDownloadKindTelevisionEpisode])
    {
      v10 = 512;
      goto LABEL_8;
    }

    v7 = [v4 isEqualToString:BLDownloadKindMusicVideo] == 0;
    v8 = 8;
    v9 = 1032;
  }

  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

LABEL_8:

  return v10;
}

- (NSDictionary)additionalEntityProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100075A80;
  v10 = sub_100075A90;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075A98;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)assetType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075B90;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSArray)chapters
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100075A80;
  v10 = sub_100075A90;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075C94;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)downloadType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075D8C;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)durationInSeconds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075E4C;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isDownloading
{
  v3 = [(BLMLImporterItem *)self itemMediaPath];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(BLMLImporterItem *)self updateType]== 0;
  }

  return v4;
}

- (BOOL)hasItemArtwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075F5C;
  v5[3] = &unk_10011D830;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSData)itemArtworkData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100075A80;
  v10 = sub_100075A90;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100076090;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)itemDownloadIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100075A80;
  v10 = sub_100075A90;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100076194;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)itemMediaPath
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100075A80;
  v10 = sub_100075A90;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100076298;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BLDownloadMetadata)itemMetadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100075A80;
  v10 = sub_100075A90;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007639C;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)libraryPersistentIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000765A4;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)loadPropertiesFromMediaPath:(id)a3 includeTracks:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [AVURLAsset alloc];
  v8 = [NSURL fileURLWithPath:v6];

  v9 = [v7 initWithURL:v8 options:0];
  if (v9)
  {
    v10 = dispatch_semaphore_create(0);
    v11 = [NSArray arrayWithObjects:@"duration", @"tracks", 0];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10007682C;
    v26[3] = &unk_10011CFE8;
    v27 = v10;
    v12 = v10;
    [v9 loadValuesAsynchronouslyForKeys:v11 completionHandler:v26];

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v13 = [v9 tracksWithMediaType:AVMediaTypeVideo];
    if ([v13 count])
    {
      v14 = [(BLMLImporterItem *)self _copyChapterVideoTracksForAsset:v9];
      v15 = [v14 count];
      if (v15 >= [v13 count])
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }

    else
    {
      v14 = [v9 tracksWithMediaType:AVMediaTypeAudio];
      v16 = [v14 count] != 0;
    }

    if (v4)
    {
      v17 = [ML3Track importChaptersByParsingAsset:v9];
    }

    else
    {
      v17 = 0;
    }

    [v9 duration];
    Seconds = CMTimeGetSeconds(&time);
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076834;
    block[3] = &unk_10011D858;
    v22 = v17;
    v23 = v16;
    v24 = Seconds;
    block[4] = self;
    v20 = v17;
    dispatch_async(dispatchQueue, block);
  }
}

- (int64_t)protectionType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007693C;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAdditionalEntityProperties:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000769E8;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setAssetType:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100076AB8;
  v4[3] = &unk_10011D408;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setChapters:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076B5C;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)setDownloadType:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100076C2C;
  v4[3] = &unk_10011D408;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setDurationInSeconds:(double)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100076CB0;
  v4[3] = &unk_10011D408;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setItemArtworkData:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076D58;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setItemDownloadIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076E4C;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setItemMediaPath:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076F40;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setItemMetadata:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077034;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setLibraryPersistentIdentifier:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100077104;
  v4[3] = &unk_10011D408;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setProtectionType:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100077184;
  v4[3] = &unk_10011D408;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setUpdateType:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100077204;
  v4[3] = &unk_10011D408;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setValue:(id)a3 forAdditionalEntityProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000772D4;
  block[3] = &unk_10011D0C8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(dispatchQueue, block);
}

- (int64_t)updateType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100077408;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_copyChapterVideoTracksForAsset:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [v3 trackReferences];
  v6 = [v5 objectForKey:AVAssetChapterListTrackReferencesKey];
  if ([v6 count] >= 2)
  {
    v7 = 1;
    do
    {
      v8 = [v6 objectAtIndex:v7];
      v9 = [v3 trackWithTrackID:{objc_msgSend(v8, "intValue")}];
      v10 = [v9 mediaType];
      v11 = [v10 isEqualToString:AVMediaTypeVideo];

      if (v11)
      {
        [v4 addObject:v9];
      }

      v7 += 2;
    }

    while (v7 < [v6 count]);
  }

  return v4;
}

@end