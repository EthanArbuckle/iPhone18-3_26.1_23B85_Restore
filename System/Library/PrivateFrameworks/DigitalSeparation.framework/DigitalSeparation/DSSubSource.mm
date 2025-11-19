@interface DSSubSource
- (id)init:(id)a3 withResourceName:(id)a4;
- (void)fetchSharedResourcesWithCompletion:(id)a3;
- (void)stopAllSharingWithCompletion:(id)a3;
- (void)stopSharing:(id)a3 withCompletion:(id)a4;
- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4;
@end

@implementation DSSubSource

- (id)init:(id)a3 withResourceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DSSubSource;
  v8 = [(DSSubSource *)&v11 init];
  v9 = v8;
  if (v8 == self)
  {
    [(DSSubSource *)v8 setParentSource:v6];
    [(DSSubSource *)v9 setResourceName:v7];
  }

  return v9;
}

- (void)fetchSharedResourcesWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(DSSubSource *)self parentSource];
  v5 = [(DSSubSource *)self resourceName];
  [v6 fetchSharedResourcesWithName:v5 completion:v4];
}

- (void)stopAllSharingWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(DSSubSource *)self parentSource];
  v5 = [(DSSubSource *)self resourceName];
  [v6 stopSharingResourcesWithName:v5 completion:v4];
}

- (void)stopSharing:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DSSubSource *)self parentSource];
  [v8 stopSharing:v7 withCompletion:v6];
}

- (void)stopSharingWithParticipant:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(DSSubSource *)self parentSource];
  v8 = [(DSSubSource *)self resourceName];
  [v9 stopSharingWithParticipant:v7 forResourceName:v8 withCompletion:v6];
}

@end