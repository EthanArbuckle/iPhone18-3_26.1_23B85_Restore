@interface IDSQRProtoH3EndToEndChannelUnRegisterResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation IDSQRProtoH3EndToEndChannelUnRegisterResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoH3EndToEndChannelUnRegisterResponse;
  v4 = [(IDSQRProtoH3EndToEndChannelUnRegisterResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoH3EndToEndChannelUnRegisterResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

@end