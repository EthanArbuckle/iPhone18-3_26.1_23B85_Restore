@interface IDSProtobuf(NPKProtoAdditions)
- (id)npkDescription;
@end

@implementation IDSProtobuf(NPKProtoAdditions)

- (id)npkDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [a1 type];
  v5 = [a1 isResponse];
  v6 = [a1 context];
  v7 = [v6 npkDescription];
  v8 = [a1 data];
  v9 = [v2 stringWithFormat:@"%@, <%p> type %d isResponse %d context %@ length %lu", v3, a1, v4, v5, v7, objc_msgSend(v8, "length")];

  return v9;
}

@end