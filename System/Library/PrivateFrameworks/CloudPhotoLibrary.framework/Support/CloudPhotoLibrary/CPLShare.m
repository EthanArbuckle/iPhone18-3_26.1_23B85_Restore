@interface CPLShare
- (CPLShare)initWithCKShare:(id)a3 currentUserID:(id)a4;
@end

@implementation CPLShare

- (CPLShare)initWithCKShare:(id)a3 currentUserID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLShare *)self init];
  if (v8)
  {
    v9 = [v6 publicPermission];
    if ((v9 - 1) >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    [(CPLShare *)v8 setPublicPermission:v10];
    v11 = [v6 URL];
    [(CPLShare *)v8 setURL:v11];

    v12 = [v6 participants];
    v13 = [CPLShareParticipant shareParticipantsFromCKShareParticipants:v12 currentUserID:v7];
    [(CPLShare *)v8 setParticipants:v13];

    v14 = [v6 creationDate];
    [(CPLShare *)v8 setCreationDate:v14];

    v15 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v6];
    [(CPLShare *)v8 setTransportShare:v15];
  }

  return v8;
}

@end