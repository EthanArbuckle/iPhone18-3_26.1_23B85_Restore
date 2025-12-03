@interface IDSProtobuf(PKProtoAdditions)
- (id)pkDescription;
@end

@implementation IDSProtobuf(PKProtoAdditions)

- (id)pkDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = PKIDSGeneralMessageIDToString([self type]);
  isResponse = [self isResponse];
  context = [self context];
  pkDescription = [context pkDescription];
  data = [self data];
  v9 = [v2 stringWithFormat:@"%@, <%p> type %@ isResponse %d context %@ length %lu", v3, self, v4, isResponse, pkDescription, objc_msgSend(data, "length")];

  return v9;
}

@end