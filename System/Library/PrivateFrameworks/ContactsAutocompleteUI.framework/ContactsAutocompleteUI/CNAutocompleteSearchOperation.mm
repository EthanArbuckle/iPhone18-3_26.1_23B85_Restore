@interface CNAutocompleteSearchOperation
+ (id)operationWithOwner:(id)owner text:(id)text taskID:(id)d;
@end

@implementation CNAutocompleteSearchOperation

+ (id)operationWithOwner:(id)owner text:(id)text taskID:(id)d
{
  ownerCopy = owner;
  textCopy = text;
  dCopy = d;
  v12 = objc_alloc_init(self);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 31, owner);
    objc_storeStrong(v13 + 32, d);
    v14 = [textCopy copy];
    v15 = v13[33];
    v13[33] = v14;

    sendingAddress = [ownerCopy sendingAddress];
    v17 = v13[34];
    v13[34] = sendingAddress;
  }

  return v13;
}

@end