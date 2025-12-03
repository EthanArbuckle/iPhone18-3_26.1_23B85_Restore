@interface CNUIRenderedLikenessCacheEntry
+ (id)entryWithObservable:(id)observable token:(id)token contacts:(id)contacts scope:(id)scope;
- (CNUIRenderedLikenessCacheEntry)initWithObservable:(id)observable token:(id)token contacts:(id)contacts scope:(id)scope;
- (id)description;
@end

@implementation CNUIRenderedLikenessCacheEntry

+ (id)entryWithObservable:(id)observable token:(id)token contacts:(id)contacts scope:(id)scope
{
  scopeCopy = scope;
  contactsCopy = contacts;
  tokenCopy = token;
  observableCopy = observable;
  v14 = [[self alloc] initWithObservable:observableCopy token:tokenCopy contacts:contactsCopy scope:scopeCopy];

  return v14;
}

- (CNUIRenderedLikenessCacheEntry)initWithObservable:(id)observable token:(id)token contacts:(id)contacts scope:(id)scope
{
  observableCopy = observable;
  tokenCopy = token;
  contactsCopy = contacts;
  scopeCopy = scope;
  v19.receiver = self;
  v19.super_class = CNUIRenderedLikenessCacheEntry;
  v15 = [(CNUIRenderedLikenessCacheEntry *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_token, token);
    objc_storeStrong(&v16->_scope, scope);
    objc_storeStrong(&v16->_contacts, contacts);
    objc_storeStrong(&v16->_imageObservable, observable);
    v17 = v16;
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  contacts = [(CNUIRenderedLikenessCacheEntry *)self contacts];
  v5 = [contacts _cn_map:&__block_literal_global_18];

  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 appendName:@"contacts" object:v6];
  scope = [(CNUIRenderedLikenessCacheEntry *)self scope];
  v9 = [scope description];
  v10 = [v3 appendName:@"scope" object:v9];

  build = [v3 build];

  return build;
}

@end