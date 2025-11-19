@interface MFMessageCriterion
- (id)mailServerSideCriterion;
- (id)myEmailAddressesCriterionWithType:(int64_t)a3;
- (id)referencedConversations;
- (id)referencedMailboxes;
@end

@implementation MFMessageCriterion

- (id)myEmailAddressesCriterionWithType:(int64_t)a3
{
  v4 = [(MFMessageCriterion *)self userProfileProvider];
  v5 = [v4 accountsEmailAddresses];

  v6 = [v5 allObjects];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100075EC4;
  v10[3] = &unk_100158FC0;
  v10[4] = a3;
  v7 = [v6 ef_map:v10];

  v8 = [MFMessageCriterion orCompoundCriterionWithCriteria:v7];

  return v8;
}

- (id)mailServerSideCriterion
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (qword_100185948 != -1)
  {
    sub_1000D4A1C();
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076110;
  v7[3] = &unk_100159008;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = &v12;
  v3 = [(MFMessageCriterion *)self criterionByApplyingTransform:v7];
  v4 = v3;
  if (*(v13 + 24) == 1 && (v9[3] & 1) == 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);

  return v5;
}

- (id)referencedMailboxes
{
  +[NSMutableArray array];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076720;
  v3 = v7[3] = &unk_100159030;
  v8 = v3;
  v4 = [(MFMessageCriterion *)self criterionByApplyingTransform:v7];
  v5 = [v3 ef_compactMap:&stru_100159050];

  return v5;
}

- (id)referencedConversations
{
  +[EFMutableInt64Set indexSet];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000768BC;
  v3 = v6[3] = &unk_100159030;
  v7 = v3;
  v4 = [(MFMessageCriterion *)self criterionByApplyingTransform:v6];

  return v3;
}

@end