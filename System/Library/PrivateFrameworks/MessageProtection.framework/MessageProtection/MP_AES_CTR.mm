@interface MP_AES_CTR
+ (id)crypt:(id)crypt key:(id)key IV:(id)v;
@end

@implementation MP_AES_CTR

+ (id)crypt:(id)crypt key:(id)key IV:(id)v
{
  v7 = MEMORY[0x277CBEB28];
  vCopy = v;
  keyCopy = key;
  cryptCopy = crypt;
  v11 = [[v7 alloc] initWithLength:{objc_msgSend(cryptCopy, "length")}];
  ccaes_ctr_crypt_mode();
  [keyCopy length];
  [keyCopy bytes];

  [vCopy bytes];
  [cryptCopy length];
  [cryptCopy bytes];

  [v11 bytes];
  if (ccctr_one_shot())
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

@end