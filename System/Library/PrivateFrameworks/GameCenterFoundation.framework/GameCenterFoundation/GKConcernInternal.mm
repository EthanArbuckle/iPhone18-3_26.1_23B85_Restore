@interface GKConcernInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
@end

@implementation GKConcernInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_763 != -1)
  {
    +[GKConcernInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_762;

  return v3;
}

void __44__GKConcernInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"player";
  v4[0] = objc_opt_class();
  v3[1] = @"concernID";
  v4[1] = objc_opt_class();
  v3[2] = @"message";
  v4[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_762;
  secureCodedPropertyKeys_sSecureCodedKeys_762 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    concernID = self->_concernID;
    if (concernID == [v5 concernID])
    {
      message = self->_message;
      v8 = [v5 message];
      v9 = [(NSString *)message isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end