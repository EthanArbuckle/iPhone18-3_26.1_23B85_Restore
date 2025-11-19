@interface IDSNGMMessageHasher
+ (id)computeHashForMessage:(id)a3;
@end

@implementation IDSNGMMessageHasher

+ (id)computeHashForMessage:(id)a3
{
  v3 = a3;
  v4 = NSClassFromString(&cfstr_Ngmmessagehash.isa);
  if (v4)
  {
    v5 = [(objc_class *)v4 computeHashForMessage:v3];
  }

  else
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E19F8C();
    }

    v5 = 0;
  }

  return v5;
}

@end