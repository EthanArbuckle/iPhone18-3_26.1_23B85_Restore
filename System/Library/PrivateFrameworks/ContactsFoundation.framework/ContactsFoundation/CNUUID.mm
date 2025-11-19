@interface CNUUID
+ (id)uuidFromContactIdentifier:(id)a3;
@end

@implementation CNUUID

+ (id)uuidFromContactIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = [v3 rangeOfString:@":"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || ([v3 _cn_take:v5], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]), "initWithUUIDString:", v6), v6, !v7))
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
LABEL_5:
    v7 = v4;
  }

  return v7;
}

@end