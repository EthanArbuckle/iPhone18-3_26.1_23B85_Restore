@interface PBUISnapshotPreconditionResult
- (PBUISnapshotPreconditionResult)initWithExternalDisplayConfiguration:(id)a3 variant:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)appendPreconditionResultFailure:(id)a3;
- (void)appendPreconditionResultFailureWithFormat:(id)a3;
@end

@implementation PBUISnapshotPreconditionResult

- (PBUISnapshotPreconditionResult)initWithExternalDisplayConfiguration:(id)a3 variant:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PBUISnapshotPreconditionResult;
  v8 = [(PBUISnapshotPreconditionResult *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_externalDisplayConfiguration, a3);
    v9->_variant = a4;
    v10 = objc_opt_new();
    reasonsToNotSnapshot = v9->_reasonsToNotSnapshot;
    v9->_reasonsToNotSnapshot = v10;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PBUISnapshotPreconditionResult allocWithZone:?]variant:"initWithExternalDisplayConfiguration:variant:", self->_externalDisplayConfiguration, self->_variant];
  v5 = [(NSMutableArray *)self->_reasonsToNotSnapshot mutableCopy];
  reasonsToNotSnapshot = v4->_reasonsToNotSnapshot;
  v4->_reasonsToNotSnapshot = v5;

  return v4;
}

- (id)description
{
  v3 = [(PBUISnapshotPreconditionResult *)self canSnapshot];
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendBool:v3 withName:@"canSnapshot"];
  v6 = [v4 appendBool:-[PBUISnapshotPreconditionResult isSnapshottingForExternalDisplayHostedWallpaper](self withName:"isSnapshottingForExternalDisplayHostedWallpaper") ifEqualTo:{@"isSnapshottingForExternalDisplayHostedWallpaper", 1}];
  if (!v3)
  {
    v7 = [(NSMutableArray *)self->_reasonsToNotSnapshot copy];
    [v4 appendArraySection:v7 withName:@"reasons to not snapshot" skipIfEmpty:0];
  }

  v8 = [v4 build];

  return v8;
}

- (void)appendPreconditionResultFailureWithFormat:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(PBUISnapshotPreconditionResult *)self appendPreconditionResultFailure:v6];
}

- (void)appendPreconditionResultFailure:(id)a3
{
  reasonsToNotSnapshot = self->_reasonsToNotSnapshot;
  v5 = a3;
  if ([(__CFString *)v5 length])
  {
    v4 = v5;
  }

  else
  {
    v4 = @"UNSPECIFIED FAILURE REASON!!!!";
  }

  [(NSMutableArray *)reasonsToNotSnapshot addObject:v4];
}

@end