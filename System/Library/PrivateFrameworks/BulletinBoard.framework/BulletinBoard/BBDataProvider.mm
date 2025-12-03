@interface BBDataProvider
- (BBDataProviderIdentity)identity;
- (BOOL)canClearAllBulletins;
- (BOOL)canClearBulletinsByDate;
- (BOOL)initialized;
- (BOOL)syncsBulletinDismissal;
- (NSString)description;
- (id)debugDescriptionWithChildren:(unint64_t)children;
- (id)defaultSectionInfo;
- (id)defaultSubsectionInfos;
- (id)displayNameForSubsectionID:(id)d;
- (id)parentSectionIdentifier;
- (id)sectionBundlePath;
- (id)sectionDisplayName;
- (id)sectionIcon;
- (id)sectionIdentifier;
- (id)sectionParameters;
- (id)sortDescriptors;
- (id)sortKey;
- (id)universalSectionIdentifier;
- (void)bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared completion:(id)completion;
- (void)clearedInfoForBulletins:(id)bulletins lastClearedInfo:(id)info completion:(id)completion;
- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)info completion:(id)completion;
- (void)clearedInfoForClearingBulletinsFromDate:(id)date toDate:(id)toDate lastClearedInfo:(id)info completion:(id)completion;
- (void)reloadIdentityWithCompletion:(id)completion;
- (void)setIdentity:(id)identity;
- (void)updateClearedInfoWithClearedInfo:(id)info handler:(id)handler completion:(id)completion;
- (void)updateSectionInfoWithSectionInfo:(id)info handler:(id)handler completion:(id)completion;
@end

@implementation BBDataProvider

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  sectionIdentifier = [(BBDataProvider *)self sectionIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, sectionIdentifier];;

  return v6;
}

- (BBDataProviderIdentity)identity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_identity;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setIdentity:(id)identity
{
  identityCopy = identity;
  obj = self;
  objc_sync_enter(obj);
  identity = obj->_identity;
  obj->_identity = identityCopy;

  objc_sync_exit(obj);
}

- (BOOL)initialized
{
  identity = [(BBDataProvider *)self identity];
  v3 = identity != 0;

  return v3;
}

- (id)sectionIdentifier
{
  identity = [(BBDataProvider *)self identity];
  sectionIdentifier = [identity sectionIdentifier];

  return sectionIdentifier;
}

- (id)universalSectionIdentifier
{
  identity = [(BBDataProvider *)self identity];
  universalSectionIdentifier = [identity universalSectionIdentifier];

  return universalSectionIdentifier;
}

- (id)defaultSectionInfo
{
  identity = [(BBDataProvider *)self identity];
  defaultSectionInfo = [identity defaultSectionInfo];

  return defaultSectionInfo;
}

- (id)defaultSubsectionInfos
{
  identity = [(BBDataProvider *)self identity];
  defaultSubsectionInfos = [identity defaultSubsectionInfos];

  return defaultSubsectionInfos;
}

- (id)sectionDisplayName
{
  identity = [(BBDataProvider *)self identity];
  sectionDisplayName = [identity sectionDisplayName];

  return sectionDisplayName;
}

- (id)sectionIcon
{
  identity = [(BBDataProvider *)self identity];
  sectionIcon = [identity sectionIcon];

  return sectionIcon;
}

- (id)displayNameForSubsectionID:(id)d
{
  dCopy = d;
  identity = [(BBDataProvider *)self identity];
  subsectionDisplayNames = [identity subsectionDisplayNames];
  v7 = [subsectionDisplayNames objectForKey:dCopy];

  return v7;
}

- (id)sectionParameters
{
  identity = [(BBDataProvider *)self identity];
  sectionParameters = [identity sectionParameters];

  return sectionParameters;
}

- (id)sortDescriptors
{
  identity = [(BBDataProvider *)self identity];
  sortDescriptors = [identity sortDescriptors];

  return sortDescriptors;
}

- (id)sortKey
{
  identity = [(BBDataProvider *)self identity];
  sortKey = [identity sortKey];

  return sortKey;
}

- (BOOL)syncsBulletinDismissal
{
  identity = [(BBDataProvider *)self identity];
  syncsBulletinDismissal = [identity syncsBulletinDismissal];

  return syncsBulletinDismissal;
}

- (BOOL)canClearAllBulletins
{
  identity = [(BBDataProvider *)self identity];
  v3 = ([identity traits] >> 6) & 1;

  return v3;
}

- (BOOL)canClearBulletinsByDate
{
  identity = [(BBDataProvider *)self identity];
  v3 = ([identity traits] >> 7) & 1;

  return v3;
}

- (id)parentSectionIdentifier
{
  identity = [(BBDataProvider *)self identity];
  parentSectionIdentifier = [identity parentSectionIdentifier];

  return parentSectionIdentifier;
}

- (id)sectionBundlePath
{
  identity = [(BBDataProvider *)self identity];
  sectionBundlePath = [identity sectionBundlePath];

  return sectionBundlePath;
}

- (void)bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared completion:(id)completion
{
  completionCopy = completion;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider bulletinsWithRequestParameters:lastCleared:completion:]");
  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v5 = completionCopy;
  }
}

- (void)clearedInfoForBulletins:(id)bulletins lastClearedInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider clearedInfoForBulletins:lastClearedInfo:completion:]");
  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v5 = completionCopy;
  }
}

- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider clearedInfoForClearingAllBulletinsWithLastClearedInfo:completion:]");
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v4 = completionCopy;
  }
}

- (void)clearedInfoForClearingBulletinsFromDate:(id)date toDate:(id)toDate lastClearedInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider clearedInfoForClearingBulletinsFromDate:toDate:lastClearedInfo:completion:]");
  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v6 = completionCopy;
  }
}

- (void)reloadIdentityWithCompletion:(id)completion
{
  completionCopy = completion;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider reloadIdentityWithCompletion:]");
  v3 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v3 = completionCopy;
  }
}

- (void)updateClearedInfoWithClearedInfo:(id)info handler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider updateClearedInfoWithClearedInfo:handler:completion:]");
  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v5 = completionCopy;
  }
}

- (void)updateSectionInfoWithSectionInfo:(id)info handler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  NSLog(&cfstr_SNotImplemente.isa, "[BBDataProvider updateSectionInfoWithSectionInfo:handler:completion:]");
  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v5 = completionCopy;
  }
}

- (id)debugDescriptionWithChildren:(unint64_t)children
{
  for (i = [MEMORY[0x277CCAB68] stringWithString:&stru_28541A970];
  {
    [i appendString:@"    "];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  sectionIdentifier = [(BBDataProvider *)self sectionIdentifier];
  v10 = [v6 stringWithFormat:@"%@<%@: %p>: %@", i, v8, self, sectionIdentifier];

  return v10;
}

@end