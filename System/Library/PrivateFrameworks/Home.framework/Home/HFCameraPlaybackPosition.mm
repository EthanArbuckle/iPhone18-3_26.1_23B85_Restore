@interface HFCameraPlaybackPosition
+ (NAIdentity)na_identity;
+ (id)clipPositionWithDate:(id)date;
+ (id)clipPositionWithDate:(id)date inClip:(id)clip;
+ (id)livePosition;
- (BOOL)clipIncludesPlaybackDate;
- (BOOL)isEqual:(id)equal;
- (HFCameraPlaybackPosition)initWithClipPlaybackDate:(id)date inClip:(id)clip;
- (HFCameraPlaybackPosition)initWithContentType:(unint64_t)type clipPlaybackDate:(id)date;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HFCameraPlaybackPosition

+ (id)livePosition
{
  v2 = [[self alloc] initWithContentType:0 clipPlaybackDate:0];

  return v2;
}

+ (id)clipPositionWithDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackPosition.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"playbackDate != nil"}];
  }

  v6 = [[self alloc] initWithContentType:1 clipPlaybackDate:dateCopy];

  return v6;
}

+ (id)clipPositionWithDate:(id)date inClip:(id)clip
{
  dateCopy = date;
  clipCopy = clip;
  v9 = clipCopy;
  if (dateCopy)
  {
    if (clipCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackPosition.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"playbackDate != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackPosition.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"clip != nil"}];

LABEL_3:
  v10 = [[self alloc] initWithClipPlaybackDate:dateCopy inClip:v9];

  return v10;
}

- (HFCameraPlaybackPosition)initWithContentType:(unint64_t)type clipPlaybackDate:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = HFCameraPlaybackPosition;
  v8 = [(HFCameraPlaybackPosition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_contentType = type;
    objc_storeStrong(&v8->_clipPlaybackDate, date);
  }

  return v9;
}

- (HFCameraPlaybackPosition)initWithClipPlaybackDate:(id)date inClip:(id)clip
{
  dateCopy = date;
  clipCopy = clip;
  v12.receiver = self;
  v12.super_class = HFCameraPlaybackPosition;
  v9 = [(HFCameraPlaybackPosition *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_contentType = 1;
    objc_storeStrong(&v9->_clipPlaybackDate, date);
    objc_storeStrong(&v10->_clip, clip);
  }

  return v10;
}

- (BOOL)clipIncludesPlaybackDate
{
  clipPlaybackDate = [(HFCameraPlaybackPosition *)self clipPlaybackDate];
  clip = [(HFCameraPlaybackPosition *)self clip];
  dateOfOccurrence = [clip dateOfOccurrence];
  [clipPlaybackDate timeIntervalSinceDate:dateOfOccurrence];
  v7 = v6;

  clip2 = [(HFCameraPlaybackPosition *)self clip];
  [clip2 duration];
  LOBYTE(clipPlaybackDate) = v9 - v7 > 0.00000011920929;

  return clipPlaybackDate;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_221 != -1)
  {
    dispatch_once(&_MergedGlobals_221, &__block_literal_global_13_0);
  }

  v3 = qword_280E02C68;

  return v3;
}

void __39__HFCameraPlaybackPosition_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_20_0];
  v2 = [v0 appendCharacteristic:&__block_literal_global_24];
  v3 = [v0 build];

  v4 = qword_280E02C68;
  qword_280E02C68 = v3;
}

uint64_t __39__HFCameraPlaybackPosition_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 contentType];

  return [v2 numberWithUnsignedInteger:v3];
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (NSString)description
{
  v21 = *MEMORY[0x277D85DE8];
  contentType = [(HFCameraPlaybackPosition *)self contentType];
  if (contentType)
  {
    if (contentType == 1)
    {
      v4 = [MEMORY[0x277D2C8F8] builderWithObject:self];
      clipPlaybackDate = [(HFCameraPlaybackPosition *)self clipPlaybackDate];
      v6 = [v4 appendObject:clipPlaybackDate withName:@"clipPlaybackDate"];

      clipPlaybackDate2 = [(HFCameraPlaybackPosition *)self clipPlaybackDate];
      v8 = [HFCameraUtilities fullTimeStringFromDate:clipPlaybackDate2];
      [v4 appendString:v8 withName:@"date"];

      clip = [(HFCameraPlaybackPosition *)self clip];
      uniqueIdentifier = [clip uniqueIdentifier];
      v11 = [v4 appendObject:uniqueIdentifier withName:@"clipUUID"];

      build = [v4 build];
    }

    else
    {
      v13 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCameraPlaybackPosition contentType](self, "contentType")}];
        *buf = 138412290;
        v20 = v18;
        _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Unknown content type %@", buf, 0xCu);
      }

      v14 = MEMORY[0x277CCACA8];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCameraPlaybackPosition contentType](self, "contentType")}];
      build = [v14 stringWithFormat:@"[Unknown content type %@]", v15];
    }
  }

  else
  {
    build = @"[Live]";
  }

  v16 = *MEMORY[0x277D85DE8];

  return build;
}

@end