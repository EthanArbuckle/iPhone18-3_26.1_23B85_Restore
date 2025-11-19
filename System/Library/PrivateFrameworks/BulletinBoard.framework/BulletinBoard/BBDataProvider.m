@interface BBDataProvider
- (BBDataProviderIdentity)identity;
- (BOOL)canClearAllBulletins;
- (BOOL)canClearBulletinsByDate;
- (BOOL)initialized;
- (BOOL)syncsBulletinDismissal;
- (NSString)description;
- (id)debugDescriptionWithChildren:(unint64_t)a3;
- (id)defaultSectionInfo;
- (id)defaultSubsectionInfos;
- (id)displayNameForSubsectionID:(id)a3;
- (id)parentSectionIdentifier;
- (id)sectionBundlePath;
- (id)sectionDisplayName;
- (id)sectionIcon;
- (id)sectionIdentifier;
- (id)sectionParameters;
- (id)sortDescriptors;
- (id)sortKey;
- (id)universalSectionIdentifier;
- (void)bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4 completion:(id)a5;
- (void)clearedInfoForBulletins:(id)a3 lastClearedInfo:(id)a4 completion:(id)a5;
- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)a3 completion:(id)a4;
- (void)clearedInfoForClearingBulletinsFromDate:(id)a3 toDate:(id)a4 lastClearedInfo:(id)a5 completion:(id)a6;
- (void)reloadIdentityWithCompletion:(id)a3;
- (void)setIdentity:(id)a3;
- (void)updateClearedInfoWithClearedInfo:(id)a3 handler:(id)a4 completion:(id)a5;
- (void)updateSectionInfoWithSectionInfo:(id)a3 handler:(id)a4 completion:(id)a5;
@end

@implementation BBDataProvider

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(BBDataProvider *)self sectionIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v5];;

  return v6;
}

- (BBDataProviderIdentity)identity
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_identity;
  objc_sync_exit(v2);

  return v3;
}

- (void)setIdentity:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  identity = obj->_identity;
  obj->_identity = v4;

  objc_sync_exit(obj);
}

- (BOOL)initialized
{
  v2 = [(BBDataProvider *)self identity];
  v3 = v2 != 0;

  return v3;
}

- (id)sectionIdentifier
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 sectionIdentifier];

  return v3;
}

- (id)universalSectionIdentifier
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 universalSectionIdentifier];

  return v3;
}

- (id)defaultSectionInfo
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 defaultSectionInfo];

  return v3;
}

- (id)defaultSubsectionInfos
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 defaultSubsectionInfos];

  return v3;
}

- (id)sectionDisplayName
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 sectionDisplayName];

  return v3;
}

- (id)sectionIcon
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 sectionIcon];

  return v3;
}

- (id)displayNameForSubsectionID:(id)a3
{
  v4 = a3;
  v5 = [(BBDataProvider *)self identity];
  v6 = [v5 subsectionDisplayNames];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (id)sectionParameters
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 sectionParameters];

  return v3;
}

- (id)sortDescriptors
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 sortDescriptors];

  return v3;
}

- (id)sortKey
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 sortKey];

  return v3;
}

- (BOOL)syncsBulletinDismissal
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 syncsBulletinDismissal];

  return v3;
}

- (BOOL)canClearAllBulletins
{
  v2 = [(BBDataProvider *)self identity];
  v3 = ([v2 traits] >> 6) & 1;

  return v3;
}

- (BOOL)canClearBulletinsByDate
{
  v2 = [(BBDataProvider *)self identity];
  v3 = ([v2 traits] >> 7) & 1;

  return v3;
}

- (id)parentSectionIdentifier
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 parentSectionIdentifier];

  return v3;
}

- (id)sectionBundlePath
{
  v2 = [(BBDataProvider *)self identity];
  v3 = [v2 sectionBundlePath];

  return v3;
}

- (void)bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4 completion:(id)a5
{
  v6 = a5;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider bulletinsWithRequestParameters:lastCleared:completion:]");
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
    v5 = v6;
  }
}

- (void)clearedInfoForBulletins:(id)a3 lastClearedInfo:(id)a4 completion:(id)a5
{
  v6 = a5;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider clearedInfoForBulletins:lastClearedInfo:completion:]");
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
    v5 = v6;
  }
}

- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)a3 completion:(id)a4
{
  v5 = a4;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider clearedInfoForClearingAllBulletinsWithLastClearedInfo:completion:]");
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
  }
}

- (void)clearedInfoForClearingBulletinsFromDate:(id)a3 toDate:(id)a4 lastClearedInfo:(id)a5 completion:(id)a6
{
  v7 = a6;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider clearedInfoForClearingBulletinsFromDate:toDate:lastClearedInfo:completion:]");
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
    v6 = v7;
  }
}

- (void)reloadIdentityWithCompletion:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider reloadIdentityWithCompletion:]");
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
    v3 = v4;
  }
}

- (void)updateClearedInfoWithClearedInfo:(id)a3 handler:(id)a4 completion:(id)a5
{
  v6 = a5;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider updateClearedInfoWithClearedInfo:handler:completion:]");
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
    v5 = v6;
  }
}

- (void)updateSectionInfoWithSectionInfo:(id)a3 handler:(id)a4 completion:(id)a5
{
  v6 = a5;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider updateSectionInfoWithSectionInfo:handler:completion:]");
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
    v5 = v6;
  }
}

- (id)debugDescriptionWithChildren:(unint64_t)a3
{
  for (i = [MEMORY[0x277CCAB68] stringWithString:&stru_28541A970];
  {
    [i appendString:@"    "];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(BBDataProvider *)self sectionIdentifier];
  v10 = [v6 stringWithFormat:@"%@<%@: %p>: %@", i, v8, self, v9];

  return v10;
}

@end