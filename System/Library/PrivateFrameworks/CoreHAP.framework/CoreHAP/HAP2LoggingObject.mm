@interface HAP2LoggingObject
- (id)description;
@end

@implementation HAP2LoggingObject

- (id)description
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
  if (shouldLogPrivateInformation_onceToken != -1)
  {
    dispatch_once(&shouldLogPrivateInformation_onceToken, &__block_literal_global_21622);
  }

  if ((shouldLogPrivateInformation_shouldLogPrivateInformation & 1) == 0)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", objc_msgSend(v2, "hash")];

    v2 = v3;
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@: %@>", v6, v2];

  return v7;
}

@end