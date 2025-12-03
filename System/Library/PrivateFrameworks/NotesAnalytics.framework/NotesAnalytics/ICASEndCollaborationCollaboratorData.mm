@interface ICASEndCollaborationCollaboratorData
- (ICASEndCollaborationCollaboratorData)initWithEndInvitedCount:(id)count endAcceptedCount:(id)acceptedCount;
- (id)toDict;
@end

@implementation ICASEndCollaborationCollaboratorData

- (ICASEndCollaborationCollaboratorData)initWithEndInvitedCount:(id)count endAcceptedCount:(id)acceptedCount
{
  countCopy = count;
  acceptedCountCopy = acceptedCount;
  v12.receiver = self;
  v12.super_class = ICASEndCollaborationCollaboratorData;
  v9 = [(ICASEndCollaborationCollaboratorData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endInvitedCount, count);
    objc_storeStrong(&v10->_endAcceptedCount, acceptedCount);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"endInvitedCount";
  endInvitedCount = [(ICASEndCollaborationCollaboratorData *)self endInvitedCount];
  if (endInvitedCount)
  {
    endInvitedCount2 = [(ICASEndCollaborationCollaboratorData *)self endInvitedCount];
  }

  else
  {
    endInvitedCount2 = objc_opt_new();
  }

  v5 = endInvitedCount2;
  v12[1] = @"endAcceptedCount";
  v13[0] = endInvitedCount2;
  endAcceptedCount = [(ICASEndCollaborationCollaboratorData *)self endAcceptedCount];
  if (endAcceptedCount)
  {
    endAcceptedCount2 = [(ICASEndCollaborationCollaboratorData *)self endAcceptedCount];
  }

  else
  {
    endAcceptedCount2 = objc_opt_new();
  }

  v8 = endAcceptedCount2;
  v13[1] = endAcceptedCount2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end