@interface IMNicknameEncryptionFieldTag
- (BOOL)isEqualToTag:(id)tag error:(id *)error;
@end

@implementation IMNicknameEncryptionFieldTag

- (BOOL)isEqualToTag:(id)tag error:(id *)error
{
  v5.receiver = self;
  v5.super_class = IMNicknameEncryptionFieldTag;
  return [(IMNicknameEncryptionTag *)&v5 isEqualToTag:tag error:error];
}

@end