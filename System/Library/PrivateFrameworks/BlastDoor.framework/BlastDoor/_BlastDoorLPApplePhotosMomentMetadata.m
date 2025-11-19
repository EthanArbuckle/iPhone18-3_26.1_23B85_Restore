@interface _BlastDoorLPApplePhotosMomentMetadata
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPApplePhotosMomentMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPApplePhotosMomentMetadata

- (_BlastDoorLPApplePhotosMomentMetadata)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _BlastDoorLPApplePhotosMomentMetadata;
  v5 = [(_BlastDoorLPApplePhotosMomentMetadata *)&v19 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v6;

    v5->_photoCount = [v4 decodeInt64ForKey:@"photoCount"];
    v5->_videoCount = [v4 decodeInt64ForKey:@"videoCount"];
    v5->_otherItemCount = [v4 decodeInt64ForKey:@"otherItemCount"];
    v8 = [v4 _bd_lp_strictlyDecodeLPImageForKey:@"keyPhoto"];
    keyPhoto = v5->_keyPhoto;
    v5->_keyPhoto = v8;

    v10 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v12 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"earliestAssetDate"];
    earliestAssetDate = v5->_earliestAssetDate;
    v5->_earliestAssetDate = v12;

    v14 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"latestAssetDate"];
    latestAssetDate = v5->_latestAssetDate;
    v5->_latestAssetDate = v14;

    v16 = v5;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 _bd_lp_encodeObjectIfNotNil:title forKey:@"title"];
  [v5 encodeInt64:self->_photoCount forKey:@"photoCount"];
  [v5 encodeInt64:self->_videoCount forKey:@"videoCount"];
  [v5 encodeInt64:self->_otherItemCount forKey:@"otherItemCount"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_keyPhoto forKey:@"keyPhoto"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_expirationDate forKey:@"expirationDate"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_earliestAssetDate forKey:@"earliestAssetDate"];
  [v5 _bd_lp_encodeObjectIfNotNil:self->_latestAssetDate forKey:@"latestAssetDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BlastDoorLPApplePhotosMomentMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(_BlastDoorLPApplePhotosMomentMetadata *)self title];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setTitle:v5];

    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setPhotoCount:[(_BlastDoorLPApplePhotosMomentMetadata *)self photoCount]];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setVideoCount:[(_BlastDoorLPApplePhotosMomentMetadata *)self videoCount]];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setOtherItemCount:[(_BlastDoorLPApplePhotosMomentMetadata *)self otherItemCount]];
    v6 = [(_BlastDoorLPApplePhotosMomentMetadata *)self keyPhoto];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setKeyPhoto:v6];

    v7 = [(_BlastDoorLPApplePhotosMomentMetadata *)self expirationDate];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setExpirationDate:v7];

    v8 = [(_BlastDoorLPApplePhotosMomentMetadata *)self earliestAssetDate];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setEarliestAssetDate:v8];

    v9 = [(_BlastDoorLPApplePhotosMomentMetadata *)self latestAssetDate];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setLatestAssetDate:v9];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPApplePhotosMomentMetadata;
  if ([(_BlastDoorLPApplePhotosMomentMetadata *)&v14 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6[2];
      if ((!(v7 | self->_title) || [v7 isEqual:?]) && v6[3] == self->_photoCount && v6[4] == self->_videoCount && v6[5] == self->_otherItemCount && ((v8 = v6[6], !(v8 | self->_keyPhoto)) || objc_msgSend(v8, "isEqual:")) && ((v9 = v6[7], !(v9 | self->_expirationDate)) || objc_msgSend(v9, "isEqual:")) && ((v10 = v6[8], !(v10 | self->_earliestAssetDate)) || objc_msgSend(v10, "isEqual:")))
      {
        v11 = v6[9];
        if (v11 | self->_latestAssetDate)
        {
          v5 = [v11 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

@end