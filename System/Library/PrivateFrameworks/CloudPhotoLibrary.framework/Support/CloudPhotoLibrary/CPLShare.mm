@interface CPLShare
- (CPLShare)initWithCKShare:(id)share currentUserID:(id)d;
@end

@implementation CPLShare

- (CPLShare)initWithCKShare:(id)share currentUserID:(id)d
{
  shareCopy = share;
  dCopy = d;
  v8 = [(CPLShare *)self init];
  if (v8)
  {
    publicPermission = [shareCopy publicPermission];
    if ((publicPermission - 1) >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = publicPermission;
    }

    [(CPLShare *)v8 setPublicPermission:v10];
    v11 = [shareCopy URL];
    [(CPLShare *)v8 setURL:v11];

    participants = [shareCopy participants];
    v13 = [CPLShareParticipant shareParticipantsFromCKShareParticipants:participants currentUserID:dCopy];
    [(CPLShare *)v8 setParticipants:v13];

    creationDate = [shareCopy creationDate];
    [(CPLShare *)v8 setCreationDate:creationDate];

    v15 = [NSKeyedArchiver cpl_archivedDataWithRootObject:shareCopy];
    [(CPLShare *)v8 setTransportShare:v15];
  }

  return v8;
}

@end