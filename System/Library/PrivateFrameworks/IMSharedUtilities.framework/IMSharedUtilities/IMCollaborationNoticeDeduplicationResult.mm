@interface IMCollaborationNoticeDeduplicationResult
+ (id)resultWithDeduplicated:(id)deduplicated duplicates:(id)duplicates;
- (IMCollaborationNoticeDeduplicationResult)initWithDeduplicated:(id)deduplicated duplicates:(id)duplicates;
- (id)description;
@end

@implementation IMCollaborationNoticeDeduplicationResult

+ (id)resultWithDeduplicated:(id)deduplicated duplicates:(id)duplicates
{
  duplicatesCopy = duplicates;
  deduplicatedCopy = deduplicated;
  v8 = [[self alloc] initWithDeduplicated:deduplicatedCopy duplicates:duplicatesCopy];

  return v8;
}

- (IMCollaborationNoticeDeduplicationResult)initWithDeduplicated:(id)deduplicated duplicates:(id)duplicates
{
  deduplicatedCopy = deduplicated;
  duplicatesCopy = duplicates;
  v17.receiver = self;
  v17.super_class = IMCollaborationNoticeDeduplicationResult;
  v8 = [(IMCollaborationNoticeDeduplicationResult *)&v17 init];
  if (v8)
  {
    v9 = [deduplicatedCopy copy];
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

    v13 = [duplicatesCopy copy];
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
  deduplicatedNotices = [(IMCollaborationNoticeDeduplicationResult *)self deduplicatedNotices];
  v6 = [deduplicatedNotices count];
  duplicateNotices = [(IMCollaborationNoticeDeduplicationResult *)self duplicateNotices];
  v8 = [v3 stringWithFormat:@"<%@: %p> deduplicated:%lu duplicates:%lu", v4, self, v6, objc_msgSend(duplicateNotices, "count")];

  return v8;
}

@end