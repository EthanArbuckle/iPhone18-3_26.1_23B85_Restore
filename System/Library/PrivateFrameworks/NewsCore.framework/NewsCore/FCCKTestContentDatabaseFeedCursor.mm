@interface FCCKTestContentDatabaseFeedCursor
- (FCCKTestContentDatabaseFeedCursor)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCCKTestContentDatabaseFeedCursor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FCCKTestContentDatabaseFeedCursor allocWithZone:?]];
  order = [(FCCKTestContentDatabaseFeedCursor *)self order];
  [(FCCKTestContentDatabaseFeedCursor *)v4 setOrder:order];

  subOrder = [(FCCKTestContentDatabaseFeedCursor *)self subOrder];
  [(FCCKTestContentDatabaseFeedCursor *)v4 setSubOrder:subOrder];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  order = [(FCCKTestContentDatabaseFeedCursor *)self order];
  [coderCopy encodeObject:order forKey:@"order"];

  subOrder = [(FCCKTestContentDatabaseFeedCursor *)self subOrder];
  [coderCopy encodeObject:subOrder forKey:@"subOrder"];
}

- (FCCKTestContentDatabaseFeedCursor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FCCKTestContentDatabaseFeedCursor;
  v5 = [(FCCKTestContentDatabaseFeedCursor *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"order"];
    [(FCCKTestContentDatabaseFeedCursor *)v5 setOrder:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subOrder"];
    [(FCCKTestContentDatabaseFeedCursor *)v5 setSubOrder:v7];
  }

  return v5;
}

@end