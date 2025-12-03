@interface IDSProtobuf(NFMProtoAdditions)
- (id)nfmDescription;
@end

@implementation IDSProtobuf(NFMProtoAdditions)

- (id)nfmDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  type = [self type];
  isResponse = [self isResponse];
  data = [self data];
  v7 = [v2 stringWithFormat:@"%@, <%p> type %d isResponse %d context %@ length %lu", v3, self, type, isResponse, self, objc_msgSend(data, "length")];

  return v7;
}

@end