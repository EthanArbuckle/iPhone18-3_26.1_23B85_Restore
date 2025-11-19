@interface MP_AES_CTR
+ (id)crypt:(id)a3 key:(id)a4 IV:(id)a5;
@end

@implementation MP_AES_CTR

+ (id)crypt:(id)a3 key:(id)a4 IV:(id)a5
{
  v7 = MEMORY[0x277CBEB28];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithLength:{objc_msgSend(v10, "length")}];
  ccaes_ctr_crypt_mode();
  [v9 length];
  [v9 bytes];

  [v8 bytes];
  [v10 length];
  [v10 bytes];

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