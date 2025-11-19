@interface FCCKTestContentDatabaseFeedCursor
- (FCCKTestContentDatabaseFeedCursor)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCCKTestContentDatabaseFeedCursor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FCCKTestContentDatabaseFeedCursor allocWithZone:?]];
  v5 = [(FCCKTestContentDatabaseFeedCursor *)self order];
  [(FCCKTestContentDatabaseFeedCursor *)v4 setOrder:v5];

  v6 = [(FCCKTestContentDatabaseFeedCursor *)self subOrder];
  [(FCCKTestContentDatabaseFeedCursor *)v4 setSubOrder:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCCKTestContentDatabaseFeedCursor *)self order];
  [v4 encodeObject:v5 forKey:@"order"];

  v6 = [(FCCKTestContentDatabaseFeedCursor *)self subOrder];
  [v4 encodeObject:v6 forKey:@"subOrder"];
}

- (FCCKTestContentDatabaseFeedCursor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCCKTestContentDatabaseFeedCursor;
  v5 = [(FCCKTestContentDatabaseFeedCursor *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"order"];
    [(FCCKTestContentDatabaseFeedCursor *)v5 setOrder:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subOrder"];
    [(FCCKTestContentDatabaseFeedCursor *)v5 setSubOrder:v7];
  }

  return v5;
}

@end