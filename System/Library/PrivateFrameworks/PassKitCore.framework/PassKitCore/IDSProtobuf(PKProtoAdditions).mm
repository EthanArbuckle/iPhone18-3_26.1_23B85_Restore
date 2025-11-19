@interface IDSProtobuf(PKProtoAdditions)
- (id)pkDescription;
@end

@implementation IDSProtobuf(PKProtoAdditions)

- (id)pkDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = PKIDSGeneralMessageIDToString([a1 type]);
  v5 = [a1 isResponse];
  v6 = [a1 context];
  v7 = [v6 pkDescription];
  v8 = [a1 data];
  v9 = [v2 stringWithFormat:@"%@, <%p> type %@ isResponse %d context %@ length %lu", v3, a1, v4, v5, v7, objc_msgSend(v8, "length")];

  return v9;
}

@end