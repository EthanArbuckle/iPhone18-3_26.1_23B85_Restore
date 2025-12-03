@interface HMDCameraClipsQuotaDisableCameraResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDCameraClipsQuotaDisableCameraResponse

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (BOOL)readFrom:(id)from
{
  while (1)
  {
    position = [from position];
    if (position >= [from length] || (objc_msgSend(from, "hasError") & 1) != 0)
    {
      break;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v14 = 0;
      v8 = [from position] + 1;
      if (v8 >= [from position] && (v9 = objc_msgSend(from, "position") + 1, v9 <= objc_msgSend(from, "length")))
      {
        data = [from data];
        [data getBytes:&v14 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v7 |= (v14 & 0x7F) << v5;
      if ((v14 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      if (v6++ >= 9)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [from hasError] ? 0 : v7;
LABEL_15:
    if (([from hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [from hasError] ^ 1;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDCameraClipsQuotaDisableCameraResponse;
  v4 = [(HMDCameraClipsQuotaDisableCameraResponse *)&v8 description];
  dictionaryRepresentation = [(HMDCameraClipsQuotaDisableCameraResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end