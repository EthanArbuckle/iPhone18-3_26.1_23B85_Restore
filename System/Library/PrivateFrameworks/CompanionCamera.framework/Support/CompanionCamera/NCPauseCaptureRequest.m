@interface NCPauseCaptureRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NCPauseCaptureRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCPauseCaptureRequest;
  v3 = [(NCPauseCaptureRequest *)&v7 description];
  v4 = [(NCPauseCaptureRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

@end