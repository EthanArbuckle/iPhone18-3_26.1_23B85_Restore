@interface IDSProtobuf(NPKProtoAdditions)
- (id)npkDescription;
@end

@implementation IDSProtobuf(NPKProtoAdditions)

- (id)npkDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  type = [self type];
  isResponse = [self isResponse];
  context = [self context];
  npkDescription = [context npkDescription];
  data = [self data];
  v9 = [v2 stringWithFormat:@"%@, <%p> type %d isResponse %d context %@ length %lu", v3, self, type, isResponse, npkDescription, objc_msgSend(data, "length")];

  return v9;
}

@end