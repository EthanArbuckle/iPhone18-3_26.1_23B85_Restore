@interface EMMessageChangeAction
- (EMMessageChangeAction)initWithCoder:(id)coder;
- (EMMessageChangeAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor;
- (EMMessageChangeAction)initWithObjectIDs:(id)ds origin:(int64_t)origin actor:(int64_t)actor;
- (EMMessageChangeAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageChangeAction

- (EMMessageChangeAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor
{
  itemsCopy = items;
  v13.receiver = self;
  v13.super_class = EMMessageChangeAction;
  v9 = [(EMMessageChangeAction *)&v13 init];
  if (v9)
  {
    v10 = [itemsCopy ef_map:&__block_literal_global_30];
    objectIDs = v9->_objectIDs;
    v9->_objectIDs = v10;

    v9->_origin = origin;
    v9->_actor = actor;
  }

  return v9;
}

id __63__EMMessageChangeAction_initWithMessageListItems_origin_actor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

- (EMMessageChangeAction)initWithObjectIDs:(id)ds origin:(int64_t)origin actor:(int64_t)actor
{
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = EMMessageChangeAction;
  v10 = [(EMMessageChangeAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_objectIDs, ds);
    v11->_origin = origin;
    v11->_actor = actor;
  }

  return v11;
}

- (EMMessageChangeAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor
{
  queryCopy = query;
  v13.receiver = self;
  v13.super_class = EMMessageChangeAction;
  v10 = [(EMMessageChangeAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_query, query);
    v11->_origin = origin;
    v11->_actor = actor;
  }

  return v11;
}

- (EMMessageChangeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = EMMessageChangeAction;
  v5 = [(EMMessageChangeAction *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_objectIDs"];
    objectIDs = v5->_objectIDs;
    v5->_objectIDs = v9;

    v5->_origin = [coderCopy decodeIntegerForKey:@"EFPropertyKey_origin"];
    v5->_actor = [coderCopy decodeIntegerForKey:@"EFPropertyKey_actor"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_query"];
    query = v5->_query;
    v5->_query = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectIDs = [(EMMessageChangeAction *)self objectIDs];
  [coderCopy encodeObject:objectIDs forKey:@"EFPropertyKey_objectIDs"];

  [coderCopy encodeInteger:-[EMMessageChangeAction origin](self forKey:{"origin"), @"EFPropertyKey_origin"}];
  [coderCopy encodeInteger:-[EMMessageChangeAction actor](self forKey:{"actor"), @"EFPropertyKey_actor"}];
  query = [(EMMessageChangeAction *)self query];
  [coderCopy encodeObject:query forKey:@"EFPropertyKey_query"];
}

- (NSString)ef_publicDescription
{
  objectIDs = [(EMMessageChangeAction *)self objectIDs];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@: %p> objectIDs (%lu): %@", v6, self, objc_msgSend(objectIDs, "count"), objectIDs];

  return v7;
}

@end