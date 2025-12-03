@interface DSSubSource
- (id)init:(id)init withResourceName:(id)name;
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)stopAllSharingWithCompletion:(id)completion;
- (void)stopSharing:(id)sharing withCompletion:(id)completion;
- (void)stopSharingWithParticipant:(id)participant completion:(id)completion;
@end

@implementation DSSubSource

- (id)init:(id)init withResourceName:(id)name
{
  initCopy = init;
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = DSSubSource;
  v8 = [(DSSubSource *)&v11 init];
  v9 = v8;
  if (v8 == self)
  {
    [(DSSubSource *)v8 setParentSource:initCopy];
    [(DSSubSource *)v9 setResourceName:nameCopy];
  }

  return v9;
}

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  parentSource = [(DSSubSource *)self parentSource];
  resourceName = [(DSSubSource *)self resourceName];
  [parentSource fetchSharedResourcesWithName:resourceName completion:completionCopy];
}

- (void)stopAllSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  parentSource = [(DSSubSource *)self parentSource];
  resourceName = [(DSSubSource *)self resourceName];
  [parentSource stopSharingResourcesWithName:resourceName completion:completionCopy];
}

- (void)stopSharing:(id)sharing withCompletion:(id)completion
{
  completionCopy = completion;
  sharingCopy = sharing;
  parentSource = [(DSSubSource *)self parentSource];
  [parentSource stopSharing:sharingCopy withCompletion:completionCopy];
}

- (void)stopSharingWithParticipant:(id)participant completion:(id)completion
{
  completionCopy = completion;
  participantCopy = participant;
  parentSource = [(DSSubSource *)self parentSource];
  resourceName = [(DSSubSource *)self resourceName];
  [parentSource stopSharingWithParticipant:participantCopy forResourceName:resourceName withCompletion:completionCopy];
}

@end