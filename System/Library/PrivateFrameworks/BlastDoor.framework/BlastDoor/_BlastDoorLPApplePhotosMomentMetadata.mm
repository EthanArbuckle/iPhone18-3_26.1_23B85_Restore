@interface _BlastDoorLPApplePhotosMomentMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPApplePhotosMomentMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPApplePhotosMomentMetadata

- (_BlastDoorLPApplePhotosMomentMetadata)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _BlastDoorLPApplePhotosMomentMetadata;
  v5 = [(_BlastDoorLPApplePhotosMomentMetadata *)&v19 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v6;

    v5->_photoCount = [coderCopy decodeInt64ForKey:@"photoCount"];
    v5->_videoCount = [coderCopy decodeInt64ForKey:@"videoCount"];
    v5->_otherItemCount = [coderCopy decodeInt64ForKey:@"otherItemCount"];
    v8 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"keyPhoto"];
    keyPhoto = v5->_keyPhoto;
    v5->_keyPhoto = v8;

    v10 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v12 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"earliestAssetDate"];
    earliestAssetDate = v5->_earliestAssetDate;
    v5->_earliestAssetDate = v12;

    v14 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"latestAssetDate"];
    latestAssetDate = v5->_latestAssetDate;
    v5->_latestAssetDate = v14;

    v16 = v5;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:title forKey:@"title"];
  [coderCopy encodeInt64:self->_photoCount forKey:@"photoCount"];
  [coderCopy encodeInt64:self->_videoCount forKey:@"videoCount"];
  [coderCopy encodeInt64:self->_otherItemCount forKey:@"otherItemCount"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_keyPhoto forKey:@"keyPhoto"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_earliestAssetDate forKey:@"earliestAssetDate"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_latestAssetDate forKey:@"latestAssetDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPApplePhotosMomentMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(_BlastDoorLPApplePhotosMomentMetadata *)self title];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setTitle:title];

    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setPhotoCount:[(_BlastDoorLPApplePhotosMomentMetadata *)self photoCount]];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setVideoCount:[(_BlastDoorLPApplePhotosMomentMetadata *)self videoCount]];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setOtherItemCount:[(_BlastDoorLPApplePhotosMomentMetadata *)self otherItemCount]];
    keyPhoto = [(_BlastDoorLPApplePhotosMomentMetadata *)self keyPhoto];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setKeyPhoto:keyPhoto];

    expirationDate = [(_BlastDoorLPApplePhotosMomentMetadata *)self expirationDate];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setExpirationDate:expirationDate];

    earliestAssetDate = [(_BlastDoorLPApplePhotosMomentMetadata *)self earliestAssetDate];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setEarliestAssetDate:earliestAssetDate];

    latestAssetDate = [(_BlastDoorLPApplePhotosMomentMetadata *)self latestAssetDate];
    [(_BlastDoorLPApplePhotosMomentMetadata *)v4 setLatestAssetDate:latestAssetDate];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v15 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPApplePhotosMomentMetadata;
  if ([(_BlastDoorLPApplePhotosMomentMetadata *)&v14 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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