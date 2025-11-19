@interface CNUIRenderedLikenessCacheEntry
+ (id)entryWithObservable:(id)a3 token:(id)a4 contacts:(id)a5 scope:(id)a6;
- (CNUIRenderedLikenessCacheEntry)initWithObservable:(id)a3 token:(id)a4 contacts:(id)a5 scope:(id)a6;
- (id)description;
@end

@implementation CNUIRenderedLikenessCacheEntry

+ (id)entryWithObservable:(id)a3 token:(id)a4 contacts:(id)a5 scope:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithObservable:v13 token:v12 contacts:v11 scope:v10];

  return v14;
}

- (CNUIRenderedLikenessCacheEntry)initWithObservable:(id)a3 token:(id)a4 contacts:(id)a5 scope:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = CNUIRenderedLikenessCacheEntry;
  v15 = [(CNUIRenderedLikenessCacheEntry *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_token, a4);
    objc_storeStrong(&v16->_scope, a6);
    objc_storeStrong(&v16->_contacts, a5);
    objc_storeStrong(&v16->_imageObservable, a3);
    v17 = v16;
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUIRenderedLikenessCacheEntry *)self contacts];
  v5 = [v4 _cn_map:&__block_literal_global_18];

  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 appendName:@"contacts" object:v6];
  v8 = [(CNUIRenderedLikenessCacheEntry *)self scope];
  v9 = [v8 description];
  v10 = [v3 appendName:@"scope" object:v9];

  v11 = [v3 build];

  return v11;
}

@end