@interface IMNicknameEncryptionFieldTag
- (BOOL)isEqualToTag:(id)a3 error:(id *)a4;
@end

@implementation IMNicknameEncryptionFieldTag

- (BOOL)isEqualToTag:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = IMNicknameEncryptionFieldTag;
  return [(IMNicknameEncryptionTag *)&v5 isEqualToTag:a3 error:a4];
}

@end