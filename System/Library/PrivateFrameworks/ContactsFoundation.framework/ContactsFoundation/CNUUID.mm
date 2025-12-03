@interface CNUUID
+ (id)uuidFromContactIdentifier:(id)identifier;
@end

@implementation CNUUID

+ (id)uuidFromContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:identifierCopy];
  if (uUID)
  {
    goto LABEL_5;
  }

  v5 = [identifierCopy rangeOfString:@":"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || ([identifierCopy _cn_take:v5], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]), "initWithUUIDString:", v6), v6, !v7))
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
LABEL_5:
    v7 = uUID;
  }

  return v7;
}

@end