@interface ICASStartCollaborationCollaboratorData
- (ICASStartCollaborationCollaboratorData)initWithStartInvitedCount:(id)a3 startAcceptedCount:(id)a4;
- (id)toDict;
@end

@implementation ICASStartCollaborationCollaboratorData

- (ICASStartCollaborationCollaboratorData)initWithStartInvitedCount:(id)a3 startAcceptedCount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASStartCollaborationCollaboratorData;
  v9 = [(ICASStartCollaborationCollaboratorData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startInvitedCount, a3);
    objc_storeStrong(&v10->_startAcceptedCount, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"startInvitedCount";
  v3 = [(ICASStartCollaborationCollaboratorData *)self startInvitedCount];
  if (v3)
  {
    v4 = [(ICASStartCollaborationCollaboratorData *)self startInvitedCount];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"startAcceptedCount";
  v13[0] = v4;
  v6 = [(ICASStartCollaborationCollaboratorData *)self startAcceptedCount];
  if (v6)
  {
    v7 = [(ICASStartCollaborationCollaboratorData *)self startAcceptedCount];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end