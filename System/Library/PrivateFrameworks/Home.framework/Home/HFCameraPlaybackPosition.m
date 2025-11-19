@interface HFCameraPlaybackPosition
+ (NAIdentity)na_identity;
+ (id)clipPositionWithDate:(id)a3;
+ (id)clipPositionWithDate:(id)a3 inClip:(id)a4;
+ (id)livePosition;
- (BOOL)clipIncludesPlaybackDate;
- (BOOL)isEqual:(id)a3;
- (HFCameraPlaybackPosition)initWithClipPlaybackDate:(id)a3 inClip:(id)a4;
- (HFCameraPlaybackPosition)initWithContentType:(unint64_t)a3 clipPlaybackDate:(id)a4;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HFCameraPlaybackPosition

+ (id)livePosition
{
  v2 = [[a1 alloc] initWithContentType:0 clipPlaybackDate:0];

  return v2;
}

+ (id)clipPositionWithDate:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"HFCameraPlaybackPosition.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"playbackDate != nil"}];
  }

  v6 = [[a1 alloc] initWithContentType:1 clipPlaybackDate:v5];

  return v6;
}

+ (id)clipPositionWithDate:(id)a3 inClip:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"HFCameraPlaybackPosition.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"playbackDate != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:a2 object:a1 file:@"HFCameraPlaybackPosition.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"clip != nil"}];

LABEL_3:
  v10 = [[a1 alloc] initWithClipPlaybackDate:v7 inClip:v9];

  return v10;
}

- (HFCameraPlaybackPosition)initWithContentType:(unint64_t)a3 clipPlaybackDate:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HFCameraPlaybackPosition;
  v8 = [(HFCameraPlaybackPosition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_contentType = a3;
    objc_storeStrong(&v8->_clipPlaybackDate, a4);
  }

  return v9;
}

- (HFCameraPlaybackPosition)initWithClipPlaybackDate:(id)a3 inClip:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFCameraPlaybackPosition;
  v9 = [(HFCameraPlaybackPosition *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_contentType = 1;
    objc_storeStrong(&v9->_clipPlaybackDate, a3);
    objc_storeStrong(&v10->_clip, a4);
  }

  return v10;
}

- (BOOL)clipIncludesPlaybackDate
{
  v3 = [(HFCameraPlaybackPosition *)self clipPlaybackDate];
  v4 = [(HFCameraPlaybackPosition *)self clip];
  v5 = [v4 dateOfOccurrence];
  [v3 timeIntervalSinceDate:v5];
  v7 = v6;

  v8 = [(HFCameraPlaybackPosition *)self clip];
  [v8 duration];
  LOBYTE(v3) = v9 - v7 > 0.00000011920929;

  return v3;
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
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (NSString)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HFCameraPlaybackPosition *)self contentType];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [MEMORY[0x277D2C8F8] builderWithObject:self];
      v5 = [(HFCameraPlaybackPosition *)self clipPlaybackDate];
      v6 = [v4 appendObject:v5 withName:@"clipPlaybackDate"];

      v7 = [(HFCameraPlaybackPosition *)self clipPlaybackDate];
      v8 = [HFCameraUtilities fullTimeStringFromDate:v7];
      [v4 appendString:v8 withName:@"date"];

      v9 = [(HFCameraPlaybackPosition *)self clip];
      v10 = [v9 uniqueIdentifier];
      v11 = [v4 appendObject:v10 withName:@"clipUUID"];

      v12 = [v4 build];
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
      v12 = [v14 stringWithFormat:@"[Unknown content type %@]", v15];
    }
  }

  else
  {
    v12 = @"[Live]";
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

@end