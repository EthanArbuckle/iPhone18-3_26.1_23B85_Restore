@interface CNUIPRUISPosterSnapshotResult
- (CNUIPRUISPosterSnapshotBundle)posterSnapshotBundle;
- (CNUIPRUISPosterSnapshotResult)initWithWrappedResult:(id)a3;
- (id)snapshotBundle;
@end

@implementation CNUIPRUISPosterSnapshotResult

- (CNUIPRUISPosterSnapshotResult)initWithWrappedResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIPRUISPosterSnapshotResult;
  v6 = [(CNUIPRUISPosterSnapshotResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedResult, a3);
  }

  return v7;
}

- (CNUIPRUISPosterSnapshotBundle)posterSnapshotBundle
{
  v2 = [(PRUISPosterSnapshotResult *)self->_wrappedResult posterSnapshotBundle];
  if (v2)
  {
    v3 = [[CNUIPRUISPosterSnapshotBundle alloc] initWithWrappedBundle:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)snapshotBundle
{
  v2 = [(PRUISPosterSnapshotResult *)self->_wrappedResult snapshotBundle];
  if (v2)
  {
    v3 = [[CNUIPRPosterSnapshotBundle alloc] initWithWrappedBundle:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end