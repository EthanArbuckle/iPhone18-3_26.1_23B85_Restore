@interface MRDNowPlayingDataSourceApplication
- (MRDNowPlayingDataSourceApplication)initWithPID:(int)d audioSessionID:(id)iD mxSessionIDs:(id)ds isEligible:(BOOL)eligible;
- (NSString)nowPlayingApplicationDisplayID;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation MRDNowPlayingDataSourceApplication

- (id)description
{
  dictionaryRepresentation = [(MRDNowPlayingDataSourceApplication *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  nowPlayingApplicationDisplayID = [(MRDNowPlayingDataSourceApplication *)self nowPlayingApplicationDisplayID];
  [v3 setObject:nowPlayingApplicationDisplayID forKeyedSubscript:@"bundleID"];

  audioSessionID = [(MRDNowPlayingDataSourceApplication *)self audioSessionID];
  [v3 setObject:audioSessionID forKeyedSubscript:@"audioSessionID"];

  v6 = [NSNumber numberWithInt:[(MRDNowPlayingDataSourceApplication *)self pid]];
  [v3 setObject:v6 forKeyedSubscript:@"pid"];

  mxSessionIDs = [(MRDNowPlayingDataSourceApplication *)self mxSessionIDs];
  allObjects = [mxSessionIDs allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"mxSessionIDs"];

  return v3;
}

- (NSString)nowPlayingApplicationDisplayID
{
  v2 = sub_10000B294(self->_pid);
  v3 = [v2 copy];

  return v3;
}

- (MRDNowPlayingDataSourceApplication)initWithPID:(int)d audioSessionID:(id)iD mxSessionIDs:(id)ds isEligible:(BOOL)eligible
{
  iDCopy = iD;
  dsCopy = ds;
  v16.receiver = self;
  v16.super_class = MRDNowPlayingDataSourceApplication;
  v13 = [(MRDNowPlayingDataSourceApplication *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_pid = d;
    objc_storeStrong(&v13->_audioSessionID, iD);
    objc_storeStrong(&v14->_mxSessionIDs, ds);
    v14->_isEligible = eligible;
  }

  return v14;
}

@end