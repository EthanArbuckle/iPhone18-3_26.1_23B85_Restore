@interface IMNicknameEncryptionRecordTag
- (BOOL)isEqualToTag:(id)tag error:(id *)error;
@end

@implementation IMNicknameEncryptionRecordTag

- (BOOL)isEqualToTag:(id)tag error:(id *)error
{
  v5.receiver = self;
  v5.super_class = IMNicknameEncryptionRecordTag;
  return [(IMNicknameEncryptionTag *)&v5 isEqualToTag:tag error:error];
}

@end