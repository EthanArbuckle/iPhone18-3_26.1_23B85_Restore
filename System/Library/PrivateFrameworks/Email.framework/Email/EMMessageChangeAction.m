@interface EMMessageChangeAction
- (EMMessageChangeAction)initWithCoder:(id)a3;
- (EMMessageChangeAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5;
- (EMMessageChangeAction)initWithObjectIDs:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5;
- (EMMessageChangeAction)initWithQuery:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMessageChangeAction

- (EMMessageChangeAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = EMMessageChangeAction;
  v9 = [(EMMessageChangeAction *)&v13 init];
  if (v9)
  {
    v10 = [v8 ef_map:&__block_literal_global_30];
    objectIDs = v9->_objectIDs;
    v9->_objectIDs = v10;

    v9->_origin = a4;
    v9->_actor = a5;
  }

  return v9;
}

id __63__EMMessageChangeAction_initWithMessageListItems_origin_actor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

- (EMMessageChangeAction)initWithObjectIDs:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = EMMessageChangeAction;
  v10 = [(EMMessageChangeAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_objectIDs, a3);
    v11->_origin = a4;
    v11->_actor = a5;
  }

  return v11;
}

- (EMMessageChangeAction)initWithQuery:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = EMMessageChangeAction;
  v10 = [(EMMessageChangeAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_query, a3);
    v11->_origin = a4;
    v11->_actor = a5;
  }

  return v11;
}

- (EMMessageChangeAction)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = EMMessageChangeAction;
  v5 = [(EMMessageChangeAction *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_objectIDs"];
    objectIDs = v5->_objectIDs;
    v5->_objectIDs = v9;

    v5->_origin = [v4 decodeIntegerForKey:@"EFPropertyKey_origin"];
    v5->_actor = [v4 decodeIntegerForKey:@"EFPropertyKey_actor"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_query"];
    query = v5->_query;
    v5->_query = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(EMMessageChangeAction *)self objectIDs];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_objectIDs"];

  [v6 encodeInteger:-[EMMessageChangeAction origin](self forKey:{"origin"), @"EFPropertyKey_origin"}];
  [v6 encodeInteger:-[EMMessageChangeAction actor](self forKey:{"actor"), @"EFPropertyKey_actor"}];
  v5 = [(EMMessageChangeAction *)self query];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_query"];
}

- (NSString)ef_publicDescription
{
  v3 = [(EMMessageChangeAction *)self objectIDs];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@: %p> objectIDs (%lu): %@", v6, self, objc_msgSend(v3, "count"), v3];

  return v7;
}

@end