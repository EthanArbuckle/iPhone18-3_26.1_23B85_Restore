@interface IDSProtobuf(PBProtoAdditions)
- (id)pbDescription;
@end

@implementation IDSProtobuf(PBProtoAdditions)

- (id)pbDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  type = [self type];
  isResponse = [self isResponse];
  context = [self context];
  pbDescription = [context pbDescription];
  data = [self data];
  v9 = [v2 stringWithFormat:@"%@, <%p> type %d isResponse %d context %@ length %lu", v3, self, type, isResponse, pbDescription, objc_msgSend(data, "length")];

  return v9;
}

@end