@interface IMCollaborationNoticeDeduplicationResult
+ (id)resultWithDeduplicated:(id)a3 duplicates:(id)a4;
- (IMCollaborationNoticeDeduplicationResult)initWithDeduplicated:(id)a3 duplicates:(id)a4;
- (id)description;
@end

@implementation IMCollaborationNoticeDeduplicationResult

+ (id)resultWithDeduplicated:(id)a3 duplicates:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDeduplicated:v7 duplicates:v6];

  return v8;
}

- (IMCollaborationNoticeDeduplicationResult)initWithDeduplicated:(id)a3 duplicates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = IMCollaborationNoticeDeduplicationResult;
  v8 = [(IMCollaborationNoticeDeduplicationResult *)&v17 init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v9;
    v11 = MEMORY[0x1E695E0F0];
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v8->_deduplicatedNotices, v12);

    v13 = [v7 copy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    objc_storeStrong(&v8->_duplicateNotices, v15);
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IMCollaborationNoticeDeduplicationResult *)self deduplicatedNotices];
  v6 = [v5 count];
  v7 = [(IMCollaborationNoticeDeduplicationResult *)self duplicateNotices];
  v8 = [v3 stringWithFormat:@"<%@: %p> deduplicated:%lu duplicates:%lu", v4, self, v6, objc_msgSend(v7, "count")];

  return v8;
}

@end