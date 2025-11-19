@interface ETVideoMessage
- (ETVideoMessage)init;
- (ETVideoMessage)initWithArchiveData:(id)a3;
- (UIImage)stillImage;
- (double)compressTimeSinceStartOfMessage:(double)a3;
- (double)messageDuration;
- (id)archiveData;
- (int)_etpMediaTypeFromETMediaType:(unint64_t)a3;
- (unint64_t)_mediaTypeFromETPVideoType:(int)a3;
- (void)setIntroMessage:(id)a3;
- (void)setPlayingMessages:(id)a3;
@end

@implementation ETVideoMessage

- (ETVideoMessage)init
{
  v7.receiver = self;
  v7.super_class = ETVideoMessage;
  v2 = [(ETMessage *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    playingMessages = v2->_playingMessages;
    v2->_playingMessages = v3;

    v2->_mediaType = 1;
    v5 = v2;
  }

  return v2;
}

- (ETVideoMessage)initWithArchiveData:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = ETVideoMessage;
  v5 = [(ETMessage *)&v34 initWithArchiveData:v4];
  if (v5)
  {
    v6 = [[ETPVideo alloc] initWithData:v4];
    v7 = [(ETPVideo *)v6 introMessageData];
    v8 = [ETMessage unarchive:v7];
    introMessage = v5->_introMessage;
    v5->_introMessage = v8;

    [(ETSketchMessage *)v5->_introMessage setParentMessage:v5];
    [(ETMessage *)v5->_introMessage setDelayWisp:1];
    [(ETSketchMessage *)v5->_introMessage setHideComet:1];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v27 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v14 = MEMORY[0x277CCAAC8];
    v15 = [(ETPVideo *)v6 playingMessagesData];
    v33 = 0;
    v16 = [v14 _strictlyUnarchivedObjectOfClasses:v27 fromData:v15 error:&v33];
    v28 = v33;

    if (v28 && IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v28;
        _os_log_impl(&dword_248D00000, v17, OS_LOG_TYPE_INFO, "Error unarchiving ETVideoMessage: %@", buf, 0xCu);
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v19)
    {
      v20 = *v30;
      do
      {
        v21 = 0;
        do
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [ETMessage unarchive:*(*(&v29 + 1) + 8 * v21)];
          v23 = v22;
          if (v22)
          {
            [v22 setParentMessage:v5];
            [(NSMutableArray *)v5->_playingMessages addObject:v23];
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v19);
    }

    if ([(ETPVideo *)v6 hasMediaType])
    {
      v24 = [(ETVideoMessage *)v5 _mediaTypeFromETPVideoType:[(ETPVideo *)v6 mediaType]];
    }

    else
    {
      v24 = 1;
    }

    v5->_mediaType = v24;
    v25 = v5;
  }

  return v5;
}

- (unint64_t)_mediaTypeFromETPVideoType:(int)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int)_etpMediaTypeFromETMediaType:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)archiveData
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ETPVideo);
  introMessage = self->_introMessage;
  if (introMessage)
  {
    v5 = [(ETMessage *)introMessage archive];
    [(ETPVideo *)v3 setIntroMessageData:v5];
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_playingMessages;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) archive];
        [v6 addObject:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  [(ETPVideo *)v3 setPlayingMessagesData:v13];

  [(ETPVideo *)v3 setMediaType:[(ETVideoMessage *)self _etpMediaTypeFromETMediaType:self->_mediaType]];
  v14 = [(ETPVideo *)v3 data];

  return v14;
}

- (void)setPlayingMessages:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  playingMessages = self->_playingMessages;
  self->_playingMessages = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setSupportsPlaybackTimeOffset:{1, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setIntroMessage:(id)a3
{
  objc_storeStrong(&self->_introMessage, a3);
  v4 = a3;
  [v4 setSupportsPlaybackTimeOffset:1];
}

- (double)compressTimeSinceStartOfMessage:(double)a3
{
  if (!self->_pauseTimeCompression)
  {
    v3 = a3 - self->_compressedTimeLastEventTime;
    if (v3 > 0.5)
    {
      self->_compressedTimeTotal = v3 + -0.5 + self->_compressedTimeTotal;
    }
  }

  self->_compressedTimeLastEventTime = a3;
  return a3 - self->_compressedTimeTotal;
}

- (UIImage)stillImage
{
  v27[1] = *MEMORY[0x277D85DE8];
  stillImage = self->_stillImage;
  if (!stillImage)
  {
    mediaType = self->_mediaType;
    if (mediaType == 1)
    {
      v10 = objc_alloc(MEMORY[0x277CE6650]);
      mediaURL = self->_mediaURL;
      v26 = *MEMORY[0x277CE6240];
      v27[0] = MEMORY[0x277CBEC38];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v7 = [v10 initWithURL:mediaURL options:v12];

      v13 = [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:v7];
      [v13 setAppliesPreferredTrackTransform:1];
      v25 = **&MEMORY[0x277CC08F0];
      v21 = *&v25.value;
      epoch = v25.epoch;
      [v13 setRequestedTimeToleranceAfter:&v25];
      *&v25.value = v21;
      v25.epoch = epoch;
      [v13 setRequestedTimeToleranceBefore:&v25];
      if (v7)
      {
        [v7 duration];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      CMTimeMake(&rhs, 1, 30);
      CMTimeSubtract(&v25, &lhs, &rhs);
      v22 = 0;
      v15 = [v13 copyCGImageAtTime:&v25 actualTime:0 error:&v22];
      v16 = v22;
      if (!v16)
      {
        v17 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v15];
        v18 = self->_stillImage;
        self->_stillImage = v17;
      }

      CGImageRelease(v15);
    }

    else
    {
      if (mediaType != 2)
      {
LABEL_12:
        stillImage = self->_stillImage;
        goto LABEL_13;
      }

      v5 = MEMORY[0x277CBEA90];
      v6 = [(NSURL *)self->_mediaURL path];
      v7 = [v5 dataWithContentsOfFile:v6];

      v8 = [MEMORY[0x277D755B8] imageWithData:v7];
      v9 = self->_stillImage;
      self->_stillImage = v8;
    }

    goto LABEL_12;
  }

LABEL_13:
  v19 = stillImage;

  return v19;
}

- (double)messageDuration
{
  if (self->_mediaType != 1)
  {
    v4 = [(NSMutableArray *)self->_playingMessages lastObject];
    [v4 startDelay];
    v6 = v5;
    [v4 messageDuration];
    Seconds = v6 + v7;
LABEL_8:
    self->_messageDuration = Seconds;

    return self->_messageDuration;
  }

  if (self->_messageDuration == 0.0)
  {
    v3 = [MEMORY[0x277CE6650] URLAssetWithURL:self->_mediaURL options:0];
    v4 = v3;
    if (v3)
    {
      [v3 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    goto LABEL_8;
  }

  return self->_messageDuration;
}

@end