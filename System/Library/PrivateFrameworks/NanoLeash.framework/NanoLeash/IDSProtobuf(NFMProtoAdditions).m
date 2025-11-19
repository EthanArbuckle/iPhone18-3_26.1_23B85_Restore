@interface IDSProtobuf(NFMProtoAdditions)
- (id)nfmDescription;
@end

@implementation IDSProtobuf(NFMProtoAdditions)

- (id)nfmDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [a1 type];
  v5 = [a1 isResponse];
  v6 = [a1 data];
  v7 = [v2 stringWithFormat:@"%@, <%p> type %d isResponse %d context %@ length %lu", v3, a1, v4, v5, a1, objc_msgSend(v6, "length")];

  return v7;
}

@end