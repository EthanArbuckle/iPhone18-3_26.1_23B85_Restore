@interface ICASBioAuthType
- (ICASBioAuthType)initWithBioAuthType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASBioAuthType

- (ICASBioAuthType)initWithBioAuthType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASBioAuthType;
  result = [(ICASBioAuthType *)&v5 init];
  if (result)
  {
    result->_bioAuthType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  bioAuthType = [(ICASBioAuthType *)self bioAuthType];
  v4 = @"unknown";
  if (bioAuthType == 1)
  {
    v4 = @"face";
  }

  if (bioAuthType == 2)
  {
    return @"finger";
  }

  else
  {
    return v4;
  }
}

@end