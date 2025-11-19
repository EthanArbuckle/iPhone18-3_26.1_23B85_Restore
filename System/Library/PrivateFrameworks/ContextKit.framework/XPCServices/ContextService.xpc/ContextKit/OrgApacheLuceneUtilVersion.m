@interface OrgApacheLuceneUtilVersion
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)onOrAfterWithOrgApacheLuceneUtilVersion:(id)a3;
- (id)description;
@end

@implementation OrgApacheLuceneUtilVersion

- (BOOL)onOrAfterWithOrgApacheLuceneUtilVersion:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return self->encodedValue_ >= *(a3 + 6);
}

- (id)description
{
  major = self->major_;
  minor = self->minor_;
  if (self->prerelease_)
  {
    prerelease = self->prerelease_;
    bugfix = self->bugfix_;
    v11 = self->minor_;
    return JreStrcat("ICICICI", a2, v2, v3, v4, v5, v6, v7, major);
  }

  else
  {
    v14 = self->bugfix_;
    v12 = self->minor_;
    return JreStrcat("ICICI", a2, v2, v3, v4, v5, v6, v7, major);
  }
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(a3 + 6) == self->encodedValue_;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneUtilVersion alloc];
    *&v2->major_ = xmmword_100314690;
    v2->encodedValue_ = 0x100000;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_0_0_ALPHA_, v2);
    v3 = [OrgApacheLuceneUtilVersion alloc];
    *&v3->major_ = xmmword_1003146A0;
    v3->encodedValue_ = 1048577;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_0_0_BETA_, v3);
    v4 = [OrgApacheLuceneUtilVersion alloc];
    *&v4->major_ = xmmword_1003146B0;
    v4->encodedValue_ = 1048578;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_0_0_, v4);
    v5 = [OrgApacheLuceneUtilVersion alloc];
    *&v5->major_ = xmmword_1003146C0;
    v5->encodedValue_ = 1049600;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_1_0_, v5);
    v6 = [OrgApacheLuceneUtilVersion alloc];
    *&v6->major_ = xmmword_1003146D0;
    v6->encodedValue_ = 1050624;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_2_0_, v6);
    v7 = [OrgApacheLuceneUtilVersion alloc];
    *&v7->major_ = xmmword_1003146E0;
    v7->encodedValue_ = 1050628;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_2_1_, v7);
    v8 = [OrgApacheLuceneUtilVersion alloc];
    *&v8->major_ = xmmword_1003146F0;
    v8->encodedValue_ = 1051648;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_3_0_, v8);
    v9 = [OrgApacheLuceneUtilVersion alloc];
    *&v9->major_ = xmmword_100314700;
    v9->encodedValue_ = 1051652;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_3_1_, v9);
    v10 = [OrgApacheLuceneUtilVersion alloc];
    *&v10->major_ = xmmword_100314710;
    v10->encodedValue_ = 1052672;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_4_0_, v10);
    v11 = [OrgApacheLuceneUtilVersion alloc];
    *&v11->major_ = xmmword_100314720;
    v11->encodedValue_ = 1053696;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_5_0_, v11);
    v12 = [OrgApacheLuceneUtilVersion alloc];
    *&v12->major_ = xmmword_100314730;
    v12->encodedValue_ = 1053700;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_5_1_, v12);
    v13 = [OrgApacheLuceneUtilVersion alloc];
    *&v13->major_ = xmmword_100314740;
    v13->encodedValue_ = 1054720;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_6_0_, v13);
    v14 = [OrgApacheLuceneUtilVersion alloc];
    *&v14->major_ = xmmword_100314750;
    v14->encodedValue_ = 1054724;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_6_1_, v14);
    v15 = [OrgApacheLuceneUtilVersion alloc];
    *&v15->major_ = xmmword_100314760;
    v15->encodedValue_ = 1055744;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_7_0_, v15);
    v16 = [OrgApacheLuceneUtilVersion alloc];
    *&v16->major_ = xmmword_100314770;
    v16->encodedValue_ = 1055748;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_7_1_, v16);
    v17 = [OrgApacheLuceneUtilVersion alloc];
    *&v17->major_ = xmmword_100314780;
    v17->encodedValue_ = 1055752;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_7_2_, v17);
    v18 = [OrgApacheLuceneUtilVersion alloc];
    *&v18->major_ = xmmword_100314790;
    v18->encodedValue_ = 1056768;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_8_0_, v18);
    v19 = [OrgApacheLuceneUtilVersion alloc];
    *&v19->major_ = xmmword_1003147A0;
    v19->encodedValue_ = 1056772;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_8_1_, v19);
    v20 = [OrgApacheLuceneUtilVersion alloc];
    *&v20->major_ = xmmword_1003147B0;
    v20->encodedValue_ = 1057792;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_9_0_, v20);
    v21 = [OrgApacheLuceneUtilVersion alloc];
    *&v21->major_ = xmmword_1003147C0;
    v21->encodedValue_ = 1057796;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_9_1_, v21);
    v22 = [OrgApacheLuceneUtilVersion alloc];
    *&v22->major_ = xmmword_1003147D0;
    v22->encodedValue_ = 1058816;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_10_0_, v22);
    v23 = [OrgApacheLuceneUtilVersion alloc];
    *&v23->major_ = xmmword_1003147E0;
    v23->encodedValue_ = 1058820;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_10_1_, v23);
    v24 = [OrgApacheLuceneUtilVersion alloc];
    *&v24->major_ = xmmword_1003147F0;
    v24->encodedValue_ = 1058824;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_10_2_, v24);
    v25 = [OrgApacheLuceneUtilVersion alloc];
    *&v25->major_ = xmmword_100314800;
    v25->encodedValue_ = 1058828;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_10_3_, v25);
    v26 = [OrgApacheLuceneUtilVersion alloc];
    *&v26->major_ = xmmword_100314810;
    v26->encodedValue_ = 1058832;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_4_10_4_, v26);
    v27 = [OrgApacheLuceneUtilVersion alloc];
    *&v27->major_ = xmmword_100314820;
    v27->encodedValue_ = 1310720;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_5_0_0_, v27);
    v28 = [OrgApacheLuceneUtilVersion alloc];
    *&v28->major_ = xmmword_100314830;
    v28->encodedValue_ = 1311744;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_5_1_0_, v28);
    v29 = [OrgApacheLuceneUtilVersion alloc];
    *&v29->major_ = xmmword_100314840;
    v29->encodedValue_ = 1312768;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_5_2_0_, v29);
    v30 = [OrgApacheLuceneUtilVersion alloc];
    *&v30->major_ = xmmword_100314850;
    v30->encodedValue_ = 1312772;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_5_2_1_, v30);
    v31 = [OrgApacheLuceneUtilVersion alloc];
    *&v31->major_ = xmmword_100314860;
    v31->encodedValue_ = 1313792;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilVersion_LUCENE_5_3_0_, v31);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LATEST_, OrgApacheLuceneUtilVersion_LUCENE_5_3_0_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_CURRENT_, OrgApacheLuceneUtilVersion_LATEST_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_4_0_, OrgApacheLuceneUtilVersion_LUCENE_4_0_0_ALPHA_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_4_1_, OrgApacheLuceneUtilVersion_LUCENE_4_1_0_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_4_2_, OrgApacheLuceneUtilVersion_LUCENE_4_2_0_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_4_3_, OrgApacheLuceneUtilVersion_LUCENE_4_3_0_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_4_4_, OrgApacheLuceneUtilVersion_LUCENE_4_4_0_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_4_5_, OrgApacheLuceneUtilVersion_LUCENE_4_5_0_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_4_6_, OrgApacheLuceneUtilVersion_LUCENE_4_6_0_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_4_7_, OrgApacheLuceneUtilVersion_LUCENE_4_7_0_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_4_8_, OrgApacheLuceneUtilVersion_LUCENE_4_8_0_);
    JreStrongAssign(&OrgApacheLuceneUtilVersion_LUCENE_4_9_, OrgApacheLuceneUtilVersion_LUCENE_4_9_0_);
    atomic_store(1u, OrgApacheLuceneUtilVersion__initialized);
  }
}

@end